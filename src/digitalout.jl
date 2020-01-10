"""
    DigitalOutSet!(dev::DWFDevice, pin::Int, state::Bool)

Set the value of a digital output pin.
"""
function DigitalOutSet!(dev::DWFDevice, pin::Int, state::Bool)
    FDwfDigitalOutEnableSet(dev.hdwf[], pin, Int(state))
    return nothing
end
