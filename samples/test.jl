using DigilentWaveForms
dev = devicelist()[1]
DigilentWaveForms.open!(dev)
DigilentWaveForms.open(dev)

DigilentWaveForms.AnalogIOEnable!(dev)
DigilentWaveForms.enablePositivePowerSupply!(dev)

for x in 1:5
    for i in 2.0:0.01:4.5
        DigilentWaveForms.setPositivePowerSupply!(dev, i)
        sleep(0.01)
    end
end

DigilentWaveForms.close!(dev)


using BenchmarkTools
@btime DigilentWaveForms.setPositivePowerSupply!(dev, 1.0)
