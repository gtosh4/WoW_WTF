
BugGrabberDB = {
	["session"] = 858,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUI_Bar2:SetWidth()'.",
			["time"] = "2019/08/04 17:14:33",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetWidth'\nInterface\\AddOns\\ElvUI\\Core\\Toolkit.lua:192: in function `Width'\n...rface\\AddOns\\ElvUI\\Modules\\actionbars\\ActionBars.lua:144: in function `PositionAndSizeBar'\n[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:13: in function `toggle'\n[string \"local r=WeakAuras.GetRegion(\"Elv AB toggle\"...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2171: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4836: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4497: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2991: in function <Interface\\FrameXML\\ChatFrame.lua:2984>\n[C]: in function `UseAction'\nInterface\\FrameXML\\SecureTemplates.lua:345: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 853,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Accountant_Classic' tried to call the protected function 'SecureStateDriverManager:SetAttribute()'.",
			["time"] = "2019/08/04 17:14:33",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\SecureStateDriver.lua:10: in function <Interface\\FrameXML\\SecureStateDriver.lua:8>\n(tail call): ?\n...rface\\AddOns\\ElvUI\\Modules\\actionbars\\ActionBars.lua:243: in function `PositionAndSizeBar'\n[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:13: in function `toggle'\n[string \"local r=WeakAuras.GetRegion(\"Elv AB toggle\"...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2171: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4836: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4497: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2991: in function <Interface\\FrameXML\\ChatFrame.lua:2984>\n[C]: in function `UseAction'\nInterface\\FrameXML\\SecureTemplates.lua:345: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 853,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MythicPlusTimer' tried to call the protected function 'ObjectiveTrackerFrame:SetParent()'.",
			["time"] = "2019/07/06 18:14:41",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetParent'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:606: in function `show_default_tracker'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:415: in function `callback'\nInterface\\AddOns\\MythicPlusTimer\\addon.lua:100: in function <Interface\\AddOns\\MythicPlusTimer\\addon.lua:94>",
			["session"] = 853,
			["counter"] = 2,
		}, -- [3]
		{
			["message"] = "Interface\\FrameXML\\QuestInfo.lua:73: Usage: local isCampaignQuest = C_CampaignInfo.IsCampaignQuest(questID)",
			["time"] = "2019/08/11 19:42:57",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[C]: in function `IsCampaignQuest'\nInterface\\FrameXML\\QuestInfo.lua:73: in function <Interface\\FrameXML\\QuestInfo.lua:51>\n[C]: ?\n[C]: in function `QuestInfo_Display'\nInterface\\FrameXML\\QuestMapFrame.lua:301: in function <Interface\\FrameXML\\QuestMapFrame.lua:296>\n[C]: in function `QuestMapFrame_ShowQuestDetails'\nInterface\\FrameXML\\QuestMapFrame.lua:266: in function `QuestMapFrame_UpdateAll'\nInterface\\FrameXML\\QuestMapFrame.lua:170: in function <Interface\\FrameXML\\QuestMapFrame.lua:92>",
			["session"] = 856,
			["counter"] = 1,
		}, -- [4]
	},
}
