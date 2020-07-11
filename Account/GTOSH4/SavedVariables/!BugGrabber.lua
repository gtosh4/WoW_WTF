
BugGrabberDB = {
	["session"] = 2474,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "...terface\\AddOns\\ElvUI\\Modules\\DataTexts\\DataTexts.lua:741: Events must be registered as a table.",
			["time"] = "2020/07/10 14:53:58",
			["locals"] = "(*temporary) = \"Events must be registered as a table.\"\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ElvUI\\Modules\\DataTexts\\DataTexts.lua\"]:741: in function `RegisterDatatext'\n[string \"@Interface\\AddOns\\ElvUI_SLE\\modules\\sledatatexts\\version.lua\"]:37: in main chunk",
			["session"] = 2472,
			["counter"] = 10,
		}, -- [1]
		{
			["message"] = "(null)",
			["time"] = "2020/07/10 14:54:30",
			["session"] = 2472,
			["counter"] = 10,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\ElvUI_SLE\\modules\\chat\\chat-Chat.lua:31: attempt to index field 'text' (a nil value)",
			["time"] = "2020/07/10 14:54:31",
			["locals"] = "self = ChatFrame1Tab {\n 0 = <userdata>\n glow = ChatFrame1TabGlow {\n }\n origWidth = 81.308174\n middleHighlightTexture = ChatFrame1TabHighlightMiddle {\n }\n left = ChatFrame1TabLeft {\n }\n SetAlpha = <function> defined =[C]:-1\n rightHighlightTexture = ChatFrame1TabHighlightRight {\n }\n mouseOverAlpha = 1\n leftHighlightTexture = ChatFrame1TabHighlightLeft {\n }\n middleTexture = ChatFrame1TabMiddle {\n }\n isDocked = 1\n rightSelectedTexture = ChatFrame1TabSelectedRight {\n }\n leftSelectedTexture = ChatFrame1TabSelectedLeft {\n }\n textWidth = 21.666664\n SetWidth = <function> defined =[C]:-1\n selected = true\n Text = ChatFrame1TabText {\n }\n middleSelectedTexture = ChatFrame1TabSelectedMiddle {\n }\n rightTexture = ChatFrame1TabRight {\n }\n noMouseAlpha = 0.400000\n alerting = false\n leftTexture = ChatFrame1TabLeft {\n }\n owner = ChatFrame1 {\n }\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index field 'text' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\ElvUI_SLE\\modules\\chat\\chat-Chat.lua\"]:31: in function <Interface\\AddOns\\ElvUI_SLE\\modules\\chat\\chat.lua:30>\n[string \"=[C]\"]: in function `SetWidth'\n[string \"@Interface\\SharedXML\\SharedUIPanelTemplates.lua\"]:504: in function `PanelTemplates_TabResize'\n[string \"@Interface\\FrameXML\\FloatingChatFrame.lua\"]:2104: in function <Interface\\FrameXML\\FloatingChatFrame.lua:2078>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `FCFDock_UpdateTabs'\n[string \"@Interface\\FrameXML\\FloatingChatFrame.lua\"]:1492: in function <Interface\\FrameXML\\FloatingChatFrame.lua:1491>\n[string \"@Interface\\AddOns\\Blizzard_CombatLog\\Blizzard_CombatLog.lua\"]:3405: in function `FCF_DockUpdate'\n[string \"@Interface\\AddOns\\ElvUI_SLE\\modules\\chat\\tabs.lua\"]:176: in function <Interface\\AddOns\\ElvUI_SLE\\modules\\chat\\tabs.lua:158>",
			["session"] = 2472,
			["counter"] = 32,
		}, -- [3]
	},
}
