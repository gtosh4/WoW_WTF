
BugGrabberDB = {
	["session"] = 558,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\ToshAssignments\\bigwigs-v137.lua:14: attempt to index global 'BigWigs' (a nil value)",
			["time"] = "2019/03/07 15:58:42",
			["stack"] = "Interface\\AddOns\\ToshAssignments\\bigwigs-v137.lua:14: in function <Interface\\AddOns\\ToshAssignments\\bigwigs.lua:11>\nInterface\\AddOns\\ToshAssignments\\bigwigs-v137.lua:280: in function `?'\nInterface\\AddOns\\ToshAssignments\\core.lua:69: in function `LoadBossMod'\nInterface\\AddOns\\ToshAssignments\\core.lua:59: in function `?'\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>\n[C]: in function `LoadAddOn'\nInterface\\AddOns\\BigWigs\\Loader.lua:306: in function <Interface\\AddOns\\BigWigs\\Loader.lua:293>\nInterface\\AddOns\\BigWigs\\Loader.lua:334: in function <Interface\\AddOns\\BigWigs\\Loader.lua:333>\nInterface\\AddOns\\BigWigs\\Loader.lua:1273: in function `?'\nInterface\\AddOns\\BigWigs\\Loader.lua:1011: in function <Interface\\AddOns\\BigWigs\\Loader.lua:1010>",
			["session"] = 553,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Couldn't open Interface\\AddOns\\BigWigs_Core\\BigWigs_Core.toc",
			["session"] = 553,
			["time"] = "2019/03/07 15:58:42",
			["counter"] = 2,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MythicPlusTimer' tried to call the protected function 'ObjectiveTrackerFrame:Hide()'.",
			["time"] = "2019/03/07 15:27:30",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Hide'\nInterface\\AddOns\\MythicPlusTimer\\CMTimer.lua:423: in function `Draw'\nInterface\\AddOns\\MythicPlusTimer\\Core.lua:188: in function `?'\n...erface\\AddOns\\ACU\\Libs\\AceTimer-3.0\\AceTimer-3.0-17.lua:55: in function <...erface\\AddOns\\ACU\\Libs\\AceTimer-3.0\\AceTimer-3.0.lua:50>",
			["session"] = 553,
			["counter"] = 2,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Accountant_Classic' tried to call the protected function 'Grid2LayoutFrame:ClearAllPoints()'.",
			["time"] = "2019/03/07 21:03:05",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:5: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:555: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:520>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:646: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:633: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:695: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:686>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:449: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\PVEFrame.lua:119: in function <Interface\\FrameXML\\PVEFrame.lua:90>\n[C]: in function `PVEFrame_ShowFrame'\nInterface\\FrameXML\\PVEFrame.lua:87: in function `PVEFrame_ToggleFrame'\nInterface\\FrameXML\\UIParent.lua:975: in function `TogglePVPUI'\n[string \"TOGGLECHARACTER4\"]:1: in function <[string \"TOGGLECHARACTER4\"]:1>",
			["session"] = 554,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUF_Player:ClearAllPoints()'.",
			["time"] = "2019/03/07 21:03:05",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:10: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:555: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:520>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:646: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:633: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:695: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:686>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:449: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\PVEFrame.lua:119: in function <Interface\\FrameXML\\PVEFrame.lua:90>\n[C]: in function `PVEFrame_ShowFrame'\nInterface\\FrameXML\\PVEFrame.lua:87: in function `PVEFrame_ToggleFrame'\nInterface\\FrameXML\\UIParent.lua:975: in function `TogglePVPUI'\n[string \"TOGGLECHARACTER4\"]:1: in function <[string \"TOGGLECHARACTER4\"]:1>",
			["session"] = 554,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "Deferred XML Node object named oUF_ClickCastUnitTemplate already exists",
			["session"] = 558,
			["time"] = "2019/03/06 00:13:44",
			["counter"] = 40,
		}, -- [6]
		{
			["message"] = "...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:132: GetAchievementCriteriaInfo(achievementID, criteriaIndex [,countHidden]), criteria not found",
			["time"] = "2019/03/06 00:13:50",
			["stack"] = "[C]: in function `GetAchievementCriteriaInfo'\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:132: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:90>\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:181: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:166>\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:214: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:209>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 558,
			["counter"] = 8,
		}, -- [7]
	},
}
