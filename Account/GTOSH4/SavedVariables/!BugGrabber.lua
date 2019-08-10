
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 1173,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'AAP-Core' tried to call the protected function 'EditMacro()'.",
			["time"] = "2019/08/04 14:28:13",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `EditMacro'\nInterface\\AddOns\\AAP-Core\\QuestHandler.lua:2564: in function `MacroUpdater'\nInterface\\AddOns\\AAP-Core\\QuestHandler.lua:965: in function <Interface\\AddOns\\AAP-Core\\QuestHandler.lua:658>\nInterface\\AddOns\\AAP-Core\\QuestHandler.lua:4902: in function <Interface\\AddOns\\AAP-Core\\QuestHandler.lua:4826>",
			["session"] = 1152,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MythicPlusTimer' tried to call the protected function 'ObjectiveTrackerFrame:SetParent()'.",
			["time"] = "2019/08/04 16:53:32",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetParent'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:606: in function `show_default_tracker'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:415: in function `callback'\nInterface\\AddOns\\MythicPlusTimer\\addon.lua:100: in function <Interface\\AddOns\\MythicPlusTimer\\addon.lua:94>",
			["session"] = 1163,
			["counter"] = 2,
		}, -- [2]
		{
			["message"] = "Action[SetPoint] failed because[SetPoint would result in anchor family connection]: attempted from: StaticPopup1:SetPoint.",
			["time"] = "2019/08/04 00:18:53",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: ?\n[C]: in function `SetPoint'\nInterface\\FrameXML\\StaticPopup.lua:5175: in function `StaticPopup_SetUpAnchor'\nInterface\\FrameXML\\StaticPopup.lua:5165: in function <Interface\\FrameXML\\StaticPopup.lua:5163>\n[C]: ?\n[C]: in function `StaticPopup_SetUpPosition'\nInterface\\FrameXML\\StaticPopup.lua:4798: in function <Interface\\FrameXML\\StaticPopup.lua:4391>\n[C]: ?\n[C]: in function `StaticPopup_Show'\nInterface\\FrameXML\\UIParent.lua:1218: in function <Interface\\FrameXML\\UIParent.lua:1108>",
			["session"] = 1164,
			["counter"] = 3,
		}, -- [3]
		{
			["message"] = "[string \"--[[ Error in 'Mrrl's trade game' ]] return...\"]:5: bad argument #3 to 'format' (string expected, got nil)",
			["time"] = "2019/08/10 01:38:04",
			["stack"] = "[string \"--[[ Error in 'Mrrl's trade game' ]] return...\"]:5: in function <[string \"--[[ Error in 'Mrrl's trade game' ]] return...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\AuraEnvironment.lua:174: in function `ActivateAuraEnvironment'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:686: in function `ScanWithFakeEvent'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:928: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1939: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1798: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1685>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1832: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1875: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1873>",
			["session"] = 1172,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "[string \"--[[ Error in 'Mrrl's trade game' ]] return...\"]:4: attempt to call field 'GetNPCID' (a nil value)",
			["time"] = "2019/08/10 01:42:01",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:554: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:519>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:672: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:632: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:721: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:712>",
			["session"] = 1172,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "[string \"--[[ Error in 'Mrrl's trade game' ]] return...\"]:2: attempt to call field 'isMrrlActive' (a nil value)",
			["time"] = "2019/08/10 01:42:01",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\RegionTypes\\Text.lua:172: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:4490: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4484>",
			["session"] = 1172,
			["counter"] = 191,
		}, -- [6]
		{
			["message"] = "Interface\\AddOns\\MethodDungeonTools\\Transmission.lua:223: attempt to concatenate local 'name' (a nil value)",
			["time"] = "2019/08/10 02:02:46",
			["stack"] = "Interface\\AddOns\\MethodDungeonTools\\Transmission.lua:223: in function `?'\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...Ons\\ElvUI\\Libraries\\Ace3\\AceComm-3.0\\AceComm-3.0-12.lua:264: in function <...Ons\\ElvUI\\Libraries\\Ace3\\AceComm-3.0\\AceComm-3.0.lua:246>",
			["session"] = 1173,
			["counter"] = 1,
		}, -- [7]
	},
}
