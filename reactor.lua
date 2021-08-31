local component = require("component")
local reactor = component.br_reactor

reactor.setActive(true)

while (n >= 1) do
    if (reactor.getEnergyStored() > 7500000) do
        reactor.setActive(false)
        print(tosring(reactor.getEnergyStored()))
        print("reactor: false")
    elseif (reactor.getEnergyStored() < 7500000) do
        reactor.setActive(true)
        print(tosring(reactor.getEnergyStored()))
        print("reactor: true")
    end
end

reactor.setActive(false)