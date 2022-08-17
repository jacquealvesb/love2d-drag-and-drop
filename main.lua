local shape = require("src/shape")

function love.load()
    local shapes = { "square", "circle", "triangle", "pentagon" }
    shape.init(shapes, 100)
end

function love.update(dt)
    shape.updateAll()
end

function love.draw()
    love.graphics.setBackgroundColor( 1, 1, 1, 1 )
    shape.drawAll()
end 

function love.mousepressed(x, y, button, istouch)
    shape.mousepressed(x, y)
end

function love.mousereleased(x, y, button)
    shape.mousereleased(x, y)
end