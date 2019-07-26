
BugGrabberDB = {
	["session"] = 1088,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[string \"*:OnHide\"]:3: Usage: PlaySound(soundKitID, optional[\"SFX\",\"Music\",\"Ambience\", \"Dialog\" or \"Master\"], [forceNoDuplicates, runFinishCallback])",
			["time"] = "2019/07/26 02:55:57",
			["locals"] = "(*temporary) = \"UChatScrollButton\"\n",
			["stack"] = "[C]: in function `PlaySound'\n[string \"*:OnHide\"]:3: in function <[string \"*:OnHide\"]:1>\n[C]: in function `Hide'\nInterface\\FrameXML\\UIParent.lua:3225: in function `HideUIPanel'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>",
			["session"] = 1084,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[string \"--[[ Error in 'Viewport' ]] return function...\"]:4: attempt to call method 'GetNumPoint' (a nil value)",
			["time"] = "2019/07/26 03:04:35",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\AuraEnvironment.lua:174: in function `ActivateAuraEnvironment'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:686: in function `ScanWithFakeEvent'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:928: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1939: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1798: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1685>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1890: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1574: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1519: in function `Resume'\n...dOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:191: in function <...dOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:166>\n[C]: in function `Hide'\n...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions-2.13.4.lua:1444: in function <...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions.lua:1442>",
			["session"] = 1085,
			["counter"] = 1,
		}, -- [2]
	},
}
