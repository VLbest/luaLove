Chiken = {
    image = nil,
    x = 200,
    y = 200,
    health = 100,
    speed = 5
}

Chiken.__index = Chiken

Chiken.new = function ()
    self = setmetatable({}, Chiken)
    
    self.image = love.graphics.newImage("/images/normal.png")
    
    return self
end

Chiken.behavior = function()
    self.health = self.health - 1
    
end

Chiken.goTo = function(side)
    if side == 'left' then
        self.x = self.x -self.speed
    elseif side == 'right' then
        self.x = self.x + self.speed
    elseif side == 'up' then
        self.y = self.y - self.speed
    elseif side == 'down' then
        self.y = self.y + self.speed
    else    
    end
        
end

Chiken.getX = function()
    return self.x
end

Chiken.getHealth = function()
    return self.health
end

Chiken.getY = function()
    return self.y
end

Chiken.getImg = function()
    return self.image
end