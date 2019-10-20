export listdevices

function printcstring(cstring::Vector{Cchar})
    return unsafe_string(pointer(cstring))
end

function listdevices()
    cDevice = Ref(Cint(0))
    cChannel = Ref(Cint(0))
    hzFreq = Ref(Cdouble(0))
    szDeviceName = zeros(Cchar, 32)
    szSN = zeros(Cchar, 32)
    fIsInUse = Ref(Cint(0))
    hdwf = Ref(HDWF(0))
    szError = zeros(Cchar, 512)

    # detect connected all supported devices
    if FDwfEnum(enumfilterAll, cDevice) == 0
        FDwfGetLastErrorMsg(szError)
        error("FDwfEnum: $szError")
    end
    # list information about each device
    @info "Found $(cDevice[]) devices:"
    for i in 0:cDevice[]-1
        # we use 0 based indexing
        FDwfEnumDeviceName(i, szDeviceName);
        FDwfEnumSN(i, szSN);
        println("Device: $(i+1) name: $(printcstring(szDeviceName)) $(printcstring(szSN))")
        # before opening, check if the device isn�t already opened by other application, like: WaveForms
        FDwfEnumDeviceIsOpened(i, fIsInUse);
        if fIsInUse != 1
            if FDwfDeviceOpen(i, hdwf) != 1
                FDwfGetLastErrorMsg(szError)
                println("FDwfDeviceOpen: $(printcstring(szError))")
                break
            end
            FDwfAnalogInChannelCount(hdwf[], cChannel)
            FDwfAnalogInFrequencyInfo(hdwf[], C_NULL, hzFreq)
            println("number of analog input channels: $(cChannel[]) maximum freq.: $(hzFreq[]) Hz")
            FDwfDeviceClose(hdwf[])
            hdwf = hdwfNone
        end
    end
    # before application exit make sure to close all opened devices by this process
    FDwfDeviceCloseAll()
    return nothing
end
