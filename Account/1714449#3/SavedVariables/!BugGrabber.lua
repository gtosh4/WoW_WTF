
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 589,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Dominos' tried to call the protected function 'ActionButton1:Show()'.",
			["time"] = "2020/10/16 21:34:59",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:348: in function <Interface\\FrameXML\\ActionButton.lua:332>\n[string \"=[C]\"]: in function `Update'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:854: in function `OnEvent'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:265: in function <Interface\\FrameXML\\ActionButton.lua:257>",
			["session"] = 589,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\Favorites\\Favorites-3.4.lua:133: attempt to call global 'BNGetFriendInfo' (a nil value)",
			["time"] = "2020/10/16 23:16:02",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\Favorites\\Favorites-3.4.lua\"]:133: in function `FriendsList_Update'\n[string \"@Interface\\FrameXML\\FriendsFrame.lua\"]:305: in function <Interface\\FrameXML\\FriendsFrame.lua:304>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2893: in function `SetUIPanel'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2738: in function `ShowUIPanel'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2606: in function <Interface\\FrameXML\\UIParent.lua:2602>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:3457: in function `ShowUIPanel'\n[string \"@Interface\\FrameXML\\FriendsFrame.lua\"]:1088: in function `ToggleFriendsFrame'\n[string \"TOGGLESOCIAL\"]:1: in function <[string \"TOGGLESOCIAL\"]:1>",
			["session"] = 589,
			["counter"] = 2,
		}, -- [2]
	},
}
