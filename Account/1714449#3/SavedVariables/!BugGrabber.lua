
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 525,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Dominos' tried to call the protected function 'OverrideActionBarButton3:SetAttribute()'.",
			["time"] = "2020/09/01 16:34:25",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface\\FrameXML\\OverrideActionBar.lua\"]:228: in function `OverrideActionBar_Setup'\n[string \"@Interface\\FrameXML\\OverrideActionBar.lua\"]:118: in function `OverrideActionBar_UpdateSkin'\n[string \"@Interface\\FrameXML\\OverrideActionBar.lua\"]:88: in function <Interface\\FrameXML\\OverrideActionBar.lua:79>",
			["session"] = 523,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\FrameXML\\ChatFrame.lua:1637: Usage: local setWasEquipped = C_EquipmentSet.UseEquipmentSet(equipmentSetID)",
			["time"] = "2020/09/01 15:49:12",
			["locals"] = "",
			["stack"] = "[string \"=[C]\"]: in function `UseEquipmentSet'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:1637: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4839: in function <Interface\\FrameXML\\ChatFrame.lua:4805>\n[string \"=[C]\"]: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4523: in function <Interface\\FrameXML\\ChatFrame.lua:4522>\n[string \"=[C]\"]: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:3004: in function <Interface\\FrameXML\\ChatFrame.lua:2997>\n[string \"=[C]\"]: in function `RunMacroText'\n[string \"@Interface\\FrameXML\\SecureTemplates.lua\"]:441: in function `handler'\n[string \"@Interface\\FrameXML\\SecureTemplates.lua\"]:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[string \"=[C]\"]: ?\n[string \"@Interface\\FrameXML\\SecureHandlers.lua\"]:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n...\n[string \"=[C]\"]: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:3004: in function <Interface\\FrameXML\\ChatFrame.lua:2997>\n[string \"=[C]\"]: in function `RunMacroText'\n[string \"@Interface\\FrameXML\\SecureTemplates.lua\"]:441: in function `handler'\n[string \"@Interface\\FrameXML\\SecureTemplates.lua\"]:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[string \"=[C]\"]: ?\n[string \"@Interface\\FrameXML\\SecureHandlers.lua\"]:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[string \"=[C]\"]: ?\n[string \"@Interface\\FrameXML\\SecureHandlers.lua\"]:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n[string \"=(tail call)\"]: ?",
			["session"] = 523,
			["counter"] = 2,
		}, -- [2]
	},
}
