Accumulator = {}
Accumulator.__index = Accumulator

function Accumulator.__newindex()
    error("Cannot add new index to accumulator. Please use append")
end

function Accumulator:__tostring()
    return rawget(self, "text")
end

function Accumulator.new()
    local newAccumulator = setmetatable({text=""}, Accumulator)

    return newAccumulator
end

function Accumulator:append(text)
    rawset(self, "text", rawget(self, "text")..text )
    return tostring(self)
end

function Accumulator:reset()
    rawset(self, "text", "")
end

return Accumulator
