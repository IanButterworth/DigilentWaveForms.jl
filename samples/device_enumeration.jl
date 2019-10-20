cDevice = Cint(0)
cChannel = Cint(0)
hzFreq = Cdouble(0)
szDeviceName = zeros(Cchar, 32)
szSN = zeros(Cchar, 32)
fIsInUse = Bool(0)
hdwf = HDWF(0)
szError = zeros(Cchar, 512)

# detect connected all supported devices
if FDwfEnum(enumfilterAll, Ref(cDevice)) == 0
    FDwfGetLastErrorMsg(szError)
    error("FDwfEnum: $szError")
end
# list information about each device
@info "Found $cDevice devices:"
for i in 0:cDevice-1
    # we use 0 based indexing
    FDwfEnumDeviceName(i, szDeviceName);
    FDwfEnumSN(i, szSN);
    println("Device: $(i+1) name: $szDeviceName $szSN")
    # before opening, check if the device isn�t already opened by other application, like: WaveForms
    FDwfEnumDeviceIsOpened(i, Ref(fIsInUse));
    if fIsInUse != 1
        if FDwfDeviceOpen(i, Ref(hdwf)) != 1
            FDwfGetLastErrorMsg(szError)
            println("FDwfDeviceOpen: $szError")
            break
        end
        FDwfAnalogInChannelCount(hdwf, Ref(cChannel))
        FDwfAnalogInFrequencyInfo(hdwf, C_NULL, Ref(hzFreq))
        println("number of analog input channels: $cChannel maximum freq.: $hzFreq Hz")
        FDwfDeviceClose(hdwf)
        hdwf = hdwfNone
    end
end
# before application exit make sure to close all opened devices by this process
FDwfDeviceCloseAll()
