local status_ok, troubble = pcall(require, "troubble")
if not status_ok then
	return
end

troubble.setup()
