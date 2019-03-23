
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 601,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\ToshAssignments\\bigwigs-v141.lua:240: attempt to perform arithmetic on local 'length' (a nil value)",
			["time"] = "2019/03/20 21:29:29",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\ToshAssignments\\bigwigs-v141.lua:240: in function `?'\n...\\Accountant_Classic\\Libs\\AceHook-3.0\\AceHook-3.0-8.lua:90: in function `Bar'\n...ace\\AddOns\\BigWigs_BattleOfDazaralor\\Mekkatorque.lua:319: in function `?'\nInterface\\AddOns\\BigWigs_Core\\BossPrototype.lua:450: in function <Interface\\AddOns\\BigWigs_Core\\BossPrototype.lua:416>",
			["session"] = 591,
			["counter"] = 5,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\SavedInstances\\SavedInstances-8.1.0.lua:3188: Usage: <unnamed>:SetBackdrop(nil or {bgFile = \"bgFile\", edgeFile = \"edgeFile\", tile = false, tileSize = 0, edgeSize = 32, insets = { left = 0, right = 0, top = 0, bottom = 0 }})",
			["time"] = "2019/03/22 14:05:37",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n lines = <table> {\n }\n OnRelease = <function> defined @Interface\\AddOns\\SavedInstances\\SavedInstances.lua:4336\n headerFont = SavedInstancedTooltipHeaderFont {\n }\n scripts = <table> {\n }\n SetBackdropBorderColor = <function> defined =[C]:-1\n scrollFrame = <unnamed> {\n }\n anchorframe = SavedInstancesDetachHeader {\n }\n template = \"Transparent\"\n scrollChild = <unnamed> {\n }\n colspans = <table> {\n }\n width = 757.188719\n columns = <table> {\n }\n labelProvider = <table> {\n }\n regularFont = GameTooltipText {\n }\n height = 703.471794\n SetBackdropColor = <function> defined =[C]:-1\n pixelBorders = <table> {\n }\n key = \"SavedInstancesTooltip\"\n}\n",
			["stack"] = "[C]: in function `SetBackdrop'\nInterface\\AddOns\\SavedInstances\\SavedInstances-8.1.0.lua:3188: in function <Interface\\AddOns\\SavedInstances\\SavedInstances.lua:3184>",
			["session"] = 595,
			["counter"] = 19,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MythicPlusTimer' tried to call the protected function 'ObjectiveTrackerFrame:Hide()'.",
			["time"] = "2019/03/22 14:17:34",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Hide'\nInterface\\AddOns\\MythicPlusTimer\\CMTimer.lua:432: in function `Draw'\nInterface\\AddOns\\MythicPlusTimer\\Core.lua:259: in function `OnCMTimerTick'\nInterface\\AddOns\\MythicPlusTimer\\Core.lua:320: in function <Interface\\AddOns\\MythicPlusTimer\\Core.lua:315>\n[C]: in function `updateFunc'\n...jectiveTracker\\Blizzard_ScenarioObjectiveTracker.lua:228: in function <...jectiveTracker\\Blizzard_ScenarioObjectiveTracker.lua:226>",
			["session"] = 598,
			["counter"] = 2,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Accountant_Classic' tried to call the protected function 'Grid2LayoutFrame:ClearAllPoints()'.",
			["time"] = "2019/03/20 20:08:21",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:5: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:555: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:520>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:646: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:633: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:695: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:686>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:446: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:692: in function <Interface\\FrameXML\\UIParent.lua:691>\n[C]: in function `Communities_LoadUI'\nInterface\\FrameXML\\UIParent.lua:926: in function `ToggleCommunitiesFrame'\nInterface\\FrameXML\\UIParent.lua:813: in function `ToggleGuildFrame'\n[string \"TOGGLEGUILDTAB\"]:1: in function <[string \"TOGGLEGUILDTAB\"]:1>",
			["session"] = 600,
			["counter"] = 3,
		}, -- [4]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUF_Player:ClearAllPoints()'.",
			["time"] = "2019/03/20 20:08:21",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:10: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:555: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:520>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:646: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:633: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:695: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:686>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:446: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:692: in function <Interface\\FrameXML\\UIParent.lua:691>\n[C]: in function `Communities_LoadUI'\nInterface\\FrameXML\\UIParent.lua:926: in function `ToggleCommunitiesFrame'\nInterface\\FrameXML\\UIParent.lua:813: in function `ToggleGuildFrame'\n[string \"TOGGLEGUILDTAB\"]:1: in function <[string \"TOGGLEGUILDTAB\"]:1>",
			["session"] = 600,
			["counter"] = 3,
		}, -- [5]
		{
			["message"] = "Interface\\AddOns\\ToshAssignments\\bigwigs-v141.1.lua:240: attempt to perform arithmetic on local 'length' (a nil value)",
			["time"] = "2019/03/23 00:22:53",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\ToshAssignments\\bigwigs-v141.1.lua:240: in function `?'\n...\\Accountant_Classic\\Libs\\AceHook-3.0\\AceHook-3.0-8.lua:90: in function `Bar'\n...ace\\AddOns\\BigWigs_BattleOfDazaralor\\Mekkatorque.lua:319: in function `?'\nInterface\\AddOns\\BigWigs_Core\\BossPrototype.lua:450: in function <Interface\\AddOns\\BigWigs_Core\\BossPrototype.lua:416>",
			["session"] = 601,
			["counter"] = 53,
		}, -- [6]
	},
}
