function love.load()
particle = love.graphics.newImage("/assets/rain.png")
rain_system = love.graphics.newParticleSystem(particle, 1000)

rain_system:setEmissionRate(150)
rain_system:setSpeed(1,3)
rain_system:setLinearAcceleration(1,500,1,600)
rain_system:setSizes(0.99,0.7,1.2)
rain_system:setPosition(240,-50)
rain_system:setEmitterLifetime(-1)
rain_system:setParticleLifetime(1.0,1.33)
rain_system:setDirection(.45)
rain_system:setAreaSpread("normal",200,0)
rain_system:setColors(188,188,255,135)

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
		--love.graphics.setBackgroundColor(200, 100, 20)
		love.graphics.setBackgroundColor(20,20,20)
		love.graphics.draw(rain_system)
	else

	end
end
