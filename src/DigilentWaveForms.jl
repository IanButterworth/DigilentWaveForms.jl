module DigilentWaveForms

import Libdl

# Load in `deps.jl`, complaining if it does not exist
const depsjl_path = joinpath(@__DIR__, "..", "deps", "deps.jl")
if !isfile(depsjl_path)
    error("DigilentWaveForms was not built properly. Please run Pkg.build(\"DigilentWaveForms\").")
end
include(depsjl_path)
# Module initialization function
function __init__()
    # check_deps()
end


include(joinpath(@__DIR__, "..", "gen", "ctypes.jl"))
export Ctm, Ctime_t, Cclock_t

include(joinpath(@__DIR__, "..", "gen", "libdwf_fixes.jl"))
include(joinpath(@__DIR__, "..", "gen", "libdwf_common.jl"))
include(joinpath(@__DIR__, "..", "gen", "libdwf_consts.jl"))
include(joinpath(@__DIR__, "..", "gen", "libdwf_api.jl"))

include("utils.jl")
include("enumeration.jl")
include("system.jl")

include("powersupplies.jl")
include("analogin.jl")
include("analogout.jl")

# export everything
#foreach(names(@__MODULE__, all=true)) do s
#    if startswith(string(s), "SOME_PREFIX")
#        @eval export $s
#    end
#end

end # module
