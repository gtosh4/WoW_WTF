
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 689,
	["errors"] = {
		{
			["message"] = "[string \"--[[ Error in 'Atonement Missing' ]] return...\"]:60: attempt to index global 'aura_env' (a nil value)",
			["time"] = "2019/04/13 17:17:39",
			["locals"] = "frame = Grid2LayoutHeader1UnitButton2 {\n 0 = <userdata>\n square-topright2 = <unnamed> {\n }\n icon-bottom = <unnamed> {\n }\n currentBackdrop = <table> {\n }\n square-bottomright = <unnamed> {\n }\n icon-top = <unnamed> {\n }\n icon-left-inset = <unnamed> {\n }\n heals-multi = <unnamed> {\n }\n container = <unnamed> {\n }\n icon-topright = <unnamed> {\n }\n heals = <unnamed> {\n }\n UpdateIndicators = <function> defined @Interface\\AddOns\\Grid2\\GridFrame.lua:164\n Layout = <function> defined @Interface\\AddOns\\Grid2\\GridFrame.lua:125\n CreateIndicators = <function> defined @Interface\\AddOns\\Grid2\\GridFrame.lua:174\n _PixelGlowAtonement Missing = <unnamed> {\n }\n icons-bottomleft = <unnamed> {\n }\n health = <unnamed> {\n }\n icons-topleft = <unnamed> {\n }\n text-up = <unnamed> {\n }\n square-bottomright2 = <unnamed> {\n }\n square-topright3 = <unnamed> {\n }\n icon-center = <unnamed> {\n }\n}\nshow = false\nid = \"Atonement Missing\"\nglowType = \"Pixel\"\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index global 'aura_env' (a nil value)\"\nglowTypes = <table> {\n 1 = \"Standard\"\n 2 = \"Pixel\"\n 3 = \"AutoCast\"\n}\nLCG = <table> {\n ButtonGlowPool = <table> {\n }\n PixelGlow_Stop = <function> defined @Interface\\AddOns\\WeakAuras\\Libs\\LibCustomGlow-1.0\\LibCustomGlow-1.0.lua:293\n GlowFramePool = <table> {\n }\n startList = <table> {\n }\n ButtonGlow_Stop = <function> defined @Interface\\AddOns\\WeakAuras\\Libs\\LibCustomGlow-1.0\\LibCustomGlow-1.0.lua:675\n ButtonGlow_Start = <function> defined @Interface\\AddOns\\WeakAuras\\Libs\\LibCustomGlow-1.0\\LibCustomGlow-1.0.lua:592\n AutoCastGlow_Stop = <function> defined @Interface\\AddOns\\WeakAuras\\Libs\\LibCustomGlow-1.0\\LibCustomGlow-1.0.lua:387\n glowList = <table> {\n }\n GlowTexPool = <table> {\n }\n PixelGlow_Start = <function> defined @Interface\\AddOns\\WeakAuras\\Libs\\LibCustomGlow-1.0\\LibCustomGlow-1.0.lua:207\n GlowMaskPool = <table> {\n }\n stopList = <table> {\n }\n AutoCastGlow_Start = <function> defined @Interface\\AddOns\\WeakAuras\\Libs\\LibCustomGlow-1.0\\LibCustomGlow-1.0.lua:344\n RegisterTextures = <function> defined @Interface\\AddOns\\WeakAuras\\Libs\\LibCustomGlow-1.0\\LibCustomGlow-1.0.lua:14\n}\n",
			["stack"] = "[string \"--[[ Error in 'Atonement Missing' ]] return...\"]:60: in function <[string \"--[[ Error in 'Atonement Missing' ]] return...\"]:25>\n[string \"--[[ Error in 'Atonement Missing' ]] return...\"]:80: in function <[string \"--[[ Error in 'Atonement Missing' ]] return...\"]:76>\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: in function `OpenOptions'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.11.6.lua:110: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4721: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4382: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:4418: in function <Interface\\FrameXML\\ChatFrame.lua:4414>\n[C]: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 676,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MythicPlusTimer' tried to call the protected function 'ObjectiveTrackerFrame:Hide()'.",
			["time"] = "2019/04/13 19:47:33",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Hide'\nInterface\\AddOns\\MythicPlusTimer\\CMTimer.lua:449: in function `Draw'\nInterface\\AddOns\\MythicPlusTimer\\Core.lua:380: in function `OnCMTimerTick'\nInterface\\AddOns\\MythicPlusTimer\\Core.lua:441: in function <Interface\\AddOns\\MythicPlusTimer\\Core.lua:436>\n[C]: in function `updateFunc'\n...jectiveTracker\\Blizzard_ScenarioObjectiveTracker.lua:228: in function <...jectiveTracker\\Blizzard_ScenarioObjectiveTracker.lua:226>",
			["session"] = 680,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Accountant_Classic' tried to call the protected function 'Grid2LayoutFrame:ClearAllPoints()'.",
			["time"] = "2019/04/18 20:47:08",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:5: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:555: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:520>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:646: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:633: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:695: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:686>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:446: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:561: in function `AchievementFrame_LoadUI'\nInterface\\FrameXML\\AlertFrames.lua:455: in function <Interface\\FrameXML\\AlertFrames.lua:446>",
			["session"] = 686,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUF_Player:ClearAllPoints()'.",
			["time"] = "2019/04/18 20:47:08",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:10: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:555: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:520>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:646: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:633: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:695: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:686>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:446: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:561: in function `AchievementFrame_LoadUI'\nInterface\\FrameXML\\AlertFrames.lua:455: in function <Interface\\FrameXML\\AlertFrames.lua:446>",
			["session"] = 686,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "...ns\\Grid2Options\\modules\\general\\GridExportImport.lua:238: attempt to call global 'IsAddonMessagePrefixRegistered' (a nil value)",
			["time"] = "2019/04/20 21:20:59",
			["stack"] = "...ns\\Grid2Options\\modules\\general\\GridExportImport.lua:238: in function `Enable'\n...ns\\Grid2Options\\modules\\general\\GridExportImport.lua:364: in function <...ns\\Grid2Options\\modules\\general\\GridExportImport.lua:364>\n[C]: ?\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:50: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:48>\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:789: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:610>\n[C]: ?\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:71: in function <...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:69>\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:285: in function `Fire'\n...ic\\Libs\\AceGUI-3.0-36\\widgets\\AceGUIWidget-CheckBox.lua:68: in function <...ic\\Libs\\AceGUI-3.0\\widgets\\AceGUIWidget-CheckBox.lua:57>",
			["session"] = 687,
			["counter"] = 1,
		}, -- [5]
	},
}
