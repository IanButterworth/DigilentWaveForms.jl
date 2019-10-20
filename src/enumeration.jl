export devicelist

Base.@kwdef struct Device
    enumid::Cint
    name::String
    serial::String
    hwdf = Ref(HDWF(0))
end

function enumdev(i<:Integer)
    # Digilent WaveForms SDK uses 0 based indexing
    szDeviceName = zeros(Cchar, 32)
    szSN = zeros(Cchar, 32)
    FDwfEnumDeviceName(i, szDeviceName)
    FDwfEnumSN(i, szSN)
    return Device(name=str(szDeviceName), serial=name=str(szSN))
end

function devicelist()
    cDevice = Ref(Cint(0))
    szError = zeros(Cchar, 512)

    # detect connected all supported devices
    if FDwfEnum(enumfilterAll, cDevice) == 0
        FDwfGetLastErrorMsg(szError)
        error("FDwfEnum: $szError")
    end
    # list information about each device
    @info "Found $(cDevice[]) devices:"
    devices = Device[]
    for i in 0:cDevice[]-1

        dev = enumdev(i)
        push!(devices, dev)

        println("Device: $(i+1): $(dev)")
        # before opening, check if the device isn�t already opened by other application, like: WaveForms

        if !enumDevOpen(i)
            open!(dev)
            numchannels = AnalogInChannelCount(dev)
            maxfreq = AnalogInFrequencyInfo(dev)
            println("number of analog input channels: $(numchannels) maximum freq.: $(maxfreq) Hz")
            close!(dev)
        end
    end
    # before application exit make sure to close all opened devices by this process
    closeall!()
    return devices
end

function enumDevOpen(i::Int)::Bool
    fIsInUse = Ref(Cint(0))
    FDwfEnumDeviceIsOpened(i, fIsInUse)
    return fIsInUse != 1
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
end
function closeall!()
    FDwfDeviceCloseAll()
end
