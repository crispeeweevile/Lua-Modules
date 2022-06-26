local Stack = {}
Stack.__index = Stack

function Stack.new(stackSize)
    stackSize = stackSize or 0
    local newStack = setmetatable({["stack"]={}, ["stackSize"]=stackSize}, Stack) -- (0) = no max size

    return newStack
end

function Stack:push(value)
    if self.stackSize <= 0 then assert(#self.stack < self.stackSize, "Attempted to overload stack!") end
    self.stack[#self.stack+1] = value
end

function Stack:pop()
    assert(#self.stack > 0, "Attempted to pop from empty stack!")
    local output = self.stack[#self.stack]
    self.stack[#self.stack] = nil
    return output
end

return Stack
