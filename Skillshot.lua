module(...,package.seeall)

function newSkillshotQ()
	local Q = {}
		SkillshotSprite = love.graphics.newImage("sprites/Skillshot.png")
		love.graphics.draw(SkillshotSprite)
	return Q
end