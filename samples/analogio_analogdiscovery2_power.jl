hdwf = HDWF(0)
sts = STS(0)
vUSB = Float64(0)
aUSB = Float64(0)
vAUX = Float64(0)
aAUX = Float64(0)
fOn = 0
szError = zeros(Cchar, 512)

@info "Automatically opening the first available device"
if !FDwfDeviceOpen(-1, Ref(hdwf))
    FDwfGetLastErrorMsg(szError)
    error("Device open failed: $szError")
end

# set up analog IO channel nodes
# enable positive supply
FDwfAnalogIOChannelNodeSet(hdwf, 0, 0, 1)
# enable negative supply
FDwfAnalogIOChannelNodeSet(hdwf, 1, 0, 1)
# master enable
FDwfAnalogIOEnableSet(hdwf, true)

@info "Total supply power and load percentage:"
for i in 1:60
    # wait 1 second between readings
    sleep(1)
    # fetch analogIO status from device
    FDwfAnalogIOStatus(hdwf)

    # supply monitor
    FDwfAnalogIOChannelNodeStatus(hdwf, 2, 0, Ref(vUSB))
    FDwfAnalogIOChannelNodeStatus(hdwf, 2, 1, Ref(aUSB))
    FDwfAnalogIOChannelNodeStatus(hdwf, 3, 0, Ref(vAUX))
    FDwfAnalogIOChannelNodeStatus(hdwf, 3, 1, Ref(aAUX))

    println("USB: \t$vUSB V \t$aUSB A AUX: \t$vAUX V \t$aAUX A")

    # in case of over-current condition the supplies are disabled
    FDwfAnalogIOEnableStatus(hdwf, Ref(fOn))
    if !fOn
        // re-enable supplies
        FDwfAnalogIOEnableSet(hdwf, false)
        FDwfAnalogIOEnableSet(hdwf, true)
    end
end

# close the device
FDwfDeviceClose(hdwf)
