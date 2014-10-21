package.cpath = package.cpath..";./?.dll;./?.so;../lib/?.so;../lib/vc_dll/?.dll;../lib/bcc_dll/?.dll;../lib/mingw_dll/?.dll;"
require("wx")
package.path = package.path..";../custom/?.lua"
require("Window")
require("chiken")

window = Window:new(600, 450)
window:show()

chiken = Chiken.new()


function OnPaint(E)
    
    
end
