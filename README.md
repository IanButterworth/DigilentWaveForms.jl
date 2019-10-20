# DigilentWaveForms.jl

Work in progress. Not useful yet.

A Julia interface to the Digilent WaveForms SDK, to interact with Digilent devices:
- Analog Discovery (Legacy)
- Analog Discovery 2
- Analog Discovery 2 - NI Edition
- Digital Discovery
- Electronics Explore


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
listdevices()
```

## Developer Notes

To generate wrappers run `gen/wrap.jl`
