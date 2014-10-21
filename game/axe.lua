Axe = {
    image = nil,
    initSpeed = 50,
    x,
    y
}

Axe.__index = Axe

Axe.new = function(newX, newY)
    self = setmetatable({}, Axe)
    self.x = tonumber(newX)
    self.y = tonumber(newY)
    self.image = love.graphics.newImage("/images/Axe.png")
    return self
end

Axe.spawn = function()
    
end
