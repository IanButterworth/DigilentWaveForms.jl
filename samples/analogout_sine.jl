hdwf = HDWF(0)
szError = zeros(Cchar, 512)

@info "Automatically opening the first available device"
if FDwfDeviceOpen(-1, Ref(hdwf)) != 1
    FDwfGetLastErrorMsg(szError)
    error("Device open failed $szError")
end

@info "Generating waveform for 5 seconds..."
# enable first channel
FDwfAnalogOutNodeEnableSet(hdwf, 0, AnalogOutNodeCarrier, true)
# set sine function
FDwfAnalogOutNodeFunctionSet(hdwf, 0, AnalogOutNodeCarrier, funcSine)
# 10kHz
FDwfAnalogOutNodeFrequencySet(hdwf, 0, AnalogOutNodeCarrier, 10000.0)
# 1.41V amplitude (1Vrms), 2.82V pk2pk
FDwfAnalogOutNodeAmplitudeSet(hdwf, 0, AnalogOutNodeCarrier, 1.41)
# 1.41V offset
FDwfAnalogOutNodeOffsetSet(hdwf, 0, AnalogOutNodeCarrier, 1.41)
# start signal generation
FDwfAnalogOutConfigure(hdwf, 0, true)
# it will run until stopped, reset, parameter changed or device closed
sleep(5)
@info "done"

    # on close device is stopped and configuration lost
FDwfDeviceClose(hdwf)
