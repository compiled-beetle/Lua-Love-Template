-- src/player.lua
local player = {}

function player:load()
    self.x = 100
    self.y = 100
    self.width = 25
    self.height = 25
    self.speed = 200
end

function player:update(dt)
    if love.keyboard.isDown("right") then
        self.x = self.x + self.speed * dt
    elseif love.keyboard.isDown("left") then
        self.x = self.x - self.speed * dt
    end
    if love.keyboard.isDown("down") then
        self.y = self.y + self.speed * dt
    elseif love.keyboard.isDown("up") then
        self.y = self.y - self.speed * dt
    end
end

function player:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function player:keypressed(key)
    if key == "space" then
        print("player pressed space")
    end
end

return player
