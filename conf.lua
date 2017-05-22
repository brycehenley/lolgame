function love.conf(t)
	t.console = false
	t.title = "lolgame"
	t.version = "0.10.2"
	t.window.width = 482 --extra 2px for window focus bug on pchip
	t.window.height = 272
	t.vsync = true
end
