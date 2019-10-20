# Consts wrapped by wrapconsts.jl

const hdwfNone = HDWF(0)

const enumfilterAll = ENUMFILTER(0)
const enumfilterEExplorer = ENUMFILTER(1)
const enumfilterDiscovery = ENUMFILTER(2)
const enumfilterDiscovery2 = ENUMFILTER(3)
const enumfilterDDiscovery = ENUMFILTER(4)

const devidEExplorer = DEVID(1)
const devidDiscovery = DEVID(2)
const devidDiscovery2 = DEVID(3)
const devidDDiscovery = DEVID(4)

const devverEExplorerC = DEVVER(2)
const devverEExplorerE = DEVVER(4)
const devverEExplorerF = DEVVER(5)
const devverDiscoveryA = DEVVER(1)
const devverDiscoveryB = DEVVER(2)
const devverDiscoveryC = DEVVER(3)

const trigsrcNone = TRIGSRC(0)
const trigsrcPC = TRIGSRC(1)
const trigsrcDetectorAnalogIn = TRIGSRC(2)
const trigsrcDetectorDigitalIn = TRIGSRC(3)
const trigsrcAnalogIn = TRIGSRC(4)
const trigsrcDigitalIn = TRIGSRC(5)
const trigsrcDigitalOut = TRIGSRC(6)
const trigsrcAnalogOut1 = TRIGSRC(7)
const trigsrcAnalogOut2 = TRIGSRC(8)
const trigsrcAnalogOut3 = TRIGSRC(9)
const trigsrcAnalogOut4 = TRIGSRC(10)
const trigsrcExternal1 = TRIGSRC(11)
const trigsrcExternal2 = TRIGSRC(12)
const trigsrcExternal3 = TRIGSRC(13)
const trigsrcExternal4 = TRIGSRC(14)
const trigsrcHigh = TRIGSRC(15)
const trigsrcLow = TRIGSRC(16)

const DwfStateReady = DwfState(0)
const DwfStateConfig = DwfState(4)
const DwfStatePrefill = DwfState(5)
const DwfStateArmed = DwfState(1)
const DwfStateWait = DwfState(7)
const DwfStateTriggered = DwfState(3)
const DwfStateRunning = DwfState(3)
const DwfStateDone = DwfState(2)

const DECIAnalogInChannelCount = DwfEnumConfigInfo(1)
const DECIAnalogOutChannelCount = DwfEnumConfigInfo(2)
const DECIAnalogIOChannelCount = DwfEnumConfigInfo(3)
const DECIDigitalInChannelCount = DwfEnumConfigInfo(4)
const DECIDigitalOutChannelCount = DwfEnumConfigInfo(5)
const DECIDigitalIOChannelCount = DwfEnumConfigInfo(6)
const DECIAnalogInBufferSize = DwfEnumConfigInfo(7)
const DECIAnalogOutBufferSize = DwfEnumConfigInfo(8)
const DECIDigitalInBufferSize = DwfEnumConfigInfo(9)
const DECIDigitalOutBufferSize = DwfEnumConfigInfo(10)

const acqmodeSingle = ACQMODE(0)
const acqmodeScanShift = ACQMODE(1)
const acqmodeScanScreen = ACQMODE(2)
const acqmodeRecord = ACQMODE(3)
const acqmodeOvers = ACQMODE(4)
const acqmodeSingle1 = ACQMODE(5)

const filterDecimate = FILTER(0)
const filterAverage = FILTER(1)
const filterMinMax = FILTER(2)

const trigtypeEdge = TRIGTYPE(0)
const trigtypePulse = TRIGTYPE(1)
const trigtypeTransition = TRIGTYPE(2)

const DwfTriggerSlopeRise = DwfTriggerSlope(0)
const DwfTriggerSlopeFall = DwfTriggerSlope(1)
const DwfTriggerSlopeEither = DwfTriggerSlope(2)

const triglenLess = TRIGLEN(0)
const triglenTimeout = TRIGLEN(1)
const triglenMore = TRIGLEN(2)

const dwfercNoErc = DWFERC(0) #  No error occurred
const dwfercUnknownError = DWFERC(1) #  API waiting on pending API timed out
const dwfercApiLockTimeout = DWFERC(2) #  API waiting on pending API timed out
const dwfercAlreadyOpened = DWFERC(3) #  Device already opened
const dwfercNotSupported = DWFERC(4) #  Device not supported
const dwfercInvalidParameter0 = DWFERC(0x10) #  Invalid parameter sent in API call
const dwfercInvalidParameter1 = DWFERC(0x11) #  Invalid parameter sent in API call
const dwfercInvalidParameter2 = DWFERC(0x12) #  Invalid parameter sent in API call
const dwfercInvalidParameter3 = DWFERC(0x13) #  Invalid parameter sent in API call
const dwfercInvalidParameter4 = DWFERC(0x14) #  Invalid parameter sent in API call

const funcDC = FUNC(0)
const funcSine = FUNC(1)
const funcSquare = FUNC(2)
const funcTriangle = FUNC(3)
const funcRampUp = FUNC(4)
const funcRampDown = FUNC(5)
const funcNoise = FUNC(6)
const funcPulse = FUNC(7)
const funcTrapezium = FUNC(8)
const funcSinePower = FUNC(9)
const funcCustom = FUNC(30)
const funcPlay = FUNC(31)

const analogioEnable = ANALOGIO(1)
const analogioVoltage = ANALOGIO(2)
const analogioCurrent = ANALOGIO(3)
const analogioPower = ANALOGIO(4)
const analogioTemperature = ANALOGIO(5)

const AnalogOutNodeCarrier = AnalogOutNode(0)
const AnalogOutNodeFM = AnalogOutNode(1)
const AnalogOutNodeAM = AnalogOutNode(2)

const DwfAnalogOutModeVoltage = DwfAnalogOutMode(0)
const DwfAnalogOutModeCurrent = DwfAnalogOutMode(1)

const DwfAnalogOutIdleDisable = DwfAnalogOutIdle(0)
const DwfAnalogOutIdleOffset = DwfAnalogOutIdle(1)
const DwfAnalogOutIdleInitial = DwfAnalogOutIdle(2)

const DwfDigitalInClockSourceInternal = DwfDigitalInClockSource(0)
const DwfDigitalInClockSourceExternal = DwfDigitalInClockSource(1)

const DwfDigitalInSampleModeSimple = DwfDigitalInSampleMode(0)
const DwfDigitalInSampleModeNoise = DwfDigitalInSampleMode(1)

const DwfDigitalOutOutputPushPull = DwfDigitalOutOutput(0)
const DwfDigitalOutOutputOpenDrain = DwfDigitalOutOutput(1)
const DwfDigitalOutOutputOpenSource = DwfDigitalOutOutput(2)
const DwfDigitalOutOutputThreeState = DwfDigitalOutOutput(3) # for custom and random

const DwfDigitalOutTypePulse = DwfDigitalOutType(0)
const DwfDigitalOutTypeCustom = DwfDigitalOutType(1)
const DwfDigitalOutTypeRandom = DwfDigitalOutType(2)
const DwfDigitalOutTypeROM = DwfDigitalOutType(3)
const DwfDigitalOutTypeFSM = DwfDigitalOutType(3)

const DwfDigitalOutIdleInit = DwfDigitalOutIdle(0)
const DwfDigitalOutIdleLow = DwfDigitalOutIdle(1)
const DwfDigitalOutIdleHigh = DwfDigitalOutIdle(2)
const DwfDigitalOutIdleZet = DwfDigitalOutIdle(3)

const DwfAnalogImpedanceImpedance = DwfAnalogImpedance(0) # Ohms
const DwfAnalogImpedanceImpedancePhase = DwfAnalogImpedance(1) # Radians
const DwfAnalogImpedanceResistance = DwfAnalogImpedance(2) # Ohms
const DwfAnalogImpedanceReactance = DwfAnalogImpedance(3) # Ohms
const DwfAnalogImpedanceAdmittance = DwfAnalogImpedance(4) # Siemen
const DwfAnalogImpedanceAdmittancePhase = DwfAnalogImpedance(5) # Radians
const DwfAnalogImpedanceConductance = DwfAnalogImpedance(6) # Siemen
const DwfAnalogImpedanceSusceptance = DwfAnalogImpedance(7) # Siemen
const DwfAnalogImpedanceSeriesCapactance = DwfAnalogImpedance(8) # Farad
const DwfAnalogImpedanceParallelCapacitance = DwfAnalogImpedance(9) # Farad
const DwfAnalogImpedanceSeriesInductance = DwfAnalogImpedance(10) # Henry
const DwfAnalogImpedanceParallelInductance = DwfAnalogImpedance(11) # Henry
const DwfAnalogImpedanceDissipation = DwfAnalogImpedance(12) # factor
const DwfAnalogImpedanceQuality = DwfAnalogImpedance(13) # factor

const DwfParamUsbPower = DwfParam(2) # 1 keep the USB power enabled even when AUX is connected, Analog Discovery 2
const DwfParamLedBrightness = DwfParam(3) # LED brightness 0 ... 100%, Digital Discovery
const DwfParamOnClose = DwfParam(4) # 0 continue, 1 stop, 2 shutdown
const DwfParamAudioOut = DwfParam(5) # 0 disable / 1 enable audio output, Analog Discovery 1, 2
const DwfParamUsbLimit = DwfParam(6) # 0..1000 mA USB power limit, -1 no limit, Analog Discovery 1, 2
const DwfParamKeepOnClose = DwfParam(1) # keep the device running after close, use DwfParamOnClose

const trigcondRisingPositive = TRIGCOND(0)
const trigcondFallingNegative = TRIGCOND(1)

const stsRdy = STS(0)
const stsArm = STS(1)
const stsDone = STS(2)
const stsTrig = STS(3)
const stsCfg = STS(4)
const stsPrefill = STS(5)
const stsNotDone = STS(6)
const stsTrigDly = STS(7)
const stsError = STS(8)
const stsBusy = STS(9)
const stsStop = STS(10)
