
BugGrabberDB = {
	["session"] = 666,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[string \"--[[ Error in 'Tosh ZT External CDs bar' ]]...\"]:64: attempt to index field 'types' (a nil value)",
			["time"] = "2019/04/07 20:24:00",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:526: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:520>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:646: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:633: in function `ScanEvents'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:990: in function `sendRemoveEvent'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:1301: in function `unwatch'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:1537: in function `addOrUpdateMember'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:1854: in function `?'\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...ils\\Libs\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:574: in function `eventhandler'\n...ils\\Libs\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:120: in function <...ils\\Libs\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1.lua:118>",
			["session"] = 662,
			["counter"] = 2,
		}, -- [1]
		{
			["message"] = "...face\\AddOns\\ElvUI\\Modules\\nameplates\\StyleFilter.lua:1054: attempt to index field 'cooldowns' (a nil value)",
			["time"] = "2019/04/07 20:28:05",
			["stack"] = "...face\\AddOns\\ElvUI\\Modules\\nameplates\\StyleFilter.lua:1054: in function `StyleFilterConfigure'\n...rface\\AddOns\\ElvUI\\Modules\\nameplates\\Nameplates.lua:427: in function `ConfigureAll'\nInterface\\AddOns\\ElvUI_Config\\UnitFrames.lua:2939: in function <Interface\\AddOns\\ElvUI_Config\\UnitFrames.lua:2935>\n[C]: ?\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:50: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:48>\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:789: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:610>\n[C]: ?\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:71: in function <...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:69>\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:285: in function `Fire'\n...Ace3\\AceGUI-3.0-36\\widgets\\AceGUIWidget-ColorPicker.lua:36: in function <...Ace3\\AceGUI-3.0\\widgets\\AceGUIWidget-ColorPicker.lua:21>\n...Ace3\\AceGUI-3.0-36\\widgets\\AceGUIWidget-ColorPicker.lua:71: in function `opacityFunc'\n[string \"*:OnClick\"]:4: in function <[string \"*:OnClick\"]:1>",
			["session"] = 662,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Favorites' tried to call the protected function 'RaidFrame:Show()'.",
			["time"] = "2019/04/09 23:18:50",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Show'\nInterface\\FrameXML\\FriendsFrame.lua:83: in function `FriendsFrame_ShowSubFrame'\nInterface\\FrameXML\\FriendsFrame.lua:355: in function <Interface\\FrameXML\\FriendsFrame.lua:316>\n[C]: in function `FriendsFrame_Update'\nInterface\\FrameXML\\FriendsFrame.lua:308: in function <Interface\\FrameXML\\FriendsFrame.lua:306>\n[C]: ?\n[C]: in function `Show'\nInterface\\FrameXML\\UIParent.lua:2632: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2477: in function `ShowUIPanel'\nInterface\\FrameXML\\UIParent.lua:2345: in function <Interface\\FrameXML\\UIParent.lua:2341>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3173: in function `ShowUIPanel'\nInterface\\FrameXML\\FriendsFrame.lua:1067: in function `ToggleFriendsFrame'\n[string \"TOGGLESOCIAL\"]:1: in function <[string \"TOGGLESOCIAL\"]:1>",
			["session"] = 666,
			["counter"] = 1,
		}, -- [3]
	},
}
