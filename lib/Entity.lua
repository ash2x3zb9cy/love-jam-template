local function Entity()
	local self = {
		x = 0,
		y = 0,
	}

	function self.update(dt) end
	function self.draw() end

	return self
end

return Entity
