local component = require("component")
local reactor = component.br_reactor

reactor.setActive(true)

local n = 60

while (n >= 1) do
    print(tostring(reactor.getEnergyStored()))
    os.sleep(1)
end

reactor.setActive(false)