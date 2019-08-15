
BugGrabberDB = {
	["session"] = 866,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MythicPlusTimer' tried to call the protected function 'ObjectiveTrackerFrame:SetParent()'.",
			["time"] = "2019/07/06 18:14:41",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetParent'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:606: in function `show_default_tracker'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:415: in function `callback'\nInterface\\AddOns\\MythicPlusTimer\\addon.lua:100: in function <Interface\\AddOns\\MythicPlusTimer\\addon.lua:94>",
			["session"] = 853,
			["counter"] = 2,
		}, -- [1]
		{
			["message"] = "Interface\\FrameXML\\QuestInfo.lua:73: Usage: local isCampaignQuest = C_CampaignInfo.IsCampaignQuest(questID)",
			["time"] = "2019/08/11 19:42:57",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[C]: in function `IsCampaignQuest'\nInterface\\FrameXML\\QuestInfo.lua:73: in function <Interface\\FrameXML\\QuestInfo.lua:51>\n[C]: ?\n[C]: in function `QuestInfo_Display'\nInterface\\FrameXML\\QuestMapFrame.lua:301: in function <Interface\\FrameXML\\QuestMapFrame.lua:296>\n[C]: in function `QuestMapFrame_ShowQuestDetails'\nInterface\\FrameXML\\QuestMapFrame.lua:266: in function `QuestMapFrame_UpdateAll'\nInterface\\FrameXML\\QuestMapFrame.lua:170: in function <Interface\\FrameXML\\QuestMapFrame.lua:92>",
			["session"] = 856,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\Transmission.lua:1213: attempt to get length of field 'controlledChildren' (a nil value)",
			["time"] = "2019/08/12 20:33:47",
			["locals"] = "data = <table> {\n backdropColor = <table> {\n }\n controlledChildren = <table> {\n }\n borderBackdrop = \"Blizzard Tooltip\"\n authorOptions = <table> {\n }\n border = false\n borderEdge = \"None\"\n regionType = \"group\"\n borderSize = 16\n scale = 1\n borderColor = <table> {\n }\n xOffset = 0\n url = \"https://wago.io/BattleOfDazaralor_GlowingFrames/31\"\n actions = <table> {\n }\n triggers = <table> {\n }\n yOffset = 0\n internalVersion = 16\n semver = \"1.3.10\"\n selfPoint = \"BOTTOMLEFT\"\n id = \"Battle of Dazar'alor - GlowingFrames\"\n anchorPoint = \"CENTER\"\n frameStrata = 1\n anchorFrameType = \"SCREEN\"\n config = <table> {\n }\n borderInset = 11\n version = 31\n borderOffset = 5\n animation = <table> {\n }\n conditions = <table> {\n }\n load = <table> {\n }\n uid = \"6je7xDm2tXc\"\n}\nchildren = <table> {\n 1 = <table> {\n }\n 2 = <table> {\n }\n 3 = <table> {\n }\n 4 = <table> {\n }\n 5 = <table> {\n }\n 6 = <table> {\n }\n 7 = <table> {\n }\n 8 = <table> {\n }\n 9 = <table> {\n }\n 10 = <table> {\n }\n 11 = <table> {\n }\n 12 = <table> {\n }\n 13 = <table> {\n }\n}\ntarget = <table> {\n outline = \"OUTLINE\"\n text2Point = \"CENTER\"\n text1FontSize = 12\n xOffset = -542.000092\n displayText = \" \"\n customText = \"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\"\n yOffset = -36.000031\n anchorPoint = \"CENTER\"\n customTextUpdate = \"update\"\n automaticWidth = \"Auto\"\n actions = <table> {\n }\n triggers = <table> {\n }\n text2 = \"%p\"\n text1Enabled = true\n desaturate = false\n wordWrap = \"WordWrap\"\n url = \"https://wago.io/BattleOfDazaralor_GlowingFrames/30\"\n conditions = <table> {\n }\n displayIcon = 841384\n stickyDuration = false\n animation = <table> {\n }\n text1Point = \"CENTER\"\n version = 30\n text2FontFlags = \"OUTLINE\"\n height = 11.999958\n font = \"Friz Quadrata TT\"\n load = <table> {\n }\n config = <table> {\n }\n glow = false\n fontSize = 12\n text2Containment = \"INSIDE\"\n width = 6.999987\n text1Font = \"Friz Quadrata TT\"\n frameStrata = 9\n authorOptions = <table> {\n }\n text2Color = <table> {\n }\n regionType = \"text\"\n icon = true\n text1FontFlags = \"OUTLINE\"\n text2FontSize = 24\n justify = \"LEFT\"\n text1 = \"%n\"\n zoom = 0\n auto = false\n cooldownTextDisabled = false\n semver = \"1.3.9\"\n text1Containment = \"INSIDE\"\n id = \"Atonement Missing\"\n text1Color = <table> {\n }\n text2Enabled = false\n anchorFrameType = \"SCREEN\"\n text2Font = \"Friz Quadrata TT\"\n uid = \"mqR2u(ADWaH\"\n inverse = false\n color = <table> {\n }\n fixedWidth = 200\n internalVersion = 16\n selfPoint = \"CENTER\"\n}\noldParent = <table> {\n outline = \"OUTLINE\"\n text2Point = \"CENTER\"\n text1FontSize = 12\n xOffset = -542.000092\n displayText = \" \"\n customText = \"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\"\n yOffset = -36.000031\n anchorPoint = \"CENTER\"\n customTextUpdate = \"update\"\n automaticWidth = \"Auto\"\n actions = <table> {\n }\n triggers = <table> {\n }\n text2 = \"%p\"\n text1Enabled = true\n desaturate = false\n wordWrap = \"WordWrap\"\n url = \"https://wago.io/BattleOfDazaralor_GlowingFrames/30\"\n conditions = <table> {\n }\n displayIcon = 841384\n stickyDuration = false\n animation = <table> {\n }\n text1Point = \"CENTER\"\n version = 30\n text2FontFlags = \"OUTLINE\"\n height = 11.999958\n font = \"Friz Quadrata TT\"\n load = <table> {\n }\n config = <table> {\n }\n glow = false\n fontSize = 12\n text2Containment = \"INSIDE\"\n width = 6.999987\n text1Font = \"Friz Quadrata TT\"\n frameStrata = 9\n authorOptions = <table> {\n }\n text2Color = <table> {\n }\n regionType = \"text\"\n icon = true\n text1FontFlags = \"OUTLINE\"\n text2FontSize = 24\n justify = \"LEFT\"\n text1 = \"%n\"\n zoom = 0\n auto = false\n cooldownTextDisabled = false\n semver = \"1.3.9\"\n text1Containment = \"INSIDE\"\n id = \"Atonement Missing\"\n text1Color = <table> {\n }\n text2Enabled = false\n anchorFrameType = \"SCREEN\"\n text2Font = \"Friz Quadrata TT\"\n uid = \"mqR2u(ADWaH\"\n inverse = false\n color = <table> {\n }\n fixedWidth = 200\n internalVersion = 16\n selfPoint = \"CENTER\"\n}\ninfo = <table> {\n deleted = 0\n newData = <table> {\n }\n modified = 1\n added = 0\n indexMap = <table> {\n }\n unmodified = 0\n activeCategories = <table> {\n }\n diffs = <table> {\n }\n oldData = <table> {\n }\n}\nhybridTables = nil\n(*temporary) = nil\n(*temporary) = <table> {\n outline = \"OUTLINE\"\n text2Point = \"CENTER\"\n text1FontSize = 12\n xOffset = -542.000092\n displayText = \" \"\n ",
			["stack"] = "Interface\\AddOns\\WeakAuras\\Transmission.lua:1213: in function `MatchInfo'\nInterface\\AddOns\\WeakAuras\\Transmission.lua:1733: in function `Import'\n...eGUI-Widgets\\AceGUIWidget-WeakAurasDisplayButton.lua:770: in function <...eGUI-Widgets\\AceGUIWidget-WeakAurasDisplayButton.lua:767>",
			["session"] = 860,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUI_Bar2:SetWidth()'.",
			["time"] = "2019/08/04 17:14:33",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetWidth'\nInterface\\AddOns\\ElvUI\\Core\\Toolkit.lua:192: in function `Width'\n...rface\\AddOns\\ElvUI\\Modules\\actionbars\\ActionBars.lua:144: in function `PositionAndSizeBar'\n[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:13: in function `toggle'\n[string \"local r=WeakAuras.GetRegion(\"Elv AB toggle\"...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2171: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4836: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4497: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2991: in function <Interface\\FrameXML\\ChatFrame.lua:2984>\n[C]: in function `UseAction'\nInterface\\FrameXML\\SecureTemplates.lua:345: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 860,
			["counter"] = 2,
		}, -- [4]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Accountant_Classic' tried to call the protected function 'SecureStateDriverManager:SetAttribute()'.",
			["time"] = "2019/08/04 17:14:33",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\SecureStateDriver.lua:10: in function <Interface\\FrameXML\\SecureStateDriver.lua:8>\n(tail call): ?\n...rface\\AddOns\\ElvUI\\Modules\\actionbars\\ActionBars.lua:243: in function `PositionAndSizeBar'\n[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:13: in function `toggle'\n[string \"local r=WeakAuras.GetRegion(\"Elv AB toggle\"...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2171: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4836: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4497: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2991: in function <Interface\\FrameXML\\ChatFrame.lua:2984>\n[C]: in function `UseAction'\nInterface\\FrameXML\\SecureTemplates.lua:345: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 860,
			["counter"] = 2,
		}, -- [5]
		{
			["message"] = "...terface\\AddOns\\TomTom\\libs\\AceGUI-3.0\\AceGUI-3.0-39.lua:209: Attempt to Release Widget that is already released",
			["time"] = "2019/08/12 20:43:30",
			["locals"] = "(*temporary) = \"Attempt to Release Widget that is already released\"\n",
			["stack"] = "[C]: ?\n...terface\\AddOns\\TomTom\\libs\\AceGUI-3.0\\AceGUI-3.0-39.lua:126: in function <...terface\\AddOns\\TomTom\\libs\\AceGUI-3.0\\AceGUI-3.0.lua:121>\n...terface\\AddOns\\TomTom\\libs\\AceGUI-3.0\\AceGUI-3.0-39.lua:209: in function `Release'\n...ns\\Grid2Options\\modules\\general\\GridExportImport.lua:225: in function <...ns\\Grid2Options\\modules\\general\\GridExportImport.lua:223>",
			["session"] = 860,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "Action[SetPoint] failed because[SetPoint would result in anchor family connection]: attempted from: StaticPopup1:SetPoint.",
			["time"] = "2019/08/12 22:40:19",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: ?\n[C]: in function `SetPoint'\nInterface\\FrameXML\\StaticPopup.lua:5175: in function `StaticPopup_SetUpAnchor'\nInterface\\FrameXML\\StaticPopup.lua:5165: in function <Interface\\FrameXML\\StaticPopup.lua:5163>\n[C]: ?\n[C]: in function `StaticPopup_SetUpPosition'\nInterface\\FrameXML\\StaticPopup.lua:4798: in function <Interface\\FrameXML\\StaticPopup.lua:4391>\n[C]: ?\n[C]: in function `StaticPopup_Show'\nInterface\\FrameXML\\UIParent.lua:1218: in function <Interface\\FrameXML\\UIParent.lua:1108>",
			["session"] = 861,
			["counter"] = 2,
		}, -- [7]
	},
}
