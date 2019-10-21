using Test
function is_ci()
    get(ENV, "TRAVIS", "") == "true" ||
    get(ENV, "APPVEYOR", "") in ("true", "True") ||
    get(ENV, "CI", "") in ("true", "True")
end

if is_ci()
    @info "CI testing is disabled due to the need for a Digilent WaveForms-compatible camera during tests."
else
    using DigilentWaveForms

    devlist = devicelist()
    if length(devlist) < 1
        error("""DigilentWaveForms could not find a compatible device.
        Tests require that a Digilent WaveForms-compatible camera is connected and discoverable.
        If such a device is connected, check that it is discoverable in the WaveForms app""")
    else
        @testset "Device Interaction" begin
            dev = devlist[1]
            @test typeof(dev) == DigilentWaveForms.DWFDevice
        end
    end
end
