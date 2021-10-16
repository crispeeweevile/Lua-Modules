Accumulator = {}
Accumulator.__index = Accumulator

Accumulator.__newindex = function(  )
    error("Cannot add new index to accumulator. Please use append")
end

Accumulator.__tostring = function( self )
    return rawget(self, "text")
end

Accumulator.new = function(  )
    local newAccumulator = setmetatable({text=""}, Accumulator)

    return newAccumulator
end

Accumulator.append = function( self, text )
    rawset(self, "text", rawget(self, "text")..text )
    return tostring(self)
end

Accumulator.reset = function( self )
    rawset(self, "text", "")
end

return Accumulator