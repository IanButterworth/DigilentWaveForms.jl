# DigilentWaveForms.jl: wrapper for Digilent WaveForms SDK
# Copyright (C) 2019 Ian Butterworth

# wrap.jl: automatically wrap C API using Clang.jl
# Builded by wrap.jl within Spinnaker.jl by Samuel Powell

using Clang: init

const incpath = normpath("/Library/Frameworks/dwf.framework/Headers/")

if !isdir(incpath)
  error("Digilent WaveForms SDK C header not found, please install manually.")
end

const outpath = normpath(@__DIR__, "..", "src", "wrapper")
mkpath(outpath)

const dwf_headers = readdir(incpath)

const clang_path = "/usr/local/opt/llvm"
const clang_includes = [joinpath(clang_path, "include")]

# TODO: should we use actually use Clang.jl installation here?
# const CLANG_INCLUDE = joinpath(@__DIR__, "..", "deps", "usr", "include", "clang-c") |> normpath
# const CLANG_HEADERS = [joinpath(CLANG_INCLUDE, cHeader) for cHeader in readdir(CLANG_INCLUDE) if endswith(cHeader, ".h")]

headerlibmap = Dict("dwf.h"       => "dwf_C")


function library_file(header::AbstractString)
  header_name = basename(header)
  if(haskey(headerlibmap, header_name))
    return headerlibmap[header_name]
  else
    @warn "$header has unknown library association, using libdwf_C"
    return "libdwf_C"
  end
end

# Test if header should be wrapped
function header_filter(top_hdr::AbstractString, cursor_header::AbstractString)
  return (top_hdr == cursor_header) # Do not wrap nested includes
end

# Test if element should be wrapped
function cursor_filter(name::AbstractString, cursor)
  return true
end

# Add error checking to generated functions
rewriter(arg) = arg
# rewriter(A::Array) = [rewriter(a) for a in A]
# rewriter(s::Symbol) = string(s)

const skip_expr = []
const skip_error_check = []
function rewriter(ex::Expr)

    # Skip sepcified expressions
    if in(ex, skip_expr)
        return :()
    end

    # Only process function calls
    ex.head == :function || return ex

    decl, body = ex.args[1], ex.args[2]
    ccallexpr = body.args[1]
    rettype = ccallexpr.args[3]

    if rettype == :dwfError
        fname = decl.args[1]
        if !in(fname, skip_error_check)
            body.args[1] = Expr(:call, :checkerror, deepcopy(ccallexpr))
        end
    end

    return ex
end


# Build wrapping context
const context = init(
  headers = map(x -> joinpath(incpath, x), dwf_headers),
  output_file = joinpath(outpath, "dwf_api.jl"),
  common_file = joinpath(outpath, "dwf_common.jl"),
  clang_args = [
  "-D", "__STDC_LIMIT_MACROS",
  "-D", "__STDC_CONSTANT_MACROS",
  "-v"
  ],
  clang_diagnostics = true,
  clang_includes = [clang_includes; incpath],
  header_library = library_file,
  header_wrapped = header_filter,
  cursor_wrapped = cursor_filter,
  rewriter = rewriter
)

run(context)

# Manual changes
@warn "Manual changes to wrapper are required, see wrap.jl"
# spinStringGetValue Cstring -> Ptr{UInt8}
# spinEnumerationEntryGetSymbolic Cstrong -> Ptr{UInt8}

# Remove unused files
rm(joinpath(outpath, "LibTemplate.jl"))
rm(joinpath(outpath, "ctypes.jl"))


@info "Wrapper written to $outpath"
