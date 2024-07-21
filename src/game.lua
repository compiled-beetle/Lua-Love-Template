-- src/game.lua
local player = require 'src.player'
local enemy = require 'src.enemy'

local game = {}

function game:load()
    player:load()
    enemy:load()
end

function game:update(dt)
    player:update(dt)
    enemy:update(dt)
end

function game:draw()
    player:draw()
    enemy:draw()
end

function game:keypressed(key)
    player:keypressed(key)
end

return game
