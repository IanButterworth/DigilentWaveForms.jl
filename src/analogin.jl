
function AnalogInChannelCount(dev::Device)
    cChannel = Ref(Cint(0))
    FDwfAnalogInChannelCount(dev.hdwf[], cChannel)
    return cChannel[]
end
function AnalogInFrequencyInfo(dev::Device)
    hzFreq = Ref(Cdouble(0))
    FDwfAnalogInFrequencyInfo(dev.hdwf[], C_NULL, hzFreq)
    return hzFreq[]
end
