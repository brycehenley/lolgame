function love.load()
particle = love.graphics.newImage("/assets/rain.png")	
rain_system = love.graphics.newParticleSystem(particle, 1000)

rain_system:setEmissionRate(100)
rain_system:setSpeed(1,3)
rain_system:setLinearAcceleration(1,500,1,600)
rain_system:setSizes(1.5,0.9,0.5)
rain_system:setPosition(240,-50)
rain_system:setEmitterLifetime(-1)
rain_system:setParticleLifetime(2,3.5)
rain_system:setDirection(.45)
rain_system:setAreaSpread("normal",200,0)
rain_system:setColors(10,10,200,200)

rain_system:start()
rain = true

end

function love.update(dt)

	if rain then
		rain_system:update(dt)
	else

	end
end

function love.draw()

	if rain then
		love.graphics.setBackgroundColor(10,10,10)
		love.graphics.draw(rain_system)
	else

	end
end
