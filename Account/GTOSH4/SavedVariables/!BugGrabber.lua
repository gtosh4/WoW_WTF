
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 365,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'MainMenuBar:SetPoint()'.",
			["time"] = "2019/02/13 21:29:32",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetPoint'\nInterface\\FrameXML\\UIParent.lua:2981: in function `UIParentManageFramePositions'\nInterface\\FrameXML\\UIParent.lua:2357: in function <Interface\\FrameXML\\UIParent.lua:2344>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3153: in function <Interface\\FrameXML\\UIParent.lua:3151>\n[C]: in function `UIParent_ManageFramePositions'\n...ard_UIWidgets\\Blizzard_UIWidgetBelowMinimapFrame.lua:25: in function `layoutFunc'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:225: in function `UpdateWidgetSetContainerLayout'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:318: in function `ProcessWidgetSet'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:340: in function `UpdateAllWidgets'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:33: in function <...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:31>",
			["session"] = 329,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WorldQuestsList' tried to call the protected function 'Search()'.",
			["time"] = "2019/02/14 10:36:57",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Search'\nInterface\\FrameXML\\LFGList.lua:1744: in function `LFGListSearchPanel_DoSearch'\nInterface\\FrameXML\\LFGList.lua:1916: in function <Interface\\FrameXML\\LFGList.lua:1910>\n[C]: ?\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-85.lua:7026: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:7022>\n[C]: in function `Click'\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-85.lua:7119: in function `LFG_Search'\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-85.lua:7524: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:7498>",
			["session"] = 333,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Dominos' tried to call the protected function 'DominosFrame1:Show()'.",
			["time"] = "2019/02/15 00:43:56",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Show'\n[string \"--[[ Error in 'DominosToggle' ]] return fun...\"]:15: in function <[string \"--[[ Error in 'DominosToggle' ]] return fun...\"]:10>",
			["session"] = 346,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'AAP-Core' tried to call the protected function 'EditMacro()'.",
			["time"] = "2019/02/16 14:26:26",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `EditMacro'\nInterface\\AddOns\\AAP-Core\\QuestHandler.lua:2497: in function `MacroUpdater'\nInterface\\AddOns\\AAP-Core\\QuestHandler.lua:908: in function <Interface\\AddOns\\AAP-Core\\QuestHandler.lua:601>\nInterface\\AddOns\\AAP-Core\\QuestHandler.lua:4220: in function <Interface\\AddOns\\AAP-Core\\QuestHandler.lua:4144>",
			["session"] = 361,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "Deferred XML Node object named oUF_ClickCastUnitTemplate already exists",
			["time"] = "2019/02/13 15:33:15",
			["session"] = 365,
			["counter"] = 225,
		}, -- [5]
		{
			["message"] = "...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:132: GetAchievementCriteriaInfo(achievementID, criteriaIndex [,countHidden]), criteria not found",
			["time"] = "2019/02/13 15:33:24",
			["stack"] = "[C]: in function `GetAchievementCriteriaInfo'\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:132: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:90>\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:181: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:166>\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:214: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:209>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 365,
			["counter"] = 45,
		}, -- [6]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Accountant_Classic' tried to call the protected function 'Grid2LayoutFrame:ClearAllPoints()'.",
			["time"] = "2019/02/14 09:06:44",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:5: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:546: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:511>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:637: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:624: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:686: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:677>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:449: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:519: in function `RaidFrame_LoadUI'\nInterface\\FrameXML\\RaidFrame.lua:60: in function <Interface\\FrameXML\\RaidFrame.lua:51>",
			["session"] = 365,
			["counter"] = 5,
		}, -- [7]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUF_Player:ClearAllPoints()'.",
			["time"] = "2019/02/14 09:06:44",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:10: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:546: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:511>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:637: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:624: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:686: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:677>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:449: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:519: in function `RaidFrame_LoadUI'\nInterface\\FrameXML\\RaidFrame.lua:60: in function <Interface\\FrameXML\\RaidFrame.lua:51>",
			["session"] = 365,
			["counter"] = 5,
		}, -- [8]
	},
}
