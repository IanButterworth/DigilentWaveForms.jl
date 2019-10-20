# DigilentWaveForms

Work in progress. Not useful yet.

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
