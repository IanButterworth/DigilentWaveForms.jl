export devicelist

Base.@kwdef mutable struct DWFDevice
    enumid::Cint
    name::String
    serial::String
    hdwf = Ref(HDWF(0))
end
display(dev::DWFDevice) = println("ID: $(dev.enumid)\nName: $(dev.name)\nSerial Number: $(dev.serial)")

"""
    enumdev(i<:Integer)

Return device by enumeration id.
"""
function enumdev(i::T) where {T<:Integer}
    # Digilent WaveForms SDK uses 0 based indexing
    szDeviceName = zeros(Cchar, 32)
    szSN = zeros(Cchar, 32)
    FDwfEnumDeviceName(i, szDeviceName)
    FDwfEnumSN(i, szSN)
    return DWFDevice(enumid=i, name=str(szDeviceName), serial=name=str(szSN))
end

"""
    devicelist(;info::Bool=false, silent::Bool=false)

Show device list and return vector of device objects.
"""
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
    devices = DWFDevice[]
    for i in 0:cDevice[]-1

        dev = enumdev(i)
        push!(devices, dev)

        !silent && println("Device: $(i+1): $(dev)")
        # before opening, check if the device isn�t already opened by other application, like: WaveForms

        if info
            if !open(dev)
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

"""
    open(dev::DWFDevice)

Return whether device is open
"""
function open(dev::DWFDevice)
    fIsInUse = Ref(Cint(0))
    FDwfEnumDeviceIsOpened(dev.enumid, fIsInUse)
    return fIsInUse[] == 1
end

"""
    checkopen(dev::DWFDevice)

Check & error whether device is open
"""
function checkopen(dev::DWFDevice)
    #TODO: Check not working
    #!open(dev) && error("Device isn't open")
    return nothing
end

"""
    open!(dev::DWFDevice)

Open device.
"""
function open!(dev::DWFDevice)
    if FDwfDeviceOpen(dev.enumid, dev.hdwf) != 1
        szError = zeros(Cchar, 512)
        FDwfGetLastErrorMsg(szError)
        @error "Device in use. FDwfDeviceOpen error: $(str(szError))"
    end
    return nothing
end

"""
    close!(dev::DWFDevice)

Close device.
"""
function close!(dev::DWFDevice)
    FDwfDeviceClose(dev.hdwf[])
    dev.hdwf = Ref(hdwfNone)
    return nothing
end

"""
    closeall!()

Close all devices.
"""
function closeall!()
    FDwfDeviceCloseAll()
    return nothing
end

"""
    devinfo(dev::DWFDevice)

Return some device information.
"""
function devinfo(dev::DWFDevice)
    numchannels = AnalogInChannelCount(dev)
    maxfreq = AnalogInFrequencyInfo(dev)
    return "Number of analog input channels: $(numchannels). Maximum freq.: $(maxfreq) Hz"
end
