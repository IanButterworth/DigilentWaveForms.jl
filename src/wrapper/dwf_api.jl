# Julia wrapper for header: dwf.h
# Automatically generated using Clang.jl


function FDwfGetLastError(pdwferc)
    ccall((:FDwfGetLastError, dwf_C), BOOL, (Ptr{DWFERC},), pdwferc)
end

function FDwfGetLastErrorMsg(szError)
    ccall((:FDwfGetLastErrorMsg, dwf_C), BOOL, (Ptr{UInt8},), szError)
end

function FDwfGetVersion(szVersion)
    ccall((:FDwfGetVersion, dwf_C), BOOL, (Ptr{UInt8},), szVersion)
end

function FDwfParamSet(param, value)
    ccall((:FDwfParamSet, dwf_C), BOOL, (DwfParam, Cint), param, value)
end

function FDwfParamGet(param, pvalue)
    ccall((:FDwfParamGet, dwf_C), BOOL, (DwfParam, Ptr{Cint}), param, pvalue)
end

function FDwfEnum(enumfilter, pcDevice)
    ccall((:FDwfEnum, dwf_C), BOOL, (ENUMFILTER, Ptr{Cint}), enumfilter, pcDevice)
end

function FDwfEnumDeviceType(idxDevice, pDeviceId, pDeviceRevision)
    ccall((:FDwfEnumDeviceType, dwf_C), BOOL, (Cint, Ptr{DEVID}, Ptr{DEVVER}), idxDevice, pDeviceId, pDeviceRevision)
end

function FDwfEnumDeviceIsOpened(idxDevice, pfIsUsed)
    ccall((:FDwfEnumDeviceIsOpened, dwf_C), BOOL, (Cint, Ptr{BOOL}), idxDevice, pfIsUsed)
end

function FDwfEnumUserName(idxDevice, szUserName)
    ccall((:FDwfEnumUserName, dwf_C), BOOL, (Cint, Ptr{UInt8}), idxDevice, szUserName)
end

function FDwfEnumDeviceName(idxDevice, szDeviceName)
    ccall((:FDwfEnumDeviceName, dwf_C), BOOL, (Cint, Ptr{UInt8}), idxDevice, szDeviceName)
end

function FDwfEnumSN(idxDevice, szSN)
    ccall((:FDwfEnumSN, dwf_C), BOOL, (Cint, Ptr{UInt8}), idxDevice, szSN)
end

function FDwfEnumConfig(idxDevice, pcConfig)
    ccall((:FDwfEnumConfig, dwf_C), BOOL, (Cint, Ptr{Cint}), idxDevice, pcConfig)
end

function FDwfEnumConfigInfo(idxConfig, info, pv)
    ccall((:FDwfEnumConfigInfo, dwf_C), BOOL, (Cint, DwfEnumConfigInfo, Ptr{Cint}), idxConfig, info, pv)
end

function FDwfDeviceOpen(idxDevice, phdwf)
    ccall((:FDwfDeviceOpen, dwf_C), BOOL, (Cint, Ptr{HDWF}), idxDevice, phdwf)
end

function FDwfDeviceConfigOpen(idxDev, idxCfg, phdwf)
    ccall((:FDwfDeviceConfigOpen, dwf_C), BOOL, (Cint, Cint, Ptr{HDWF}), idxDev, idxCfg, phdwf)
end

function FDwfDeviceClose(hdwf)
    ccall((:FDwfDeviceClose, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfDeviceCloseAll()
    ccall((:FDwfDeviceCloseAll, dwf_C), BOOL, ())
end

function FDwfDeviceAutoConfigureSet(hdwf, fAutoConfigure)
    ccall((:FDwfDeviceAutoConfigureSet, dwf_C), BOOL, (HDWF, BOOL), hdwf, fAutoConfigure)
end

function FDwfDeviceAutoConfigureGet(hdwf, pfAutoConfigure)
    ccall((:FDwfDeviceAutoConfigureGet, dwf_C), BOOL, (HDWF, Ptr{BOOL}), hdwf, pfAutoConfigure)
end

function FDwfDeviceReset(hdwf)
    ccall((:FDwfDeviceReset, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfDeviceEnableSet(hdwf, fEnable)
    ccall((:FDwfDeviceEnableSet, dwf_C), BOOL, (HDWF, BOOL), hdwf, fEnable)
end

function FDwfDeviceTriggerInfo(hdwf, pfstrigsrc)
    ccall((:FDwfDeviceTriggerInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pfstrigsrc)
end

function FDwfDeviceTriggerSet(hdwf, idxPin, trigsrc)
    ccall((:FDwfDeviceTriggerSet, dwf_C), BOOL, (HDWF, Cint, TRIGSRC), hdwf, idxPin, trigsrc)
end

function FDwfDeviceTriggerGet(hdwf, idxPin, ptrigsrc)
    ccall((:FDwfDeviceTriggerGet, dwf_C), BOOL, (HDWF, Cint, Ptr{TRIGSRC}), hdwf, idxPin, ptrigsrc)
end

function FDwfDeviceTriggerPC(hdwf)
    ccall((:FDwfDeviceTriggerPC, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfDeviceTriggerSlopeInfo(hdwf, pfsslope)
    ccall((:FDwfDeviceTriggerSlopeInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pfsslope)
end

function FDwfDeviceParamSet(hdwf, param, value)
    ccall((:FDwfDeviceParamSet, dwf_C), BOOL, (HDWF, DwfParam, Cint), hdwf, param, value)
end

function FDwfDeviceParamGet(hdwf, param, pvalue)
    ccall((:FDwfDeviceParamGet, dwf_C), BOOL, (HDWF, DwfParam, Ptr{Cint}), hdwf, param, pvalue)
end

function FDwfAnalogInReset(hdwf)
    ccall((:FDwfAnalogInReset, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfAnalogInConfigure(hdwf, fReconfigure, fStart)
    ccall((:FDwfAnalogInConfigure, dwf_C), BOOL, (HDWF, BOOL, BOOL), hdwf, fReconfigure, fStart)
end

function FDwfAnalogInTriggerForce(hdwf)
    ccall((:FDwfAnalogInTriggerForce, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfAnalogInStatus(hdwf, fReadData, psts)
    ccall((:FDwfAnalogInStatus, dwf_C), BOOL, (HDWF, BOOL, Ptr{DwfState}), hdwf, fReadData, psts)
end

function FDwfAnalogInStatusSamplesLeft(hdwf, pcSamplesLeft)
    ccall((:FDwfAnalogInStatusSamplesLeft, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pcSamplesLeft)
end

function FDwfAnalogInStatusSamplesValid(hdwf, pcSamplesValid)
    ccall((:FDwfAnalogInStatusSamplesValid, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pcSamplesValid)
end

function FDwfAnalogInStatusIndexWrite(hdwf, pidxWrite)
    ccall((:FDwfAnalogInStatusIndexWrite, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pidxWrite)
end

function FDwfAnalogInStatusAutoTriggered(hdwf, pfAuto)
    ccall((:FDwfAnalogInStatusAutoTriggered, dwf_C), BOOL, (HDWF, Ptr{BOOL}), hdwf, pfAuto)
end

function FDwfAnalogInStatusData(hdwf, idxChannel, rgdVoltData, cdData)
    ccall((:FDwfAnalogInStatusData, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}, Cint), hdwf, idxChannel, rgdVoltData, cdData)
end

function FDwfAnalogInStatusData2(hdwf, idxChannel, rgdVoltData, idxData, cdData)
    ccall((:FDwfAnalogInStatusData2, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}, Cint, Cint), hdwf, idxChannel, rgdVoltData, idxData, cdData)
end

function FDwfAnalogInStatusData16(hdwf, idxChannel, rgu16Data, idxData, cdData)
    ccall((:FDwfAnalogInStatusData16, dwf_C), BOOL, (HDWF, Cint, Ptr{Int16}, Cint, Cint), hdwf, idxChannel, rgu16Data, idxData, cdData)
end

function FDwfAnalogInStatusNoise(hdwf, idxChannel, rgdMin, rgdMax, cdData)
    ccall((:FDwfAnalogInStatusNoise, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}, Cint), hdwf, idxChannel, rgdMin, rgdMax, cdData)
end

function FDwfAnalogInStatusNoise2(hdwf, idxChannel, rgdMin, rgdMax, idxData, cdData)
    ccall((:FDwfAnalogInStatusNoise2, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}, Cint, Cint), hdwf, idxChannel, rgdMin, rgdMax, idxData, cdData)
end

function FDwfAnalogInStatusSample(hdwf, idxChannel, pdVoltSample)
    ccall((:FDwfAnalogInStatusSample, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, pdVoltSample)
end

function FDwfAnalogInStatusRecord(hdwf, pcdDataAvailable, pcdDataLost, pcdDataCorrupt)
    ccall((:FDwfAnalogInStatusRecord, dwf_C), BOOL, (HDWF, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), hdwf, pcdDataAvailable, pcdDataLost, pcdDataCorrupt)
end

function FDwfAnalogInRecordLengthSet(hdwf, sLegth)
    ccall((:FDwfAnalogInRecordLengthSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, sLegth)
end

function FDwfAnalogInRecordLengthGet(hdwf, psLegth)
    ccall((:FDwfAnalogInRecordLengthGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psLegth)
end

function FDwfAnalogInFrequencyInfo(hdwf, phzMin, phzMax)
    ccall((:FDwfAnalogInFrequencyInfo, dwf_C), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, phzMin, phzMax)
end

function FDwfAnalogInFrequencySet(hdwf, hzFrequency)
    ccall((:FDwfAnalogInFrequencySet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, hzFrequency)
end

function FDwfAnalogInFrequencyGet(hdwf, phzFrequency)
    ccall((:FDwfAnalogInFrequencyGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, phzFrequency)
end

function FDwfAnalogInBitsInfo(hdwf, pnBits)
    ccall((:FDwfAnalogInBitsInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pnBits)
end

function FDwfAnalogInBufferSizeInfo(hdwf, pnSizeMin, pnSizeMax)
    ccall((:FDwfAnalogInBufferSizeInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}, Ptr{Cint}), hdwf, pnSizeMin, pnSizeMax)
end

function FDwfAnalogInBufferSizeSet(hdwf, nSize)
    ccall((:FDwfAnalogInBufferSizeSet, dwf_C), BOOL, (HDWF, Cint), hdwf, nSize)
end

function FDwfAnalogInBufferSizeGet(hdwf, pnSize)
    ccall((:FDwfAnalogInBufferSizeGet, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pnSize)
end

function FDwfAnalogInNoiseSizeInfo(hdwf, pnSizeMax)
    ccall((:FDwfAnalogInNoiseSizeInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pnSizeMax)
end

function FDwfAnalogInNoiseSizeSet(hdwf, nSize)
    ccall((:FDwfAnalogInNoiseSizeSet, dwf_C), BOOL, (HDWF, Cint), hdwf, nSize)
end

function FDwfAnalogInNoiseSizeGet(hdwf, pnSize)
    ccall((:FDwfAnalogInNoiseSizeGet, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pnSize)
end

function FDwfAnalogInAcquisitionModeInfo(hdwf, pfsacqmode)
    ccall((:FDwfAnalogInAcquisitionModeInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pfsacqmode)
end

function FDwfAnalogInAcquisitionModeSet(hdwf, acqmode)
    ccall((:FDwfAnalogInAcquisitionModeSet, dwf_C), BOOL, (HDWF, ACQMODE), hdwf, acqmode)
end

function FDwfAnalogInAcquisitionModeGet(hdwf, pacqmode)
    ccall((:FDwfAnalogInAcquisitionModeGet, dwf_C), BOOL, (HDWF, Ptr{ACQMODE}), hdwf, pacqmode)
end

function FDwfAnalogInChannelCount(hdwf, pcChannel)
    ccall((:FDwfAnalogInChannelCount, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pcChannel)
end

function FDwfAnalogInChannelEnableSet(hdwf, idxChannel, fEnable)
    ccall((:FDwfAnalogInChannelEnableSet, dwf_C), BOOL, (HDWF, Cint, BOOL), hdwf, idxChannel, fEnable)
end

function FDwfAnalogInChannelEnableGet(hdwf, idxChannel, pfEnable)
    ccall((:FDwfAnalogInChannelEnableGet, dwf_C), BOOL, (HDWF, Cint, Ptr{BOOL}), hdwf, idxChannel, pfEnable)
end

function FDwfAnalogInChannelFilterInfo(hdwf, pfsfilter)
    ccall((:FDwfAnalogInChannelFilterInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pfsfilter)
end

function FDwfAnalogInChannelFilterSet(hdwf, idxChannel, filter)
    ccall((:FDwfAnalogInChannelFilterSet, dwf_C), BOOL, (HDWF, Cint, FILTER), hdwf, idxChannel, filter)
end

function FDwfAnalogInChannelFilterGet(hdwf, idxChannel, pfilter)
    ccall((:FDwfAnalogInChannelFilterGet, dwf_C), BOOL, (HDWF, Cint, Ptr{FILTER}), hdwf, idxChannel, pfilter)
end

function FDwfAnalogInChannelRangeInfo(hdwf, pvoltsMin, pvoltsMax, pnSteps)
    ccall((:FDwfAnalogInChannelRangeInfo, dwf_C), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, pvoltsMin, pvoltsMax, pnSteps)
end

function FDwfAnalogInChannelRangeSteps(hdwf, rgVoltsStep, pnSteps)
    ccall((:FDwfAnalogInChannelRangeSteps, dwf_C), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cint}), hdwf, rgVoltsStep, pnSteps)
end

function FDwfAnalogInChannelRangeSet(hdwf, idxChannel, voltsRange)
    ccall((:FDwfAnalogInChannelRangeSet, dwf_C), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, voltsRange)
end

function FDwfAnalogInChannelRangeGet(hdwf, idxChannel, pvoltsRange)
    ccall((:FDwfAnalogInChannelRangeGet, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, pvoltsRange)
end

function FDwfAnalogInChannelOffsetInfo(hdwf, pvoltsMin, pvoltsMax, pnSteps)
    ccall((:FDwfAnalogInChannelOffsetInfo, dwf_C), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, pvoltsMin, pvoltsMax, pnSteps)
end

function FDwfAnalogInChannelOffsetSet(hdwf, idxChannel, voltOffset)
    ccall((:FDwfAnalogInChannelOffsetSet, dwf_C), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, voltOffset)
end

function FDwfAnalogInChannelOffsetGet(hdwf, idxChannel, pvoltOffset)
    ccall((:FDwfAnalogInChannelOffsetGet, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, pvoltOffset)
end

function FDwfAnalogInChannelAttenuationSet(hdwf, idxChannel, xAttenuation)
    ccall((:FDwfAnalogInChannelAttenuationSet, dwf_C), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, xAttenuation)
end

function FDwfAnalogInChannelAttenuationGet(hdwf, idxChannel, pxAttenuation)
    ccall((:FDwfAnalogInChannelAttenuationGet, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, pxAttenuation)
end

function FDwfAnalogInTriggerSourceSet(hdwf, trigsrc)
    ccall((:FDwfAnalogInTriggerSourceSet, dwf_C), BOOL, (HDWF, TRIGSRC), hdwf, trigsrc)
end

function FDwfAnalogInTriggerSourceGet(hdwf, ptrigsrc)
    ccall((:FDwfAnalogInTriggerSourceGet, dwf_C), BOOL, (HDWF, Ptr{TRIGSRC}), hdwf, ptrigsrc)
end

function FDwfAnalogInTriggerPositionInfo(hdwf, psecMin, psecMax, pnSteps)
    ccall((:FDwfAnalogInTriggerPositionInfo, dwf_C), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, psecMin, psecMax, pnSteps)
end

function FDwfAnalogInTriggerPositionSet(hdwf, secPosition)
    ccall((:FDwfAnalogInTriggerPositionSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, secPosition)
end

function FDwfAnalogInTriggerPositionGet(hdwf, psecPosition)
    ccall((:FDwfAnalogInTriggerPositionGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecPosition)
end

function FDwfAnalogInTriggerPositionStatus(hdwf, psecPosition)
    ccall((:FDwfAnalogInTriggerPositionStatus, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecPosition)
end

function FDwfAnalogInTriggerAutoTimeoutInfo(hdwf, psecMin, psecMax, pnSteps)
    ccall((:FDwfAnalogInTriggerAutoTimeoutInfo, dwf_C), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, psecMin, psecMax, pnSteps)
end

function FDwfAnalogInTriggerAutoTimeoutSet(hdwf, secTimeout)
    ccall((:FDwfAnalogInTriggerAutoTimeoutSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, secTimeout)
end

function FDwfAnalogInTriggerAutoTimeoutGet(hdwf, psecTimeout)
    ccall((:FDwfAnalogInTriggerAutoTimeoutGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecTimeout)
end

function FDwfAnalogInTriggerHoldOffInfo(hdwf, psecMin, psecMax, pnStep)
    ccall((:FDwfAnalogInTriggerHoldOffInfo, dwf_C), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, psecMin, psecMax, pnStep)
end

function FDwfAnalogInTriggerHoldOffSet(hdwf, secHoldOff)
    ccall((:FDwfAnalogInTriggerHoldOffSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, secHoldOff)
end

function FDwfAnalogInTriggerHoldOffGet(hdwf, psecHoldOff)
    ccall((:FDwfAnalogInTriggerHoldOffGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecHoldOff)
end

function FDwfAnalogInTriggerTypeInfo(hdwf, pfstrigtype)
    ccall((:FDwfAnalogInTriggerTypeInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pfstrigtype)
end

function FDwfAnalogInTriggerTypeSet(hdwf, trigtype)
    ccall((:FDwfAnalogInTriggerTypeSet, dwf_C), BOOL, (HDWF, TRIGTYPE), hdwf, trigtype)
end

function FDwfAnalogInTriggerTypeGet(hdwf, ptrigtype)
    ccall((:FDwfAnalogInTriggerTypeGet, dwf_C), BOOL, (HDWF, Ptr{TRIGTYPE}), hdwf, ptrigtype)
end

function FDwfAnalogInTriggerChannelInfo(hdwf, pidxMin, pidxMax)
    ccall((:FDwfAnalogInTriggerChannelInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}, Ptr{Cint}), hdwf, pidxMin, pidxMax)
end

function FDwfAnalogInTriggerChannelSet(hdwf, idxChannel)
    ccall((:FDwfAnalogInTriggerChannelSet, dwf_C), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfAnalogInTriggerChannelGet(hdwf, pidxChannel)
    ccall((:FDwfAnalogInTriggerChannelGet, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pidxChannel)
end

function FDwfAnalogInTriggerFilterInfo(hdwf, pfsfilter)
    ccall((:FDwfAnalogInTriggerFilterInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pfsfilter)
end

function FDwfAnalogInTriggerFilterSet(hdwf, filter)
    ccall((:FDwfAnalogInTriggerFilterSet, dwf_C), BOOL, (HDWF, FILTER), hdwf, filter)
end

function FDwfAnalogInTriggerFilterGet(hdwf, pfilter)
    ccall((:FDwfAnalogInTriggerFilterGet, dwf_C), BOOL, (HDWF, Ptr{FILTER}), hdwf, pfilter)
end

function FDwfAnalogInTriggerLevelInfo(hdwf, pvoltsMin, pvoltsMax, pnSteps)
    ccall((:FDwfAnalogInTriggerLevelInfo, dwf_C), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, pvoltsMin, pvoltsMax, pnSteps)
end

function FDwfAnalogInTriggerLevelSet(hdwf, voltsLevel)
    ccall((:FDwfAnalogInTriggerLevelSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, voltsLevel)
end

function FDwfAnalogInTriggerLevelGet(hdwf, pvoltsLevel)
    ccall((:FDwfAnalogInTriggerLevelGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, pvoltsLevel)
end

function FDwfAnalogInTriggerHysteresisInfo(hdwf, pvoltsMin, pvoltsMax, pnSteps)
    ccall((:FDwfAnalogInTriggerHysteresisInfo, dwf_C), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, pvoltsMin, pvoltsMax, pnSteps)
end

function FDwfAnalogInTriggerHysteresisSet(hdwf, voltsLevel)
    ccall((:FDwfAnalogInTriggerHysteresisSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, voltsLevel)
end

function FDwfAnalogInTriggerHysteresisGet(hdwf, pvoltsHysteresis)
    ccall((:FDwfAnalogInTriggerHysteresisGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, pvoltsHysteresis)
end

function FDwfAnalogInTriggerConditionInfo(hdwf, pfstrigcond)
    ccall((:FDwfAnalogInTriggerConditionInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pfstrigcond)
end

function FDwfAnalogInTriggerConditionSet(hdwf, trigcond)
    ccall((:FDwfAnalogInTriggerConditionSet, dwf_C), BOOL, (HDWF, DwfTriggerSlope), hdwf, trigcond)
end

function FDwfAnalogInTriggerConditionGet(hdwf, ptrigcond)
    ccall((:FDwfAnalogInTriggerConditionGet, dwf_C), BOOL, (HDWF, Ptr{DwfTriggerSlope}), hdwf, ptrigcond)
end

function FDwfAnalogInTriggerLengthInfo(hdwf, psecMin, psecMax, pnSteps)
    ccall((:FDwfAnalogInTriggerLengthInfo, dwf_C), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, psecMin, psecMax, pnSteps)
end

function FDwfAnalogInTriggerLengthSet(hdwf, secLength)
    ccall((:FDwfAnalogInTriggerLengthSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, secLength)
end

function FDwfAnalogInTriggerLengthGet(hdwf, psecLength)
    ccall((:FDwfAnalogInTriggerLengthGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecLength)
end

function FDwfAnalogInTriggerLengthConditionInfo(hdwf, pfstriglen)
    ccall((:FDwfAnalogInTriggerLengthConditionInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pfstriglen)
end

function FDwfAnalogInTriggerLengthConditionSet(hdwf, triglen)
    ccall((:FDwfAnalogInTriggerLengthConditionSet, dwf_C), BOOL, (HDWF, TRIGLEN), hdwf, triglen)
end

function FDwfAnalogInTriggerLengthConditionGet(hdwf, ptriglen)
    ccall((:FDwfAnalogInTriggerLengthConditionGet, dwf_C), BOOL, (HDWF, Ptr{TRIGLEN}), hdwf, ptriglen)
end

function FDwfAnalogInSamplingSourceSet(hdwf, trigsrc)
    ccall((:FDwfAnalogInSamplingSourceSet, dwf_C), BOOL, (HDWF, TRIGSRC), hdwf, trigsrc)
end

function FDwfAnalogInSamplingSourceGet(hdwf, ptrigsrc)
    ccall((:FDwfAnalogInSamplingSourceGet, dwf_C), BOOL, (HDWF, Ptr{TRIGSRC}), hdwf, ptrigsrc)
end

function FDwfAnalogInSamplingSlopeSet(hdwf, slope)
    ccall((:FDwfAnalogInSamplingSlopeSet, dwf_C), BOOL, (HDWF, DwfTriggerSlope), hdwf, slope)
end

function FDwfAnalogInSamplingSlopeGet(hdwf, pslope)
    ccall((:FDwfAnalogInSamplingSlopeGet, dwf_C), BOOL, (HDWF, Ptr{DwfTriggerSlope}), hdwf, pslope)
end

function FDwfAnalogInSamplingDelaySet(hdwf, sec)
    ccall((:FDwfAnalogInSamplingDelaySet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, sec)
end

function FDwfAnalogInSamplingDelayGet(hdwf, psec)
    ccall((:FDwfAnalogInSamplingDelayGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psec)
end

function FDwfAnalogOutCount(hdwf, pcChannel)
    ccall((:FDwfAnalogOutCount, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pcChannel)
end

function FDwfAnalogOutMasterSet(hdwf, idxChannel, idxMaster)
    ccall((:FDwfAnalogOutMasterSet, dwf_C), BOOL, (HDWF, Cint, Cint), hdwf, idxChannel, idxMaster)
end

function FDwfAnalogOutMasterGet(hdwf, idxChannel, pidxMaster)
    ccall((:FDwfAnalogOutMasterGet, dwf_C), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pidxMaster)
end

function FDwfAnalogOutTriggerSourceSet(hdwf, idxChannel, trigsrc)
    ccall((:FDwfAnalogOutTriggerSourceSet, dwf_C), BOOL, (HDWF, Cint, TRIGSRC), hdwf, idxChannel, trigsrc)
end

function FDwfAnalogOutTriggerSourceGet(hdwf, idxChannel, ptrigsrc)
    ccall((:FDwfAnalogOutTriggerSourceGet, dwf_C), BOOL, (HDWF, Cint, Ptr{TRIGSRC}), hdwf, idxChannel, ptrigsrc)
end

function FDwfAnalogOutTriggerSlopeSet(hdwf, idxChannel, slope)
    ccall((:FDwfAnalogOutTriggerSlopeSet, dwf_C), BOOL, (HDWF, Cint, DwfTriggerSlope), hdwf, idxChannel, slope)
end

function FDwfAnalogOutTriggerSlopeGet(hdwf, idxChannel, pslope)
    ccall((:FDwfAnalogOutTriggerSlopeGet, dwf_C), BOOL, (HDWF, Cint, Ptr{DwfTriggerSlope}), hdwf, idxChannel, pslope)
end

function FDwfAnalogOutRunInfo(hdwf, idxChannel, psecMin, psecMax)
    ccall((:FDwfAnalogOutRunInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, psecMin, psecMax)
end

function FDwfAnalogOutRunSet(hdwf, idxChannel, secRun)
    ccall((:FDwfAnalogOutRunSet, dwf_C), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, secRun)
end

function FDwfAnalogOutRunGet(hdwf, idxChannel, psecRun)
    ccall((:FDwfAnalogOutRunGet, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, psecRun)
end

function FDwfAnalogOutRunStatus(hdwf, idxChannel, psecRun)
    ccall((:FDwfAnalogOutRunStatus, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, psecRun)
end

function FDwfAnalogOutWaitInfo(hdwf, idxChannel, psecMin, psecMax)
    ccall((:FDwfAnalogOutWaitInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, psecMin, psecMax)
end

function FDwfAnalogOutWaitSet(hdwf, idxChannel, secWait)
    ccall((:FDwfAnalogOutWaitSet, dwf_C), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, secWait)
end

function FDwfAnalogOutWaitGet(hdwf, idxChannel, psecWait)
    ccall((:FDwfAnalogOutWaitGet, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, psecWait)
end

function FDwfAnalogOutRepeatInfo(hdwf, idxChannel, pnMin, pnMax)
    ccall((:FDwfAnalogOutRepeatInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cint}, Ptr{Cint}), hdwf, idxChannel, pnMin, pnMax)
end

function FDwfAnalogOutRepeatSet(hdwf, idxChannel, cRepeat)
    ccall((:FDwfAnalogOutRepeatSet, dwf_C), BOOL, (HDWF, Cint, Cint), hdwf, idxChannel, cRepeat)
end

function FDwfAnalogOutRepeatGet(hdwf, idxChannel, pcRepeat)
    ccall((:FDwfAnalogOutRepeatGet, dwf_C), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pcRepeat)
end

function FDwfAnalogOutRepeatStatus(hdwf, idxChannel, pcRepeat)
    ccall((:FDwfAnalogOutRepeatStatus, dwf_C), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pcRepeat)
end

function FDwfAnalogOutRepeatTriggerSet(hdwf, idxChannel, fRepeatTrigger)
    ccall((:FDwfAnalogOutRepeatTriggerSet, dwf_C), BOOL, (HDWF, Cint, BOOL), hdwf, idxChannel, fRepeatTrigger)
end

function FDwfAnalogOutRepeatTriggerGet(hdwf, idxChannel, pfRepeatTrigger)
    ccall((:FDwfAnalogOutRepeatTriggerGet, dwf_C), BOOL, (HDWF, Cint, Ptr{BOOL}), hdwf, idxChannel, pfRepeatTrigger)
end

function FDwfAnalogOutLimitationInfo(hdwf, idxChannel, pMin, pMax)
    ccall((:FDwfAnalogOutLimitationInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, pMin, pMax)
end

function FDwfAnalogOutLimitationSet(hdwf, idxChannel, limit)
    ccall((:FDwfAnalogOutLimitationSet, dwf_C), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, limit)
end

function FDwfAnalogOutLimitationGet(hdwf, idxChannel, plimit)
    ccall((:FDwfAnalogOutLimitationGet, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, plimit)
end

function FDwfAnalogOutModeSet(hdwf, idxChannel, mode)
    ccall((:FDwfAnalogOutModeSet, dwf_C), BOOL, (HDWF, Cint, DwfAnalogOutMode), hdwf, idxChannel, mode)
end

function FDwfAnalogOutModeGet(hdwf, idxChannel, pmode)
    ccall((:FDwfAnalogOutModeGet, dwf_C), BOOL, (HDWF, Cint, Ptr{DwfAnalogOutMode}), hdwf, idxChannel, pmode)
end

function FDwfAnalogOutIdleInfo(hdwf, idxChannel, pfsidle)
    ccall((:FDwfAnalogOutIdleInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pfsidle)
end

function FDwfAnalogOutIdleSet(hdwf, idxChannel, idle)
    ccall((:FDwfAnalogOutIdleSet, dwf_C), BOOL, (HDWF, Cint, DwfAnalogOutIdle), hdwf, idxChannel, idle)
end

function FDwfAnalogOutIdleGet(hdwf, idxChannel, pidle)
    ccall((:FDwfAnalogOutIdleGet, dwf_C), BOOL, (HDWF, Cint, Ptr{DwfAnalogOutIdle}), hdwf, idxChannel, pidle)
end

function FDwfAnalogOutNodeInfo(hdwf, idxChannel, pfsnode)
    ccall((:FDwfAnalogOutNodeInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pfsnode)
end

function FDwfAnalogOutNodeEnableSet(hdwf, idxChannel, node, fEnable)
    ccall((:FDwfAnalogOutNodeEnableSet, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, BOOL), hdwf, idxChannel, node, fEnable)
end

function FDwfAnalogOutNodeEnableGet(hdwf, idxChannel, node, pfEnable)
    ccall((:FDwfAnalogOutNodeEnableGet, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{BOOL}), hdwf, idxChannel, node, pfEnable)
end

function FDwfAnalogOutNodeFunctionInfo(hdwf, idxChannel, node, pfsfunc)
    ccall((:FDwfAnalogOutNodeFunctionInfo, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cint}), hdwf, idxChannel, node, pfsfunc)
end

function FDwfAnalogOutNodeFunctionSet(hdwf, idxChannel, node, func)
    ccall((:FDwfAnalogOutNodeFunctionSet, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, FUNC), hdwf, idxChannel, node, func)
end

function FDwfAnalogOutNodeFunctionGet(hdwf, idxChannel, node, pfunc)
    ccall((:FDwfAnalogOutNodeFunctionGet, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{FUNC}), hdwf, idxChannel, node, pfunc)
end

function FDwfAnalogOutNodeFrequencyInfo(hdwf, idxChannel, node, phzMin, phzMax)
    ccall((:FDwfAnalogOutNodeFrequencyInfo, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, node, phzMin, phzMax)
end

function FDwfAnalogOutNodeFrequencySet(hdwf, idxChannel, node, hzFrequency)
    ccall((:FDwfAnalogOutNodeFrequencySet, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Cdouble), hdwf, idxChannel, node, hzFrequency)
end

function FDwfAnalogOutNodeFrequencyGet(hdwf, idxChannel, node, phzFrequency)
    ccall((:FDwfAnalogOutNodeFrequencyGet, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}), hdwf, idxChannel, node, phzFrequency)
end

function FDwfAnalogOutNodeAmplitudeInfo(hdwf, idxChannel, node, pMin, pMax)
    ccall((:FDwfAnalogOutNodeAmplitudeInfo, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, node, pMin, pMax)
end

function FDwfAnalogOutNodeAmplitudeSet(hdwf, idxChannel, node, vAmplitude)
    ccall((:FDwfAnalogOutNodeAmplitudeSet, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Cdouble), hdwf, idxChannel, node, vAmplitude)
end

function FDwfAnalogOutNodeAmplitudeGet(hdwf, idxChannel, node, pvAmplitude)
    ccall((:FDwfAnalogOutNodeAmplitudeGet, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}), hdwf, idxChannel, node, pvAmplitude)
end

function FDwfAnalogOutNodeOffsetInfo(hdwf, idxChannel, node, pMin, pMax)
    ccall((:FDwfAnalogOutNodeOffsetInfo, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, node, pMin, pMax)
end

function FDwfAnalogOutNodeOffsetSet(hdwf, idxChannel, node, vOffset)
    ccall((:FDwfAnalogOutNodeOffsetSet, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Cdouble), hdwf, idxChannel, node, vOffset)
end

function FDwfAnalogOutNodeOffsetGet(hdwf, idxChannel, node, pvOffset)
    ccall((:FDwfAnalogOutNodeOffsetGet, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}), hdwf, idxChannel, node, pvOffset)
end

function FDwfAnalogOutNodeSymmetryInfo(hdwf, idxChannel, node, ppercentageMin, ppercentageMax)
    ccall((:FDwfAnalogOutNodeSymmetryInfo, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, node, ppercentageMin, ppercentageMax)
end

function FDwfAnalogOutNodeSymmetrySet(hdwf, idxChannel, node, percentageSymmetry)
    ccall((:FDwfAnalogOutNodeSymmetrySet, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Cdouble), hdwf, idxChannel, node, percentageSymmetry)
end

function FDwfAnalogOutNodeSymmetryGet(hdwf, idxChannel, node, ppercentageSymmetry)
    ccall((:FDwfAnalogOutNodeSymmetryGet, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}), hdwf, idxChannel, node, ppercentageSymmetry)
end

function FDwfAnalogOutNodePhaseInfo(hdwf, idxChannel, node, pdegreeMin, pdegreeMax)
    ccall((:FDwfAnalogOutNodePhaseInfo, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, node, pdegreeMin, pdegreeMax)
end

function FDwfAnalogOutNodePhaseSet(hdwf, idxChannel, node, degreePhase)
    ccall((:FDwfAnalogOutNodePhaseSet, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Cdouble), hdwf, idxChannel, node, degreePhase)
end

function FDwfAnalogOutNodePhaseGet(hdwf, idxChannel, node, pdegreePhase)
    ccall((:FDwfAnalogOutNodePhaseGet, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}), hdwf, idxChannel, node, pdegreePhase)
end

function FDwfAnalogOutNodeDataInfo(hdwf, idxChannel, node, pnSamplesMin, pnSamplesMax)
    ccall((:FDwfAnalogOutNodeDataInfo, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cint}, Ptr{Cint}), hdwf, idxChannel, node, pnSamplesMin, pnSamplesMax)
end

function FDwfAnalogOutNodeDataSet(hdwf, idxChannel, node, rgdData, cdData)
    ccall((:FDwfAnalogOutNodeDataSet, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}, Cint), hdwf, idxChannel, node, rgdData, cdData)
end

function FDwfAnalogOutCustomAMFMEnableSet(hdwf, idxChannel, fEnable)
    ccall((:FDwfAnalogOutCustomAMFMEnableSet, dwf_C), BOOL, (HDWF, Cint, BOOL), hdwf, idxChannel, fEnable)
end

function FDwfAnalogOutCustomAMFMEnableGet(hdwf, idxChannel, pfEnable)
    ccall((:FDwfAnalogOutCustomAMFMEnableGet, dwf_C), BOOL, (HDWF, Cint, Ptr{BOOL}), hdwf, idxChannel, pfEnable)
end

function FDwfAnalogOutReset(hdwf, idxChannel)
    ccall((:FDwfAnalogOutReset, dwf_C), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfAnalogOutConfigure(hdwf, idxChannel, fStart)
    ccall((:FDwfAnalogOutConfigure, dwf_C), BOOL, (HDWF, Cint, BOOL), hdwf, idxChannel, fStart)
end

function FDwfAnalogOutStatus(hdwf, idxChannel, psts)
    ccall((:FDwfAnalogOutStatus, dwf_C), BOOL, (HDWF, Cint, Ptr{DwfState}), hdwf, idxChannel, psts)
end

function FDwfAnalogOutNodePlayStatus(hdwf, idxChannel, node, cdDataFree, cdDataLost, cdDataCorrupted)
    ccall((:FDwfAnalogOutNodePlayStatus, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), hdwf, idxChannel, node, cdDataFree, cdDataLost, cdDataCorrupted)
end

function FDwfAnalogOutNodePlayData(hdwf, idxChannel, node, rgdData, cdData)
    ccall((:FDwfAnalogOutNodePlayData, dwf_C), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}, Cint), hdwf, idxChannel, node, rgdData, cdData)
end

function FDwfAnalogIOReset(hdwf)
    ccall((:FDwfAnalogIOReset, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfAnalogIOConfigure(hdwf)
    ccall((:FDwfAnalogIOConfigure, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfAnalogIOStatus(hdwf)
    ccall((:FDwfAnalogIOStatus, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfAnalogIOEnableInfo(hdwf, pfSet, pfStatus)
    ccall((:FDwfAnalogIOEnableInfo, dwf_C), BOOL, (HDWF, Ptr{BOOL}, Ptr{BOOL}), hdwf, pfSet, pfStatus)
end

function FDwfAnalogIOEnableSet(hdwf, fMasterEnable)
    ccall((:FDwfAnalogIOEnableSet, dwf_C), BOOL, (HDWF, BOOL), hdwf, fMasterEnable)
end

function FDwfAnalogIOEnableGet(hdwf, pfMasterEnable)
    ccall((:FDwfAnalogIOEnableGet, dwf_C), BOOL, (HDWF, Ptr{BOOL}), hdwf, pfMasterEnable)
end

function FDwfAnalogIOEnableStatus(hdwf, pfMasterEnable)
    ccall((:FDwfAnalogIOEnableStatus, dwf_C), BOOL, (HDWF, Ptr{BOOL}), hdwf, pfMasterEnable)
end

function FDwfAnalogIOChannelCount(hdwf, pnChannel)
    ccall((:FDwfAnalogIOChannelCount, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pnChannel)
end

function FDwfAnalogIOChannelName(hdwf, idxChannel, szName, szLabel)
    ccall((:FDwfAnalogIOChannelName, dwf_C), BOOL, (HDWF, Cint, Ptr{UInt8}, Ptr{UInt8}), hdwf, idxChannel, szName, szLabel)
end

function FDwfAnalogIOChannelInfo(hdwf, idxChannel, pnNodes)
    ccall((:FDwfAnalogIOChannelInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pnNodes)
end

function FDwfAnalogIOChannelNodeName(hdwf, idxChannel, idxNode, szNodeName, szNodeUnits)
    ccall((:FDwfAnalogIOChannelNodeName, dwf_C), BOOL, (HDWF, Cint, Cint, Ptr{UInt8}, Ptr{UInt8}), hdwf, idxChannel, idxNode, szNodeName, szNodeUnits)
end

function FDwfAnalogIOChannelNodeInfo(hdwf, idxChannel, idxNode, panalogio)
    ccall((:FDwfAnalogIOChannelNodeInfo, dwf_C), BOOL, (HDWF, Cint, Cint, Ptr{ANALOGIO}), hdwf, idxChannel, idxNode, panalogio)
end

function FDwfAnalogIOChannelNodeSetInfo(hdwf, idxChannel, idxNode, pmin, pmax, pnSteps)
    ccall((:FDwfAnalogIOChannelNodeSetInfo, dwf_C), BOOL, (HDWF, Cint, Cint, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cint}), hdwf, idxChannel, idxNode, pmin, pmax, pnSteps)
end

function FDwfAnalogIOChannelNodeSet(hdwf, idxChannel, idxNode, value)
    ccall((:FDwfAnalogIOChannelNodeSet, dwf_C), BOOL, (HDWF, Cint, Cint, Cdouble), hdwf, idxChannel, idxNode, value)
end

function FDwfAnalogIOChannelNodeGet(hdwf, idxChannel, idxNode, pvalue)
    ccall((:FDwfAnalogIOChannelNodeGet, dwf_C), BOOL, (HDWF, Cint, Cint, Ptr{Cdouble}), hdwf, idxChannel, idxNode, pvalue)
end

function FDwfAnalogIOChannelNodeStatusInfo(hdwf, idxChannel, idxNode, pmin, pmax, pnSteps)
    ccall((:FDwfAnalogIOChannelNodeStatusInfo, dwf_C), BOOL, (HDWF, Cint, Cint, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cint}), hdwf, idxChannel, idxNode, pmin, pmax, pnSteps)
end

function FDwfAnalogIOChannelNodeStatus(hdwf, idxChannel, idxNode, pvalue)
    ccall((:FDwfAnalogIOChannelNodeStatus, dwf_C), BOOL, (HDWF, Cint, Cint, Ptr{Cdouble}), hdwf, idxChannel, idxNode, pvalue)
end

function FDwfDigitalIOReset(hdwf)
    ccall((:FDwfDigitalIOReset, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalIOConfigure(hdwf)
    ccall((:FDwfDigitalIOConfigure, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalIOStatus(hdwf)
    ccall((:FDwfDigitalIOStatus, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalIOOutputEnableInfo(hdwf, pfsOutputEnableMask)
    ccall((:FDwfDigitalIOOutputEnableInfo, dwf_C), BOOL, (HDWF, Ptr{UInt32}), hdwf, pfsOutputEnableMask)
end

function FDwfDigitalIOOutputEnableSet(hdwf, fsOutputEnable)
    ccall((:FDwfDigitalIOOutputEnableSet, dwf_C), BOOL, (HDWF, UInt32), hdwf, fsOutputEnable)
end

function FDwfDigitalIOOutputEnableGet(hdwf, pfsOutputEnable)
    ccall((:FDwfDigitalIOOutputEnableGet, dwf_C), BOOL, (HDWF, Ptr{UInt32}), hdwf, pfsOutputEnable)
end

function FDwfDigitalIOOutputInfo(hdwf, pfsOutputMask)
    ccall((:FDwfDigitalIOOutputInfo, dwf_C), BOOL, (HDWF, Ptr{UInt32}), hdwf, pfsOutputMask)
end

function FDwfDigitalIOOutputSet(hdwf, fsOutput)
    ccall((:FDwfDigitalIOOutputSet, dwf_C), BOOL, (HDWF, UInt32), hdwf, fsOutput)
end

function FDwfDigitalIOOutputGet(hdwf, pfsOutput)
    ccall((:FDwfDigitalIOOutputGet, dwf_C), BOOL, (HDWF, Ptr{UInt32}), hdwf, pfsOutput)
end

function FDwfDigitalIOInputInfo(hdwf, pfsInputMask)
    ccall((:FDwfDigitalIOInputInfo, dwf_C), BOOL, (HDWF, Ptr{UInt32}), hdwf, pfsInputMask)
end

function FDwfDigitalIOInputStatus(hdwf, pfsInput)
    ccall((:FDwfDigitalIOInputStatus, dwf_C), BOOL, (HDWF, Ptr{UInt32}), hdwf, pfsInput)
end

function FDwfDigitalIOOutputEnableInfo64(hdwf, pfsOutputEnableMask)
    ccall((:FDwfDigitalIOOutputEnableInfo64, dwf_C), BOOL, (HDWF, Ptr{Culonglong}), hdwf, pfsOutputEnableMask)
end

function FDwfDigitalIOOutputEnableSet64(hdwf, fsOutputEnable)
    ccall((:FDwfDigitalIOOutputEnableSet64, dwf_C), BOOL, (HDWF, Culonglong), hdwf, fsOutputEnable)
end

function FDwfDigitalIOOutputEnableGet64(hdwf, pfsOutputEnable)
    ccall((:FDwfDigitalIOOutputEnableGet64, dwf_C), BOOL, (HDWF, Ptr{Culonglong}), hdwf, pfsOutputEnable)
end

function FDwfDigitalIOOutputInfo64(hdwf, pfsOutputMask)
    ccall((:FDwfDigitalIOOutputInfo64, dwf_C), BOOL, (HDWF, Ptr{Culonglong}), hdwf, pfsOutputMask)
end

function FDwfDigitalIOOutputSet64(hdwf, fsOutput)
    ccall((:FDwfDigitalIOOutputSet64, dwf_C), BOOL, (HDWF, Culonglong), hdwf, fsOutput)
end

function FDwfDigitalIOOutputGet64(hdwf, pfsOutput)
    ccall((:FDwfDigitalIOOutputGet64, dwf_C), BOOL, (HDWF, Ptr{Culonglong}), hdwf, pfsOutput)
end

function FDwfDigitalIOInputInfo64(hdwf, pfsInputMask)
    ccall((:FDwfDigitalIOInputInfo64, dwf_C), BOOL, (HDWF, Ptr{Culonglong}), hdwf, pfsInputMask)
end

function FDwfDigitalIOInputStatus64(hdwf, pfsInput)
    ccall((:FDwfDigitalIOInputStatus64, dwf_C), BOOL, (HDWF, Ptr{Culonglong}), hdwf, pfsInput)
end

function FDwfDigitalInReset(hdwf)
    ccall((:FDwfDigitalInReset, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalInConfigure(hdwf, fReconfigure, fStart)
    ccall((:FDwfDigitalInConfigure, dwf_C), BOOL, (HDWF, BOOL, BOOL), hdwf, fReconfigure, fStart)
end

function FDwfDigitalInStatus(hdwf, fReadData, psts)
    ccall((:FDwfDigitalInStatus, dwf_C), BOOL, (HDWF, BOOL, Ptr{DwfState}), hdwf, fReadData, psts)
end

function FDwfDigitalInStatusSamplesLeft(hdwf, pcSamplesLeft)
    ccall((:FDwfDigitalInStatusSamplesLeft, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pcSamplesLeft)
end

function FDwfDigitalInStatusSamplesValid(hdwf, pcSamplesValid)
    ccall((:FDwfDigitalInStatusSamplesValid, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pcSamplesValid)
end

function FDwfDigitalInStatusIndexWrite(hdwf, pidxWrite)
    ccall((:FDwfDigitalInStatusIndexWrite, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pidxWrite)
end

function FDwfDigitalInStatusAutoTriggered(hdwf, pfAuto)
    ccall((:FDwfDigitalInStatusAutoTriggered, dwf_C), BOOL, (HDWF, Ptr{BOOL}), hdwf, pfAuto)
end

function FDwfDigitalInStatusData(hdwf, rgData, countOfDataBytes)
    ccall((:FDwfDigitalInStatusData, dwf_C), BOOL, (HDWF, Ptr{Cvoid}, Cint), hdwf, rgData, countOfDataBytes)
end

function FDwfDigitalInStatusData2(hdwf, rgData, idxSample, countOfDataBytes)
    ccall((:FDwfDigitalInStatusData2, dwf_C), BOOL, (HDWF, Ptr{Cvoid}, Cint, Cint), hdwf, rgData, idxSample, countOfDataBytes)
end

function FDwfDigitalInStatusNoise2(hdwf, rgData, idxSample, countOfDataBytes)
    ccall((:FDwfDigitalInStatusNoise2, dwf_C), BOOL, (HDWF, Ptr{Cvoid}, Cint, Cint), hdwf, rgData, idxSample, countOfDataBytes)
end

function FDwfDigitalInStatusRecord(hdwf, pcdDataAvailable, pcdDataLost, pcdDataCorrupt)
    ccall((:FDwfDigitalInStatusRecord, dwf_C), BOOL, (HDWF, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), hdwf, pcdDataAvailable, pcdDataLost, pcdDataCorrupt)
end

function FDwfDigitalInInternalClockInfo(hdwf, phzFreq)
    ccall((:FDwfDigitalInInternalClockInfo, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, phzFreq)
end

function FDwfDigitalInClockSourceInfo(hdwf, pfsDwfDigitalInClockSource)
    ccall((:FDwfDigitalInClockSourceInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pfsDwfDigitalInClockSource)
end

function FDwfDigitalInClockSourceSet(hdwf, v)
    ccall((:FDwfDigitalInClockSourceSet, dwf_C), BOOL, (HDWF, DwfDigitalInClockSource), hdwf, v)
end

function FDwfDigitalInClockSourceGet(hdwf, pv)
    ccall((:FDwfDigitalInClockSourceGet, dwf_C), BOOL, (HDWF, Ptr{DwfDigitalInClockSource}), hdwf, pv)
end

function FDwfDigitalInDividerInfo(hdwf, pdivMax)
    ccall((:FDwfDigitalInDividerInfo, dwf_C), BOOL, (HDWF, Ptr{UInt32}), hdwf, pdivMax)
end

function FDwfDigitalInDividerSet(hdwf, div)
    ccall((:FDwfDigitalInDividerSet, dwf_C), BOOL, (HDWF, UInt32), hdwf, div)
end

function FDwfDigitalInDividerGet(hdwf, pdiv)
    ccall((:FDwfDigitalInDividerGet, dwf_C), BOOL, (HDWF, Ptr{UInt32}), hdwf, pdiv)
end

function FDwfDigitalInBitsInfo(hdwf, pnBits)
    ccall((:FDwfDigitalInBitsInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pnBits)
end

function FDwfDigitalInSampleFormatSet(hdwf, nBits)
    ccall((:FDwfDigitalInSampleFormatSet, dwf_C), BOOL, (HDWF, Cint), hdwf, nBits)
end

function FDwfDigitalInSampleFormatGet(hdwf, pnBits)
    ccall((:FDwfDigitalInSampleFormatGet, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pnBits)
end

function FDwfDigitalInInputOrderSet(hdwf, fDioFirst)
    ccall((:FDwfDigitalInInputOrderSet, dwf_C), BOOL, (HDWF, Cint), hdwf, fDioFirst)
end

function FDwfDigitalInBufferSizeInfo(hdwf, pnSizeMax)
    ccall((:FDwfDigitalInBufferSizeInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pnSizeMax)
end

function FDwfDigitalInBufferSizeSet(hdwf, nSize)
    ccall((:FDwfDigitalInBufferSizeSet, dwf_C), BOOL, (HDWF, Cint), hdwf, nSize)
end

function FDwfDigitalInBufferSizeGet(hdwf, pnSize)
    ccall((:FDwfDigitalInBufferSizeGet, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pnSize)
end

function FDwfDigitalInSampleModeInfo(hdwf, pfsDwfDigitalInSampleMode)
    ccall((:FDwfDigitalInSampleModeInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pfsDwfDigitalInSampleMode)
end

function FDwfDigitalInSampleModeSet(hdwf, v)
    ccall((:FDwfDigitalInSampleModeSet, dwf_C), BOOL, (HDWF, DwfDigitalInSampleMode), hdwf, v)
end

function FDwfDigitalInSampleModeGet(hdwf, pv)
    ccall((:FDwfDigitalInSampleModeGet, dwf_C), BOOL, (HDWF, Ptr{DwfDigitalInSampleMode}), hdwf, pv)
end

function FDwfDigitalInSampleSensibleSet(hdwf, fs)
    ccall((:FDwfDigitalInSampleSensibleSet, dwf_C), BOOL, (HDWF, UInt32), hdwf, fs)
end

function FDwfDigitalInSampleSensibleGet(hdwf, pfs)
    ccall((:FDwfDigitalInSampleSensibleGet, dwf_C), BOOL, (HDWF, Ptr{UInt32}), hdwf, pfs)
end

function FDwfDigitalInAcquisitionModeInfo(hdwf, pfsacqmode)
    ccall((:FDwfDigitalInAcquisitionModeInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pfsacqmode)
end

function FDwfDigitalInAcquisitionModeSet(hdwf, acqmode)
    ccall((:FDwfDigitalInAcquisitionModeSet, dwf_C), BOOL, (HDWF, ACQMODE), hdwf, acqmode)
end

function FDwfDigitalInAcquisitionModeGet(hdwf, pacqmode)
    ccall((:FDwfDigitalInAcquisitionModeGet, dwf_C), BOOL, (HDWF, Ptr{ACQMODE}), hdwf, pacqmode)
end

function FDwfDigitalInTriggerSourceSet(hdwf, trigsrc)
    ccall((:FDwfDigitalInTriggerSourceSet, dwf_C), BOOL, (HDWF, TRIGSRC), hdwf, trigsrc)
end

function FDwfDigitalInTriggerSourceGet(hdwf, ptrigsrc)
    ccall((:FDwfDigitalInTriggerSourceGet, dwf_C), BOOL, (HDWF, Ptr{TRIGSRC}), hdwf, ptrigsrc)
end

function FDwfDigitalInTriggerSlopeSet(hdwf, slope)
    ccall((:FDwfDigitalInTriggerSlopeSet, dwf_C), BOOL, (HDWF, DwfTriggerSlope), hdwf, slope)
end

function FDwfDigitalInTriggerSlopeGet(hdwf, pslope)
    ccall((:FDwfDigitalInTriggerSlopeGet, dwf_C), BOOL, (HDWF, Ptr{DwfTriggerSlope}), hdwf, pslope)
end

function FDwfDigitalInTriggerPositionInfo(hdwf, pnSamplesAfterTriggerMax)
    ccall((:FDwfDigitalInTriggerPositionInfo, dwf_C), BOOL, (HDWF, Ptr{UInt32}), hdwf, pnSamplesAfterTriggerMax)
end

function FDwfDigitalInTriggerPositionSet(hdwf, cSamplesAfterTrigger)
    ccall((:FDwfDigitalInTriggerPositionSet, dwf_C), BOOL, (HDWF, UInt32), hdwf, cSamplesAfterTrigger)
end

function FDwfDigitalInTriggerPositionGet(hdwf, pcSamplesAfterTrigger)
    ccall((:FDwfDigitalInTriggerPositionGet, dwf_C), BOOL, (HDWF, Ptr{UInt32}), hdwf, pcSamplesAfterTrigger)
end

function FDwfDigitalInTriggerPrefillSet(hdwf, cSamplesBeforeTrigger)
    ccall((:FDwfDigitalInTriggerPrefillSet, dwf_C), BOOL, (HDWF, UInt32), hdwf, cSamplesBeforeTrigger)
end

function FDwfDigitalInTriggerPrefillGet(hdwf, pcSamplesBeforeTrigger)
    ccall((:FDwfDigitalInTriggerPrefillGet, dwf_C), BOOL, (HDWF, Ptr{UInt32}), hdwf, pcSamplesBeforeTrigger)
end

function FDwfDigitalInTriggerAutoTimeoutInfo(hdwf, psecMin, psecMax, pnSteps)
    ccall((:FDwfDigitalInTriggerAutoTimeoutInfo, dwf_C), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, psecMin, psecMax, pnSteps)
end

function FDwfDigitalInTriggerAutoTimeoutSet(hdwf, secTimeout)
    ccall((:FDwfDigitalInTriggerAutoTimeoutSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, secTimeout)
end

function FDwfDigitalInTriggerAutoTimeoutGet(hdwf, psecTimeout)
    ccall((:FDwfDigitalInTriggerAutoTimeoutGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecTimeout)
end

function FDwfDigitalInTriggerInfo(hdwf, pfsLevelLow, pfsLevelHigh, pfsEdgeRise, pfsEdgeFall)
    ccall((:FDwfDigitalInTriggerInfo, dwf_C), BOOL, (HDWF, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}), hdwf, pfsLevelLow, pfsLevelHigh, pfsEdgeRise, pfsEdgeFall)
end

function FDwfDigitalInTriggerSet(hdwf, fsLevelLow, fsLevelHigh, fsEdgeRise, fsEdgeFall)
    ccall((:FDwfDigitalInTriggerSet, dwf_C), BOOL, (HDWF, UInt32, UInt32, UInt32, UInt32), hdwf, fsLevelLow, fsLevelHigh, fsEdgeRise, fsEdgeFall)
end

function FDwfDigitalInTriggerGet(hdwf, pfsLevelLow, pfsLevelHigh, pfsEdgeRise, pfsEdgeFall)
    ccall((:FDwfDigitalInTriggerGet, dwf_C), BOOL, (HDWF, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}), hdwf, pfsLevelLow, pfsLevelHigh, pfsEdgeRise, pfsEdgeFall)
end

function FDwfDigitalInTriggerResetSet(hdwf, fsLevelLow, fsLevelHigh, fsEdgeRise, fsEdgeFall)
    ccall((:FDwfDigitalInTriggerResetSet, dwf_C), BOOL, (HDWF, UInt32, UInt32, UInt32, UInt32), hdwf, fsLevelLow, fsLevelHigh, fsEdgeRise, fsEdgeFall)
end

function FDwfDigitalInTriggerCountSet(hdwf, cCount, fRestart)
    ccall((:FDwfDigitalInTriggerCountSet, dwf_C), BOOL, (HDWF, Cint, Cint), hdwf, cCount, fRestart)
end

function FDwfDigitalInTriggerLengthSet(hdwf, secMin, secMax, idxSync)
    ccall((:FDwfDigitalInTriggerLengthSet, dwf_C), BOOL, (HDWF, Cdouble, Cdouble, Cint), hdwf, secMin, secMax, idxSync)
end

function FDwfDigitalInTriggerMatchSet(hdwf, iPin, fsMask, fsValue, cBitStuffing)
    ccall((:FDwfDigitalInTriggerMatchSet, dwf_C), BOOL, (HDWF, Cint, UInt32, UInt32, Cint), hdwf, iPin, fsMask, fsValue, cBitStuffing)
end

function FDwfDigitalOutReset(hdwf)
    ccall((:FDwfDigitalOutReset, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalOutConfigure(hdwf, fStart)
    ccall((:FDwfDigitalOutConfigure, dwf_C), BOOL, (HDWF, BOOL), hdwf, fStart)
end

function FDwfDigitalOutStatus(hdwf, psts)
    ccall((:FDwfDigitalOutStatus, dwf_C), BOOL, (HDWF, Ptr{DwfState}), hdwf, psts)
end

function FDwfDigitalOutInternalClockInfo(hdwf, phzFreq)
    ccall((:FDwfDigitalOutInternalClockInfo, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, phzFreq)
end

function FDwfDigitalOutTriggerSourceSet(hdwf, trigsrc)
    ccall((:FDwfDigitalOutTriggerSourceSet, dwf_C), BOOL, (HDWF, TRIGSRC), hdwf, trigsrc)
end

function FDwfDigitalOutTriggerSourceGet(hdwf, ptrigsrc)
    ccall((:FDwfDigitalOutTriggerSourceGet, dwf_C), BOOL, (HDWF, Ptr{TRIGSRC}), hdwf, ptrigsrc)
end

function FDwfDigitalOutRunInfo(hdwf, psecMin, psecMax)
    ccall((:FDwfDigitalOutRunInfo, dwf_C), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, psecMin, psecMax)
end

function FDwfDigitalOutRunSet(hdwf, secRun)
    ccall((:FDwfDigitalOutRunSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, secRun)
end

function FDwfDigitalOutRunGet(hdwf, psecRun)
    ccall((:FDwfDigitalOutRunGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecRun)
end

function FDwfDigitalOutRunStatus(hdwf, psecRun)
    ccall((:FDwfDigitalOutRunStatus, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecRun)
end

function FDwfDigitalOutWaitInfo(hdwf, psecMin, psecMax)
    ccall((:FDwfDigitalOutWaitInfo, dwf_C), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, psecMin, psecMax)
end

function FDwfDigitalOutWaitSet(hdwf, secWait)
    ccall((:FDwfDigitalOutWaitSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, secWait)
end

function FDwfDigitalOutWaitGet(hdwf, psecWait)
    ccall((:FDwfDigitalOutWaitGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecWait)
end

function FDwfDigitalOutRepeatInfo(hdwf, pnMin, pnMax)
    ccall((:FDwfDigitalOutRepeatInfo, dwf_C), BOOL, (HDWF, Ptr{UInt32}, Ptr{UInt32}), hdwf, pnMin, pnMax)
end

function FDwfDigitalOutRepeatSet(hdwf, cRepeat)
    ccall((:FDwfDigitalOutRepeatSet, dwf_C), BOOL, (HDWF, UInt32), hdwf, cRepeat)
end

function FDwfDigitalOutRepeatGet(hdwf, pcRepeat)
    ccall((:FDwfDigitalOutRepeatGet, dwf_C), BOOL, (HDWF, Ptr{UInt32}), hdwf, pcRepeat)
end

function FDwfDigitalOutRepeatStatus(hdwf, pcRepeat)
    ccall((:FDwfDigitalOutRepeatStatus, dwf_C), BOOL, (HDWF, Ptr{UInt32}), hdwf, pcRepeat)
end

function FDwfDigitalOutTriggerSlopeSet(hdwf, slope)
    ccall((:FDwfDigitalOutTriggerSlopeSet, dwf_C), BOOL, (HDWF, DwfTriggerSlope), hdwf, slope)
end

function FDwfDigitalOutTriggerSlopeGet(hdwf, pslope)
    ccall((:FDwfDigitalOutTriggerSlopeGet, dwf_C), BOOL, (HDWF, Ptr{DwfTriggerSlope}), hdwf, pslope)
end

function FDwfDigitalOutRepeatTriggerSet(hdwf, fRepeatTrigger)
    ccall((:FDwfDigitalOutRepeatTriggerSet, dwf_C), BOOL, (HDWF, BOOL), hdwf, fRepeatTrigger)
end

function FDwfDigitalOutRepeatTriggerGet(hdwf, pfRepeatTrigger)
    ccall((:FDwfDigitalOutRepeatTriggerGet, dwf_C), BOOL, (HDWF, Ptr{BOOL}), hdwf, pfRepeatTrigger)
end

function FDwfDigitalOutCount(hdwf, pcChannel)
    ccall((:FDwfDigitalOutCount, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pcChannel)
end

function FDwfDigitalOutEnableSet(hdwf, idxChannel, fEnable)
    ccall((:FDwfDigitalOutEnableSet, dwf_C), BOOL, (HDWF, Cint, BOOL), hdwf, idxChannel, fEnable)
end

function FDwfDigitalOutEnableGet(hdwf, idxChannel, pfEnable)
    ccall((:FDwfDigitalOutEnableGet, dwf_C), BOOL, (HDWF, Cint, Ptr{BOOL}), hdwf, idxChannel, pfEnable)
end

function FDwfDigitalOutOutputInfo(hdwf, idxChannel, pfsDwfDigitalOutOutput)
    ccall((:FDwfDigitalOutOutputInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pfsDwfDigitalOutOutput)
end

function FDwfDigitalOutOutputSet(hdwf, idxChannel, v)
    ccall((:FDwfDigitalOutOutputSet, dwf_C), BOOL, (HDWF, Cint, DwfDigitalOutOutput), hdwf, idxChannel, v)
end

function FDwfDigitalOutOutputGet(hdwf, idxChannel, pv)
    ccall((:FDwfDigitalOutOutputGet, dwf_C), BOOL, (HDWF, Cint, Ptr{DwfDigitalOutOutput}), hdwf, idxChannel, pv)
end

function FDwfDigitalOutTypeInfo(hdwf, idxChannel, pfsDwfDigitalOutType)
    ccall((:FDwfDigitalOutTypeInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pfsDwfDigitalOutType)
end

function FDwfDigitalOutTypeSet(hdwf, idxChannel, v)
    ccall((:FDwfDigitalOutTypeSet, dwf_C), BOOL, (HDWF, Cint, DwfDigitalOutType), hdwf, idxChannel, v)
end

function FDwfDigitalOutTypeGet(hdwf, idxChannel, pv)
    ccall((:FDwfDigitalOutTypeGet, dwf_C), BOOL, (HDWF, Cint, Ptr{DwfDigitalOutType}), hdwf, idxChannel, pv)
end

function FDwfDigitalOutIdleInfo(hdwf, idxChannel, pfsDwfDigitalOutIdle)
    ccall((:FDwfDigitalOutIdleInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pfsDwfDigitalOutIdle)
end

function FDwfDigitalOutIdleSet(hdwf, idxChannel, v)
    ccall((:FDwfDigitalOutIdleSet, dwf_C), BOOL, (HDWF, Cint, DwfDigitalOutIdle), hdwf, idxChannel, v)
end

function FDwfDigitalOutIdleGet(hdwf, idxChannel, pv)
    ccall((:FDwfDigitalOutIdleGet, dwf_C), BOOL, (HDWF, Cint, Ptr{DwfDigitalOutIdle}), hdwf, idxChannel, pv)
end

function FDwfDigitalOutDividerInfo(hdwf, idxChannel, vMin, vMax)
    ccall((:FDwfDigitalOutDividerInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{UInt32}, Ptr{UInt32}), hdwf, idxChannel, vMin, vMax)
end

function FDwfDigitalOutDividerInitSet(hdwf, idxChannel, v)
    ccall((:FDwfDigitalOutDividerInitSet, dwf_C), BOOL, (HDWF, Cint, UInt32), hdwf, idxChannel, v)
end

function FDwfDigitalOutDividerInitGet(hdwf, idxChannel, pv)
    ccall((:FDwfDigitalOutDividerInitGet, dwf_C), BOOL, (HDWF, Cint, Ptr{UInt32}), hdwf, idxChannel, pv)
end

function FDwfDigitalOutDividerSet(hdwf, idxChannel, v)
    ccall((:FDwfDigitalOutDividerSet, dwf_C), BOOL, (HDWF, Cint, UInt32), hdwf, idxChannel, v)
end

function FDwfDigitalOutDividerGet(hdwf, idxChannel, pv)
    ccall((:FDwfDigitalOutDividerGet, dwf_C), BOOL, (HDWF, Cint, Ptr{UInt32}), hdwf, idxChannel, pv)
end

function FDwfDigitalOutCounterInfo(hdwf, idxChannel, vMin, vMax)
    ccall((:FDwfDigitalOutCounterInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{UInt32}, Ptr{UInt32}), hdwf, idxChannel, vMin, vMax)
end

function FDwfDigitalOutCounterInitSet(hdwf, idxChannel, fHigh, v)
    ccall((:FDwfDigitalOutCounterInitSet, dwf_C), BOOL, (HDWF, Cint, BOOL, UInt32), hdwf, idxChannel, fHigh, v)
end

function FDwfDigitalOutCounterInitGet(hdwf, idxChannel, pfHigh, pv)
    ccall((:FDwfDigitalOutCounterInitGet, dwf_C), BOOL, (HDWF, Cint, Ptr{Cint}, Ptr{UInt32}), hdwf, idxChannel, pfHigh, pv)
end

function FDwfDigitalOutCounterSet(hdwf, idxChannel, vLow, vHigh)
    ccall((:FDwfDigitalOutCounterSet, dwf_C), BOOL, (HDWF, Cint, UInt32, UInt32), hdwf, idxChannel, vLow, vHigh)
end

function FDwfDigitalOutCounterGet(hdwf, idxChannel, pvLow, pvHigh)
    ccall((:FDwfDigitalOutCounterGet, dwf_C), BOOL, (HDWF, Cint, Ptr{UInt32}, Ptr{UInt32}), hdwf, idxChannel, pvLow, pvHigh)
end

function FDwfDigitalOutDataInfo(hdwf, idxChannel, pcountOfBitsMax)
    ccall((:FDwfDigitalOutDataInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{UInt32}), hdwf, idxChannel, pcountOfBitsMax)
end

function FDwfDigitalOutDataSet(hdwf, idxChannel, rgBits, countOfBits)
    ccall((:FDwfDigitalOutDataSet, dwf_C), BOOL, (HDWF, Cint, Ptr{Cvoid}, UInt32), hdwf, idxChannel, rgBits, countOfBits)
end

function FDwfDigitalUartReset(hdwf)
    ccall((:FDwfDigitalUartReset, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalUartRateSet(hdwf, hz)
    ccall((:FDwfDigitalUartRateSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, hz)
end

function FDwfDigitalUartBitsSet(hdwf, cBits)
    ccall((:FDwfDigitalUartBitsSet, dwf_C), BOOL, (HDWF, Cint), hdwf, cBits)
end

function FDwfDigitalUartParitySet(hdwf, parity)
    ccall((:FDwfDigitalUartParitySet, dwf_C), BOOL, (HDWF, Cint), hdwf, parity)
end

function FDwfDigitalUartStopSet(hdwf, cBit)
    ccall((:FDwfDigitalUartStopSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, cBit)
end

function FDwfDigitalUartTxSet(hdwf, idxChannel)
    ccall((:FDwfDigitalUartTxSet, dwf_C), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfDigitalUartRxSet(hdwf, idxChannel)
    ccall((:FDwfDigitalUartRxSet, dwf_C), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfDigitalUartTx(hdwf, szTx, cTx)
    ccall((:FDwfDigitalUartTx, dwf_C), BOOL, (HDWF, Cstring, Cint), hdwf, szTx, cTx)
end

function FDwfDigitalUartRx(hdwf, szRx, cRx, pcRx, pParity)
    ccall((:FDwfDigitalUartRx, dwf_C), BOOL, (HDWF, Cstring, Cint, Ptr{Cint}, Ptr{Cint}), hdwf, szRx, cRx, pcRx, pParity)
end

function FDwfDigitalSpiReset(hdwf)
    ccall((:FDwfDigitalSpiReset, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalSpiFrequencySet(hdwf, hz)
    ccall((:FDwfDigitalSpiFrequencySet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, hz)
end

function FDwfDigitalSpiClockSet(hdwf, idxChannel)
    ccall((:FDwfDigitalSpiClockSet, dwf_C), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfDigitalSpiDataSet(hdwf, idxDQ, idxChannel)
    ccall((:FDwfDigitalSpiDataSet, dwf_C), BOOL, (HDWF, Cint, Cint), hdwf, idxDQ, idxChannel)
end

function FDwfDigitalSpiModeSet(hdwf, iMode)
    ccall((:FDwfDigitalSpiModeSet, dwf_C), BOOL, (HDWF, Cint), hdwf, iMode)
end

function FDwfDigitalSpiOrderSet(hdwf, fMSBLSB)
    ccall((:FDwfDigitalSpiOrderSet, dwf_C), BOOL, (HDWF, Cint), hdwf, fMSBLSB)
end

function FDwfDigitalSpiSelect(hdwf, idxChannel, level)
    ccall((:FDwfDigitalSpiSelect, dwf_C), BOOL, (HDWF, Cint, Cint), hdwf, idxChannel, level)
end

function FDwfDigitalSpiWriteRead(hdwf, cDQ, cBitPerWord, rgTX, cTX, rgRX, cRX)
    ccall((:FDwfDigitalSpiWriteRead, dwf_C), BOOL, (HDWF, Cint, Cint, Ptr{Cuchar}, Cint, Ptr{Cuchar}, Cint), hdwf, cDQ, cBitPerWord, rgTX, cTX, rgRX, cRX)
end

function FDwfDigitalSpiWriteRead16(hdwf, cDQ, cBitPerWord, rgTX, cTX, rgRX, cRX)
    ccall((:FDwfDigitalSpiWriteRead16, dwf_C), BOOL, (HDWF, Cint, Cint, Ptr{UInt16}, Cint, Ptr{UInt16}, Cint), hdwf, cDQ, cBitPerWord, rgTX, cTX, rgRX, cRX)
end

function FDwfDigitalSpiWriteRead32(hdwf, cDQ, cBitPerWord, rgTX, cTX, rgRX, cRX)
    ccall((:FDwfDigitalSpiWriteRead32, dwf_C), BOOL, (HDWF, Cint, Cint, Ptr{UInt32}, Cint, Ptr{UInt32}, Cint), hdwf, cDQ, cBitPerWord, rgTX, cTX, rgRX, cRX)
end

function FDwfDigitalSpiRead(hdwf, cDQ, cBitPerWord, rgRX, cRX)
    ccall((:FDwfDigitalSpiRead, dwf_C), BOOL, (HDWF, Cint, Cint, Ptr{Cuchar}, Cint), hdwf, cDQ, cBitPerWord, rgRX, cRX)
end

function FDwfDigitalSpiReadOne(hdwf, cDQ, cBitPerWord, pRX)
    ccall((:FDwfDigitalSpiReadOne, dwf_C), BOOL, (HDWF, Cint, Cint, Ptr{UInt32}), hdwf, cDQ, cBitPerWord, pRX)
end

function FDwfDigitalSpiRead16(hdwf, cDQ, cBitPerWord, rgRX, cRX)
    ccall((:FDwfDigitalSpiRead16, dwf_C), BOOL, (HDWF, Cint, Cint, Ptr{UInt16}, Cint), hdwf, cDQ, cBitPerWord, rgRX, cRX)
end

function FDwfDigitalSpiRead32(hdwf, cDQ, cBitPerWord, rgRX, cRX)
    ccall((:FDwfDigitalSpiRead32, dwf_C), BOOL, (HDWF, Cint, Cint, Ptr{UInt32}, Cint), hdwf, cDQ, cBitPerWord, rgRX, cRX)
end

function FDwfDigitalSpiWrite(hdwf, cDQ, cBitPerWord, rgTX, cTX)
    ccall((:FDwfDigitalSpiWrite, dwf_C), BOOL, (HDWF, Cint, Cint, Ptr{Cuchar}, Cint), hdwf, cDQ, cBitPerWord, rgTX, cTX)
end

function FDwfDigitalSpiWriteOne(hdwf, cDQ, cBits, vTX)
    ccall((:FDwfDigitalSpiWriteOne, dwf_C), BOOL, (HDWF, Cint, Cint, UInt32), hdwf, cDQ, cBits, vTX)
end

function FDwfDigitalSpiWrite16(hdwf, cDQ, cBitPerWord, rgTX, cTX)
    ccall((:FDwfDigitalSpiWrite16, dwf_C), BOOL, (HDWF, Cint, Cint, Ptr{UInt16}, Cint), hdwf, cDQ, cBitPerWord, rgTX, cTX)
end

function FDwfDigitalSpiWrite32(hdwf, cDQ, cBitPerWord, rgTX, cTX)
    ccall((:FDwfDigitalSpiWrite32, dwf_C), BOOL, (HDWF, Cint, Cint, Ptr{UInt32}, Cint), hdwf, cDQ, cBitPerWord, rgTX, cTX)
end

function FDwfDigitalI2cReset(hdwf)
    ccall((:FDwfDigitalI2cReset, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalI2cClear(hdwf, pfFree)
    ccall((:FDwfDigitalI2cClear, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pfFree)
end

function FDwfDigitalI2cStretchSet(hdwf, fEnable)
    ccall((:FDwfDigitalI2cStretchSet, dwf_C), BOOL, (HDWF, Cint), hdwf, fEnable)
end

function FDwfDigitalI2cRateSet(hdwf, hz)
    ccall((:FDwfDigitalI2cRateSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, hz)
end

function FDwfDigitalI2cReadNakSet(hdwf, fNakLastReadByte)
    ccall((:FDwfDigitalI2cReadNakSet, dwf_C), BOOL, (HDWF, Cint), hdwf, fNakLastReadByte)
end

function FDwfDigitalI2cSclSet(hdwf, idxChannel)
    ccall((:FDwfDigitalI2cSclSet, dwf_C), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfDigitalI2cSdaSet(hdwf, idxChannel)
    ccall((:FDwfDigitalI2cSdaSet, dwf_C), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfDigitalI2cWriteRead(hdwf, adr8bits, rgbTx, cTx, rgRx, cRx, pNak)
    ccall((:FDwfDigitalI2cWriteRead, dwf_C), BOOL, (HDWF, Cuchar, Ptr{Cuchar}, Cint, Ptr{Cuchar}, Cint, Ptr{Cint}), hdwf, adr8bits, rgbTx, cTx, rgRx, cRx, pNak)
end

function FDwfDigitalI2cRead(hdwf, adr8bits, rgbRx, cRx, pNak)
    ccall((:FDwfDigitalI2cRead, dwf_C), BOOL, (HDWF, Cuchar, Ptr{Cuchar}, Cint, Ptr{Cint}), hdwf, adr8bits, rgbRx, cRx, pNak)
end

function FDwfDigitalI2cWrite(hdwf, adr8bits, rgbTx, cTx, pNak)
    ccall((:FDwfDigitalI2cWrite, dwf_C), BOOL, (HDWF, Cuchar, Ptr{Cuchar}, Cint, Ptr{Cint}), hdwf, adr8bits, rgbTx, cTx, pNak)
end

function FDwfDigitalI2cWriteOne(hdwf, adr8bits, bTx, pNak)
    ccall((:FDwfDigitalI2cWriteOne, dwf_C), BOOL, (HDWF, Cuchar, Cuchar, Ptr{Cint}), hdwf, adr8bits, bTx, pNak)
end

function FDwfDigitalCanReset(hdwf)
    ccall((:FDwfDigitalCanReset, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalCanRateSet(hdwf, hz)
    ccall((:FDwfDigitalCanRateSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, hz)
end

function FDwfDigitalCanPolaritySet(hdwf, fHigh)
    ccall((:FDwfDigitalCanPolaritySet, dwf_C), BOOL, (HDWF, Cint), hdwf, fHigh)
end

function FDwfDigitalCanTxSet(hdwf, idxChannel)
    ccall((:FDwfDigitalCanTxSet, dwf_C), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfDigitalCanRxSet(hdwf, idxChannel)
    ccall((:FDwfDigitalCanRxSet, dwf_C), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfDigitalCanTx(hdwf, vID, fExtended, fRemote, cDLC, rgTX)
    ccall((:FDwfDigitalCanTx, dwf_C), BOOL, (HDWF, Cint, Cint, Cint, Cint, Ptr{Cuchar}), hdwf, vID, fExtended, fRemote, cDLC, rgTX)
end

function FDwfDigitalCanRx(hdwf, pvID, pfExtended, pfRemote, pcDLC, rgRX, cRX, pvStatus)
    ccall((:FDwfDigitalCanRx, dwf_C), BOOL, (HDWF, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cuchar}, Cint, Ptr{Cint}), hdwf, pvID, pfExtended, pfRemote, pcDLC, rgRX, cRX, pvStatus)
end

function FDwfAnalogImpedanceReset(hdwf)
    ccall((:FDwfAnalogImpedanceReset, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfAnalogImpedanceModeSet(hdwf, mode)
    ccall((:FDwfAnalogImpedanceModeSet, dwf_C), BOOL, (HDWF, Cint), hdwf, mode)
end

function FDwfAnalogImpedanceModeGet(hdwf, mode)
    ccall((:FDwfAnalogImpedanceModeGet, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, mode)
end

function FDwfAnalogImpedanceReferenceSet(hdwf, ohms)
    ccall((:FDwfAnalogImpedanceReferenceSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, ohms)
end

function FDwfAnalogImpedanceReferenceGet(hdwf, pohms)
    ccall((:FDwfAnalogImpedanceReferenceGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, pohms)
end

function FDwfAnalogImpedanceFrequencySet(hdwf, hz)
    ccall((:FDwfAnalogImpedanceFrequencySet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, hz)
end

function FDwfAnalogImpedanceFrequencyGet(hdwf, phz)
    ccall((:FDwfAnalogImpedanceFrequencyGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, phz)
end

function FDwfAnalogImpedanceAmplitudeSet(hdwf, volts)
    ccall((:FDwfAnalogImpedanceAmplitudeSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, volts)
end

function FDwfAnalogImpedanceAmplitudeGet(hdwf, pvolts)
    ccall((:FDwfAnalogImpedanceAmplitudeGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, pvolts)
end

function FDwfAnalogImpedanceOffsetSet(hdwf, volts)
    ccall((:FDwfAnalogImpedanceOffsetSet, dwf_C), BOOL, (HDWF, Cdouble), hdwf, volts)
end

function FDwfAnalogImpedanceOffsetGet(hdwf, pvolts)
    ccall((:FDwfAnalogImpedanceOffsetGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}), hdwf, pvolts)
end

function FDwfAnalogImpedanceProbeSet(hdwf, ohmRes, faradCap)
    ccall((:FDwfAnalogImpedanceProbeSet, dwf_C), BOOL, (HDWF, Cdouble, Cdouble), hdwf, ohmRes, faradCap)
end

function FDwfAnalogImpedanceProbeGet(hdwf, pohmRes, pfaradCap)
    ccall((:FDwfAnalogImpedanceProbeGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, pohmRes, pfaradCap)
end

function FDwfAnalogImpedancePeriodSet(hdwf, cMinPeriods)
    ccall((:FDwfAnalogImpedancePeriodSet, dwf_C), BOOL, (HDWF, Cint), hdwf, cMinPeriods)
end

function FDwfAnalogImpedancePeriodGet(hdwf, cMinPeriods)
    ccall((:FDwfAnalogImpedancePeriodGet, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, cMinPeriods)
end

function FDwfAnalogImpedanceCompReset(hdwf)
    ccall((:FDwfAnalogImpedanceCompReset, dwf_C), BOOL, (HDWF,), hdwf)
end

function FDwfAnalogImpedanceCompSet(hdwf, ohmOpenResistance, ohmOpenReactance, ohmShortResistance, ohmShortReactance)
    ccall((:FDwfAnalogImpedanceCompSet, dwf_C), BOOL, (HDWF, Cdouble, Cdouble, Cdouble, Cdouble), hdwf, ohmOpenResistance, ohmOpenReactance, ohmShortResistance, ohmShortReactance)
end

function FDwfAnalogImpedanceCompGet(hdwf, pohmOpenResistance, pohmOpenReactance, pohmShortResistance, pohmShortReactance)
    ccall((:FDwfAnalogImpedanceCompGet, dwf_C), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, pohmOpenResistance, pohmOpenReactance, pohmShortResistance, pohmShortReactance)
end

function FDwfAnalogImpedanceConfigure(hdwf, fStart)
    ccall((:FDwfAnalogImpedanceConfigure, dwf_C), BOOL, (HDWF, Cint), hdwf, fStart)
end

function FDwfAnalogImpedanceStatus(hdwf, psts)
    ccall((:FDwfAnalogImpedanceStatus, dwf_C), BOOL, (HDWF, Ptr{DwfState}), hdwf, psts)
end

function FDwfAnalogImpedanceStatusInput(hdwf, idxChannel, pgain, pradian)
    ccall((:FDwfAnalogImpedanceStatusInput, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, pgain, pradian)
end

function FDwfAnalogImpedanceStatusMeasure(hdwf, measure, pvalue)
    ccall((:FDwfAnalogImpedanceStatusMeasure, dwf_C), BOOL, (HDWF, DwfAnalogImpedance, Ptr{Cdouble}), hdwf, measure, pvalue)
end

function FDwfDigitalInMixedSet(hdwf, fEnable)
    ccall((:FDwfDigitalInMixedSet, dwf_C), BOOL, (HDWF, BOOL), hdwf, fEnable)
end

function FDwfAnalogInTriggerSourceInfo(hdwf, pfstrigsrc)
    ccall((:FDwfAnalogInTriggerSourceInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pfstrigsrc)
end

function FDwfAnalogOutTriggerSourceInfo(hdwf, idxChannel, pfstrigsrc)
    ccall((:FDwfAnalogOutTriggerSourceInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pfstrigsrc)
end

function FDwfDigitalInTriggerSourceInfo(hdwf, pfstrigsrc)
    ccall((:FDwfDigitalInTriggerSourceInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pfstrigsrc)
end

function FDwfDigitalOutTriggerSourceInfo(hdwf, pfstrigsrc)
    ccall((:FDwfDigitalOutTriggerSourceInfo, dwf_C), BOOL, (HDWF, Ptr{Cint}), hdwf, pfstrigsrc)
end

function FDwfAnalogOutEnableSet(hdwf, idxChannel, fEnable)
    ccall((:FDwfAnalogOutEnableSet, dwf_C), BOOL, (HDWF, Cint, BOOL), hdwf, idxChannel, fEnable)
end

function FDwfAnalogOutEnableGet(hdwf, idxChannel, pfEnable)
    ccall((:FDwfAnalogOutEnableGet, dwf_C), BOOL, (HDWF, Cint, Ptr{BOOL}), hdwf, idxChannel, pfEnable)
end

function FDwfAnalogOutFunctionInfo(hdwf, idxChannel, pfsfunc)
    ccall((:FDwfAnalogOutFunctionInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pfsfunc)
end

function FDwfAnalogOutFunctionSet(hdwf, idxChannel, func)
    ccall((:FDwfAnalogOutFunctionSet, dwf_C), BOOL, (HDWF, Cint, FUNC), hdwf, idxChannel, func)
end

function FDwfAnalogOutFunctionGet(hdwf, idxChannel, pfunc)
    ccall((:FDwfAnalogOutFunctionGet, dwf_C), BOOL, (HDWF, Cint, Ptr{FUNC}), hdwf, idxChannel, pfunc)
end

function FDwfAnalogOutFrequencyInfo(hdwf, idxChannel, phzMin, phzMax)
    ccall((:FDwfAnalogOutFrequencyInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, phzMin, phzMax)
end

function FDwfAnalogOutFrequencySet(hdwf, idxChannel, hzFrequency)
    ccall((:FDwfAnalogOutFrequencySet, dwf_C), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, hzFrequency)
end

function FDwfAnalogOutFrequencyGet(hdwf, idxChannel, phzFrequency)
    ccall((:FDwfAnalogOutFrequencyGet, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, phzFrequency)
end

function FDwfAnalogOutAmplitudeInfo(hdwf, idxChannel, pvoltsMin, pvoltsMax)
    ccall((:FDwfAnalogOutAmplitudeInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, pvoltsMin, pvoltsMax)
end

function FDwfAnalogOutAmplitudeSet(hdwf, idxChannel, voltsAmplitude)
    ccall((:FDwfAnalogOutAmplitudeSet, dwf_C), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, voltsAmplitude)
end

function FDwfAnalogOutAmplitudeGet(hdwf, idxChannel, pvoltsAmplitude)
    ccall((:FDwfAnalogOutAmplitudeGet, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, pvoltsAmplitude)
end

function FDwfAnalogOutOffsetInfo(hdwf, idxChannel, pvoltsMin, pvoltsMax)
    ccall((:FDwfAnalogOutOffsetInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, pvoltsMin, pvoltsMax)
end

function FDwfAnalogOutOffsetSet(hdwf, idxChannel, voltsOffset)
    ccall((:FDwfAnalogOutOffsetSet, dwf_C), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, voltsOffset)
end

function FDwfAnalogOutOffsetGet(hdwf, idxChannel, pvoltsOffset)
    ccall((:FDwfAnalogOutOffsetGet, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, pvoltsOffset)
end

function FDwfAnalogOutSymmetryInfo(hdwf, idxChannel, ppercentageMin, ppercentageMax)
    ccall((:FDwfAnalogOutSymmetryInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, ppercentageMin, ppercentageMax)
end

function FDwfAnalogOutSymmetrySet(hdwf, idxChannel, percentageSymmetry)
    ccall((:FDwfAnalogOutSymmetrySet, dwf_C), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, percentageSymmetry)
end

function FDwfAnalogOutSymmetryGet(hdwf, idxChannel, ppercentageSymmetry)
    ccall((:FDwfAnalogOutSymmetryGet, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, ppercentageSymmetry)
end

function FDwfAnalogOutPhaseInfo(hdwf, idxChannel, pdegreeMin, pdegreeMax)
    ccall((:FDwfAnalogOutPhaseInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, pdegreeMin, pdegreeMax)
end

function FDwfAnalogOutPhaseSet(hdwf, idxChannel, degreePhase)
    ccall((:FDwfAnalogOutPhaseSet, dwf_C), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, degreePhase)
end

function FDwfAnalogOutPhaseGet(hdwf, idxChannel, pdegreePhase)
    ccall((:FDwfAnalogOutPhaseGet, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, pdegreePhase)
end

function FDwfAnalogOutDataInfo(hdwf, idxChannel, pnSamplesMin, pnSamplesMax)
    ccall((:FDwfAnalogOutDataInfo, dwf_C), BOOL, (HDWF, Cint, Ptr{Cint}, Ptr{Cint}), hdwf, idxChannel, pnSamplesMin, pnSamplesMax)
end

function FDwfAnalogOutDataSet(hdwf, idxChannel, rgdData, cdData)
    ccall((:FDwfAnalogOutDataSet, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}, Cint), hdwf, idxChannel, rgdData, cdData)
end

function FDwfAnalogOutPlayStatus(hdwf, idxChannel, cdDataFree, cdDataLost, cdDataCorrupted)
    ccall((:FDwfAnalogOutPlayStatus, dwf_C), BOOL, (HDWF, Cint, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), hdwf, idxChannel, cdDataFree, cdDataLost, cdDataCorrupted)
end

function FDwfAnalogOutPlayData(hdwf, idxChannel, rgdData, cdData)
    ccall((:FDwfAnalogOutPlayData, dwf_C), BOOL, (HDWF, Cint, Ptr{Cdouble}, Cint), hdwf, idxChannel, rgdData, cdData)
end

function FDwfEnumAnalogInChannels(idxDevice, pnChannels)
    ccall((:FDwfEnumAnalogInChannels, dwf_C), BOOL, (Cint, Ptr{Cint}), idxDevice, pnChannels)
end

function FDwfEnumAnalogInBufferSize(idxDevice, pnBufferSize)
    ccall((:FDwfEnumAnalogInBufferSize, dwf_C), BOOL, (Cint, Ptr{Cint}), idxDevice, pnBufferSize)
end

function FDwfEnumAnalogInBits(idxDevice, pnBits)
    ccall((:FDwfEnumAnalogInBits, dwf_C), BOOL, (Cint, Ptr{Cint}), idxDevice, pnBits)
end

function FDwfEnumAnalogInFrequency(idxDevice, phzFrequency)
    ccall((:FDwfEnumAnalogInFrequency, dwf_C), BOOL, (Cint, Ptr{Cdouble}), idxDevice, phzFrequency)
end
