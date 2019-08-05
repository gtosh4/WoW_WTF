
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 1159,
	["errors"] = {
		{
			["message"] = "Action[SetPoint] failed because[SetPoint would result in anchor family connection]: attempted from: StaticPopup1:SetPoint.",
			["time"] = "2019/08/04 00:18:53",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: ?\n[C]: in function `SetPoint'\nInterface\\FrameXML\\StaticPopup.lua:5175: in function `StaticPopup_SetUpAnchor'\nInterface\\FrameXML\\StaticPopup.lua:5165: in function <Interface\\FrameXML\\StaticPopup.lua:5163>\n[C]: ?\n[C]: in function `StaticPopup_SetUpPosition'\nInterface\\FrameXML\\StaticPopup.lua:4798: in function <Interface\\FrameXML\\StaticPopup.lua:4391>\n[C]: ?\n[C]: in function `StaticPopup_Show'\nInterface\\FrameXML\\UIParent.lua:1218: in function <Interface\\FrameXML\\UIParent.lua:1108>",
			["session"] = 1149,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'AAP-Core' tried to call the protected function 'EditMacro()'.",
			["time"] = "2019/08/04 14:28:13",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `EditMacro'\nInterface\\AddOns\\AAP-Core\\QuestHandler.lua:2564: in function `MacroUpdater'\nInterface\\AddOns\\AAP-Core\\QuestHandler.lua:965: in function <Interface\\AddOns\\AAP-Core\\QuestHandler.lua:658>\nInterface\\AddOns\\AAP-Core\\QuestHandler.lua:4902: in function <Interface\\AddOns\\AAP-Core\\QuestHandler.lua:4826>",
			["session"] = 1152,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MythicPlusTimer' tried to call the protected function 'ObjectiveTrackerFrame:SetParent()'.",
			["time"] = "2019/08/04 16:53:32",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetParent'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:606: in function `show_default_tracker'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:415: in function `callback'\nInterface\\AddOns\\MythicPlusTimer\\addon.lua:100: in function <Interface\\AddOns\\MythicPlusTimer\\addon.lua:94>",
			["session"] = 1159,
			["counter"] = 1,
		}, -- [3]
	},
}
