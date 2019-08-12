
BugGrabberDB = {
	["session"] = 1180,
	["lastSanitation"] = 3,
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
			["message"] = "Action[SetPoint] failed because[SetPoint would result in anchor family connection]: attempted from: StaticPopup1:SetPoint.",
			["time"] = "2019/08/04 00:18:53",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: ?\n[C]: in function `SetPoint'\nInterface\\FrameXML\\StaticPopup.lua:5175: in function `StaticPopup_SetUpAnchor'\nInterface\\FrameXML\\StaticPopup.lua:5165: in function <Interface\\FrameXML\\StaticPopup.lua:5163>\n[C]: ?\n[C]: in function `StaticPopup_SetUpPosition'\nInterface\\FrameXML\\StaticPopup.lua:4798: in function <Interface\\FrameXML\\StaticPopup.lua:4391>\n[C]: ?\n[C]: in function `StaticPopup_Show'\nInterface\\FrameXML\\UIParent.lua:1218: in function <Interface\\FrameXML\\UIParent.lua:1108>",
			["session"] = 1164,
			["counter"] = 3,
		}, -- [2]
		{
			["message"] = "[string \"--[[ Error in 'Mrrl's trade game' ]] return...\"]:5: bad argument #3 to 'format' (string expected, got nil)",
			["time"] = "2019/08/10 01:38:04",
			["stack"] = "[string \"--[[ Error in 'Mrrl's trade game' ]] return...\"]:5: in function <[string \"--[[ Error in 'Mrrl's trade game' ]] return...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\AuraEnvironment.lua:174: in function `ActivateAuraEnvironment'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:686: in function `ScanWithFakeEvent'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:928: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1939: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1798: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1685>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1832: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1875: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1873>",
			["session"] = 1172,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[string \"--[[ Error in 'Mrrl's trade game' ]] return...\"]:4: attempt to call field 'GetNPCID' (a nil value)",
			["time"] = "2019/08/10 01:42:01",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:554: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:519>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:672: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:632: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:721: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:712>",
			["session"] = 1172,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "[string \"--[[ Error in 'Mrrl's trade game' ]] return...\"]:2: attempt to call field 'isMrrlActive' (a nil value)",
			["time"] = "2019/08/10 01:42:01",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\RegionTypes\\Text.lua:172: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:4490: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4484>",
			["session"] = 1172,
			["counter"] = 191,
		}, -- [5]
		{
			["message"] = "Interface\\AddOns\\MethodDungeonTools\\Transmission.lua:223: attempt to concatenate local 'name' (a nil value)",
			["time"] = "2019/08/10 02:02:46",
			["stack"] = "Interface\\AddOns\\MethodDungeonTools\\Transmission.lua:223: in function `?'\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...Ons\\ElvUI\\Libraries\\Ace3\\AceComm-3.0\\AceComm-3.0-12.lua:264: in function <...Ons\\ElvUI\\Libraries\\Ace3\\AceComm-3.0\\AceComm-3.0.lua:246>",
			["session"] = 1173,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MythicPlusTimer' tried to call the protected function 'ObjectiveTrackerFrame:SetParent()'.",
			["time"] = "2019/08/04 16:53:32",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetParent'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:606: in function `show_default_tracker'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:415: in function `callback'\nInterface\\AddOns\\MythicPlusTimer\\addon.lua:100: in function <Interface\\AddOns\\MythicPlusTimer\\addon.lua:94>",
			["session"] = 1174,
			["counter"] = 3,
		}, -- [7]
		{
			["message"] = "[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:142: script ran too long",
			["time"] = "2019/08/11 18:50:34",
			["stack"] = "[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:143: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:137>\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:143: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:137>\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:143: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:137>\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:143: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:137>\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:143: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:137>\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:143: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:137>\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:143: in function `FindButtonsForUnit'\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:185: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:136>\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:199: in function `GetFrame'\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:224: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:213>\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:273: in function `updateFrames'\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:80: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:1>\n...\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:939: in function `sendAddEvent'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:1233: in function `watch'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:1516: in function `addOrUpdateMember'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:1898: in function `?'\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...e\\AddOns\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:607: in function `eventhandler'\n...e\\AddOns\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:120: in function <...e\\AddOns\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1.lua:118>",
			["session"] = 1178,
			["counter"] = 2,
		}, -- [8]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:526: script ran too long",
			["time"] = "2019/08/11 18:50:34",
			["stack"] = "Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:672: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:632: in function `ScanEvents'\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:1: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:3662: in function `PerformActions'\n...ace\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:597: in function `Expand'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:4805: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4755>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:4861: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4847>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:4966: in function `UpdatedTriggerState'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:677: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:632: in function `ScanEvents'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:939: in function `sendAddEvent'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:1233: in function `watch'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:1516: in function `addOrUpdateMember'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:1898: in function `?'\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...e\\AddOns\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:607: in function `eventhandler'\n...e\\AddOns\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:120: in function <...e\\AddOns\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1.lua:118>",
			["session"] = 1178,
			["counter"] = 2,
		}, -- [9]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:3663: script ran too long",
			["time"] = "2019/08/11 18:40:16",
			["stack"] = "Interface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:3663: in function `PerformActions'\n...ace\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:597: in function `Expand'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:4805: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4755>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:4861: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4847>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:4966: in function `UpdatedTriggerState'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:677: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:632: in function `ScanEvents'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:939: in function `sendAddEvent'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:1233: in function `watch'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:1520: in function `addOrUpdateMember'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:1898: in function `?'\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...e\\AddOns\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:607: in function `eventhandler'\n...e\\AddOns\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:120: in function <...e\\AddOns\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1.lua:118>",
			["session"] = 1178,
			["counter"] = 6,
		}, -- [10]
		{
			["message"] = "...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:30: script ran too long",
			["time"] = "2019/08/11 18:40:16",
			["locals"] = "handlers = <table> {\n  = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119\n}\nindex = <table> {\n watching = <table> {\n }\n toggleFrontEndRegistration = <function> defined --[[ Error in 'ZenTracker (ZT) Main' ]] return function() --------------------------------------------------------------------------------\n-- CONFIGURATION\n--\n-- The configuration options have moved to the \"Author Options\" tab as of\n-- WeakAuras Version 2.10. \n--\n-- DO NOT EDIT THIS CODE!\n--------------------------------------------------------------------------------\nlocal ZT = aura_env\n\n-- Local versions of commonly used functions\nlocal ipairs = ipairs\nlocal pairs = pairs\nlocal print = print\nlocal select = select\nlocal tonumber = tonumber\n\nlocal IsInGroup = IsInGroup\nlocal IsInRaid = IsInRaid\nlocal UnitGUID = UnitGUID\n\n-- Turns on/off debugging messages\nlocal DEBUG_EVENT = { isEnabled = false, color = \"FF2281F4\" }\nlocal DEBUG_MESSAGE = { isEnabled = false, color = \"FF11D825\" }\nlocal DEBUG_TIMER = { isEnabled = false, color = \"FFF96D27\" }\nlocal DEBUG_TRACKING = { isEnabled = false, color = \"FFA53BF7\" }\n\n-- Turns on/off testing of combatlog-based tracking for  timeOfNextCDUpdate = <table> {\n }\n inspectLib = <table> {\n }\n handleCDUpdate = <function> defined --[[ Error in 'ZenTracker (ZT) Main' ]] return function() --------------------------------------------------------------------------------\n-- CONFIGURATION\n--\n-- The configuration options have moved to the \"Author Options\" tab as of\n-- WeakAuras Version 2.10. \n--\n-- DO NOT EDIT THIS CODE!\n--------------------------------------------------------------------------------\nlocal ZT = aura_env\n\n-- Local versions of commonly used functions\nlocal ipairs = ipairs\nlocal pairs = pairs\nlocal print = print\nlocal select = select\nlocal tonumber = tonumber\n\nlocal IsInGroup = IsInGroup\nlocal IsInRaid = IsInRaid\nlocal UnitGUID = UnitGUID\n\n-- Turns on/off debugging messages\nlocal DEBUG_EVENT = { isEnabled = false, color = \"FF2281F4\" }\nlocal DEBUG_MESSAGE = { isEnabled = false, color = \"FF11D825\" }\nlocal DEBUG_TIMER = { isEnabled = false, color = \"FFF96D27\" }\nlocal DEBUG_TRACKING = { isEnabled = false, color = \"FFA53BF7\" }\n\n-- Turns on/off testing of combatlog-based tracking for the player\n- registerFrontEnd = <function> defined --[[ Error in 'ZenTracker (ZT) Main' ]] return function() --------------------------------------------------------------------------------\n-- CONFIGURATION\n--\n-- The configuration options have moved to the \"Author Options\" tab as of\n-- WeakAuras Version 2.10. \n--\n-- DO NOT EDIT THIS CODE!\n--------------------------------------------------------------------------------\nlocal ZT = aura_env\n\n-- Local versions of commonly used functions\nlocal ipairs = ipairs\nlocal pairs = pairs\nlocal print = print\nlocal select = select\nlocal tonumber = tonumber\n\nlocal IsInGroup = IsInGroup\nlocal IsInRaid = IsInRaid\nlocal UnitGUID = UnitGUID\n\n-- Turns on/off debugging messages\nlocal DEBUG_EVENT = { isEnabled = false, color = \"FF2281F4\" }\nlocal DEBUG_MESSAGE = { isEnabled = false, color = \"FF11D825\" }\nlocal DEBUG_TIMER = { isEnabled = false, color = \"FFF96D27\" }\nlocal DEBUG_TRACKING = { isEnabled = false, color = \"FFA53BF7\" }\n\n-- Turns on/off testing of combatlog-based tracking for the player handleMessage = <function> defined --[[ Error in 'ZenTracker (ZT) Main' ]] return function() --------------------------------------------------------------------------------\n-- CONFIGURATION\n--\n-- The configuration options have moved to the \"Author Options\" tab as of\n-- WeakAuras Version 2.10. \n--\n-- DO NOT EDIT THIS CODE!\n--------------------------------------------------------------------------------\nlocal ZT = aura_env\n\n-- Local versions of commonly used functions\nlocal ipairs = ipairs\nlocal pairs = pairs\nlocal print = print\nlocal select = select\nlocal tonumber = tonumber\n\nlocal IsInGroup = IsInGroup\nlocal IsInRaid = IsInRaid\nlocal UnitGUID = UnitGUID\n\n-- Turns on/off debugging messages\nlocal DEBUG_EVENT = { isEnabled = false, color = \"FF2281F4\" }\nlocal DEBUG_MESSAGE = {",
			["stack"] = "...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:30: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...e\\AddOns\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:607: in function `eventhandler'\n...e\\AddOns\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:120: in function <...e\\AddOns\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1.lua:118>",
			["session"] = 1178,
			["counter"] = 6,
		}, -- [11]
		{
			["message"] = "Interface\\AddOns\\Hekili\\Options-Options.lua:7490: script ran too long",
			["time"] = "2019/08/11 19:12:47",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\Hekili\\Options-Options.lua:7490: in function `RefreshOptions'\nInterface\\AddOns\\Hekili\\Classes.lua:4630: in function `SpecializationChanged'\nInterface\\AddOns\\Hekili\\Events.lua:232: in function `handler'\nInterface\\AddOns\\Hekili\\Events.lua:60: in function <Interface\\AddOns\\Hekili\\Events.lua:54>",
			["session"] = 1178,
			["counter"] = 2,
		}, -- [12]
	},
}
