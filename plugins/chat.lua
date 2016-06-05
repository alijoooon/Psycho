local function run(msg)
if msg.text == "hi" then
	return "سلام"
end
if msg.text == "Hi" then
	return "سهلام"
end
if msg.text == "Hello" then
	return "سلام"
end
if msg.text == "hello" then
	return "سلام"
end
if msg.text == "Slm" then
	return "درست سلام بده خوووو گشاد"
end
if msg.text == "salam" then
	return "سلام"
end
if msg.text == "zac" then
	return "Barash bezan sak"
end
if msg.text == "Zac" then
	return "Barash bezan sak"
end
if msg.text == "ZAC" then
	return "Barash bezan sak"
end
if msg.text == "Umbrella" then
	return "Yes?"
end
if msg.text == "umbrella" then
	return "What?"
end
if msg.text == "bot" then
	return "hum?"
end
if msg.text == "Bot" then
	return "Huuuum?"
end
if msg.text == "?" then
	return "Hum??"
end
if msg.text == "Bye" then
	return "خداحافظ"
end
if msg.text == "bye" then
	return "خداحافظ"
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
		"^[Hh]i$",
		"^[Hh]ello$,
		"^[Bb]ot$",
		"^[Uu]mbrella$",
		"^[Bb]ye$",
		"^?$",
		"^[Ss]alam$",
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}
