
BugGrabberDB = {
	["session"] = 840,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUI_Bar2:SetWidth()'.",
			["time"] = "2019/05/15 21:08:27",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetWidth'\nInterface\\AddOns\\ElvUI\\Core\\Toolkit.lua:179: in function `Width'\n...rface\\AddOns\\ElvUI\\Modules\\actionbars\\ActionBars.lua:144: in function `PositionAndSizeBar'\n[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:10: in function `toggle'\n[string \"local r=WeakAuras.GetRegion(\"Elv AB toggle\"...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2155: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4721: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4382: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2895: in function <Interface\\FrameXML\\ChatFrame.lua:2888>\n[C]: in function `UseAction'\nInterface\\FrameXML\\SecureTemplates.lua:345: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 840,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Accountant_Classic' tried to call the protected function 'SecureStateDriverManager:SetAttribute()'.",
			["time"] = "2019/05/15 21:08:27",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\SecureStateDriver.lua:10: in function <Interface\\FrameXML\\SecureStateDriver.lua:8>\n(tail call): ?\n...rface\\AddOns\\ElvUI\\Modules\\actionbars\\ActionBars.lua:243: in function `PositionAndSizeBar'\n[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:10: in function `toggle'\n[string \"local r=WeakAuras.GetRegion(\"Elv AB toggle\"...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2155: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4721: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4382: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2895: in function <Interface\\FrameXML\\ChatFrame.lua:2888>\n[C]: in function `UseAction'\nInterface\\FrameXML\\SecureTemplates.lua:345: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 840,
			["counter"] = 1,
		}, -- [2]
	},
}
