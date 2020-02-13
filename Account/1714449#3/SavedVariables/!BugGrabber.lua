
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 1445,
	["errors"] = {
		{
			["message"] = "...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:33: Attempt to register unknown event \"AUCTION_OWNED_LIST_UPDATE\"",
			["time"] = "2020/02/10 19:48:45",
			["locals"] = "(*temporary) = AceEvent30Frame {\n 0 = <userdata>\n}\n(*temporary) = \"AUCTION_OWNED_LIST_UPDATE\"\n",
			["stack"] = "[string \"=[C]\"]: in function `RegisterEvent'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:33: in function `OnUsed'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:76: in function `Fire'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1428,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:33: Attempt to register unknown event \"AUCTION_BIDDER_LIST_UPDATE\"",
			["time"] = "2020/02/10 19:48:45",
			["locals"] = "(*temporary) = AceEvent30Frame {\n 0 = <userdata>\n}\n(*temporary) = \"AUCTION_BIDDER_LIST_UPDATE\"\n",
			["stack"] = "[string \"=[C]\"]: in function `RegisterEvent'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:33: in function `OnUsed'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:76: in function `Fire'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1428,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:37: Attempt to unregister unknown event \"AUCTION_OWNED_LIST_UPDATE\"",
			["time"] = "2020/02/10 19:49:10",
			["stack"] = "[string \"=[C]\"]: in function `UnregisterEvent'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:37: in function `OnUnused'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:164: in function `UnregisterEvent'\n[string \"@Interface\\AddOns\\DataStore_Auctions\\DataStore_Auctions-r51.lua\"]:233: in function `?'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1428,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\AAP-Core\\QuestList.lua:52: Action[SetPoint] failed because[SetPoint would result in anchor family connection]: attempted from: AAP_PartyListFrame1:SetPoint.",
			["time"] = "2020/02/10 21:26:12",
			["locals"] = "(*temporary) = AAP_PartyListFrame1 {\n 0 = <userdata>\n isMoving = false\n}\n(*temporary) = \"TOPLEFT\"\n(*temporary) = UIParent {\n variablesLoaded = true\n latestAppearanceID = 41036\n PixelSnapDisabled = true\n firstTimeLoaded = 1\n 0 = <userdata>\n}\n(*temporary) = \"TOPLEFT\"\n(*temporary) = 1258.364624\n(*temporary) = -337.234497\n",
			["stack"] = "[string \"=[C]\"]: in function `SetPoint'\n[string \"@Interface\\AddOns\\AAP-Core\\QuestList.lua\"]:52: in function <Interface\\AddOns\\AAP-Core\\QuestList.lua:46>",
			["session"] = 1428,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WeakAuras' tried to call the protected function 'WorldFrame:SetPoint()'.",
			["time"] = "2020/02/11 02:01:09",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetPoint'\n[string \"--[==[ Error in 'Viewport' ]==] return function()\nWorldFrame:SetPoint(\"BOTTOMRIGHT\", 0, aura_env.config.offset)\nend\"]:2: in function <[string \"--[==[ Error in 'Viewport' ]==] return func...\"]:1>\n[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:548: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:512>\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:665: in function `ScanEventsInternal'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:626: in function `ScanEvents'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:759: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:750>",
			["session"] = 1432,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'AAP-Core' tried to call the protected function 'CLQListFddd:SetScale()'.",
			["time"] = "2020/02/11 02:01:10",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetScale'\n[string \"@Interface\\AddOns\\AAP-Core\\OptionsPanel.lua\"]:285: in function <Interface\\AddOns\\AAP-Core\\OptionsPanel.lua:282>\n[string \"=[C]\"]: in function `SetValue'\n[string \"@Interface\\AddOns\\AAP-Core\\OptionsPanel.lua\"]:293: in function `LoadOptionsFrame'\n[string \"@Interface\\AddOns\\AAP-Core\\Core.lua\"]:2138: in function <Interface\\AddOns\\AAP-Core\\Core.lua:2136>",
			["session"] = 1432,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "...\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Talents.lua:131: attempt to index field 'knownSelection' (a nil value)",
			["time"] = "2020/02/10 19:55:29",
			["locals"] = "self = Talents {\n 0 = <userdata>\n tier2 = TalentsTalentRow2 {\n }\n tier3 = TalentsTalentRow3 {\n }\n tier7 = TalentsTalentRow7 {\n }\n talentGroup = 1\n tier5 = TalentsTalentRow5 {\n }\n tier1 = TalentsTalentRow1 {\n }\n inspect = true\n tier4 = TalentsTalentRow4 {\n }\n tier6 = TalentsTalentRow6 {\n }\n}\n(for index) = 1\n(for limit) = 7\n(for step) = 1\ni = 1\n(for index) = 1\n(for limit) = 3\n(for step) = 1\nj = 1\nTalent = TalentsTalentRow1Talent1 {\n 0 = <userdata>\n border = TalentsTalentRow1Talent1Border {\n }\n shouldGlow = false\n Slot = TalentsTalentRow1Talent1Slot {\n }\n column = 1\n tier = 1\n icon = TalentsTalentRow1Talent1IconTexture {\n }\n grantedByAura = false\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index field 'knownSelection' (a nil value)\"\nAS = <table> {\n AC = <table> {\n }\n SkinAchievement = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Achievement.lua:16\n Blizzard_Channels = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Channels.lua:12\n Blizzard_AbilityButton = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\ExtraButtons.lua:4\n ArrowRotation = <table> {\n }\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface\\AddOns\\ACU\\Libs\\AceTimer-3.0\\AceTimer-3.0.lua:147\n FindFrameBySizeChild = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1151\n Blizzard_ItemSocketingUI = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Character.lua:440\n GradientHighlight = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:295\n Blank = \"Interface\\AddOns\\ElvUI\\Media\\Textures\\White8x8.tga\"\n LCG = <table> {\n }\n ES = <table> {\n }\n SkinIconButton = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:719\n ScheduleTimer = <function> defined @Interface\\AddOns\\ACU\\Libs\\AceTimer-3.0\\AceTimer-3.0.lua:94\n ADDON_LOADED = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Core.lua:163\n SkinErrors = <table> {\n }\n BuildProfile = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Options.lua:970\n data = <table> {\n }\n UIScale = 0.640000\n db = <table> {\n }\n SkinBackdropFrame = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1000\n AdjustForTheme = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1061\n SetEnabledState = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:424\n Hook = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceHook-3.0\\AceHook-3.0.lua:274\n ChangeLog = <table> {\n }\n Font = \"Fonts\\FRIZQT__.TTF\"\n events = <table> {\n }\n Noop = <function> defined @Interface\\AddOns\\AddOnSkins\\Init.lua:41\n SetBackdropColor = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:104\n SkinDoubleStateIconRow = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1285\n Blizzard_Mail = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Mail.lua:4\n SkinWidgetContainer = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1315\n Media = <table> {\n }\n NewModule = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:235\n SkinTooltip = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1031\n FindFrameByPoint = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1186\n EnumObjects = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1099\n Blizzard_Calendar = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Calendar.lua:13\n GetChatWindowInfo = <function> defined @Interface\\AddOns\\AddOnSkins\\Embed\\Core.lua:19\n EmbedEnterCombat = <function> defined @Interface\\AddOns\\AddOnSkins\\Embed\\Core.lua:152\n GetName = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:279\n GetOptions = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Options.lua:1095\n Blizzard_DebugTools = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\DebugTools.lua:4\n name = \"AddOnSkins\"\n SkinIconTextAndCurrenciesWidget = <function> defined @Interface\\AddOns\\AddOnSk",
			["stack"] = "[string \"@Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Talents.lua\"]:131: in function <...\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Talents.lua:127>\n[string \"=[C]\"]: in function `TalentFrame_Update'\n[string \"@Interface\\AddOns\\Blizzard_InspectUI\\InspectTalentFrame.lua\"]:77: in function `InspectTalentFrameTalents_OnShow'\n[string \"@Interface\\AddOns\\Blizzard_InspectUI\\InspectTalentFrame.lua\"]:13: in function <...ace\\AddOns\\Blizzard_InspectUI\\InspectTalentFrame.lua:7>",
			["session"] = 1443,
			["counter"] = 5,
		}, -- [7]
	},
}
