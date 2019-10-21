"""
    AnalogOutChannelCount(dev::DWFDevice)

Return the number of analog out channels.
"""
function AnalogOutChannelCount(dev::DWFDevice)
    cChannel = Ref(Cint(0))
    FDwfAnalogInChannelCount(dev.hdwf[], cChannel)
    return cChannel[]
end

"""
    AnalogOutEnableChannel!(dev::DWFDevice, channel::Int; state::Bool=true)

Enable analog out channel (enable by default)
"""
function AnalogOutEnableChannel!(dev::DWFDevice, channel::Int; state::Bool=true)
    FDwfAnalogOutNodeEnableSet(dev.hdwf[], channel, AnalogOutNodeCarrier, state)
    return nothing
end

"""
    AnalogOutStart!(dev::DWFDevice, channel::Int)

Start signal generation on given analog output channel
"""
function AnalogOutStart!(dev::DWFDevice, channel::Int)
    FDwfAnalogOutConfigure(dev.hdwf[], channel, true)
end

"""
    AnalogOutStop!(dev::DWFDevice, channel::Int)

Start signal generation on given analog output channel
"""
function AnalogOutStop!(dev::DWFDevice, channel::Int)
    FDwfAnalogOutConfigure(dev.hdwf[], channel, false)
end

"""
    AnalogOutDCMode!(dev::DWFDevice, channel::Int)

Enable DC signal generation mode on given analog output channel
"""
function AnalogOutDCMode!(dev::DWFDevice, channel::Int)
    FDwfAnalogOutNodeFunctionSet(dev.hdwf[], channel, AnalogOutNodeCarrier, funcDC)
end

"""
    AnalogOutDCVal!(dev::DWFDevice, channel::Int, v::T) where {T<:Real}

Enable DC offset value for signal generation mode on given analog output channel
"""
function AnalogOutDCVal!(dev::DWFDevice, channel::Int, v::T) where {T<:Real}
    FDwfAnalogOutNodeOffsetSet(dev.hdwf[], channel, AnalogOutNodeCarrier, v)
    #FDwfAnalogOutNodeAmplitudeSet(dev.hdwf[], channel, AnalogOutNodeCarrier, v)
end
