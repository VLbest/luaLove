
Window = {
    frame = love.window
}
Window.__index = Window

Window.new = function (newWidth, newHeight)
    self = setmetatable({}, Window)
    self.widht = tonumber(newWidth)
    self.height = tonumber(newHeight)
    return self
end

Window.show = function()
    love.window.setTitle("INGIBORG")
end
    