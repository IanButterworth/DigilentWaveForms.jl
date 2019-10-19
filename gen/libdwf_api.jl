# Julia wrapper for header: dwf.h
# Automatically generated using Clang.jl


function FDwfGetLastError(pdwferc)
    ccall((:FDwfGetLastError, libdwf), BOOL, (Ptr{DWFERC},), pdwferc)
end

function FDwfGetLastErrorMsg(szError)
    ccall((:FDwfGetLastErrorMsg, libdwf), BOOL, (Ptr{UInt8},), szError)
end

function FDwfGetVersion(szVersion)
    ccall((:FDwfGetVersion, libdwf), BOOL, (Ptr{UInt8},), szVersion)
end

function FDwfParamSet(param, value)
    ccall((:FDwfParamSet, libdwf), BOOL, (DwfParam, Cint), param, value)
end

function FDwfParamGet(param, pvalue)
    ccall((:FDwfParamGet, libdwf), BOOL, (DwfParam, Ptr{Cint}), param, pvalue)
end

function FDwfEnum(enumfilter, pcDevice)
    ccall((:FDwfEnum, libdwf), BOOL, (ENUMFILTER, Ptr{Cint}), enumfilter, pcDevice)
end

function FDwfEnumDeviceType(idxDevice, pDeviceId, pDeviceRevision)
    ccall((:FDwfEnumDeviceType, libdwf), BOOL, (Cint, Ptr{DEVID}, Ptr{DEVVER}), idxDevice, pDeviceId, pDeviceRevision)
end

function FDwfEnumDeviceIsOpened(idxDevice, pfIsUsed)
    ccall((:FDwfEnumDeviceIsOpened, libdwf), BOOL, (Cint, Ptr{BOOL}), idxDevice, pfIsUsed)
end

function FDwfEnumUserName(idxDevice, szUserName)
    ccall((:FDwfEnumUserName, libdwf), BOOL, (Cint, Ptr{UInt8}), idxDevice, szUserName)
end

function FDwfEnumDeviceName(idxDevice, szDeviceName)
    ccall((:FDwfEnumDeviceName, libdwf), BOOL, (Cint, Ptr{UInt8}), idxDevice, szDeviceName)
end

function FDwfEnumSN(idxDevice, szSN)
    ccall((:FDwfEnumSN, libdwf), BOOL, (Cint, Ptr{UInt8}), idxDevice, szSN)
end

function FDwfEnumConfig(idxDevice, pcConfig)
    ccall((:FDwfEnumConfig, libdwf), BOOL, (Cint, Ptr{Cint}), idxDevice, pcConfig)
end

function FDwfEnumConfigInfo(idxConfig, info, pv)
    ccall((:FDwfEnumConfigInfo, libdwf), BOOL, (Cint, DwfEnumConfigInfo, Ptr{Cint}), idxConfig, info, pv)
end

function FDwfDeviceOpen(idxDevice, phdwf)
    ccall((:FDwfDeviceOpen, libdwf), BOOL, (Cint, Ptr{HDWF}), idxDevice, phdwf)
end

function FDwfDeviceConfigOpen(idxDev, idxCfg, phdwf)
    ccall((:FDwfDeviceConfigOpen, libdwf), BOOL, (Cint, Cint, Ptr{HDWF}), idxDev, idxCfg, phdwf)
end

function FDwfDeviceClose(hdwf)
    ccall((:FDwfDeviceClose, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfDeviceCloseAll()
    ccall((:FDwfDeviceCloseAll, libdwf), BOOL, ())
end

function FDwfDeviceAutoConfigureSet(hdwf, fAutoConfigure)
    ccall((:FDwfDeviceAutoConfigureSet, libdwf), BOOL, (HDWF, BOOL), hdwf, fAutoConfigure)
end

function FDwfDeviceAutoConfigureGet(hdwf, pfAutoConfigure)
    ccall((:FDwfDeviceAutoConfigureGet, libdwf), BOOL, (HDWF, Ptr{BOOL}), hdwf, pfAutoConfigure)
end

function FDwfDeviceReset(hdwf)
    ccall((:FDwfDeviceReset, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfDeviceEnableSet(hdwf, fEnable)
    ccall((:FDwfDeviceEnableSet, libdwf), BOOL, (HDWF, BOOL), hdwf, fEnable)
end

function FDwfDeviceTriggerInfo(hdwf, pfstrigsrc)
    ccall((:FDwfDeviceTriggerInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pfstrigsrc)
end

function FDwfDeviceTriggerSet(hdwf, idxPin, trigsrc)
    ccall((:FDwfDeviceTriggerSet, libdwf), BOOL, (HDWF, Cint, TRIGSRC), hdwf, idxPin, trigsrc)
end

function FDwfDeviceTriggerGet(hdwf, idxPin, ptrigsrc)
    ccall((:FDwfDeviceTriggerGet, libdwf), BOOL, (HDWF, Cint, Ptr{TRIGSRC}), hdwf, idxPin, ptrigsrc)
end

function FDwfDeviceTriggerPC(hdwf)
    ccall((:FDwfDeviceTriggerPC, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfDeviceTriggerSlopeInfo(hdwf, pfsslope)
    ccall((:FDwfDeviceTriggerSlopeInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pfsslope)
end

function FDwfDeviceParamSet(hdwf, param, value)
    ccall((:FDwfDeviceParamSet, libdwf), BOOL, (HDWF, DwfParam, Cint), hdwf, param, value)
end

function FDwfDeviceParamGet(hdwf, param, pvalue)
    ccall((:FDwfDeviceParamGet, libdwf), BOOL, (HDWF, DwfParam, Ptr{Cint}), hdwf, param, pvalue)
end

function FDwfAnalogInReset(hdwf)
    ccall((:FDwfAnalogInReset, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfAnalogInConfigure(hdwf, fReconfigure, fStart)
    ccall((:FDwfAnalogInConfigure, libdwf), BOOL, (HDWF, BOOL, BOOL), hdwf, fReconfigure, fStart)
end

function FDwfAnalogInTriggerForce(hdwf)
    ccall((:FDwfAnalogInTriggerForce, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfAnalogInStatus(hdwf, fReadData, psts)
    ccall((:FDwfAnalogInStatus, libdwf), BOOL, (HDWF, BOOL, Ptr{DwfState}), hdwf, fReadData, psts)
end

function FDwfAnalogInStatusSamplesLeft(hdwf, pcSamplesLeft)
    ccall((:FDwfAnalogInStatusSamplesLeft, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pcSamplesLeft)
end

function FDwfAnalogInStatusSamplesValid(hdwf, pcSamplesValid)
    ccall((:FDwfAnalogInStatusSamplesValid, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pcSamplesValid)
end

function FDwfAnalogInStatusIndexWrite(hdwf, pidxWrite)
    ccall((:FDwfAnalogInStatusIndexWrite, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pidxWrite)
end

function FDwfAnalogInStatusAutoTriggered(hdwf, pfAuto)
    ccall((:FDwfAnalogInStatusAutoTriggered, libdwf), BOOL, (HDWF, Ptr{BOOL}), hdwf, pfAuto)
end

function FDwfAnalogInStatusData(hdwf, idxChannel, rgdVoltData, cdData)
    ccall((:FDwfAnalogInStatusData, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}, Cint), hdwf, idxChannel, rgdVoltData, cdData)
end

function FDwfAnalogInStatusData2(hdwf, idxChannel, rgdVoltData, idxData, cdData)
    ccall((:FDwfAnalogInStatusData2, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}, Cint, Cint), hdwf, idxChannel, rgdVoltData, idxData, cdData)
end

function FDwfAnalogInStatusData16(hdwf, idxChannel, rgu16Data, idxData, cdData)
    ccall((:FDwfAnalogInStatusData16, libdwf), BOOL, (HDWF, Cint, Ptr{Int16}, Cint, Cint), hdwf, idxChannel, rgu16Data, idxData, cdData)
end

function FDwfAnalogInStatusNoise(hdwf, idxChannel, rgdMin, rgdMax, cdData)
    ccall((:FDwfAnalogInStatusNoise, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}, Cint), hdwf, idxChannel, rgdMin, rgdMax, cdData)
end

function FDwfAnalogInStatusNoise2(hdwf, idxChannel, rgdMin, rgdMax, idxData, cdData)
    ccall((:FDwfAnalogInStatusNoise2, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}, Cint, Cint), hdwf, idxChannel, rgdMin, rgdMax, idxData, cdData)
end

function FDwfAnalogInStatusSample(hdwf, idxChannel, pdVoltSample)
    ccall((:FDwfAnalogInStatusSample, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, pdVoltSample)
end

function FDwfAnalogInStatusRecord(hdwf, pcdDataAvailable, pcdDataLost, pcdDataCorrupt)
    ccall((:FDwfAnalogInStatusRecord, libdwf), BOOL, (HDWF, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), hdwf, pcdDataAvailable, pcdDataLost, pcdDataCorrupt)
end

function FDwfAnalogInRecordLengthSet(hdwf, sLegth)
    ccall((:FDwfAnalogInRecordLengthSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, sLegth)
end

function FDwfAnalogInRecordLengthGet(hdwf, psLegth)
    ccall((:FDwfAnalogInRecordLengthGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psLegth)
end

function FDwfAnalogInFrequencyInfo(hdwf, phzMin, phzMax)
    ccall((:FDwfAnalogInFrequencyInfo, libdwf), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, phzMin, phzMax)
end

function FDwfAnalogInFrequencySet(hdwf, hzFrequency)
    ccall((:FDwfAnalogInFrequencySet, libdwf), BOOL, (HDWF, Cdouble), hdwf, hzFrequency)
end

function FDwfAnalogInFrequencyGet(hdwf, phzFrequency)
    ccall((:FDwfAnalogInFrequencyGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, phzFrequency)
end

function FDwfAnalogInBitsInfo(hdwf, pnBits)
    ccall((:FDwfAnalogInBitsInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pnBits)
end

function FDwfAnalogInBufferSizeInfo(hdwf, pnSizeMin, pnSizeMax)
    ccall((:FDwfAnalogInBufferSizeInfo, libdwf), BOOL, (HDWF, Ptr{Cint}, Ptr{Cint}), hdwf, pnSizeMin, pnSizeMax)
end

function FDwfAnalogInBufferSizeSet(hdwf, nSize)
    ccall((:FDwfAnalogInBufferSizeSet, libdwf), BOOL, (HDWF, Cint), hdwf, nSize)
end

function FDwfAnalogInBufferSizeGet(hdwf, pnSize)
    ccall((:FDwfAnalogInBufferSizeGet, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pnSize)
end

function FDwfAnalogInNoiseSizeInfo(hdwf, pnSizeMax)
    ccall((:FDwfAnalogInNoiseSizeInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pnSizeMax)
end

function FDwfAnalogInNoiseSizeSet(hdwf, nSize)
    ccall((:FDwfAnalogInNoiseSizeSet, libdwf), BOOL, (HDWF, Cint), hdwf, nSize)
end

function FDwfAnalogInNoiseSizeGet(hdwf, pnSize)
    ccall((:FDwfAnalogInNoiseSizeGet, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pnSize)
end

function FDwfAnalogInAcquisitionModeInfo(hdwf, pfsacqmode)
    ccall((:FDwfAnalogInAcquisitionModeInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pfsacqmode)
end

function FDwfAnalogInAcquisitionModeSet(hdwf, acqmode)
    ccall((:FDwfAnalogInAcquisitionModeSet, libdwf), BOOL, (HDWF, ACQMODE), hdwf, acqmode)
end

function FDwfAnalogInAcquisitionModeGet(hdwf, pacqmode)
    ccall((:FDwfAnalogInAcquisitionModeGet, libdwf), BOOL, (HDWF, Ptr{ACQMODE}), hdwf, pacqmode)
end

function FDwfAnalogInChannelCount(hdwf, pcChannel)
    ccall((:FDwfAnalogInChannelCount, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pcChannel)
end

function FDwfAnalogInChannelEnableSet(hdwf, idxChannel, fEnable)
    ccall((:FDwfAnalogInChannelEnableSet, libdwf), BOOL, (HDWF, Cint, BOOL), hdwf, idxChannel, fEnable)
end

function FDwfAnalogInChannelEnableGet(hdwf, idxChannel, pfEnable)
    ccall((:FDwfAnalogInChannelEnableGet, libdwf), BOOL, (HDWF, Cint, Ptr{BOOL}), hdwf, idxChannel, pfEnable)
end

function FDwfAnalogInChannelFilterInfo(hdwf, pfsfilter)
    ccall((:FDwfAnalogInChannelFilterInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pfsfilter)
end

function FDwfAnalogInChannelFilterSet(hdwf, idxChannel, filter)
    ccall((:FDwfAnalogInChannelFilterSet, libdwf), BOOL, (HDWF, Cint, FILTER), hdwf, idxChannel, filter)
end

function FDwfAnalogInChannelFilterGet(hdwf, idxChannel, pfilter)
    ccall((:FDwfAnalogInChannelFilterGet, libdwf), BOOL, (HDWF, Cint, Ptr{FILTER}), hdwf, idxChannel, pfilter)
end

function FDwfAnalogInChannelRangeInfo(hdwf, pvoltsMin, pvoltsMax, pnSteps)
    ccall((:FDwfAnalogInChannelRangeInfo, libdwf), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, pvoltsMin, pvoltsMax, pnSteps)
end

function FDwfAnalogInChannelRangeSteps(hdwf, rgVoltsStep, pnSteps)
    ccall((:FDwfAnalogInChannelRangeSteps, libdwf), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cint}), hdwf, rgVoltsStep, pnSteps)
end

function FDwfAnalogInChannelRangeSet(hdwf, idxChannel, voltsRange)
    ccall((:FDwfAnalogInChannelRangeSet, libdwf), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, voltsRange)
end

function FDwfAnalogInChannelRangeGet(hdwf, idxChannel, pvoltsRange)
    ccall((:FDwfAnalogInChannelRangeGet, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, pvoltsRange)
end

function FDwfAnalogInChannelOffsetInfo(hdwf, pvoltsMin, pvoltsMax, pnSteps)
    ccall((:FDwfAnalogInChannelOffsetInfo, libdwf), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, pvoltsMin, pvoltsMax, pnSteps)
end

function FDwfAnalogInChannelOffsetSet(hdwf, idxChannel, voltOffset)
    ccall((:FDwfAnalogInChannelOffsetSet, libdwf), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, voltOffset)
end

function FDwfAnalogInChannelOffsetGet(hdwf, idxChannel, pvoltOffset)
    ccall((:FDwfAnalogInChannelOffsetGet, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, pvoltOffset)
end

function FDwfAnalogInChannelAttenuationSet(hdwf, idxChannel, xAttenuation)
    ccall((:FDwfAnalogInChannelAttenuationSet, libdwf), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, xAttenuation)
end

function FDwfAnalogInChannelAttenuationGet(hdwf, idxChannel, pxAttenuation)
    ccall((:FDwfAnalogInChannelAttenuationGet, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, pxAttenuation)
end

function FDwfAnalogInTriggerSourceSet(hdwf, trigsrc)
    ccall((:FDwfAnalogInTriggerSourceSet, libdwf), BOOL, (HDWF, TRIGSRC), hdwf, trigsrc)
end

function FDwfAnalogInTriggerSourceGet(hdwf, ptrigsrc)
    ccall((:FDwfAnalogInTriggerSourceGet, libdwf), BOOL, (HDWF, Ptr{TRIGSRC}), hdwf, ptrigsrc)
end

function FDwfAnalogInTriggerPositionInfo(hdwf, psecMin, psecMax, pnSteps)
    ccall((:FDwfAnalogInTriggerPositionInfo, libdwf), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, psecMin, psecMax, pnSteps)
end

function FDwfAnalogInTriggerPositionSet(hdwf, secPosition)
    ccall((:FDwfAnalogInTriggerPositionSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, secPosition)
end

function FDwfAnalogInTriggerPositionGet(hdwf, psecPosition)
    ccall((:FDwfAnalogInTriggerPositionGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecPosition)
end

function FDwfAnalogInTriggerPositionStatus(hdwf, psecPosition)
    ccall((:FDwfAnalogInTriggerPositionStatus, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecPosition)
end

function FDwfAnalogInTriggerAutoTimeoutInfo(hdwf, psecMin, psecMax, pnSteps)
    ccall((:FDwfAnalogInTriggerAutoTimeoutInfo, libdwf), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, psecMin, psecMax, pnSteps)
end

function FDwfAnalogInTriggerAutoTimeoutSet(hdwf, secTimeout)
    ccall((:FDwfAnalogInTriggerAutoTimeoutSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, secTimeout)
end

function FDwfAnalogInTriggerAutoTimeoutGet(hdwf, psecTimeout)
    ccall((:FDwfAnalogInTriggerAutoTimeoutGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecTimeout)
end

function FDwfAnalogInTriggerHoldOffInfo(hdwf, psecMin, psecMax, pnStep)
    ccall((:FDwfAnalogInTriggerHoldOffInfo, libdwf), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, psecMin, psecMax, pnStep)
end

function FDwfAnalogInTriggerHoldOffSet(hdwf, secHoldOff)
    ccall((:FDwfAnalogInTriggerHoldOffSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, secHoldOff)
end

function FDwfAnalogInTriggerHoldOffGet(hdwf, psecHoldOff)
    ccall((:FDwfAnalogInTriggerHoldOffGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecHoldOff)
end

function FDwfAnalogInTriggerTypeInfo(hdwf, pfstrigtype)
    ccall((:FDwfAnalogInTriggerTypeInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pfstrigtype)
end

function FDwfAnalogInTriggerTypeSet(hdwf, trigtype)
    ccall((:FDwfAnalogInTriggerTypeSet, libdwf), BOOL, (HDWF, TRIGTYPE), hdwf, trigtype)
end

function FDwfAnalogInTriggerTypeGet(hdwf, ptrigtype)
    ccall((:FDwfAnalogInTriggerTypeGet, libdwf), BOOL, (HDWF, Ptr{TRIGTYPE}), hdwf, ptrigtype)
end

function FDwfAnalogInTriggerChannelInfo(hdwf, pidxMin, pidxMax)
    ccall((:FDwfAnalogInTriggerChannelInfo, libdwf), BOOL, (HDWF, Ptr{Cint}, Ptr{Cint}), hdwf, pidxMin, pidxMax)
end

function FDwfAnalogInTriggerChannelSet(hdwf, idxChannel)
    ccall((:FDwfAnalogInTriggerChannelSet, libdwf), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfAnalogInTriggerChannelGet(hdwf, pidxChannel)
    ccall((:FDwfAnalogInTriggerChannelGet, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pidxChannel)
end

function FDwfAnalogInTriggerFilterInfo(hdwf, pfsfilter)
    ccall((:FDwfAnalogInTriggerFilterInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pfsfilter)
end

function FDwfAnalogInTriggerFilterSet(hdwf, filter)
    ccall((:FDwfAnalogInTriggerFilterSet, libdwf), BOOL, (HDWF, FILTER), hdwf, filter)
end

function FDwfAnalogInTriggerFilterGet(hdwf, pfilter)
    ccall((:FDwfAnalogInTriggerFilterGet, libdwf), BOOL, (HDWF, Ptr{FILTER}), hdwf, pfilter)
end

function FDwfAnalogInTriggerLevelInfo(hdwf, pvoltsMin, pvoltsMax, pnSteps)
    ccall((:FDwfAnalogInTriggerLevelInfo, libdwf), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, pvoltsMin, pvoltsMax, pnSteps)
end

function FDwfAnalogInTriggerLevelSet(hdwf, voltsLevel)
    ccall((:FDwfAnalogInTriggerLevelSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, voltsLevel)
end

function FDwfAnalogInTriggerLevelGet(hdwf, pvoltsLevel)
    ccall((:FDwfAnalogInTriggerLevelGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, pvoltsLevel)
end

function FDwfAnalogInTriggerHysteresisInfo(hdwf, pvoltsMin, pvoltsMax, pnSteps)
    ccall((:FDwfAnalogInTriggerHysteresisInfo, libdwf), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, pvoltsMin, pvoltsMax, pnSteps)
end

function FDwfAnalogInTriggerHysteresisSet(hdwf, voltsLevel)
    ccall((:FDwfAnalogInTriggerHysteresisSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, voltsLevel)
end

function FDwfAnalogInTriggerHysteresisGet(hdwf, pvoltsHysteresis)
    ccall((:FDwfAnalogInTriggerHysteresisGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, pvoltsHysteresis)
end

function FDwfAnalogInTriggerConditionInfo(hdwf, pfstrigcond)
    ccall((:FDwfAnalogInTriggerConditionInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pfstrigcond)
end

function FDwfAnalogInTriggerConditionSet(hdwf, trigcond)
    ccall((:FDwfAnalogInTriggerConditionSet, libdwf), BOOL, (HDWF, DwfTriggerSlope), hdwf, trigcond)
end

function FDwfAnalogInTriggerConditionGet(hdwf, ptrigcond)
    ccall((:FDwfAnalogInTriggerConditionGet, libdwf), BOOL, (HDWF, Ptr{DwfTriggerSlope}), hdwf, ptrigcond)
end

function FDwfAnalogInTriggerLengthInfo(hdwf, psecMin, psecMax, pnSteps)
    ccall((:FDwfAnalogInTriggerLengthInfo, libdwf), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, psecMin, psecMax, pnSteps)
end

function FDwfAnalogInTriggerLengthSet(hdwf, secLength)
    ccall((:FDwfAnalogInTriggerLengthSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, secLength)
end

function FDwfAnalogInTriggerLengthGet(hdwf, psecLength)
    ccall((:FDwfAnalogInTriggerLengthGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecLength)
end

function FDwfAnalogInTriggerLengthConditionInfo(hdwf, pfstriglen)
    ccall((:FDwfAnalogInTriggerLengthConditionInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pfstriglen)
end

function FDwfAnalogInTriggerLengthConditionSet(hdwf, triglen)
    ccall((:FDwfAnalogInTriggerLengthConditionSet, libdwf), BOOL, (HDWF, TRIGLEN), hdwf, triglen)
end

function FDwfAnalogInTriggerLengthConditionGet(hdwf, ptriglen)
    ccall((:FDwfAnalogInTriggerLengthConditionGet, libdwf), BOOL, (HDWF, Ptr{TRIGLEN}), hdwf, ptriglen)
end

function FDwfAnalogInSamplingSourceSet(hdwf, trigsrc)
    ccall((:FDwfAnalogInSamplingSourceSet, libdwf), BOOL, (HDWF, TRIGSRC), hdwf, trigsrc)
end

function FDwfAnalogInSamplingSourceGet(hdwf, ptrigsrc)
    ccall((:FDwfAnalogInSamplingSourceGet, libdwf), BOOL, (HDWF, Ptr{TRIGSRC}), hdwf, ptrigsrc)
end

function FDwfAnalogInSamplingSlopeSet(hdwf, slope)
    ccall((:FDwfAnalogInSamplingSlopeSet, libdwf), BOOL, (HDWF, DwfTriggerSlope), hdwf, slope)
end

function FDwfAnalogInSamplingSlopeGet(hdwf, pslope)
    ccall((:FDwfAnalogInSamplingSlopeGet, libdwf), BOOL, (HDWF, Ptr{DwfTriggerSlope}), hdwf, pslope)
end

function FDwfAnalogInSamplingDelaySet(hdwf, sec)
    ccall((:FDwfAnalogInSamplingDelaySet, libdwf), BOOL, (HDWF, Cdouble), hdwf, sec)
end

function FDwfAnalogInSamplingDelayGet(hdwf, psec)
    ccall((:FDwfAnalogInSamplingDelayGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psec)
end

function FDwfAnalogOutCount(hdwf, pcChannel)
    ccall((:FDwfAnalogOutCount, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pcChannel)
end

function FDwfAnalogOutMasterSet(hdwf, idxChannel, idxMaster)
    ccall((:FDwfAnalogOutMasterSet, libdwf), BOOL, (HDWF, Cint, Cint), hdwf, idxChannel, idxMaster)
end

function FDwfAnalogOutMasterGet(hdwf, idxChannel, pidxMaster)
    ccall((:FDwfAnalogOutMasterGet, libdwf), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pidxMaster)
end

function FDwfAnalogOutTriggerSourceSet(hdwf, idxChannel, trigsrc)
    ccall((:FDwfAnalogOutTriggerSourceSet, libdwf), BOOL, (HDWF, Cint, TRIGSRC), hdwf, idxChannel, trigsrc)
end

function FDwfAnalogOutTriggerSourceGet(hdwf, idxChannel, ptrigsrc)
    ccall((:FDwfAnalogOutTriggerSourceGet, libdwf), BOOL, (HDWF, Cint, Ptr{TRIGSRC}), hdwf, idxChannel, ptrigsrc)
end

function FDwfAnalogOutTriggerSlopeSet(hdwf, idxChannel, slope)
    ccall((:FDwfAnalogOutTriggerSlopeSet, libdwf), BOOL, (HDWF, Cint, DwfTriggerSlope), hdwf, idxChannel, slope)
end

function FDwfAnalogOutTriggerSlopeGet(hdwf, idxChannel, pslope)
    ccall((:FDwfAnalogOutTriggerSlopeGet, libdwf), BOOL, (HDWF, Cint, Ptr{DwfTriggerSlope}), hdwf, idxChannel, pslope)
end

function FDwfAnalogOutRunInfo(hdwf, idxChannel, psecMin, psecMax)
    ccall((:FDwfAnalogOutRunInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, psecMin, psecMax)
end

function FDwfAnalogOutRunSet(hdwf, idxChannel, secRun)
    ccall((:FDwfAnalogOutRunSet, libdwf), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, secRun)
end

function FDwfAnalogOutRunGet(hdwf, idxChannel, psecRun)
    ccall((:FDwfAnalogOutRunGet, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, psecRun)
end

function FDwfAnalogOutRunStatus(hdwf, idxChannel, psecRun)
    ccall((:FDwfAnalogOutRunStatus, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, psecRun)
end

function FDwfAnalogOutWaitInfo(hdwf, idxChannel, psecMin, psecMax)
    ccall((:FDwfAnalogOutWaitInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, psecMin, psecMax)
end

function FDwfAnalogOutWaitSet(hdwf, idxChannel, secWait)
    ccall((:FDwfAnalogOutWaitSet, libdwf), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, secWait)
end

function FDwfAnalogOutWaitGet(hdwf, idxChannel, psecWait)
    ccall((:FDwfAnalogOutWaitGet, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, psecWait)
end

function FDwfAnalogOutRepeatInfo(hdwf, idxChannel, pnMin, pnMax)
    ccall((:FDwfAnalogOutRepeatInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cint}, Ptr{Cint}), hdwf, idxChannel, pnMin, pnMax)
end

function FDwfAnalogOutRepeatSet(hdwf, idxChannel, cRepeat)
    ccall((:FDwfAnalogOutRepeatSet, libdwf), BOOL, (HDWF, Cint, Cint), hdwf, idxChannel, cRepeat)
end

function FDwfAnalogOutRepeatGet(hdwf, idxChannel, pcRepeat)
    ccall((:FDwfAnalogOutRepeatGet, libdwf), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pcRepeat)
end

function FDwfAnalogOutRepeatStatus(hdwf, idxChannel, pcRepeat)
    ccall((:FDwfAnalogOutRepeatStatus, libdwf), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pcRepeat)
end

function FDwfAnalogOutRepeatTriggerSet(hdwf, idxChannel, fRepeatTrigger)
    ccall((:FDwfAnalogOutRepeatTriggerSet, libdwf), BOOL, (HDWF, Cint, BOOL), hdwf, idxChannel, fRepeatTrigger)
end

function FDwfAnalogOutRepeatTriggerGet(hdwf, idxChannel, pfRepeatTrigger)
    ccall((:FDwfAnalogOutRepeatTriggerGet, libdwf), BOOL, (HDWF, Cint, Ptr{BOOL}), hdwf, idxChannel, pfRepeatTrigger)
end

function FDwfAnalogOutLimitationInfo(hdwf, idxChannel, pMin, pMax)
    ccall((:FDwfAnalogOutLimitationInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, pMin, pMax)
end

function FDwfAnalogOutLimitationSet(hdwf, idxChannel, limit)
    ccall((:FDwfAnalogOutLimitationSet, libdwf), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, limit)
end

function FDwfAnalogOutLimitationGet(hdwf, idxChannel, plimit)
    ccall((:FDwfAnalogOutLimitationGet, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, plimit)
end

function FDwfAnalogOutModeSet(hdwf, idxChannel, mode)
    ccall((:FDwfAnalogOutModeSet, libdwf), BOOL, (HDWF, Cint, DwfAnalogOutMode), hdwf, idxChannel, mode)
end

function FDwfAnalogOutModeGet(hdwf, idxChannel, pmode)
    ccall((:FDwfAnalogOutModeGet, libdwf), BOOL, (HDWF, Cint, Ptr{DwfAnalogOutMode}), hdwf, idxChannel, pmode)
end

function FDwfAnalogOutIdleInfo(hdwf, idxChannel, pfsidle)
    ccall((:FDwfAnalogOutIdleInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pfsidle)
end

function FDwfAnalogOutIdleSet(hdwf, idxChannel, idle)
    ccall((:FDwfAnalogOutIdleSet, libdwf), BOOL, (HDWF, Cint, DwfAnalogOutIdle), hdwf, idxChannel, idle)
end

function FDwfAnalogOutIdleGet(hdwf, idxChannel, pidle)
    ccall((:FDwfAnalogOutIdleGet, libdwf), BOOL, (HDWF, Cint, Ptr{DwfAnalogOutIdle}), hdwf, idxChannel, pidle)
end

function FDwfAnalogOutNodeInfo(hdwf, idxChannel, pfsnode)
    ccall((:FDwfAnalogOutNodeInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pfsnode)
end

function FDwfAnalogOutNodeEnableSet(hdwf, idxChannel, node, fEnable)
    ccall((:FDwfAnalogOutNodeEnableSet, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, BOOL), hdwf, idxChannel, node, fEnable)
end

function FDwfAnalogOutNodeEnableGet(hdwf, idxChannel, node, pfEnable)
    ccall((:FDwfAnalogOutNodeEnableGet, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{BOOL}), hdwf, idxChannel, node, pfEnable)
end

function FDwfAnalogOutNodeFunctionInfo(hdwf, idxChannel, node, pfsfunc)
    ccall((:FDwfAnalogOutNodeFunctionInfo, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cint}), hdwf, idxChannel, node, pfsfunc)
end

function FDwfAnalogOutNodeFunctionSet(hdwf, idxChannel, node, func)
    ccall((:FDwfAnalogOutNodeFunctionSet, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, FUNC), hdwf, idxChannel, node, func)
end

function FDwfAnalogOutNodeFunctionGet(hdwf, idxChannel, node, pfunc)
    ccall((:FDwfAnalogOutNodeFunctionGet, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{FUNC}), hdwf, idxChannel, node, pfunc)
end

function FDwfAnalogOutNodeFrequencyInfo(hdwf, idxChannel, node, phzMin, phzMax)
    ccall((:FDwfAnalogOutNodeFrequencyInfo, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, node, phzMin, phzMax)
end

function FDwfAnalogOutNodeFrequencySet(hdwf, idxChannel, node, hzFrequency)
    ccall((:FDwfAnalogOutNodeFrequencySet, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Cdouble), hdwf, idxChannel, node, hzFrequency)
end

function FDwfAnalogOutNodeFrequencyGet(hdwf, idxChannel, node, phzFrequency)
    ccall((:FDwfAnalogOutNodeFrequencyGet, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}), hdwf, idxChannel, node, phzFrequency)
end

function FDwfAnalogOutNodeAmplitudeInfo(hdwf, idxChannel, node, pMin, pMax)
    ccall((:FDwfAnalogOutNodeAmplitudeInfo, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, node, pMin, pMax)
end

function FDwfAnalogOutNodeAmplitudeSet(hdwf, idxChannel, node, vAmplitude)
    ccall((:FDwfAnalogOutNodeAmplitudeSet, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Cdouble), hdwf, idxChannel, node, vAmplitude)
end

function FDwfAnalogOutNodeAmplitudeGet(hdwf, idxChannel, node, pvAmplitude)
    ccall((:FDwfAnalogOutNodeAmplitudeGet, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}), hdwf, idxChannel, node, pvAmplitude)
end

function FDwfAnalogOutNodeOffsetInfo(hdwf, idxChannel, node, pMin, pMax)
    ccall((:FDwfAnalogOutNodeOffsetInfo, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, node, pMin, pMax)
end

function FDwfAnalogOutNodeOffsetSet(hdwf, idxChannel, node, vOffset)
    ccall((:FDwfAnalogOutNodeOffsetSet, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Cdouble), hdwf, idxChannel, node, vOffset)
end

function FDwfAnalogOutNodeOffsetGet(hdwf, idxChannel, node, pvOffset)
    ccall((:FDwfAnalogOutNodeOffsetGet, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}), hdwf, idxChannel, node, pvOffset)
end

function FDwfAnalogOutNodeSymmetryInfo(hdwf, idxChannel, node, ppercentageMin, ppercentageMax)
    ccall((:FDwfAnalogOutNodeSymmetryInfo, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, node, ppercentageMin, ppercentageMax)
end

function FDwfAnalogOutNodeSymmetrySet(hdwf, idxChannel, node, percentageSymmetry)
    ccall((:FDwfAnalogOutNodeSymmetrySet, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Cdouble), hdwf, idxChannel, node, percentageSymmetry)
end

function FDwfAnalogOutNodeSymmetryGet(hdwf, idxChannel, node, ppercentageSymmetry)
    ccall((:FDwfAnalogOutNodeSymmetryGet, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}), hdwf, idxChannel, node, ppercentageSymmetry)
end

function FDwfAnalogOutNodePhaseInfo(hdwf, idxChannel, node, pdegreeMin, pdegreeMax)
    ccall((:FDwfAnalogOutNodePhaseInfo, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, node, pdegreeMin, pdegreeMax)
end

function FDwfAnalogOutNodePhaseSet(hdwf, idxChannel, node, degreePhase)
    ccall((:FDwfAnalogOutNodePhaseSet, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Cdouble), hdwf, idxChannel, node, degreePhase)
end

function FDwfAnalogOutNodePhaseGet(hdwf, idxChannel, node, pdegreePhase)
    ccall((:FDwfAnalogOutNodePhaseGet, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}), hdwf, idxChannel, node, pdegreePhase)
end

function FDwfAnalogOutNodeDataInfo(hdwf, idxChannel, node, pnSamplesMin, pnSamplesMax)
    ccall((:FDwfAnalogOutNodeDataInfo, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cint}, Ptr{Cint}), hdwf, idxChannel, node, pnSamplesMin, pnSamplesMax)
end

function FDwfAnalogOutNodeDataSet(hdwf, idxChannel, node, rgdData, cdData)
    ccall((:FDwfAnalogOutNodeDataSet, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}, Cint), hdwf, idxChannel, node, rgdData, cdData)
end

function FDwfAnalogOutCustomAMFMEnableSet(hdwf, idxChannel, fEnable)
    ccall((:FDwfAnalogOutCustomAMFMEnableSet, libdwf), BOOL, (HDWF, Cint, BOOL), hdwf, idxChannel, fEnable)
end

function FDwfAnalogOutCustomAMFMEnableGet(hdwf, idxChannel, pfEnable)
    ccall((:FDwfAnalogOutCustomAMFMEnableGet, libdwf), BOOL, (HDWF, Cint, Ptr{BOOL}), hdwf, idxChannel, pfEnable)
end

function FDwfAnalogOutReset(hdwf, idxChannel)
    ccall((:FDwfAnalogOutReset, libdwf), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfAnalogOutConfigure(hdwf, idxChannel, fStart)
    ccall((:FDwfAnalogOutConfigure, libdwf), BOOL, (HDWF, Cint, BOOL), hdwf, idxChannel, fStart)
end

function FDwfAnalogOutStatus(hdwf, idxChannel, psts)
    ccall((:FDwfAnalogOutStatus, libdwf), BOOL, (HDWF, Cint, Ptr{DwfState}), hdwf, idxChannel, psts)
end

function FDwfAnalogOutNodePlayStatus(hdwf, idxChannel, node, cdDataFree, cdDataLost, cdDataCorrupted)
    ccall((:FDwfAnalogOutNodePlayStatus, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), hdwf, idxChannel, node, cdDataFree, cdDataLost, cdDataCorrupted)
end

function FDwfAnalogOutNodePlayData(hdwf, idxChannel, node, rgdData, cdData)
    ccall((:FDwfAnalogOutNodePlayData, libdwf), BOOL, (HDWF, Cint, AnalogOutNode, Ptr{Cdouble}, Cint), hdwf, idxChannel, node, rgdData, cdData)
end

function FDwfAnalogIOReset(hdwf)
    ccall((:FDwfAnalogIOReset, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfAnalogIOConfigure(hdwf)
    ccall((:FDwfAnalogIOConfigure, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfAnalogIOStatus(hdwf)
    ccall((:FDwfAnalogIOStatus, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfAnalogIOEnableInfo(hdwf, pfSet, pfStatus)
    ccall((:FDwfAnalogIOEnableInfo, libdwf), BOOL, (HDWF, Ptr{BOOL}, Ptr{BOOL}), hdwf, pfSet, pfStatus)
end

function FDwfAnalogIOEnableSet(hdwf, fMasterEnable)
    ccall((:FDwfAnalogIOEnableSet, libdwf), BOOL, (HDWF, BOOL), hdwf, fMasterEnable)
end

function FDwfAnalogIOEnableGet(hdwf, pfMasterEnable)
    ccall((:FDwfAnalogIOEnableGet, libdwf), BOOL, (HDWF, Ptr{BOOL}), hdwf, pfMasterEnable)
end

function FDwfAnalogIOEnableStatus(hdwf, pfMasterEnable)
    ccall((:FDwfAnalogIOEnableStatus, libdwf), BOOL, (HDWF, Ptr{BOOL}), hdwf, pfMasterEnable)
end

function FDwfAnalogIOChannelCount(hdwf, pnChannel)
    ccall((:FDwfAnalogIOChannelCount, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pnChannel)
end

function FDwfAnalogIOChannelName(hdwf, idxChannel, szName, szLabel)
    ccall((:FDwfAnalogIOChannelName, libdwf), BOOL, (HDWF, Cint, Ptr{UInt8}, Ptr{UInt8}), hdwf, idxChannel, szName, szLabel)
end

function FDwfAnalogIOChannelInfo(hdwf, idxChannel, pnNodes)
    ccall((:FDwfAnalogIOChannelInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pnNodes)
end

function FDwfAnalogIOChannelNodeName(hdwf, idxChannel, idxNode, szNodeName, szNodeUnits)
    ccall((:FDwfAnalogIOChannelNodeName, libdwf), BOOL, (HDWF, Cint, Cint, Ptr{UInt8}, Ptr{UInt8}), hdwf, idxChannel, idxNode, szNodeName, szNodeUnits)
end

function FDwfAnalogIOChannelNodeInfo(hdwf, idxChannel, idxNode, panalogio)
    ccall((:FDwfAnalogIOChannelNodeInfo, libdwf), BOOL, (HDWF, Cint, Cint, Ptr{ANALOGIO}), hdwf, idxChannel, idxNode, panalogio)
end

function FDwfAnalogIOChannelNodeSetInfo(hdwf, idxChannel, idxNode, pmin, pmax, pnSteps)
    ccall((:FDwfAnalogIOChannelNodeSetInfo, libdwf), BOOL, (HDWF, Cint, Cint, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cint}), hdwf, idxChannel, idxNode, pmin, pmax, pnSteps)
end

function FDwfAnalogIOChannelNodeSet(hdwf, idxChannel, idxNode, value)
    ccall((:FDwfAnalogIOChannelNodeSet, libdwf), BOOL, (HDWF, Cint, Cint, Cdouble), hdwf, idxChannel, idxNode, value)
end

function FDwfAnalogIOChannelNodeGet(hdwf, idxChannel, idxNode, pvalue)
    ccall((:FDwfAnalogIOChannelNodeGet, libdwf), BOOL, (HDWF, Cint, Cint, Ptr{Cdouble}), hdwf, idxChannel, idxNode, pvalue)
end

function FDwfAnalogIOChannelNodeStatusInfo(hdwf, idxChannel, idxNode, pmin, pmax, pnSteps)
    ccall((:FDwfAnalogIOChannelNodeStatusInfo, libdwf), BOOL, (HDWF, Cint, Cint, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cint}), hdwf, idxChannel, idxNode, pmin, pmax, pnSteps)
end

function FDwfAnalogIOChannelNodeStatus(hdwf, idxChannel, idxNode, pvalue)
    ccall((:FDwfAnalogIOChannelNodeStatus, libdwf), BOOL, (HDWF, Cint, Cint, Ptr{Cdouble}), hdwf, idxChannel, idxNode, pvalue)
end

function FDwfDigitalIOReset(hdwf)
    ccall((:FDwfDigitalIOReset, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalIOConfigure(hdwf)
    ccall((:FDwfDigitalIOConfigure, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalIOStatus(hdwf)
    ccall((:FDwfDigitalIOStatus, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalIOOutputEnableInfo(hdwf, pfsOutputEnableMask)
    ccall((:FDwfDigitalIOOutputEnableInfo, libdwf), BOOL, (HDWF, Ptr{UInt32}), hdwf, pfsOutputEnableMask)
end

function FDwfDigitalIOOutputEnableSet(hdwf, fsOutputEnable)
    ccall((:FDwfDigitalIOOutputEnableSet, libdwf), BOOL, (HDWF, UInt32), hdwf, fsOutputEnable)
end

function FDwfDigitalIOOutputEnableGet(hdwf, pfsOutputEnable)
    ccall((:FDwfDigitalIOOutputEnableGet, libdwf), BOOL, (HDWF, Ptr{UInt32}), hdwf, pfsOutputEnable)
end

function FDwfDigitalIOOutputInfo(hdwf, pfsOutputMask)
    ccall((:FDwfDigitalIOOutputInfo, libdwf), BOOL, (HDWF, Ptr{UInt32}), hdwf, pfsOutputMask)
end

function FDwfDigitalIOOutputSet(hdwf, fsOutput)
    ccall((:FDwfDigitalIOOutputSet, libdwf), BOOL, (HDWF, UInt32), hdwf, fsOutput)
end

function FDwfDigitalIOOutputGet(hdwf, pfsOutput)
    ccall((:FDwfDigitalIOOutputGet, libdwf), BOOL, (HDWF, Ptr{UInt32}), hdwf, pfsOutput)
end

function FDwfDigitalIOInputInfo(hdwf, pfsInputMask)
    ccall((:FDwfDigitalIOInputInfo, libdwf), BOOL, (HDWF, Ptr{UInt32}), hdwf, pfsInputMask)
end

function FDwfDigitalIOInputStatus(hdwf, pfsInput)
    ccall((:FDwfDigitalIOInputStatus, libdwf), BOOL, (HDWF, Ptr{UInt32}), hdwf, pfsInput)
end

function FDwfDigitalIOOutputEnableInfo64(hdwf, pfsOutputEnableMask)
    ccall((:FDwfDigitalIOOutputEnableInfo64, libdwf), BOOL, (HDWF, Ptr{Culonglong}), hdwf, pfsOutputEnableMask)
end

function FDwfDigitalIOOutputEnableSet64(hdwf, fsOutputEnable)
    ccall((:FDwfDigitalIOOutputEnableSet64, libdwf), BOOL, (HDWF, Culonglong), hdwf, fsOutputEnable)
end

function FDwfDigitalIOOutputEnableGet64(hdwf, pfsOutputEnable)
    ccall((:FDwfDigitalIOOutputEnableGet64, libdwf), BOOL, (HDWF, Ptr{Culonglong}), hdwf, pfsOutputEnable)
end

function FDwfDigitalIOOutputInfo64(hdwf, pfsOutputMask)
    ccall((:FDwfDigitalIOOutputInfo64, libdwf), BOOL, (HDWF, Ptr{Culonglong}), hdwf, pfsOutputMask)
end

function FDwfDigitalIOOutputSet64(hdwf, fsOutput)
    ccall((:FDwfDigitalIOOutputSet64, libdwf), BOOL, (HDWF, Culonglong), hdwf, fsOutput)
end

function FDwfDigitalIOOutputGet64(hdwf, pfsOutput)
    ccall((:FDwfDigitalIOOutputGet64, libdwf), BOOL, (HDWF, Ptr{Culonglong}), hdwf, pfsOutput)
end

function FDwfDigitalIOInputInfo64(hdwf, pfsInputMask)
    ccall((:FDwfDigitalIOInputInfo64, libdwf), BOOL, (HDWF, Ptr{Culonglong}), hdwf, pfsInputMask)
end

function FDwfDigitalIOInputStatus64(hdwf, pfsInput)
    ccall((:FDwfDigitalIOInputStatus64, libdwf), BOOL, (HDWF, Ptr{Culonglong}), hdwf, pfsInput)
end

function FDwfDigitalInReset(hdwf)
    ccall((:FDwfDigitalInReset, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalInConfigure(hdwf, fReconfigure, fStart)
    ccall((:FDwfDigitalInConfigure, libdwf), BOOL, (HDWF, BOOL, BOOL), hdwf, fReconfigure, fStart)
end

function FDwfDigitalInStatus(hdwf, fReadData, psts)
    ccall((:FDwfDigitalInStatus, libdwf), BOOL, (HDWF, BOOL, Ptr{DwfState}), hdwf, fReadData, psts)
end

function FDwfDigitalInStatusSamplesLeft(hdwf, pcSamplesLeft)
    ccall((:FDwfDigitalInStatusSamplesLeft, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pcSamplesLeft)
end

function FDwfDigitalInStatusSamplesValid(hdwf, pcSamplesValid)
    ccall((:FDwfDigitalInStatusSamplesValid, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pcSamplesValid)
end

function FDwfDigitalInStatusIndexWrite(hdwf, pidxWrite)
    ccall((:FDwfDigitalInStatusIndexWrite, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pidxWrite)
end

function FDwfDigitalInStatusAutoTriggered(hdwf, pfAuto)
    ccall((:FDwfDigitalInStatusAutoTriggered, libdwf), BOOL, (HDWF, Ptr{BOOL}), hdwf, pfAuto)
end

function FDwfDigitalInStatusData(hdwf, rgData, countOfDataBytes)
    ccall((:FDwfDigitalInStatusData, libdwf), BOOL, (HDWF, Ptr{Cvoid}, Cint), hdwf, rgData, countOfDataBytes)
end

function FDwfDigitalInStatusData2(hdwf, rgData, idxSample, countOfDataBytes)
    ccall((:FDwfDigitalInStatusData2, libdwf), BOOL, (HDWF, Ptr{Cvoid}, Cint, Cint), hdwf, rgData, idxSample, countOfDataBytes)
end

function FDwfDigitalInStatusNoise2(hdwf, rgData, idxSample, countOfDataBytes)
    ccall((:FDwfDigitalInStatusNoise2, libdwf), BOOL, (HDWF, Ptr{Cvoid}, Cint, Cint), hdwf, rgData, idxSample, countOfDataBytes)
end

function FDwfDigitalInStatusRecord(hdwf, pcdDataAvailable, pcdDataLost, pcdDataCorrupt)
    ccall((:FDwfDigitalInStatusRecord, libdwf), BOOL, (HDWF, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), hdwf, pcdDataAvailable, pcdDataLost, pcdDataCorrupt)
end

function FDwfDigitalInInternalClockInfo(hdwf, phzFreq)
    ccall((:FDwfDigitalInInternalClockInfo, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, phzFreq)
end

function FDwfDigitalInClockSourceInfo(hdwf, pfsDwfDigitalInClockSource)
    ccall((:FDwfDigitalInClockSourceInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pfsDwfDigitalInClockSource)
end

function FDwfDigitalInClockSourceSet(hdwf, v)
    ccall((:FDwfDigitalInClockSourceSet, libdwf), BOOL, (HDWF, DwfDigitalInClockSource), hdwf, v)
end

function FDwfDigitalInClockSourceGet(hdwf, pv)
    ccall((:FDwfDigitalInClockSourceGet, libdwf), BOOL, (HDWF, Ptr{DwfDigitalInClockSource}), hdwf, pv)
end

function FDwfDigitalInDividerInfo(hdwf, pdivMax)
    ccall((:FDwfDigitalInDividerInfo, libdwf), BOOL, (HDWF, Ptr{UInt32}), hdwf, pdivMax)
end

function FDwfDigitalInDividerSet(hdwf, div)
    ccall((:FDwfDigitalInDividerSet, libdwf), BOOL, (HDWF, UInt32), hdwf, div)
end

function FDwfDigitalInDividerGet(hdwf, pdiv)
    ccall((:FDwfDigitalInDividerGet, libdwf), BOOL, (HDWF, Ptr{UInt32}), hdwf, pdiv)
end

function FDwfDigitalInBitsInfo(hdwf, pnBits)
    ccall((:FDwfDigitalInBitsInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pnBits)
end

function FDwfDigitalInSampleFormatSet(hdwf, nBits)
    ccall((:FDwfDigitalInSampleFormatSet, libdwf), BOOL, (HDWF, Cint), hdwf, nBits)
end

function FDwfDigitalInSampleFormatGet(hdwf, pnBits)
    ccall((:FDwfDigitalInSampleFormatGet, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pnBits)
end

function FDwfDigitalInInputOrderSet(hdwf, fDioFirst)
    ccall((:FDwfDigitalInInputOrderSet, libdwf), BOOL, (HDWF, Cint), hdwf, fDioFirst)
end

function FDwfDigitalInBufferSizeInfo(hdwf, pnSizeMax)
    ccall((:FDwfDigitalInBufferSizeInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pnSizeMax)
end

function FDwfDigitalInBufferSizeSet(hdwf, nSize)
    ccall((:FDwfDigitalInBufferSizeSet, libdwf), BOOL, (HDWF, Cint), hdwf, nSize)
end

function FDwfDigitalInBufferSizeGet(hdwf, pnSize)
    ccall((:FDwfDigitalInBufferSizeGet, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pnSize)
end

function FDwfDigitalInSampleModeInfo(hdwf, pfsDwfDigitalInSampleMode)
    ccall((:FDwfDigitalInSampleModeInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pfsDwfDigitalInSampleMode)
end

function FDwfDigitalInSampleModeSet(hdwf, v)
    ccall((:FDwfDigitalInSampleModeSet, libdwf), BOOL, (HDWF, DwfDigitalInSampleMode), hdwf, v)
end

function FDwfDigitalInSampleModeGet(hdwf, pv)
    ccall((:FDwfDigitalInSampleModeGet, libdwf), BOOL, (HDWF, Ptr{DwfDigitalInSampleMode}), hdwf, pv)
end

function FDwfDigitalInSampleSensibleSet(hdwf, fs)
    ccall((:FDwfDigitalInSampleSensibleSet, libdwf), BOOL, (HDWF, UInt32), hdwf, fs)
end

function FDwfDigitalInSampleSensibleGet(hdwf, pfs)
    ccall((:FDwfDigitalInSampleSensibleGet, libdwf), BOOL, (HDWF, Ptr{UInt32}), hdwf, pfs)
end

function FDwfDigitalInAcquisitionModeInfo(hdwf, pfsacqmode)
    ccall((:FDwfDigitalInAcquisitionModeInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pfsacqmode)
end

function FDwfDigitalInAcquisitionModeSet(hdwf, acqmode)
    ccall((:FDwfDigitalInAcquisitionModeSet, libdwf), BOOL, (HDWF, ACQMODE), hdwf, acqmode)
end

function FDwfDigitalInAcquisitionModeGet(hdwf, pacqmode)
    ccall((:FDwfDigitalInAcquisitionModeGet, libdwf), BOOL, (HDWF, Ptr{ACQMODE}), hdwf, pacqmode)
end

function FDwfDigitalInTriggerSourceSet(hdwf, trigsrc)
    ccall((:FDwfDigitalInTriggerSourceSet, libdwf), BOOL, (HDWF, TRIGSRC), hdwf, trigsrc)
end

function FDwfDigitalInTriggerSourceGet(hdwf, ptrigsrc)
    ccall((:FDwfDigitalInTriggerSourceGet, libdwf), BOOL, (HDWF, Ptr{TRIGSRC}), hdwf, ptrigsrc)
end

function FDwfDigitalInTriggerSlopeSet(hdwf, slope)
    ccall((:FDwfDigitalInTriggerSlopeSet, libdwf), BOOL, (HDWF, DwfTriggerSlope), hdwf, slope)
end

function FDwfDigitalInTriggerSlopeGet(hdwf, pslope)
    ccall((:FDwfDigitalInTriggerSlopeGet, libdwf), BOOL, (HDWF, Ptr{DwfTriggerSlope}), hdwf, pslope)
end

function FDwfDigitalInTriggerPositionInfo(hdwf, pnSamplesAfterTriggerMax)
    ccall((:FDwfDigitalInTriggerPositionInfo, libdwf), BOOL, (HDWF, Ptr{UInt32}), hdwf, pnSamplesAfterTriggerMax)
end

function FDwfDigitalInTriggerPositionSet(hdwf, cSamplesAfterTrigger)
    ccall((:FDwfDigitalInTriggerPositionSet, libdwf), BOOL, (HDWF, UInt32), hdwf, cSamplesAfterTrigger)
end

function FDwfDigitalInTriggerPositionGet(hdwf, pcSamplesAfterTrigger)
    ccall((:FDwfDigitalInTriggerPositionGet, libdwf), BOOL, (HDWF, Ptr{UInt32}), hdwf, pcSamplesAfterTrigger)
end

function FDwfDigitalInTriggerPrefillSet(hdwf, cSamplesBeforeTrigger)
    ccall((:FDwfDigitalInTriggerPrefillSet, libdwf), BOOL, (HDWF, UInt32), hdwf, cSamplesBeforeTrigger)
end

function FDwfDigitalInTriggerPrefillGet(hdwf, pcSamplesBeforeTrigger)
    ccall((:FDwfDigitalInTriggerPrefillGet, libdwf), BOOL, (HDWF, Ptr{UInt32}), hdwf, pcSamplesBeforeTrigger)
end

function FDwfDigitalInTriggerAutoTimeoutInfo(hdwf, psecMin, psecMax, pnSteps)
    ccall((:FDwfDigitalInTriggerAutoTimeoutInfo, libdwf), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, psecMin, psecMax, pnSteps)
end

function FDwfDigitalInTriggerAutoTimeoutSet(hdwf, secTimeout)
    ccall((:FDwfDigitalInTriggerAutoTimeoutSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, secTimeout)
end

function FDwfDigitalInTriggerAutoTimeoutGet(hdwf, psecTimeout)
    ccall((:FDwfDigitalInTriggerAutoTimeoutGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecTimeout)
end

function FDwfDigitalInTriggerInfo(hdwf, pfsLevelLow, pfsLevelHigh, pfsEdgeRise, pfsEdgeFall)
    ccall((:FDwfDigitalInTriggerInfo, libdwf), BOOL, (HDWF, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}), hdwf, pfsLevelLow, pfsLevelHigh, pfsEdgeRise, pfsEdgeFall)
end

function FDwfDigitalInTriggerSet(hdwf, fsLevelLow, fsLevelHigh, fsEdgeRise, fsEdgeFall)
    ccall((:FDwfDigitalInTriggerSet, libdwf), BOOL, (HDWF, UInt32, UInt32, UInt32, UInt32), hdwf, fsLevelLow, fsLevelHigh, fsEdgeRise, fsEdgeFall)
end

function FDwfDigitalInTriggerGet(hdwf, pfsLevelLow, pfsLevelHigh, pfsEdgeRise, pfsEdgeFall)
    ccall((:FDwfDigitalInTriggerGet, libdwf), BOOL, (HDWF, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}), hdwf, pfsLevelLow, pfsLevelHigh, pfsEdgeRise, pfsEdgeFall)
end

function FDwfDigitalInTriggerResetSet(hdwf, fsLevelLow, fsLevelHigh, fsEdgeRise, fsEdgeFall)
    ccall((:FDwfDigitalInTriggerResetSet, libdwf), BOOL, (HDWF, UInt32, UInt32, UInt32, UInt32), hdwf, fsLevelLow, fsLevelHigh, fsEdgeRise, fsEdgeFall)
end

function FDwfDigitalInTriggerCountSet(hdwf, cCount, fRestart)
    ccall((:FDwfDigitalInTriggerCountSet, libdwf), BOOL, (HDWF, Cint, Cint), hdwf, cCount, fRestart)
end

function FDwfDigitalInTriggerLengthSet(hdwf, secMin, secMax, idxSync)
    ccall((:FDwfDigitalInTriggerLengthSet, libdwf), BOOL, (HDWF, Cdouble, Cdouble, Cint), hdwf, secMin, secMax, idxSync)
end

function FDwfDigitalInTriggerMatchSet(hdwf, iPin, fsMask, fsValue, cBitStuffing)
    ccall((:FDwfDigitalInTriggerMatchSet, libdwf), BOOL, (HDWF, Cint, UInt32, UInt32, Cint), hdwf, iPin, fsMask, fsValue, cBitStuffing)
end

function FDwfDigitalOutReset(hdwf)
    ccall((:FDwfDigitalOutReset, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalOutConfigure(hdwf, fStart)
    ccall((:FDwfDigitalOutConfigure, libdwf), BOOL, (HDWF, BOOL), hdwf, fStart)
end

function FDwfDigitalOutStatus(hdwf, psts)
    ccall((:FDwfDigitalOutStatus, libdwf), BOOL, (HDWF, Ptr{DwfState}), hdwf, psts)
end

function FDwfDigitalOutInternalClockInfo(hdwf, phzFreq)
    ccall((:FDwfDigitalOutInternalClockInfo, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, phzFreq)
end

function FDwfDigitalOutTriggerSourceSet(hdwf, trigsrc)
    ccall((:FDwfDigitalOutTriggerSourceSet, libdwf), BOOL, (HDWF, TRIGSRC), hdwf, trigsrc)
end

function FDwfDigitalOutTriggerSourceGet(hdwf, ptrigsrc)
    ccall((:FDwfDigitalOutTriggerSourceGet, libdwf), BOOL, (HDWF, Ptr{TRIGSRC}), hdwf, ptrigsrc)
end

function FDwfDigitalOutRunInfo(hdwf, psecMin, psecMax)
    ccall((:FDwfDigitalOutRunInfo, libdwf), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, psecMin, psecMax)
end

function FDwfDigitalOutRunSet(hdwf, secRun)
    ccall((:FDwfDigitalOutRunSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, secRun)
end

function FDwfDigitalOutRunGet(hdwf, psecRun)
    ccall((:FDwfDigitalOutRunGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecRun)
end

function FDwfDigitalOutRunStatus(hdwf, psecRun)
    ccall((:FDwfDigitalOutRunStatus, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecRun)
end

function FDwfDigitalOutWaitInfo(hdwf, psecMin, psecMax)
    ccall((:FDwfDigitalOutWaitInfo, libdwf), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, psecMin, psecMax)
end

function FDwfDigitalOutWaitSet(hdwf, secWait)
    ccall((:FDwfDigitalOutWaitSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, secWait)
end

function FDwfDigitalOutWaitGet(hdwf, psecWait)
    ccall((:FDwfDigitalOutWaitGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, psecWait)
end

function FDwfDigitalOutRepeatInfo(hdwf, pnMin, pnMax)
    ccall((:FDwfDigitalOutRepeatInfo, libdwf), BOOL, (HDWF, Ptr{UInt32}, Ptr{UInt32}), hdwf, pnMin, pnMax)
end

function FDwfDigitalOutRepeatSet(hdwf, cRepeat)
    ccall((:FDwfDigitalOutRepeatSet, libdwf), BOOL, (HDWF, UInt32), hdwf, cRepeat)
end

function FDwfDigitalOutRepeatGet(hdwf, pcRepeat)
    ccall((:FDwfDigitalOutRepeatGet, libdwf), BOOL, (HDWF, Ptr{UInt32}), hdwf, pcRepeat)
end

function FDwfDigitalOutRepeatStatus(hdwf, pcRepeat)
    ccall((:FDwfDigitalOutRepeatStatus, libdwf), BOOL, (HDWF, Ptr{UInt32}), hdwf, pcRepeat)
end

function FDwfDigitalOutTriggerSlopeSet(hdwf, slope)
    ccall((:FDwfDigitalOutTriggerSlopeSet, libdwf), BOOL, (HDWF, DwfTriggerSlope), hdwf, slope)
end

function FDwfDigitalOutTriggerSlopeGet(hdwf, pslope)
    ccall((:FDwfDigitalOutTriggerSlopeGet, libdwf), BOOL, (HDWF, Ptr{DwfTriggerSlope}), hdwf, pslope)
end

function FDwfDigitalOutRepeatTriggerSet(hdwf, fRepeatTrigger)
    ccall((:FDwfDigitalOutRepeatTriggerSet, libdwf), BOOL, (HDWF, BOOL), hdwf, fRepeatTrigger)
end

function FDwfDigitalOutRepeatTriggerGet(hdwf, pfRepeatTrigger)
    ccall((:FDwfDigitalOutRepeatTriggerGet, libdwf), BOOL, (HDWF, Ptr{BOOL}), hdwf, pfRepeatTrigger)
end

function FDwfDigitalOutCount(hdwf, pcChannel)
    ccall((:FDwfDigitalOutCount, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pcChannel)
end

function FDwfDigitalOutEnableSet(hdwf, idxChannel, fEnable)
    ccall((:FDwfDigitalOutEnableSet, libdwf), BOOL, (HDWF, Cint, BOOL), hdwf, idxChannel, fEnable)
end

function FDwfDigitalOutEnableGet(hdwf, idxChannel, pfEnable)
    ccall((:FDwfDigitalOutEnableGet, libdwf), BOOL, (HDWF, Cint, Ptr{BOOL}), hdwf, idxChannel, pfEnable)
end

function FDwfDigitalOutOutputInfo(hdwf, idxChannel, pfsDwfDigitalOutOutput)
    ccall((:FDwfDigitalOutOutputInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pfsDwfDigitalOutOutput)
end

function FDwfDigitalOutOutputSet(hdwf, idxChannel, v)
    ccall((:FDwfDigitalOutOutputSet, libdwf), BOOL, (HDWF, Cint, DwfDigitalOutOutput), hdwf, idxChannel, v)
end

function FDwfDigitalOutOutputGet(hdwf, idxChannel, pv)
    ccall((:FDwfDigitalOutOutputGet, libdwf), BOOL, (HDWF, Cint, Ptr{DwfDigitalOutOutput}), hdwf, idxChannel, pv)
end

function FDwfDigitalOutTypeInfo(hdwf, idxChannel, pfsDwfDigitalOutType)
    ccall((:FDwfDigitalOutTypeInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pfsDwfDigitalOutType)
end

function FDwfDigitalOutTypeSet(hdwf, idxChannel, v)
    ccall((:FDwfDigitalOutTypeSet, libdwf), BOOL, (HDWF, Cint, DwfDigitalOutType), hdwf, idxChannel, v)
end

function FDwfDigitalOutTypeGet(hdwf, idxChannel, pv)
    ccall((:FDwfDigitalOutTypeGet, libdwf), BOOL, (HDWF, Cint, Ptr{DwfDigitalOutType}), hdwf, idxChannel, pv)
end

function FDwfDigitalOutIdleInfo(hdwf, idxChannel, pfsDwfDigitalOutIdle)
    ccall((:FDwfDigitalOutIdleInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pfsDwfDigitalOutIdle)
end

function FDwfDigitalOutIdleSet(hdwf, idxChannel, v)
    ccall((:FDwfDigitalOutIdleSet, libdwf), BOOL, (HDWF, Cint, DwfDigitalOutIdle), hdwf, idxChannel, v)
end

function FDwfDigitalOutIdleGet(hdwf, idxChannel, pv)
    ccall((:FDwfDigitalOutIdleGet, libdwf), BOOL, (HDWF, Cint, Ptr{DwfDigitalOutIdle}), hdwf, idxChannel, pv)
end

function FDwfDigitalOutDividerInfo(hdwf, idxChannel, vMin, vMax)
    ccall((:FDwfDigitalOutDividerInfo, libdwf), BOOL, (HDWF, Cint, Ptr{UInt32}, Ptr{UInt32}), hdwf, idxChannel, vMin, vMax)
end

function FDwfDigitalOutDividerInitSet(hdwf, idxChannel, v)
    ccall((:FDwfDigitalOutDividerInitSet, libdwf), BOOL, (HDWF, Cint, UInt32), hdwf, idxChannel, v)
end

function FDwfDigitalOutDividerInitGet(hdwf, idxChannel, pv)
    ccall((:FDwfDigitalOutDividerInitGet, libdwf), BOOL, (HDWF, Cint, Ptr{UInt32}), hdwf, idxChannel, pv)
end

function FDwfDigitalOutDividerSet(hdwf, idxChannel, v)
    ccall((:FDwfDigitalOutDividerSet, libdwf), BOOL, (HDWF, Cint, UInt32), hdwf, idxChannel, v)
end

function FDwfDigitalOutDividerGet(hdwf, idxChannel, pv)
    ccall((:FDwfDigitalOutDividerGet, libdwf), BOOL, (HDWF, Cint, Ptr{UInt32}), hdwf, idxChannel, pv)
end

function FDwfDigitalOutCounterInfo(hdwf, idxChannel, vMin, vMax)
    ccall((:FDwfDigitalOutCounterInfo, libdwf), BOOL, (HDWF, Cint, Ptr{UInt32}, Ptr{UInt32}), hdwf, idxChannel, vMin, vMax)
end

function FDwfDigitalOutCounterInitSet(hdwf, idxChannel, fHigh, v)
    ccall((:FDwfDigitalOutCounterInitSet, libdwf), BOOL, (HDWF, Cint, BOOL, UInt32), hdwf, idxChannel, fHigh, v)
end

function FDwfDigitalOutCounterInitGet(hdwf, idxChannel, pfHigh, pv)
    ccall((:FDwfDigitalOutCounterInitGet, libdwf), BOOL, (HDWF, Cint, Ptr{Cint}, Ptr{UInt32}), hdwf, idxChannel, pfHigh, pv)
end

function FDwfDigitalOutCounterSet(hdwf, idxChannel, vLow, vHigh)
    ccall((:FDwfDigitalOutCounterSet, libdwf), BOOL, (HDWF, Cint, UInt32, UInt32), hdwf, idxChannel, vLow, vHigh)
end

function FDwfDigitalOutCounterGet(hdwf, idxChannel, pvLow, pvHigh)
    ccall((:FDwfDigitalOutCounterGet, libdwf), BOOL, (HDWF, Cint, Ptr{UInt32}, Ptr{UInt32}), hdwf, idxChannel, pvLow, pvHigh)
end

function FDwfDigitalOutDataInfo(hdwf, idxChannel, pcountOfBitsMax)
    ccall((:FDwfDigitalOutDataInfo, libdwf), BOOL, (HDWF, Cint, Ptr{UInt32}), hdwf, idxChannel, pcountOfBitsMax)
end

function FDwfDigitalOutDataSet(hdwf, idxChannel, rgBits, countOfBits)
    ccall((:FDwfDigitalOutDataSet, libdwf), BOOL, (HDWF, Cint, Ptr{Cvoid}, UInt32), hdwf, idxChannel, rgBits, countOfBits)
end

function FDwfDigitalUartReset(hdwf)
    ccall((:FDwfDigitalUartReset, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalUartRateSet(hdwf, hz)
    ccall((:FDwfDigitalUartRateSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, hz)
end

function FDwfDigitalUartBitsSet(hdwf, cBits)
    ccall((:FDwfDigitalUartBitsSet, libdwf), BOOL, (HDWF, Cint), hdwf, cBits)
end

function FDwfDigitalUartParitySet(hdwf, parity)
    ccall((:FDwfDigitalUartParitySet, libdwf), BOOL, (HDWF, Cint), hdwf, parity)
end

function FDwfDigitalUartStopSet(hdwf, cBit)
    ccall((:FDwfDigitalUartStopSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, cBit)
end

function FDwfDigitalUartTxSet(hdwf, idxChannel)
    ccall((:FDwfDigitalUartTxSet, libdwf), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfDigitalUartRxSet(hdwf, idxChannel)
    ccall((:FDwfDigitalUartRxSet, libdwf), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfDigitalUartTx(hdwf, szTx, cTx)
    ccall((:FDwfDigitalUartTx, libdwf), BOOL, (HDWF, Cstring, Cint), hdwf, szTx, cTx)
end

function FDwfDigitalUartRx(hdwf, szRx, cRx, pcRx, pParity)
    ccall((:FDwfDigitalUartRx, libdwf), BOOL, (HDWF, Cstring, Cint, Ptr{Cint}, Ptr{Cint}), hdwf, szRx, cRx, pcRx, pParity)
end

function FDwfDigitalSpiReset(hdwf)
    ccall((:FDwfDigitalSpiReset, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalSpiFrequencySet(hdwf, hz)
    ccall((:FDwfDigitalSpiFrequencySet, libdwf), BOOL, (HDWF, Cdouble), hdwf, hz)
end

function FDwfDigitalSpiClockSet(hdwf, idxChannel)
    ccall((:FDwfDigitalSpiClockSet, libdwf), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfDigitalSpiDataSet(hdwf, idxDQ, idxChannel)
    ccall((:FDwfDigitalSpiDataSet, libdwf), BOOL, (HDWF, Cint, Cint), hdwf, idxDQ, idxChannel)
end

function FDwfDigitalSpiModeSet(hdwf, iMode)
    ccall((:FDwfDigitalSpiModeSet, libdwf), BOOL, (HDWF, Cint), hdwf, iMode)
end

function FDwfDigitalSpiOrderSet(hdwf, fMSBLSB)
    ccall((:FDwfDigitalSpiOrderSet, libdwf), BOOL, (HDWF, Cint), hdwf, fMSBLSB)
end

function FDwfDigitalSpiSelect(hdwf, idxChannel, level)
    ccall((:FDwfDigitalSpiSelect, libdwf), BOOL, (HDWF, Cint, Cint), hdwf, idxChannel, level)
end

function FDwfDigitalSpiWriteRead(hdwf, cDQ, cBitPerWord, rgTX, cTX, rgRX, cRX)
    ccall((:FDwfDigitalSpiWriteRead, libdwf), BOOL, (HDWF, Cint, Cint, Ptr{Cuchar}, Cint, Ptr{Cuchar}, Cint), hdwf, cDQ, cBitPerWord, rgTX, cTX, rgRX, cRX)
end

function FDwfDigitalSpiWriteRead16(hdwf, cDQ, cBitPerWord, rgTX, cTX, rgRX, cRX)
    ccall((:FDwfDigitalSpiWriteRead16, libdwf), BOOL, (HDWF, Cint, Cint, Ptr{UInt16}, Cint, Ptr{UInt16}, Cint), hdwf, cDQ, cBitPerWord, rgTX, cTX, rgRX, cRX)
end

function FDwfDigitalSpiWriteRead32(hdwf, cDQ, cBitPerWord, rgTX, cTX, rgRX, cRX)
    ccall((:FDwfDigitalSpiWriteRead32, libdwf), BOOL, (HDWF, Cint, Cint, Ptr{UInt32}, Cint, Ptr{UInt32}, Cint), hdwf, cDQ, cBitPerWord, rgTX, cTX, rgRX, cRX)
end

function FDwfDigitalSpiRead(hdwf, cDQ, cBitPerWord, rgRX, cRX)
    ccall((:FDwfDigitalSpiRead, libdwf), BOOL, (HDWF, Cint, Cint, Ptr{Cuchar}, Cint), hdwf, cDQ, cBitPerWord, rgRX, cRX)
end

function FDwfDigitalSpiReadOne(hdwf, cDQ, cBitPerWord, pRX)
    ccall((:FDwfDigitalSpiReadOne, libdwf), BOOL, (HDWF, Cint, Cint, Ptr{UInt32}), hdwf, cDQ, cBitPerWord, pRX)
end

function FDwfDigitalSpiRead16(hdwf, cDQ, cBitPerWord, rgRX, cRX)
    ccall((:FDwfDigitalSpiRead16, libdwf), BOOL, (HDWF, Cint, Cint, Ptr{UInt16}, Cint), hdwf, cDQ, cBitPerWord, rgRX, cRX)
end

function FDwfDigitalSpiRead32(hdwf, cDQ, cBitPerWord, rgRX, cRX)
    ccall((:FDwfDigitalSpiRead32, libdwf), BOOL, (HDWF, Cint, Cint, Ptr{UInt32}, Cint), hdwf, cDQ, cBitPerWord, rgRX, cRX)
end

function FDwfDigitalSpiWrite(hdwf, cDQ, cBitPerWord, rgTX, cTX)
    ccall((:FDwfDigitalSpiWrite, libdwf), BOOL, (HDWF, Cint, Cint, Ptr{Cuchar}, Cint), hdwf, cDQ, cBitPerWord, rgTX, cTX)
end

function FDwfDigitalSpiWriteOne(hdwf, cDQ, cBits, vTX)
    ccall((:FDwfDigitalSpiWriteOne, libdwf), BOOL, (HDWF, Cint, Cint, UInt32), hdwf, cDQ, cBits, vTX)
end

function FDwfDigitalSpiWrite16(hdwf, cDQ, cBitPerWord, rgTX, cTX)
    ccall((:FDwfDigitalSpiWrite16, libdwf), BOOL, (HDWF, Cint, Cint, Ptr{UInt16}, Cint), hdwf, cDQ, cBitPerWord, rgTX, cTX)
end

function FDwfDigitalSpiWrite32(hdwf, cDQ, cBitPerWord, rgTX, cTX)
    ccall((:FDwfDigitalSpiWrite32, libdwf), BOOL, (HDWF, Cint, Cint, Ptr{UInt32}, Cint), hdwf, cDQ, cBitPerWord, rgTX, cTX)
end

function FDwfDigitalI2cReset(hdwf)
    ccall((:FDwfDigitalI2cReset, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalI2cClear(hdwf, pfFree)
    ccall((:FDwfDigitalI2cClear, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pfFree)
end

function FDwfDigitalI2cStretchSet(hdwf, fEnable)
    ccall((:FDwfDigitalI2cStretchSet, libdwf), BOOL, (HDWF, Cint), hdwf, fEnable)
end

function FDwfDigitalI2cRateSet(hdwf, hz)
    ccall((:FDwfDigitalI2cRateSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, hz)
end

function FDwfDigitalI2cReadNakSet(hdwf, fNakLastReadByte)
    ccall((:FDwfDigitalI2cReadNakSet, libdwf), BOOL, (HDWF, Cint), hdwf, fNakLastReadByte)
end

function FDwfDigitalI2cSclSet(hdwf, idxChannel)
    ccall((:FDwfDigitalI2cSclSet, libdwf), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfDigitalI2cSdaSet(hdwf, idxChannel)
    ccall((:FDwfDigitalI2cSdaSet, libdwf), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfDigitalI2cWriteRead(hdwf, adr8bits, rgbTx, cTx, rgRx, cRx, pNak)
    ccall((:FDwfDigitalI2cWriteRead, libdwf), BOOL, (HDWF, Cuchar, Ptr{Cuchar}, Cint, Ptr{Cuchar}, Cint, Ptr{Cint}), hdwf, adr8bits, rgbTx, cTx, rgRx, cRx, pNak)
end

function FDwfDigitalI2cRead(hdwf, adr8bits, rgbRx, cRx, pNak)
    ccall((:FDwfDigitalI2cRead, libdwf), BOOL, (HDWF, Cuchar, Ptr{Cuchar}, Cint, Ptr{Cint}), hdwf, adr8bits, rgbRx, cRx, pNak)
end

function FDwfDigitalI2cWrite(hdwf, adr8bits, rgbTx, cTx, pNak)
    ccall((:FDwfDigitalI2cWrite, libdwf), BOOL, (HDWF, Cuchar, Ptr{Cuchar}, Cint, Ptr{Cint}), hdwf, adr8bits, rgbTx, cTx, pNak)
end

function FDwfDigitalI2cWriteOne(hdwf, adr8bits, bTx, pNak)
    ccall((:FDwfDigitalI2cWriteOne, libdwf), BOOL, (HDWF, Cuchar, Cuchar, Ptr{Cint}), hdwf, adr8bits, bTx, pNak)
end

function FDwfDigitalCanReset(hdwf)
    ccall((:FDwfDigitalCanReset, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfDigitalCanRateSet(hdwf, hz)
    ccall((:FDwfDigitalCanRateSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, hz)
end

function FDwfDigitalCanPolaritySet(hdwf, fHigh)
    ccall((:FDwfDigitalCanPolaritySet, libdwf), BOOL, (HDWF, Cint), hdwf, fHigh)
end

function FDwfDigitalCanTxSet(hdwf, idxChannel)
    ccall((:FDwfDigitalCanTxSet, libdwf), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfDigitalCanRxSet(hdwf, idxChannel)
    ccall((:FDwfDigitalCanRxSet, libdwf), BOOL, (HDWF, Cint), hdwf, idxChannel)
end

function FDwfDigitalCanTx(hdwf, vID, fExtended, fRemote, cDLC, rgTX)
    ccall((:FDwfDigitalCanTx, libdwf), BOOL, (HDWF, Cint, Cint, Cint, Cint, Ptr{Cuchar}), hdwf, vID, fExtended, fRemote, cDLC, rgTX)
end

function FDwfDigitalCanRx(hdwf, pvID, pfExtended, pfRemote, pcDLC, rgRX, cRX, pvStatus)
    ccall((:FDwfDigitalCanRx, libdwf), BOOL, (HDWF, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cuchar}, Cint, Ptr{Cint}), hdwf, pvID, pfExtended, pfRemote, pcDLC, rgRX, cRX, pvStatus)
end

function FDwfAnalogImpedanceReset(hdwf)
    ccall((:FDwfAnalogImpedanceReset, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfAnalogImpedanceModeSet(hdwf, mode)
    ccall((:FDwfAnalogImpedanceModeSet, libdwf), BOOL, (HDWF, Cint), hdwf, mode)
end

function FDwfAnalogImpedanceModeGet(hdwf, mode)
    ccall((:FDwfAnalogImpedanceModeGet, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, mode)
end

function FDwfAnalogImpedanceReferenceSet(hdwf, ohms)
    ccall((:FDwfAnalogImpedanceReferenceSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, ohms)
end

function FDwfAnalogImpedanceReferenceGet(hdwf, pohms)
    ccall((:FDwfAnalogImpedanceReferenceGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, pohms)
end

function FDwfAnalogImpedanceFrequencySet(hdwf, hz)
    ccall((:FDwfAnalogImpedanceFrequencySet, libdwf), BOOL, (HDWF, Cdouble), hdwf, hz)
end

function FDwfAnalogImpedanceFrequencyGet(hdwf, phz)
    ccall((:FDwfAnalogImpedanceFrequencyGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, phz)
end

function FDwfAnalogImpedanceAmplitudeSet(hdwf, volts)
    ccall((:FDwfAnalogImpedanceAmplitudeSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, volts)
end

function FDwfAnalogImpedanceAmplitudeGet(hdwf, pvolts)
    ccall((:FDwfAnalogImpedanceAmplitudeGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, pvolts)
end

function FDwfAnalogImpedanceOffsetSet(hdwf, volts)
    ccall((:FDwfAnalogImpedanceOffsetSet, libdwf), BOOL, (HDWF, Cdouble), hdwf, volts)
end

function FDwfAnalogImpedanceOffsetGet(hdwf, pvolts)
    ccall((:FDwfAnalogImpedanceOffsetGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}), hdwf, pvolts)
end

function FDwfAnalogImpedanceProbeSet(hdwf, ohmRes, faradCap)
    ccall((:FDwfAnalogImpedanceProbeSet, libdwf), BOOL, (HDWF, Cdouble, Cdouble), hdwf, ohmRes, faradCap)
end

function FDwfAnalogImpedanceProbeGet(hdwf, pohmRes, pfaradCap)
    ccall((:FDwfAnalogImpedanceProbeGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, pohmRes, pfaradCap)
end

function FDwfAnalogImpedancePeriodSet(hdwf, cMinPeriods)
    ccall((:FDwfAnalogImpedancePeriodSet, libdwf), BOOL, (HDWF, Cint), hdwf, cMinPeriods)
end

function FDwfAnalogImpedancePeriodGet(hdwf, cMinPeriods)
    ccall((:FDwfAnalogImpedancePeriodGet, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, cMinPeriods)
end

function FDwfAnalogImpedanceCompReset(hdwf)
    ccall((:FDwfAnalogImpedanceCompReset, libdwf), BOOL, (HDWF,), hdwf)
end

function FDwfAnalogImpedanceCompSet(hdwf, ohmOpenResistance, ohmOpenReactance, ohmShortResistance, ohmShortReactance)
    ccall((:FDwfAnalogImpedanceCompSet, libdwf), BOOL, (HDWF, Cdouble, Cdouble, Cdouble, Cdouble), hdwf, ohmOpenResistance, ohmOpenReactance, ohmShortResistance, ohmShortReactance)
end

function FDwfAnalogImpedanceCompGet(hdwf, pohmOpenResistance, pohmOpenReactance, pohmShortResistance, pohmShortReactance)
    ccall((:FDwfAnalogImpedanceCompGet, libdwf), BOOL, (HDWF, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, pohmOpenResistance, pohmOpenReactance, pohmShortResistance, pohmShortReactance)
end

function FDwfAnalogImpedanceConfigure(hdwf, fStart)
    ccall((:FDwfAnalogImpedanceConfigure, libdwf), BOOL, (HDWF, Cint), hdwf, fStart)
end

function FDwfAnalogImpedanceStatus(hdwf, psts)
    ccall((:FDwfAnalogImpedanceStatus, libdwf), BOOL, (HDWF, Ptr{DwfState}), hdwf, psts)
end

function FDwfAnalogImpedanceStatusInput(hdwf, idxChannel, pgain, pradian)
    ccall((:FDwfAnalogImpedanceStatusInput, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, pgain, pradian)
end

function FDwfAnalogImpedanceStatusMeasure(hdwf, measure, pvalue)
    ccall((:FDwfAnalogImpedanceStatusMeasure, libdwf), BOOL, (HDWF, DwfAnalogImpedance, Ptr{Cdouble}), hdwf, measure, pvalue)
end

function FDwfDigitalInMixedSet(hdwf, fEnable)
    ccall((:FDwfDigitalInMixedSet, libdwf), BOOL, (HDWF, BOOL), hdwf, fEnable)
end

function FDwfAnalogInTriggerSourceInfo(hdwf, pfstrigsrc)
    ccall((:FDwfAnalogInTriggerSourceInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pfstrigsrc)
end

function FDwfAnalogOutTriggerSourceInfo(hdwf, idxChannel, pfstrigsrc)
    ccall((:FDwfAnalogOutTriggerSourceInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pfstrigsrc)
end

function FDwfDigitalInTriggerSourceInfo(hdwf, pfstrigsrc)
    ccall((:FDwfDigitalInTriggerSourceInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pfstrigsrc)
end

function FDwfDigitalOutTriggerSourceInfo(hdwf, pfstrigsrc)
    ccall((:FDwfDigitalOutTriggerSourceInfo, libdwf), BOOL, (HDWF, Ptr{Cint}), hdwf, pfstrigsrc)
end

function FDwfAnalogOutEnableSet(hdwf, idxChannel, fEnable)
    ccall((:FDwfAnalogOutEnableSet, libdwf), BOOL, (HDWF, Cint, BOOL), hdwf, idxChannel, fEnable)
end

function FDwfAnalogOutEnableGet(hdwf, idxChannel, pfEnable)
    ccall((:FDwfAnalogOutEnableGet, libdwf), BOOL, (HDWF, Cint, Ptr{BOOL}), hdwf, idxChannel, pfEnable)
end

function FDwfAnalogOutFunctionInfo(hdwf, idxChannel, pfsfunc)
    ccall((:FDwfAnalogOutFunctionInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cint}), hdwf, idxChannel, pfsfunc)
end

function FDwfAnalogOutFunctionSet(hdwf, idxChannel, func)
    ccall((:FDwfAnalogOutFunctionSet, libdwf), BOOL, (HDWF, Cint, FUNC), hdwf, idxChannel, func)
end

function FDwfAnalogOutFunctionGet(hdwf, idxChannel, pfunc)
    ccall((:FDwfAnalogOutFunctionGet, libdwf), BOOL, (HDWF, Cint, Ptr{FUNC}), hdwf, idxChannel, pfunc)
end

function FDwfAnalogOutFrequencyInfo(hdwf, idxChannel, phzMin, phzMax)
    ccall((:FDwfAnalogOutFrequencyInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, phzMin, phzMax)
end

function FDwfAnalogOutFrequencySet(hdwf, idxChannel, hzFrequency)
    ccall((:FDwfAnalogOutFrequencySet, libdwf), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, hzFrequency)
end

function FDwfAnalogOutFrequencyGet(hdwf, idxChannel, phzFrequency)
    ccall((:FDwfAnalogOutFrequencyGet, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, phzFrequency)
end

function FDwfAnalogOutAmplitudeInfo(hdwf, idxChannel, pvoltsMin, pvoltsMax)
    ccall((:FDwfAnalogOutAmplitudeInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, pvoltsMin, pvoltsMax)
end

function FDwfAnalogOutAmplitudeSet(hdwf, idxChannel, voltsAmplitude)
    ccall((:FDwfAnalogOutAmplitudeSet, libdwf), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, voltsAmplitude)
end

function FDwfAnalogOutAmplitudeGet(hdwf, idxChannel, pvoltsAmplitude)
    ccall((:FDwfAnalogOutAmplitudeGet, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, pvoltsAmplitude)
end

function FDwfAnalogOutOffsetInfo(hdwf, idxChannel, pvoltsMin, pvoltsMax)
    ccall((:FDwfAnalogOutOffsetInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, pvoltsMin, pvoltsMax)
end

function FDwfAnalogOutOffsetSet(hdwf, idxChannel, voltsOffset)
    ccall((:FDwfAnalogOutOffsetSet, libdwf), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, voltsOffset)
end

function FDwfAnalogOutOffsetGet(hdwf, idxChannel, pvoltsOffset)
    ccall((:FDwfAnalogOutOffsetGet, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, pvoltsOffset)
end

function FDwfAnalogOutSymmetryInfo(hdwf, idxChannel, ppercentageMin, ppercentageMax)
    ccall((:FDwfAnalogOutSymmetryInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, ppercentageMin, ppercentageMax)
end

function FDwfAnalogOutSymmetrySet(hdwf, idxChannel, percentageSymmetry)
    ccall((:FDwfAnalogOutSymmetrySet, libdwf), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, percentageSymmetry)
end

function FDwfAnalogOutSymmetryGet(hdwf, idxChannel, ppercentageSymmetry)
    ccall((:FDwfAnalogOutSymmetryGet, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, ppercentageSymmetry)
end

function FDwfAnalogOutPhaseInfo(hdwf, idxChannel, pdegreeMin, pdegreeMax)
    ccall((:FDwfAnalogOutPhaseInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}, Ptr{Cdouble}), hdwf, idxChannel, pdegreeMin, pdegreeMax)
end

function FDwfAnalogOutPhaseSet(hdwf, idxChannel, degreePhase)
    ccall((:FDwfAnalogOutPhaseSet, libdwf), BOOL, (HDWF, Cint, Cdouble), hdwf, idxChannel, degreePhase)
end

function FDwfAnalogOutPhaseGet(hdwf, idxChannel, pdegreePhase)
    ccall((:FDwfAnalogOutPhaseGet, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}), hdwf, idxChannel, pdegreePhase)
end

function FDwfAnalogOutDataInfo(hdwf, idxChannel, pnSamplesMin, pnSamplesMax)
    ccall((:FDwfAnalogOutDataInfo, libdwf), BOOL, (HDWF, Cint, Ptr{Cint}, Ptr{Cint}), hdwf, idxChannel, pnSamplesMin, pnSamplesMax)
end

function FDwfAnalogOutDataSet(hdwf, idxChannel, rgdData, cdData)
    ccall((:FDwfAnalogOutDataSet, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}, Cint), hdwf, idxChannel, rgdData, cdData)
end

function FDwfAnalogOutPlayStatus(hdwf, idxChannel, cdDataFree, cdDataLost, cdDataCorrupted)
    ccall((:FDwfAnalogOutPlayStatus, libdwf), BOOL, (HDWF, Cint, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), hdwf, idxChannel, cdDataFree, cdDataLost, cdDataCorrupted)
end

function FDwfAnalogOutPlayData(hdwf, idxChannel, rgdData, cdData)
    ccall((:FDwfAnalogOutPlayData, libdwf), BOOL, (HDWF, Cint, Ptr{Cdouble}, Cint), hdwf, idxChannel, rgdData, cdData)
end

function FDwfEnumAnalogInChannels(idxDevice, pnChannels)
    ccall((:FDwfEnumAnalogInChannels, libdwf), BOOL, (Cint, Ptr{Cint}), idxDevice, pnChannels)
end

function FDwfEnumAnalogInBufferSize(idxDevice, pnBufferSize)
    ccall((:FDwfEnumAnalogInBufferSize, libdwf), BOOL, (Cint, Ptr{Cint}), idxDevice, pnBufferSize)
end

function FDwfEnumAnalogInBits(idxDevice, pnBits)
    ccall((:FDwfEnumAnalogInBits, libdwf), BOOL, (Cint, Ptr{Cint}), idxDevice, pnBits)
end

function FDwfEnumAnalogInFrequency(idxDevice, phzFrequency)
    ccall((:FDwfEnumAnalogInFrequency, libdwf), BOOL, (Cint, Ptr{Cdouble}), idxDevice, phzFrequency)
end
