
BugGrabberDB = {
	["session"] = 1478,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\AAP-Core\\QuestList.lua:52: Action[SetPoint] failed because[SetPoint would result in anchor family connection]: attempted from: AAP_PartyListFrame1:SetPoint.",
			["time"] = "2020/02/15 16:37:00",
			["locals"] = "(*temporary) = AAP_PartyListFrame1 {\n 0 = <userdata>\n isMoving = false\n}\n(*temporary) = \"TOPLEFT\"\n(*temporary) = UIParent {\n variablesLoaded = true\n PixelSnapDisabled = true\n firstTimeLoaded = 1\n 0 = <userdata>\n}\n(*temporary) = \"TOPLEFT\"\n(*temporary) = 1256.351807\n(*temporary) = -335.221924\n",
			["stack"] = "[string \"=[C]\"]: in function `SetPoint'\n[string \"@Interface\\AddOns\\AAP-Core\\QuestList.lua\"]:52: in function <Interface\\AddOns\\AAP-Core\\QuestList.lua:46>",
			["session"] = 1462,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\FrameXML\\ChatFrame.lua:1637: Usage: local setWasEquipped = C_EquipmentSet.UseEquipmentSet(equipmentSetID)",
			["time"] = "2020/02/16 21:10:18",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"=[C]\"]: in function `UseEquipmentSet'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:1637: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4839: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4523: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:3004: in function <Interface\\FrameXML\\ChatFrame.lua:2997>\n[string \"=[C]\"]: in function `RunMacroText'\n[string \"@Interface\\FrameXML\\SecureTemplates.lua\"]:441: in function `handler'\n[string \"@Interface\\FrameXML\\SecureTemplates.lua\"]:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[string \"=[C]\"]: ?\n[string \"@Interface\\FrameXML\\SecureHandlers.lua\"]:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[string \"=[C]\"]: ?\n[string \"@Interface\\FrameXML\\SecureHandlers.lua\"]:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n...\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4523: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:3004: in function <Interface\\FrameXML\\ChatFrame.lua:2997>\n[string \"=[C]\"]: in function `RunMacroText'\n[string \"@Interface\\FrameXML\\SecureTemplates.lua\"]:441: in function `handler'\n[string \"@Interface\\FrameXML\\SecureTemplates.lua\"]:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[string \"=[C]\"]: ?\n[string \"@Interface\\FrameXML\\SecureHandlers.lua\"]:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[string \"=[C]\"]: ?\n[string \"@Interface\\FrameXML\\SecureHandlers.lua\"]:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n[string \"=(tail call)\"]: ?",
			["session"] = 1467,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "...\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Talents.lua:131: attempt to index field 'knownSelection' (a nil value)",
			["time"] = "2020/02/16 20:52:42",
			["locals"] = "self = Talents {\n 0 = <userdata>\n tier2 = TalentsTalentRow2 {\n }\n tier3 = TalentsTalentRow3 {\n }\n tier7 = TalentsTalentRow7 {\n }\n talentGroup = 1\n tier5 = TalentsTalentRow5 {\n }\n tier1 = TalentsTalentRow1 {\n }\n inspect = true\n tier4 = TalentsTalentRow4 {\n }\n tier6 = TalentsTalentRow6 {\n }\n}\n(for index) = 1\n(for limit) = 7\n(for step) = 1\ni = 1\n(for index) = 1\n(for limit) = 3\n(for step) = 1\nj = 1\nTalent = TalentsTalentRow1Talent1 {\n 0 = <userdata>\n border = TalentsTalentRow1Talent1Border {\n }\n shouldGlow = false\n Slot = TalentsTalentRow1Talent1Slot {\n }\n column = 1\n tier = 1\n icon = TalentsTalentRow1Talent1IconTexture {\n }\n grantedByAura = false\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index field 'knownSelection' (a nil value)\"\nAS = <table> {\n AC = <table> {\n }\n SkinAchievement = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Achievement.lua:16\n Blizzard_Channels = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Channels.lua:12\n Blizzard_AbilityButton = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\ExtraButtons.lua:4\n ArrowRotation = <table> {\n }\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface\\AddOns\\ACU\\Libs\\AceTimer-3.0\\AceTimer-3.0.lua:147\n FindFrameBySizeChild = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1151\n Blizzard_ItemSocketingUI = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Character.lua:440\n GradientHighlight = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:295\n Blank = \"Interface\\AddOns\\ElvUI\\Media\\Textures\\White8x8.tga\"\n LCG = <table> {\n }\n ES = <table> {\n }\n SkinIconButton = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:719\n ScheduleTimer = <function> defined @Interface\\AddOns\\ACU\\Libs\\AceTimer-3.0\\AceTimer-3.0.lua:94\n ADDON_LOADED = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Core.lua:163\n SkinErrors = <table> {\n }\n BuildProfile = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Options.lua:970\n data = <table> {\n }\n UIScale = 0.640000\n db = <table> {\n }\n SkinBackdropFrame = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1000\n AdjustForTheme = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1061\n SetEnabledState = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:424\n Hook = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceHook-3.0\\AceHook-3.0.lua:274\n ChangeLog = <table> {\n }\n Font = \"Fonts\\FRIZQT__.TTF\"\n events = <table> {\n }\n Noop = <function> defined @Interface\\AddOns\\AddOnSkins\\Init.lua:41\n SetBackdropColor = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:104\n SkinDoubleStateIconRow = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1285\n Blizzard_Mail = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Mail.lua:4\n SkinWidgetContainer = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1315\n Media = <table> {\n }\n NewModule = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:235\n SkinTooltip = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1031\n FindFrameByPoint = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1186\n EnumObjects = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1099\n Blizzard_Calendar = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Calendar.lua:13\n GetChatWindowInfo = <function> defined @Interface\\AddOns\\AddOnSkins\\Embed\\Core.lua:19\n EmbedEnterCombat = <function> defined @Interface\\AddOns\\AddOnSkins\\Embed\\Core.lua:152\n GetName = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:279\n GetOptions = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Options.lua:1095\n Blizzard_DebugTools = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\DebugTools.lua:4\n name = \"AddOnSkins\"\n SkinIconTextAndCurrenciesWidget = <function> defined @Interface\\AddOns\\AddOnSk",
			["stack"] = "[string \"@Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Talents.lua\"]:131: in function <...\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Talents.lua:127>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `TalentFrame_Update'\n[string \"@Interface\\AddOns\\Blizzard_InspectUI\\InspectTalentFrame.lua\"]:77: in function `InspectTalentFrameTalents_OnShow'\n[string \"@Interface\\AddOns\\Blizzard_InspectUI\\InspectTalentFrame.lua\"]:13: in function <...ace\\AddOns\\Blizzard_InspectUI\\InspectTalentFrame.lua:7>",
			["session"] = 1467,
			["counter"] = 10,
		}, -- [3]
		{
			["message"] = "Usage: local spellID = C_SpecializationInfo.GetSpellsDisplay(specializationID)",
			["time"] = "2020/02/16 23:23:34",
			["locals"] = "(*temporary) = \"Usage: local spellID = C_SpecializationInfo.GetSpellsDisplay(specializationID)\"\n",
			["stack"] = "[string \"=[C]\"]: in function `GetSpellsDisplay'\n[string \"@Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Talents-Talents.lua\"]:158: in function <...\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Talents.lua:142>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `PlayerTalentFrame_UpdateSpecFrame'\n[string \"@Interface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua\"]:417: in function `PlayerTalentFrame_Refresh'\n[string \"@Interface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua\"]:306: in function <...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:299>",
			["session"] = 1468,
			["counter"] = 2,
		}, -- [4]
		{
			["message"] = "Interface\\AddOns\\Hekili\\Options-Options.lua:7702: script ran too long",
			["time"] = "2020/02/16 23:48:48",
			["locals"] = "(*temporary) = <table> {\n GetTTD = <function> defined @Interface\\AddOns\\Hekili\\Targets.lua:650\n DeserializeStyle = <function> defined @Interface\\AddOns\\Hekili\\Options.lua:8562\n modules = <table> {\n }\n EmbedAbilityOptions = <function> defined @Interface\\AddOns\\Hekili\\Options.lua:3421\n Scripts = <table> {\n }\n GetDeathClockByGUID = <function> defined @Interface\\AddOns\\Hekili\\Targets.lua:635\n After = <function> defined @Interface\\AddOns\\Hekili\\Utils.lua:265\n NewSpellInfo = false\n SetDefaultModulePrototype = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:409\n UpdateDisplayVisibility = <function> defined @Interface\\AddOns\\Hekili\\UI.lua:1501\n IsEnabled = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:451\n KeybindInfo = <table> {\n }\n RemoveHold = <function> defined @Interface\\AddOns\\Hekili\\State.lua:5360\n CreateCustomDisplay = <function> defined @Interface\\AddOns\\Hekili\\UI.lua:1450\n ToggleHold = <function> defined @Interface\\AddOns\\Hekili\\State.lua:5385\n SpecializationChanged = <function> defined @Interface\\AddOns\\Hekili\\Classes.lua:4951\n UpdateUseItems = <function> defined @Interface\\AddOns\\Hekili\\Events.lua:526\n SetSpecOption = <function> defined @Interface\\AddOns\\Hekili\\Options.lua:3335\n GetDefaults = <function> defined @Interface\\AddOns\\Hekili\\Options.lua:502\n dumpKeyCache = <table> {\n }\n SetEnabledState = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:424\n GetDisplayByName = <function> defined @Interface\\AddOns\\Hekili\\Core.lua:1050\n Options = <table> {\n }\n ReInitialize = <function> defined @Interface\\AddOns\\Hekili\\Core.lua:167\n npUnits = <table> {\n }\n GetAbilityInfo = <function> defined @Interface\\AddOns\\Hekili\\Classes.lua:4898\n State = <table> {\n }\n OnEnable = <function> defined @Interface\\AddOns\\Hekili\\Core.lua:190\n RestoreDefault = <function> defined @Interface\\AddOns\\Hekili\\Classes.lua:740\n CmdLine = <function> defined @Interface\\AddOns\\Hekili\\Options.lua:8300\n IsDisplayActive = <function> defined @Interface\\AddOns\\Hekili\\UI.lua:1598\n ImporterData = <table> {\n }\n ShowDiagnosticTooltip = <function> defined @Interface\\AddOns\\Hekili\\UI.lua:2170\n Notify = <function> defined @Interface\\AddOns\\Hekili\\Options.lua:9173\n OnInitialize = <function> defined @Interface\\AddOns\\Hekili\\Core.lua:58\n NewModule = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:235\n GetErrors = <function> defined @Interface\\AddOns\\Hekili\\Utils.lua:38\n SetPackShareOption = <function> defined @Interface\\AddOns\\Hekili\\Options.lua:3319\n CreateButton = <function> defined @Interface\\AddOns\\Hekili\\UI.lua:1633\n ReleaseHolds = <function> defined @Interface\\AddOns\\Hekili\\State.lua:5417\n Deserialize = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceSerializer-3.0\\AceSerializer-3.0.lua:246\n GetGreatestTTD = <function> defined @Interface\\AddOns\\Hekili\\Targets.lua:728\n SetSpecPref = <function> defined @Interface\\AddOns\\Hekili\\Options.lua:3374\n GetName = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:279\n GetOptions = <function> defined @Interface\\AddOns\\Hekili\\Options.lua:7396\n GetSpec = <function> defined @Interface\\AddOns\\Hekili\\Classes.lua:5199\n SerializeDisplay = <function> defined @Interface\\AddOns\\Hekili\\Options.lua:8459\n name = \"Hekili\"\n ExpireTTDs = <function> defined @Interface\\AddOns\\Hekili\\Targets.lua:840\n EmbedPackOptions = <function> defined @Interface\\AddOns\\Hekili\\Options.lua:4497\n NewSpecialization = <function> defined @Interface\\AddOns\\Hekili\\Classes.lua:782\n Disable = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:314\n GetOption = <function> defined @Interface\\AddOns\\Hekili\\Options.lua:7705\n auditInterval = 1.007000\n GetNextPrediction = <function> defined @Interface\\AddOns\\Hekili\\Core.lua:979\n currentSpec = <table> {\n }\n Print = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceConsole-3.0\\AceConsole-3.0.lua:54\n currentSpecOpts = <table> {\n }\n ImportSimcAPL = <function> de",
			["stack"] = "[string \"@Interface\\AddOns\\Hekili\\Options-Options.lua\"]:7702: in function `RefreshOptions'\n[string \"@Interface\\AddOns\\Hekili\\Classes.lua\"]:5194: in function `SpecializationChanged'\n[string \"@Interface\\AddOns\\Hekili\\Events.lua\"]:263: in function `handler'\n[string \"@Interface\\AddOns\\Hekili\\Events.lua\"]:60: in function <Interface\\AddOns\\Hekili\\Events.lua:54>",
			["session"] = 1469,
			["counter"] = 2,
		}, -- [5]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Favorites' tried to call the protected function 'RaidFrame:SetParent()'.",
			["time"] = "2020/02/17 15:48:32",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetParent'\n[string \"@Interface\\FrameXML\\RaidFrame.lua\"]:346: in function `ClaimRaidFrame'\n[string \"@Interface\\FrameXML\\FriendsFrame.lua\"]:368: in function `FriendsFrame_Update'\n[string \"@Interface\\FrameXML\\FriendsFrame.lua\"]:323: in function `FriendsFrame_OnShow'\n[string \"@Interface\\FrameXML\\FriendsFrame.lua\"]:448: in function <Interface\\FrameXML\\FriendsFrame.lua:446>",
			["session"] = 1475,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'MultiBarRight:SetShown()'.",
			["time"] = "2020/02/17 15:51:49",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetShown'\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:36: in function <Interface\\FrameXML\\MultiActionBars.lua:34>\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:70: in function `MultiActionBar_Update'\n[string \"@Interface\\FrameXML\\ActionBarController.lua\"]:169: in function `ValidateActionBarTransition'\n[string \"@Interface\\FrameXML\\ActionBarController.lua\"]:137: in function `ActionBarController_UpdateAll'\n[string \"@Interface\\FrameXML\\SpellBookFrame.lua\"]:510: in function `SpellButton_OnEnter'\n[string \"*:OnEnter\"]:1: in function <[string \"*:OnEnter\"]:1>\n[string \"=[C]\"]: ?",
			["session"] = 1475,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'AdiBags' tried to call the protected function 'RunBinding()'.",
			["time"] = "2020/02/17 16:06:50",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `RunBinding'\n[string \"@Interface\\FrameXML\\StackSplitFrame.lua\"]:196: in function <Interface\\FrameXML\\StackSplitFrame.lua:193>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\StackSplitFrame.lua\"]:235: in function `StackSplitOkayButton_OnClick'\n[string \"@Interface\\FrameXML\\StackSplitFrame.lua\"]:165: in function <Interface\\FrameXML\\StackSplitFrame.lua:141>",
			["session"] = 1475,
			["counter"] = 1,
		}, -- [8]
	},
}
