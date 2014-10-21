AxeManager = {
    mbMax = 10,
    axeAarray = {},
    counter = 1    
}

AxeManager.__index = AxeManager

AxeManager.new = function()
    self = setmetatable({}, AxeManager)
    return self
end

AxeManager.behavior = function()
    self.axeAarray[self.counter] = Axe.new(math.random(love.window.getDimensions( )))
    if(self.counter <=10) then
        self.counter = self.counter + 1
    else
        self.counter = 1
    end
end
