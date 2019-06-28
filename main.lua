local Player = require('Player')
local Sprite = require('lib/Sprite')

scene = {} -- luacheck:allow defined

function love.load()
	love.graphics.setDefaultFilter('nearest', 'nearest')

	table.insert(scene, Player())

	-- ew a global, but you get the idea
	some_sprite = Sprite('assets/image.png') -- luacheck:no global
	table.insert(scene, some_sprite) -- luacheck:no global
end

function love.update(dt)
	for _, v in ipairs(scene) do
		v.update(dt)
	end

	some_sprite.y = some_sprite.y + (dt * 70) -- luacheck:no global
end

function love.draw()
	for _, v in ipairs(scene) do
		v.draw()
	end
end
