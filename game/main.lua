--package.path = package.path..";../game/?.lua"
require("Window")
require("chiken")
require("axe")
require("axeManager")

window = Window.new(600, 400)
window.show()
    
chiken = Chiken.new()
axeManager = AxeManager.new();


function love.draw()
    love.graphics.draw( chiken.image, chiken.x, chiken.y, 0, 0.2, 0.2, 0, 0)

    love.graphics.print("Health."..chiken.health, 10, 10, 0, 2, 2)
    
    love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 0, 0)
    
    axesList = axeManager.axeAarray
    
    for key,value in pairs(axesList) do 
       love.graphics.draw( value.image, value.x, value.y, 0, 0.2, 0.2, 0, 0)
        
    end
    
end


dtotal = 0   
function love.update(dt)
   dtotal = dtotal + dt  
   if dtotal >= 1 then
        dtotal = dtotal - 1 
        chiken.behavior()
        --axeManager.spawnAxe()
   end
end

love.keyboard.setKeyRepeat( true )

function love.keypressed(key)
   if key == "left" then
      chiken.goTo("left")
    elseif key == "right" then
      chiken.goTo("right")
    elseif key == "up" then
      chiken.goTo("up")
    elseif key == "down" then
      chiken.goTo("down")
    else
   end
end