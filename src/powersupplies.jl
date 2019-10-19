
function cyclepowersupplies()
    hdwf = HDWF(0)
    sts = STS(0)
    vUSB = Cdouble(0)
    aUSB = Cdouble(0)
    degDevice = Cdouble(0)
    vAUX = Cdouble(0)
    aAUX = Cdouble(0)
    fOn = Int32(0)
    szError = zeros(Cchar, 512)

    @info "Automatically opening the first available device"
    if FDwfDeviceOpen(-1, Ref(hdwf)) != 1
        FDwfGetLastErrorMsg(szError)
        error("Device open failed: $szError")
    end

    # set up analog IO channel nodes
    # enable positive supply
    FDwfAnalogIOChannelNodeSet(hdwf, 0, 0, 3)
    # enable negative supply
    FDwfAnalogIOChannelNodeSet(hdwf, 1, 0, 3)
    # master enable
    FDwfAnalogIOEnableSet(hdwf, true)

    @info "Total supply power and load percentage:"
    for i in 1:5
        # wait 1 second between readings
        sleep(1)
        # fetch analogIO status from device
        FDwfAnalogIOStatus(hdwf)

        # supply monitor
        FDwfAnalogIOChannelNodeStatus(hdwf, 2, 0, Ref(vUSB))
        FDwfAnalogIOChannelNodeStatus(hdwf, 2, 1, Ref(aUSB))
        FDwfAnalogIOChannelNodeStatus(hdwf, 2, 2, Ref(degDevice)); #added from systemmonitor example
        FDwfAnalogIOChannelNodeStatus(hdwf, 3, 0, Ref(vAUX))
        FDwfAnalogIOChannelNodeStatus(hdwf, 3, 1, Ref(aAUX))

        println("USB: \t$vUSB V \t$aUSB A \tAUX: \t$vAUX V \t$aAUX A \tTemp: $degDevice")

        # in case of over-current condition the supplies are disabled
        FDwfAnalogIOEnableStatus(hdwf, Ref(fOn))
        if fOn != 1
            # re-enable supplies
            FDwfAnalogIOEnableSet(hdwf, false)
            FDwfAnalogIOEnableSet(hdwf, true)
        end
    end

    # close the device
    FDwfDeviceClose(hdwf)
end
