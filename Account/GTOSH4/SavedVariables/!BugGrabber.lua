
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 641,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Accountant_Classic' tried to call the protected function 'Grid2LayoutFrame:ClearAllPoints()'.",
			["time"] = "2019/03/31 01:18:27",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:5: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:555: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:520>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:646: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:633: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:695: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:686>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:446: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:516: in function `RaidFrame_LoadUI'\nInterface\\FrameXML\\RaidFrame.lua:60: in function <Interface\\FrameXML\\RaidFrame.lua:51>",
			["session"] = 639,
			["counter"] = 3,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUF_Player:ClearAllPoints()'.",
			["time"] = "2019/03/31 01:18:27",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:10: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:555: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:520>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:646: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:633: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:695: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:686>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:446: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:516: in function `RaidFrame_LoadUI'\nInterface\\FrameXML\\RaidFrame.lua:60: in function <Interface\\FrameXML\\RaidFrame.lua:51>",
			["session"] = 639,
			["counter"] = 3,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MythicPlusTimer' tried to call the protected function 'ObjectiveTrackerFrame:Hide()'.",
			["time"] = "2019/03/31 21:32:30",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Hide'\nInterface\\AddOns\\MythicPlusTimer\\CMTimer.lua:449: in function `Draw'\nInterface\\AddOns\\MythicPlusTimer\\Core.lua:380: in function `OnCMTimerTick'\nInterface\\AddOns\\MythicPlusTimer\\Core.lua:441: in function <Interface\\AddOns\\MythicPlusTimer\\Core.lua:436>\n[C]: in function `updateFunc'\n...jectiveTracker\\Blizzard_ScenarioObjectiveTracker.lua:228: in function <...jectiveTracker\\Blizzard_ScenarioObjectiveTracker.lua:226>",
			["session"] = 640,
			["counter"] = 1,
		}, -- [3]
	},
}
