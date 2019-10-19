module DigilentWaveForms

import Libdl
# Include build configuration
try
  include(joinpath(@__DIR__, "..", "deps", "deps.jl"))
catch
  error("Package configuration file missing, run 'Pkg.build(\"DigilentWaveForms\")' to configure.")
end

include("wrapper/dwf_common.jl")

function checkerror(err::dwfError)
  if err != dwfError(0)
    throw(ErrorException("Digilent WaveForms SDK error: $err"))
  end
  return nothing
end

include("wrapper/dwf_api.jl")

# export everything dwf*
foreach(names(@__MODULE__, all=true)) do s
  if startswith(string(s), "dwf")
    @eval export $s
  end
end


# Include interface
# include("something.jl")



# Create a System object at runtime
function __init__()
  global dwfsys = System()
end

end # module
