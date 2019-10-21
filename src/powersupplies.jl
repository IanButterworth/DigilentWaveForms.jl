export monitorpowersupplies

"""
    enablePositivePowerSupply!(dev::DWFDevice)

Enable positive power supply. Remember to AnalogIOEnable!(dev).
"""
function enablePositivePowerSupply!(dev::DWFDevice)
    checkopen(dev)
    FDwfAnalogIOChannelNodeSet(dev.hdwf[], 0, 0, 3)
    return nothing
end

"""
    setPositivePowerSupply!(dev::DWFDevice, voltage::T) where {T<:AbstractFloat}

Set the positive power supply voltage.
"""
function setPositivePowerSupply!(dev::DWFDevice, voltage::T) where {T<:Real}
    checkopen(dev)
    (voltage < 0) && error("Positive voltage should be positive")
    FDwfAnalogIOChannelNodeSet(dev.hdwf[], 0, 1, Cdouble(voltage))
    return nothing
end

"""
    enableNegativePowerSupply!(dev::DWFDevice)

Enable negative power supply. Remember to AnalogIOEnable!(dev).
"""
function enableNegativePowerSupply!(dev::DWFDevice)
    checkopen(dev)
    FDwfAnalogIOChannelNodeSet(dev.hdwf[], 1, 0, 3)
    return nothing
end

"""
    setNegativePowerSupply!(dev::DWFDevice, voltage::T) where {T<:AbstractFloat}

Set the negative power supply voltage.
"""
function setNegativePowerSupply!(dev::DWFDevice, voltage::T) where {T<:Real}
    checkopen(dev)
    (voltage > 0) && error("Negative voltage should be negative")
    FDwfAnalogIOChannelNodeSet(dev.hdwf[], 1, 1, Cdouble(voltage))
    return nothing
end

"""
    AnalogIOEnable!(dev::DWFDevice; state::Bool=true)

Enable/disable analog IO. (Enable by default)
"""
function AnalogIOEnable!(dev::DWFDevice; state::Bool=true)
    checkopen(dev)
    FDwfAnalogIOEnableSet(dev.hdwf[], state)
    return nothing
end

"""
    AnalogIOReset!(dev::DWFDevice)

Disable then enable analog IO. Useful for resetting after overcurrent protection.
"""
function AnalogIOReset!(dev::DWFDevice)
    checkopen(dev)
    FDwfAnalogIOEnableSet(dev.hdwf[], false)
    FDwfAnalogIOEnableSet(dev.hdwf[], true)
    return nothing
end

"""
    AnalogIOEnabled(dev::DWFDevice)

Return whether the analogIO is enabled.
"""
function AnalogIOEnabled(dev::DWFDevice)
    checkopen(dev)
    fOn = Ref(Int32(0))
    FDwfAnalogIOEnableStatus(hdwf[], fOn)
    return fOn[] == 1
end

"""
    PowerSupplyMonitor(dev::DWFDevice)

Monitor the device power draw via both USB and AUX power supplies.
"""
function PowerSupplyMonitor(dev::DWFDevice)
    checkopen(dev)
    vUSB = Ref(Cdouble(0))
    aUSB = Ref(Cdouble(0))
    vAUX = Ref(Cdouble(0))
    aAUX = Ref(Cdouble(0))

    # fetch analogIO status from device
    FDwfAnalogIOStatus(dev.hdwf[])

    # supply monitor
    FDwfAnalogIOChannelNodeStatus(dev.hdwf[], 2, 0, vUSB)
    FDwfAnalogIOChannelNodeStatus(dev.hdwf[], 2, 1, aUSB)
    FDwfAnalogIOChannelNodeStatus(dev.hdwf[], 3, 0, vAUX)
    FDwfAnalogIOChannelNodeStatus(dev.hdwf[], 3, 1, aAUX)

    return ("USB" => ("voltage" => vUSB[], "current" => aUSB[]),
    "AUX" => ("voltage" => vAUX[], "current" => aAUX[]))

end

function TemperatureMonitor(dev::DWFDevice)
    checkopen(dev)
    degDevice = Ref(Cdouble(0))

    # fetch analogIO status from device
    FDwfAnalogIOStatus(dev.hdwf[])

    FDwfAnalogIOChannelNodeStatus(dev.hdwf[], 2, 2, degDevice); #added from systemmonitor example
    return degDevice[]
end
