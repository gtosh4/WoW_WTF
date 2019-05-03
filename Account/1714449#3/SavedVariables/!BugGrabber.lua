
BugGrabberDB = {
	["session"] = 718,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\FrameXML\\LFGList.lua:2373: Usage: ApplyToGroup(resultID, tankOK, healerOK, damageOK)",
			["time"] = "2019/04/27 21:04:14",
			["locals"] = "(*temporary) = nil\n(*temporary) = false\n(*temporary) = false\n(*temporary) = false\n",
			["stack"] = "[C]: in function `ApplyToGroup'\nInterface\\FrameXML\\LFGList.lua:2373: in function <Interface\\FrameXML\\LFGList.lua:2370>\n[C]: in function `Click'\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-87.lua:7238: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:7231>\n[C]: in function `LFGListSearchPanel_SelectResult'\nInterface\\FrameXML\\LFGList.lua:2231: in function <Interface\\FrameXML\\LFGList.lua:2224>",
			["session"] = 701,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MacroToolkit' tried to call the protected function 'EditMacro()'.",
			["time"] = "2019/05/02 21:49:00",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `EditMacro'\n...terface\\AddOns\\Blizzard_MacroUI\\Blizzard_MacroUI.lua:503: in function `MacroFrame_SaveMacro'\n...terface\\AddOns\\Blizzard_MacroUI\\Blizzard_MacroUI.lua:175: in function <...terface\\AddOns\\Blizzard_MacroUI\\Blizzard_MacroUI.lua:173>",
			["session"] = 717,
			["counter"] = 1,
		}, -- [2]
	},
}
