local Entity = require('lib/Entity')

local function Sprite(filename)
	local self = Entity()
	local image = love.graphics.newImage(filename)

	function self.draw()
		love.graphics.draw(image, self.x, self.y)
	end

	return self
end

return Sprite
