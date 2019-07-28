
BugGrabberDB = {
	["session"] = 1108,
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
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'AAP-Core' tried to call the protected function 'CLQListFddd:SetScale()'.",
			["time"] = "2019/07/26 17:15:59",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetScale'\nInterface\\AddOns\\AAP-Core\\OptionsPanel.lua:285: in function <Interface\\AddOns\\AAP-Core\\OptionsPanel.lua:282>\n[C]: in function `SetValue'\nInterface\\AddOns\\AAP-Core\\OptionsPanel.lua:293: in function `LoadOptionsFrame'\nInterface\\AddOns\\AAP-Core\\Core.lua:2138: in function <Interface\\AddOns\\AAP-Core\\Core.lua:2136>",
			["session"] = 1096,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Favorites' tried to call the protected function 'RaidFrame:Show()'.",
			["time"] = "2019/07/26 23:08:06",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Show'\nInterface\\FrameXML\\FriendsFrame.lua:86: in function `FriendsFrame_ShowSubFrame'\nInterface\\FrameXML\\FriendsFrame.lua:362: in function <Interface\\FrameXML\\FriendsFrame.lua:323>\n[C]: in function `FriendsFrame_Update'\nInterface\\FrameXML\\FriendsFrame.lua:315: in function <Interface\\FrameXML\\FriendsFrame.lua:313>\n[C]: ?\n[C]: in function `Show'\nInterface\\FrameXML\\UIParent.lua:2652: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2497: in function `ShowUIPanel'\nInterface\\FrameXML\\UIParent.lua:2365: in function <Interface\\FrameXML\\UIParent.lua:2361>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3212: in function `ShowUIPanel'\nInterface\\FrameXML\\FriendsFrame.lua:1096: in function `ToggleFriendsFrame'\n[string \"TOGGLESOCIAL\"]:1: in function <[string \"TOGGLESOCIAL\"]:1>",
			["session"] = 1098,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'MainMenuBar:ClearAllPoints()'.",
			["time"] = "2019/07/27 00:33:15",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\nInterface\\FrameXML\\MainMenuBar.lua:43: in function `SetPositionForStatusBars'\nInterface\\FrameXML\\MainMenuBar.lua:122: in function <Interface\\FrameXML\\MainMenuBar.lua:65>",
			["session"] = 1098,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "Interface\\FrameXML\\ChatFrame.lua:1631: Usage: local setWasEquipped = C_EquipmentSet.UseEquipmentSet(equipmentSetID)",
			["time"] = "2019/07/27 03:02:26",
			["locals"] = "",
			["stack"] = "[C]: in function `UseEquipmentSet'\nInterface\\FrameXML\\ChatFrame.lua:1631: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4816: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4497: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2991: in function <Interface\\FrameXML\\ChatFrame.lua:2984>\n[C]: in function `RunMacroText'\nInterface\\FrameXML\\SecureTemplates.lua:441: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n...\nInterface\\FrameXML\\ChatFrame.lua:4497: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2991: in function <Interface\\FrameXML\\ChatFrame.lua:2984>\n[C]: in function `RunMacroText'\nInterface\\FrameXML\\SecureTemplates.lua:441: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 1098,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "[string \"--[[ Error in 'Mrrl's trade game' ]] return...\"]:5: bad argument #3 to 'format' (string expected, got nil)",
			["time"] = "2019/07/27 21:23:06",
			["stack"] = "[string \"--[[ Error in 'Mrrl's trade game' ]] return...\"]:5: in function <[string \"--[[ Error in 'Mrrl's trade game' ]] return...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\AuraEnvironment.lua:174: in function `ActivateAuraEnvironment'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:686: in function `ScanWithFakeEvent'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:928: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1939: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1798: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1685>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1832: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1875: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1873>",
			["session"] = 1106,
			["counter"] = 1,
		}, -- [7]
	},
}
