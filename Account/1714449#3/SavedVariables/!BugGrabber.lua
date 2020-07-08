
BugGrabberDB = {
	["session"] = 1912,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn '!!Warmup' tried to call the protected function 'RaidGroupButton1:Hide()'.",
			["time"] = "2020/07/04 19:28:17",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\Blizzard_RaidUI\\Blizzard_RaidUI.lua\"]:487: in function `RaidGroupFrame_Update'\n[string \"@Interface\\FrameXML\\RaidFrame.lua\"]:124: in function `RaidFrame_Update'\n[string \"@Interface\\FrameXML\\RaidFrame.lua\"]:61: in function `RaidFrame_OnEvent'\n[string \"@Interface\\AddOns\\Blizzard_RaidUI\\Blizzard_RaidUI.lua\"]:168: in function <Interface\\AddOns\\Blizzard_RaidUI\\Blizzard_RaidUI.lua:167>",
			["session"] = 1897,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "...terface\\AddOns\\Details_Streamer\\Details_Streamer.lua:2040: table index is nil",
			["time"] = "2020/07/07 23:25:36",
			["locals"] = "self = <table> {\n __options = 1\n CurrentVersion = \"v1.2\"\n CreateMinimapIcon = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:2045\n __enabled = true\n SetLocked = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:1238\n Enabled = true\n CastFinished = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:835\n OnEvent = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:1889\n RegisterEvent = <function> defined @Interface\\AddOns\\Details\\core\\plugins.lua:274\n OpenOptionsPanel = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:1383\n OnDetailsEvent = <function> defined @Interface\\AddOns\\Details\\core\\plugins.lua:264\n UpdateDpsHpsFrameConfig = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:1314\n battle_lines = <table> {\n }\n CastStart = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:804\n OnDeath = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:1166\n UpdateDpsHpsFrame = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:1364\n battle_content = <table> {\n }\n Frame = Details_Streamer {\n }\n UnregisterEvent = <function> defined @Interface\\AddOns\\Details\\core\\plugins.lua:277\n GetSpellInformation = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:689\n}\n_ = Details_Streamer {\n 0 = <userdata>\n __parent = <table> {\n }\n}\nevent = \"PLAYER_LOGOUT\"\npname = nil\n(*temporary) = <table> {\n Toshmonk - Kil'jaeden = <table> {\n }\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"table index is nil\"\nplayer_name = nil\nCreatePluginFrames = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:60\nStreamOverlay = <table> {\n __options = 1\n CurrentVersion = \"v1.2\"\n CreateMinimapIcon = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:2045\n __enabled = true\n SetLocked = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:1238\n Enabled = true\n CastFinished = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:835\n OnEvent = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:1889\n RegisterEvent = <function> defined @Interface\\AddOns\\Details\\core\\plugins.lua:274\n OpenOptionsPanel = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:1383\n OnDetailsEvent = <function> defined @Interface\\AddOns\\Details\\core\\plugins.lua:264\n UpdateDpsHpsFrameConfig = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:1314\n battle_lines = <table> {\n }\n CastStart = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:804\n OnDeath = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:1166\n UpdateDpsHpsFrame = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:1364\n battle_content = <table> {\n }\n Frame = Details_Streamer {\n }\n UnregisterEvent = <function> defined @Interface\\AddOns\\Details\\core\\plugins.lua:277\n GetSpellInformation = <function> defined @Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua:689\n}\nLoc = <table> {\n STRING_OPTIONS_COMBAT_ALPHA_6 = \"While Inside Instance\"\n STRING_OPTIONS_RT_TITLE = \"Tools for Raiders\"\n STRING_OPTIONS_PERFORMANCE_DUNGEON = \"Dungeon\"\n STRING_OPTIONS_RT_DEATHS_FIRST_DESC = \"Make it only annouce the first X deaths during the encounter.\"\n STRING_FORGE_HEADER_SCHOOL = \"School\"\n STRING_ATTRIBUTE_ENERGY_ALTERNATEPOWER = \"Alternate Power\"\n STRING_OPTIONS_MENU_FONT_SIZE = \"Menus Text Size\"\n STRING_WELCOME_31 = \"|cFFFFFF00Right clicking|r anywhere in the window shows the |cFFFFAA00Bookmark|r panel.\n\n|cFFFFFF00Right click again|r closes the panel or chooses another display if clicked on a icon.\n\n|cFFFFFF00Right click|r on title bar to open the 'All Displays' panel.\n\n|TInterface\\AddOns\\",
			["stack"] = "[string \"@Interface\\AddOns\\Details_Streamer\\Details_Streamer.lua\"]:2040: in function <...terface\\AddOns\\Details_Streamer\\Details_Streamer.lua:1889>\n[string \"=(tail call)\"]: ?",
			["session"] = 1911,
			["counter"] = 13,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn '!!Warmup' tried to call the protected function 'RaidGroup1:Show()'.",
			["time"] = "2020/07/04 00:33:10",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\AddOns\\Blizzard_RaidUI\\Blizzard_RaidUI.lua\"]:243: in function `RaidGroupFrame_Update'\n[string \"@Interface\\FrameXML\\RaidFrame.lua\"]:124: in function `RaidFrame_Update'\n[string \"@Interface\\FrameXML\\RaidFrame.lua\"]:61: in function `RaidFrame_OnEvent'\n[string \"@Interface\\AddOns\\Blizzard_RaidUI\\Blizzard_RaidUI.lua\"]:168: in function <Interface\\AddOns\\Blizzard_RaidUI\\Blizzard_RaidUI.lua:167>",
			["session"] = 1912,
			["counter"] = 2,
		}, -- [3]
		{
			["message"] = "Interface\\FrameXML\\UnitPowerBarAlt.lua:110: attempt to index field 'barInfo' (a nil value)",
			["time"] = "2020/07/08 00:00:15",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\FrameXML\\UnitPowerBarAlt.lua\"]:110: in function `UnitPowerBarAlt_OnUpdate'\n[string \"*:OnUpdate\"]:1: in function <[string \"*:OnUpdate\"]:1>",
			["session"] = 1912,
			["counter"] = 67,
		}, -- [4]
		{
			["message"] = "Interface\\SharedXML\\C_TimerAugment.lua:30: C_Timer.After requires a non-negative duration",
			["time"] = "2020/07/08 00:23:10",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"=[C]\"]: in function `After'\n[string \"@Interface\\SharedXML\\C_TimerAugment.lua\"]:30: in function <Interface\\SharedXML\\C_TimerAugment.lua:11>\n[string \"=(tail call)\"]: ?\n[string \"=(tail call)\"]: ?\n[string \"@Interface\\AddOns\\BigWigs_Plugins\\Bars.lua\"]:2339: in function `?'\n[string \"@Interface\\AddOns\\BigWigs_Core\\Core.lua\"]:59: in function <Interface\\AddOns\\BigWigs_Core\\Core.lua:54>",
			["session"] = 1912,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "Interface\\AddOns\\BigWigs_Plugins\\Bars.lua:1789: attempt to index field 'deletionTimer' (a nil value)",
			["time"] = "2020/07/08 00:23:11",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\BigWigs_Plugins\\Bars.lua\"]:1789: in function `?'\n[string \"@Interface\\AddOns\\BigWigs\\Loader.lua\"]:953: in function `SendMessage'\n[string \"@Interface\\AddOns\\BigWigs_Core\\BossPrototype.lua\"]:323: in function `?'\n[string \"@Interface\\AddOns\\ACU\\Libs\\AceTimer-3.0\\AceTimer-3.0-17.lua\"]:55: in function <...erface\\AddOns\\ACU\\Libs\\AceTimer-3.0\\AceTimer-3.0.lua:50>",
			["session"] = 1912,
			["counter"] = 2,
		}, -- [6]
	},
}
