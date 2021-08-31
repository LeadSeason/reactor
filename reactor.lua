local component = require("component")
local reactor = component.br_reactor

local last_str = ""
function iop(str)
    io.write(('\b \b'):rep(#last_str))  -- erase old line
    io.write(str)                       -- write new line
    io.flush()
    last_str = str
end

reactor.setActive(true)

local n = 60

while (n >= 1) do
    iop(tostring(n))
    os.sleep(1)
    n = n-1
end

reactor.setActive(false)