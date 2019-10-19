# DigilentWaveForms.jl: wrapper for Digilent WaveForms SDK
# Copyright (C) 2019 Ian Butterworth

# wrap.jl: automatically wrap C API using Clang.jl
# Builded by wrap.jl within Spinnaker.jl by Samuel Powell

@info("NOTE MANUAL CHANGES in deps/wrap.jl")

using Clang
const LIBDWF_INCLUDE = joinpath("/Library", "Frameworks", "dwf.framework", "Headers") |> normpath
const LIBDWF_HEADERS = [joinpath(LIBDWF_INCLUDE, header) for header in ["dwf.h"]]

wc = init(; headers = LIBDWF_HEADERS,
            output_file = joinpath(@__DIR__, "libdwf_api.jl"),
            common_file = joinpath(@__DIR__, "libdwf_common.jl"),
            clang_includes = vcat(LIBDWF_INCLUDE, CLANG_INCLUDE),
            clang_args = ["-I", joinpath(LIBDWF_INCLUDE, "..")],
            header_wrapped = (root, current)->root == current,
            header_library = x->"libdwf",
            clang_diagnostics = true,
            )

run(wc)
