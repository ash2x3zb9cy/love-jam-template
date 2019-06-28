local Sprite = require('lib/Sprite')

local function Player()
	local self = Sprite('assets/image.png')

	function self.update(dt)
		local dx = 0
		if love.keyboard.isDown('a', 'left') then dx = dx - 1 end
		if love.keyboard.isDown('d', 'right') then dx = dx + 1 end

		local dy = 0
		if love.keyboard.isDown('w', 'up') then dy = dy - 1 end
		if love.keyboard.isDown('s', 'down') then dy = dy + 1 end

		self.x = self.x + (dx * dt * 120)
		self.y = self.y + (dy * dt * 120)
	end

	return self
end

return Player
