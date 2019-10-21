# DigilentWaveForms.jl

Work in progress. Not useful yet.

A Julia interface to the Digilent WaveForms SDK, to interact with Digilent devices:
- Analog Discovery (Legacy) [untested]
- Analog Discovery 2
- Analog Discovery 2 - NI Edition [untested]
- Digital Discovery [untested]
- Electronics Explore [untested]


[![Build Status](https://travis-ci.com/ianshmean/DigilentWaveForms.jl.svg?branch=master)](https://travis-ci.com/ianshmean/DigilentWaveForms.jl)
[![Codecov](https://codecov.io/gh/ianshmean/DigilentWaveForms.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/ianshmean/DigilentWaveForms.jl)
[![Coveralls](https://coveralls.io/repos/github/ianshmean/DigilentWaveForms.jl/badge.svg?branch=master)](https://coveralls.io/github/ianshmean/DigilentWaveForms.jl?branch=master)


## Installation

N.B. Only Linux and MacOS currently supported.

1. Install Digilent Adept 2: https://reference.digilentinc.com/reference/software/adept/start

2. Install Digilent WaveForms SDK: https://reference.digilentinc.com/reference/software/waveforms/waveforms-3/start

```julia
]add https://github.com/ianshmean/DigilentWaveForms.jl
```

## Basic Usage

```julia
using DigilentWaveForms
devices = devicelist()
dev = devices[1]
```

Assorted functions:

```julia
using DigilentWaveForms
dev = devicelist()[1]
DigilentWaveForms.open!(dev)

DigilentWaveForms.AnalogIOEnable!(dev)
DigilentWaveForms.enablePositivePowerSupply!(dev)
DigilentWaveForms.setPositivePowerSupply!(dev, 4)
for x in 1:5
    for i in 2.0:0.01:4.5
        DigilentWaveForms.setPositivePowerSupply!(dev, i)
        sleep(0.01)
    end
end


DigilentWaveForms.AnalogOutChannelCount(dev)

DigilentWaveForms.AnalogOutEnableChannel!(dev, 0)
DigilentWaveForms.AnalogOutEnableChannel!(dev, 1)
DigilentWaveForms.AnalogOutDCMode!(dev, 0)
DigilentWaveForms.AnalogOutDCMode!(dev, 1)
DigilentWaveForms.AnalogOutStart!(dev, 0)
DigilentWaveForms.AnalogOutStart!(dev, 1)

for i in -5:0.1:5, j in -5:0.1:5
    DigilentWaveForms.AnalogOutDCVal!(dev, 0, i)
    DigilentWaveForms.AnalogOutDCVal!(dev, 1, j)
    sleep(0.01)
end


DigilentWaveForms.close!(dev)

```

## Developer Notes

To generate wrappers run `gen/wrap.jl`

### Known issues

- `open(dev)` returns false if device is open by the current thread
