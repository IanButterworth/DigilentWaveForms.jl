using Libdl

function find_dwf()
  if Sys.islinux()
    path = "/usr/lib"
    libdwf = "libdwf.so"
  elseif Sys.isapple()
    path = "/Library/Frameworks/dwf.framework"
    libdwf = "dwf"
  else
    error("DigilentWaveForms.jl only supported on Linux, and MacOS platforms")
  end

  return path, libdwf

end

function configure()

  path, libdwf = find_dwf()
  libdwf = find_library(libdwf,[path])

  libdwf != "" || error("Digilent WaveForm SDK cannot be found")

  open(joinpath(@__DIR__, "deps.jl"), "w") do f
    write(f, """
      const libdwf = \"$(libdwf)\"
    """)
  end

end

configure()
