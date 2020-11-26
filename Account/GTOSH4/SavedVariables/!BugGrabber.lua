
BugGrabberDB = {
	["session"] = 312,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\FrameXML\\ItemButtonTemplate.lua:201: attempt to index field 'IconOverlay2' (a nil value)",
			["time"] = "2020/11/26 02:02:01",
			["locals"] = "button = <unnamed> {\n 0 = <userdata>\n Glow = <unnamed> {\n }\n UpdateTooltip = <function> defined *:OnLoad:1\n IconBorder = <unnamed> {\n }\n IconOverlay = <unnamed> {\n }\n GlowWhite = <unnamed> {\n }\n}\nitemIDOrLink = \"|cffa335ee|Hitem:182751::::::::60:256::23:2:1511:7245:2:28:749:37:4:::|h[Tyrant's Soul]|h|r\"\nquality = 4\nisBound = nil\ncolor = <table> {\n GetRGB = <function> defined @Interface\\SharedXML\\Color.lua:20\n OnLoad = <function> defined @Interface\\SharedXML\\Color.lua:9\n b = 0.980390\n GenerateHexColorMarkup = <function> defined @Interface\\SharedXML\\Color.lua:51\n WrapTextInColorCode = <function> defined @Interface\\SharedXML\\Color.lua:55\n GenerateHexColor = <function> defined @Interface\\SharedXML\\Color.lua:47\n GetRGBA = <function> defined @Interface\\SharedXML\\Color.lua:28\n IsEqualTo = <function> defined @Interface\\SharedXML\\Color.lua:13\n g = 0.270590\n r = 0.784310\n SetRGBA = <function> defined @Interface\\SharedXML\\Color.lua:36\n GetRGBAsBytes = <function> defined @Interface\\SharedXML\\Color.lua:24\n SetRGB = <function> defined @Interface\\SharedXML\\Color.lua:43\n GetRGBAAsBytes = <function> defined @Interface\\SharedXML\\Color.lua:32\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = true\n(*temporary) = 0.980390\n(*temporary) = \"attempt to index field 'IconOverlay2' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\FrameXML\\ItemButtonTemplate.lua\"]:201: in function `SetItemButtonOverlay'\n[string \"@Interface\\FrameXML\\ItemButtonTemplate.lua\"]:160: in function `SetItemButtonQuality'\n[string \"@Interface\\FrameXML\\LevelUpDisplay.lua\"]:1376: in function `BossBanner_ConfigureLootFrame'\n[string \"@Interface\\FrameXML\\LevelUpDisplay.lua\"]:1352: in function `onStartFunc'\n[string \"@Interface\\FrameXML\\LevelUpDisplay.lua\"]:1427: in function `BossBanner_SetAnimState'\n[string \"@Interface\\FrameXML\\LevelUpDisplay.lua\"]:1451: in function <Interface\\FrameXML\\LevelUpDisplay.lua:1438>",
			["session"] = 310,
			["counter"] = 2,
		}, -- [1]
	},
}
