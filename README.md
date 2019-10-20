# DigilentWaveForms

[![Build Status](https://travis-ci.com/ianshmean/DigilentWaveForms.jl.svg?branch=master)](https://travis-ci.com/ianshmean/DigilentWaveForms.jl)
[![Codecov](https://codecov.io/gh/ianshmean/DigilentWaveForms.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/ianshmean/DigilentWaveForms.jl)
[![Coveralls](https://coveralls.io/repos/github/ianshmean/DigilentWaveForms.jl/badge.svg?branch=master)](https://coveralls.io/github/ianshmean/DigilentWaveForms.jl?branch=master)


## Installation

Linux and MacOS currently supported.

First install adept 2: https://reference.digilentinc.com/reference/software/adept/start
Then WaveForms SDK: https://reference.digilentinc.com/reference/software/waveforms/waveforms-3/start

```julia
]add https://github.com/ianshmean/DigilentWaveForms.jl
```

## Basic Usage

```julia
using DigilentWaveForms
listdevices()
```
