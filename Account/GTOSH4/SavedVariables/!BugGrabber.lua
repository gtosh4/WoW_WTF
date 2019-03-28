
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 617,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\SavedInstances\\SavedInstances-8.1.0.lua:3188: Usage: <unnamed>:SetBackdrop(nil or {bgFile = \"bgFile\", edgeFile = \"edgeFile\", tile = false, tileSize = 0, edgeSize = 32, insets = { left = 0, right = 0, top = 0, bottom = 0 }})",
			["time"] = "2019/03/26 16:45:18",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n lines = <table> {\n }\n OnRelease = <function> defined @Interface\\AddOns\\SavedInstances\\SavedInstances.lua:4336\n headerFont = SavedInstancedTooltipHeaderFont {\n }\n scripts = <table> {\n }\n SetBackdropBorderColor = <function> defined =[C]:-1\n scrollFrame = <unnamed> {\n }\n anchorframe = SavedInstancesDetachHeader {\n }\n template = \"Transparent\"\n scrollChild = <unnamed> {\n }\n colspans = <table> {\n }\n width = 689.654114\n columns = <table> {\n }\n labelProvider = <table> {\n }\n regularFont = GameTooltipText {\n }\n height = 688.396320\n SetBackdropColor = <function> defined =[C]:-1\n pixelBorders = <table> {\n }\n key = \"SavedInstancesTooltip\"\n}\n",
			["stack"] = "[C]: in function `SetBackdrop'\nInterface\\AddOns\\SavedInstances\\SavedInstances-8.1.0.lua:3188: in function <Interface\\AddOns\\SavedInstances\\SavedInstances.lua:3184>",
			["session"] = 614,
			["counter"] = 7,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Accountant_Classic' tried to call the protected function 'Grid2LayoutFrame:ClearAllPoints()'.",
			["time"] = "2019/03/27 21:20:49",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:5: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:555: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:520>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:646: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:633: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:695: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:686>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:446: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\PVEFrame.lua:119: in function <Interface\\FrameXML\\PVEFrame.lua:90>\n[C]: in function `PVEFrame_ShowFrame'\nInterface\\FrameXML\\PVEFrame.lua:87: in function `PVEFrame_ToggleFrame'\nInterface\\FrameXML\\UIParent.lua:972: in function `TogglePVPUI'\n[string \"TOGGLECHARACTER4\"]:1: in function <[string \"TOGGLECHARACTER4\"]:1>",
			["session"] = 617,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUF_Player:ClearAllPoints()'.",
			["time"] = "2019/03/27 21:20:49",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:10: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:555: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:520>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:646: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:633: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:695: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:686>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:446: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\PVEFrame.lua:119: in function <Interface\\FrameXML\\PVEFrame.lua:90>\n[C]: in function `PVEFrame_ShowFrame'\nInterface\\FrameXML\\PVEFrame.lua:87: in function `PVEFrame_ToggleFrame'\nInterface\\FrameXML\\UIParent.lua:972: in function `TogglePVPUI'\n[string \"TOGGLECHARACTER4\"]:1: in function <[string \"TOGGLECHARACTER4\"]:1>",
			["session"] = 617,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\ToshAssignments\\bigwigs-v142.lua:240: attempt to perform arithmetic on local 'length' (a nil value)",
			["time"] = "2019/03/27 21:52:17",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\ToshAssignments\\bigwigs-v142.lua:240: in function `?'\n...\\Accountant_Classic\\Libs\\AceHook-3.0\\AceHook-3.0-8.lua:90: in function `Bar'\n...ace\\AddOns\\BigWigs_BattleOfDazaralor\\Mekkatorque.lua:319: in function `?'\nInterface\\AddOns\\BigWigs_Core\\BossPrototype.lua:450: in function <Interface\\AddOns\\BigWigs_Core\\BossPrototype.lua:416>",
			["session"] = 617,
			["counter"] = 11,
		}, -- [4]
	},
}
