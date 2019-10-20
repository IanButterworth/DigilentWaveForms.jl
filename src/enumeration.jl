export devicelist

Base.@kwdef mutable struct Device
    enumid::Cint
    name::String
    serial::String
    hdwf = Ref(HDWF(0))
end
display(dev::Device) = println("ID: $(dev.enumid)\nName: $(dev.name)\nSerial Number: $(dev.serial)")

function enumdev(i)
    # Digilent WaveForms SDK uses 0 based indexing
    szDeviceName = zeros(Cchar, 32)
    szSN = zeros(Cchar, 32)
    FDwfEnumDeviceName(i, szDeviceName)
    FDwfEnumSN(i, szSN)
    return Device(enumid=i, name=str(szDeviceName), serial=name=str(szSN))
end

function devicelist(;info::Bool=false, silent::Bool=false)
    cDevice = Ref(Cint(0))
    szError = zeros(Cchar, 512)

    # detect connected all supported devices
    if FDwfEnum(enumfilterAll, cDevice) == 0
        FDwfGetLastErrorMsg(szError)
        error("FDwfEnum: $szError")
    end
    # list information about each device
    !silent && @info "Found $(cDevice[]) devices:"
    devices = Device[]
    for i in 0:cDevice[]-1

        dev = enumdev(i)
        push!(devices, dev)

        !silent && println("Device: $(i+1): $(dev)")
        # before opening, check if the device isn�t already opened by other application, like: WaveForms

        if info
            if !enumDevOpen(dev.enumid)
                open!(dev)
                infostring = devinfo(dev)
                println(infostring)
                close!(dev)
            else
                @warn "Device already open. Couldn't collect info"
            end
        end

    end
    # before application exit make sure to close all opened devices by this process
    closeall!()
    return devices
end

function enumDevOpen(i::T) where {T<:Integer}
    fIsInUse = Ref(Cint(0))
    FDwfEnumDeviceIsOpened(i, fIsInUse)
    return fIsInUse == 1
end
function open!(dev::Device)
    if FDwfDeviceOpen(dev.enumid, dev.hdwf) != 1
        szError = zeros(Cchar, 512)
        FDwfGetLastErrorMsg(szError)
        @error "Device in use. FDwfDeviceOpen error: $(str(szError))"
    end
    return nothing
end
function close!(dev::Device)
    FDwfDeviceClose(dev.hdwf[])
    dev.hdwf = hdwfNone
    return nothing
end
function closeall!()
    FDwfDeviceCloseAll()
    return nothing
end
function devinfo(dev::Device)
    numchannels = AnalogInChannelCount(dev)
    maxfreq = AnalogInFrequencyInfo(dev)
    return "Number of analog input channels: $(numchannels). Maximum freq.: $(maxfreq) Hz"
end
