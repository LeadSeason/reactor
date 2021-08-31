local component = require("component")
local reactor = component.br_reactor

reactor.setActive(true)

while (n >= 1) do
    renergy = reactor.getEnergyStored()
    print(renergy)
    if (renergy > 7500000) do
        reactor.setActive(false)
        print(tosring(renergy))
        print("reactor: false")
    elseif (renergy < 7500000) do
        reactor.setActive(true)
        print(tosring(renergy))
        print("reactor: true")
    end
end

reactor.setActive(false)