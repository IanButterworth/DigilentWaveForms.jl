using DigilentWaveForms
dev = devicelist()[1]
DigilentWaveForms.open!(dev)
#DigilentWaveForms.open(dev)

DigilentWaveForms.AnalogIOEnable!(dev)
DigilentWaveForms.enablePositivePowerSupply!(dev)
DigilentWaveForms.setPositivePowerSupply!(dev, 4)
for x in 1:5
    for i in 2.0:0.01:4.5
        DigilentWaveForms.setPositivePowerSupply!(dev, i)
        sleep(0.01)
    end
end


DigilentWaveForms.AnalogOutChannelCount(dev)

DigilentWaveForms.AnalogOutEnableChannel!(dev, 0)
DigilentWaveForms.AnalogOutEnableChannel!(dev, 1)
DigilentWaveForms.AnalogOutDCMode!(dev, 0)
DigilentWaveForms.AnalogOutDCMode!(dev, 1)
DigilentWaveForms.AnalogOutStart!(dev, 0)
DigilentWaveForms.AnalogOutStart!(dev, 1)

for i in -5:0.1:5, j in -5:0.1:5
    DigilentWaveForms.AnalogOutDCVal!(dev, 0, i)
    DigilentWaveForms.AnalogOutDCVal!(dev, 1, j)
    sleep(0.01)
end


DigilentWaveForms.close!(dev)


using BenchmarkTools
@btime DigilentWaveForms.setPositivePowerSupply!(dev, 1.0)
