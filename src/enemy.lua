-- src/enemy.lua
local enemy = {}

function enemy:load()
    self.x = 450
    self.y = 300
    self.width = 25
    self.height = 25
    self.speed = 100
    self.direction = 1
end

function enemy:update(dt)
    self.x = self.x + self.speed * dt * self.direction
    if self.x > 750 or self.x < 0 then
        self.direction = self.direction * -1
    end
end

function enemy:draw()
    love.graphics.setColor(1, 0, 0)
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
    love.graphics.setColor(1, 1, 1)
end

return enemy
