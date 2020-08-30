
BugGrabberDB = {
	["session"] = 514,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Dominos' tried to call the protected function 'OverrideActionBarButton3:Show()'.",
			["time"] = "2020/08/29 22:41:58",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:368: in function <Interface\\FrameXML\\ActionButton.lua:342>\n[string \"=[C]\"]: in function `ActionButton_Update'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:736: in function `ActionButton_OnEvent'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:211: in function <Interface\\FrameXML\\ActionButton.lua:208>",
			["session"] = 511,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "...Blizzard_GarrisonUI\\Blizzard_GarrisonLandingPage.lua:749: attempt to get length of local 'items' (a nil value)",
			["time"] = "2020/08/30 02:59:50",
			["locals"] = "items = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to get length of local 'items' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\Blizzard_GarrisonUI\\Blizzard_GarrisonLandingPage.lua\"]:749: in function `GarrisonLandingPageReportMission_FilterOutCombatAllyMissions'\n[string \"@Interface\\AddOns\\Blizzard_GarrisonUI\\Blizzard_GarrisonLandingPage.lua\"]:481: in function `GarrisonLandingPageReportList_UpdateItems'\n[string \"@Interface\\AddOns\\Blizzard_GarrisonUI\\Blizzard_GarrisonLandingPage.lua\"]:474: in function `GarrisonLandingPageReport_SetTab'\n[string \"@Interface\\AddOns\\Blizzard_GarrisonUI\\Blizzard_GarrisonLandingPage.lua\"]:213: in function <...Blizzard_GarrisonUI\\Blizzard_GarrisonLandingPage.lua:205>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2740: in function `SetUIPanel'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2585: in function `ShowUIPanel'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2453: in function <Interface\\FrameXML\\UIParent.lua:2449>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:3307: in function <Interface\\FrameXML\\UIParent.lua:3290>\n[string \"=[C]\"]: in function `ShowUIPanel'\n[string \"@Interface\\FrameXML\\GarrisonBaseUtils.lua\"]:286: in function `ShowGarrisonLandingPage'\n[string \"@Interface\\AddOns\\miirGui\\onDemand/Garrison_Missions.lua\"]:286: in function <...erface\\AddOns\\miirGui\\onDemand/Garrison_Missions.lua:280>",
			["session"] = 512,
			["counter"] = 1,
		}, -- [2]
	},
}
