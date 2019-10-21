"""
    AnalogInChannelCount(dev::DWFDevice)

Return the number of analog in channels.
"""
function AnalogInChannelCount(dev::DWFDevice)
    cChannel = Ref(Cint(0))
    FDwfAnalogInChannelCount(dev.hdwf[], cChannel)
    return cChannel[]
end

"""
    AnalogInFrequencyInfo(dev::DWFDevice)

Return the maximum sampling frequency of the analog in channels.
"""
function AnalogInFrequencyInfo(dev::DWFDevice)
    hzFreq = Ref(Cdouble(0))
    FDwfAnalogInFrequencyInfo(dev.hdwf[], C_NULL, hzFreq)
    return hzFreq[]
end
