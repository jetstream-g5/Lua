module(...,package.seeall)

local skillshotQ = require("Skillshot")

imgx = 0
imgy = 0

targetposx = 0
targetposy = 0

function newCharacter()

	local object = {}
		Character = love.graphics.newImage("sprites/Ahri.png")
		CharacterWidth = Character:getWidth(Character)
		CharacterHeight = Character:getHeight(Character)
	return object
end

function love.draw()
	love.graphics.draw(Character,imgx, imgy)
end

function love.update()
	if imgx ~= targetposx then
		move(targetposx,targetposy)
	end
end

function lerp(a,b,t)
	return a + (b - a) * t
end

movespeed = 0.01

function move(x,y)
	imgx = lerp(imgx,x - CharacterWidth / 2,movespeed)
	imgy = lerp(imgy,y - CharacterHeight / 2,movespeed)
end

function love.mousepressed(x,y,button)
	if button == 2 then
		targetposx = x
		targetposy = y
		move(targetposx,targetposy)
	end
end	

function love.keypressed(key)
	if(key == 'q') then
		skillshotQ.newSkillshotQ()
	end
end