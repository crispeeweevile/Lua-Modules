local Stack = {}
Stack.__index = Stack

Stack.new = function ()
    local newStack = setmetatable({}, Stack)

    return newStack
end

Stack.push = function( self, value )
    self[#self+1] = value
end

Stack.pop = function( self )
    assert(#self > 0, "Stack underload!")
    local output = self[#self]
    self[#self] = nil
    return output
end

return Stack