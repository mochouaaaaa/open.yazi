local hovered = ya.sync(function()
	tab = cx.active
	return tostring(tab.current.hovered.url)
end)

return {
	entry = function(self, args)
		cmd = args[1]
		local path_or_file = hovered()

		local child, _ = Command(cmd):arg(path_or_file):spawn()
		if child ~= nil then
			child:wait()
		else
			ya.notify {
				title = cmd,
				content = string.format("Failed to execute command: %s", cmd),
				level = "error",
				timeout = 5,
			}
		end
	end,
}
