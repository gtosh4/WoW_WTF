
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 2157,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'MultiBarRight:SetShown()'.",
			["time"] = "2020/03/17 16:36:37",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetShown'\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:36: in function <Interface\\FrameXML\\MultiActionBars.lua:34>\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:70: in function `MultiActionBar_Update'\n[string \"@Interface\\FrameXML\\ActionBarController.lua\"]:169: in function `ValidateActionBarTransition'\n[string \"@Interface\\FrameXML\\ActionBarController.lua\"]:137: in function `ActionBarController_UpdateAll'\n[string \"@Interface\\FrameXML\\ZoneAbility.lua\"]:72: in function <Interface\\FrameXML\\ZoneAbility.lua:32>",
			["session"] = 2147,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\Details\\classes\\classe_custom.lua:129: attempt to call method 'GetName' (a nil value)",
			["time"] = "2020/03/17 19:08:33",
			["locals"] = "self = <table> {\n CreateCustomActorContainer = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:780\n UpdateBar = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:543\n GetAuthor = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1036\n GetDesc = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1039\n BuildActorList = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:326\n _TargetActorsProcessed = <table> {\n }\n healdone = <function> defined @Interface\\AddOns\\Details\\classes\\custom_healing_done.lua:204\n Sort = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:958\n healdoneTooltip = <function> defined @Interface\\AddOns\\Details\\classes\\custom_healing_done.lua:106\n UpdateHealingDoneBracket = <function> defined @Interface\\AddOns\\Details\\classes\\custom_healing_done.lua:46\n damagedone = <function> defined @Interface\\AddOns\\Details\\classes\\custom_damage_done.lua:209\n GetCombatContainerIndex = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:115\n HasActor = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:828\n SetScriptToolip = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1094\n GetScriptPercent = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1063\n AddValue = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:804\n damagedoneTooltip = <function> defined @Interface\\AddOns\\Details\\classes\\custom_damage_done.lua:105\n SetScript = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1091\n GetSpellId = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1051\n GetName = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1030\n SetSource = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1082\n RefreshWindow = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:119\n Remap = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:963\n SetName = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1067\n GetTarget = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1048\n UpdateSelectedToKFunction = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1178\n CreateCustomDisplayObject = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:942\n GetIcon = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1033\n RefreshBarra2 = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:626\n SetSpellId = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1088\n IsSpellTarget = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1102\n UpdateClass = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:824\n GetSource = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1045\n GetScriptToolip = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1057\n UpdateDamageDoneBracket = <function> defined @Interface\\AddOns\\Details\\classes\\custom_damage_done.lua:46\n RemoveCustom = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1106\n SetTarget = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1085\n SetAttribute = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1079\n _InstanceActorContainer = <table> {\n }\n RefreshBarra = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:697\n GetScriptTotal = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1060\n mt = <table> {\n }\n SetAuthor = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1073\n WipeCustomActorContainer = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:794\n SetIcon = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom.lua:1070\n SetDesc = <function> defined @Interface\\AddOns\\Details\\classes\\classe_custom",
			["stack"] = "[string \"@Interface\\AddOns\\Details\\classes\\classe_custom.lua\"]:129: in function <Interface\\AddOns\\Details\\classes\\classe_custom.lua:119>\n[string \"=(tail call)\"]: ?\n[string \"@Interface\\AddOns\\Details\\core\\control.lua\"]:1781: in function `AtualizaGumpPrincipal'\n[string \"@Interface\\AddOns\\Details\\core\\util.lua\"]:460: in function `UpdateToKFunctions'\n[string \"@Interface\\AddOns\\Details\\core\\util.lua\"]:451: in function `SelectNumericalSystem'\n[string \"@Interface\\AddOns\\Details\\functions\\profiles.lua\"]:550: in function `ApplyProfile'\n[string \"@Interface\\AddOns\\Details\\functions\\loaddata.lua\"]:414: in function `LoadConfig'\n[string \"@Interface\\AddOns\\Details\\core\\parser.lua\"]:4918: in function <Interface\\AddOns\\Details\\core\\parser.lua:4883>\n[string \"@Interface\\AddOns\\Details\\core\\parser.lua\"]:4927: in function <Interface\\AddOns\\Details\\core\\parser.lua:4924>\n[string \"=(tail call)\"]: ?",
			["session"] = 2150,
			["counter"] = 2,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\Details_EncounterDetails\\frames.lua:2022: attempt to call method 'GetActorList' (a nil value)",
			["time"] = "2020/03/17 19:08:46",
			["stack"] = "[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\Details\\Libs\\DF\\fw.lua\"]:2985: in function `Dispatch'\n[string \"@Interface\\AddOns\\Details\\Libs\\DF\\dropdown.lua\"]:377: in function `Select'\n[string \"@Interface\\AddOns\\Details\\Libs\\DF\\dropdown.lua\"]:1053: in function `NewDropDown'\n[string \"@Interface\\AddOns\\Details_EncounterDetails\\frames.lua\"]:2035: in function `EncounterDetailsTempWindow'\n[string \"@Interface\\AddOns\\Details_EncounterDetails\\Details_EncounterDetails.lua\"]:631: in function <...etails_EncounterDetails\\Details_EncounterDetails.lua:98>\n[string \"@Interface\\AddOns\\Details_EncounterDetails\\Details_EncounterDetails.lua\"]:2224: in function `OnEvent'\n[string \"@Interface\\AddOns\\Details\\core\\plugins.lua\"]:293: in function <Interface\\AddOns\\Details\\core\\plugins.lua:290>",
			["session"] = 2150,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\Details\\Libs\\DF\\dropdown.lua:379: attempt to get length of local 'menu' (a nil value)",
			["time"] = "2020/03/17 19:08:46",
			["locals"] = "self = <table> {\n menus = <table> {\n }\n label = Details_EncounterDetailsEnemyActorSpellsDropdown_Text {\n }\n scroll = <unnamed> {\n }\n func = <function> defined @Interface\\AddOns\\Details_EncounterDetails\\frames.lua:2017\n realsizeW = 150\n statusbar = Details_EncounterDetailsEnemyActorSpellsDropdown_StatusBarTexture {\n }\n opened = false\n __it = <table> {\n }\n icon = Details_EncounterDetailsEnemyActorSpellsDropdown_IconTexture {\n }\n container = Details_EncounterDetails {\n }\n type = \"dropdown\"\n realsizeH = 150\n dropdown = Details_EncounterDetailsEnemyActorSpellsDropdown {\n }\n HookList = <table> {\n }\n ShowScroll = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\dropdown.lua:1023\n HideScroll = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\dropdown.lua:1018\n dframework = true\n widget = Details_EncounterDetailsEnemyActorSpellsDropdown {\n }\n}\noptionName = 1\nbyOptionNumber = nil\nmenu = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <table> {\n menus = <table> {\n }\n label = Details_EncounterDetailsEnemyActorSpellsDropdown_Text {\n }\n scroll = <unnamed> {\n }\n func = <function> defined @Interface\\AddOns\\Details_EncounterDetails\\frames.lua:2017\n realsizeW = 150\n statusbar = Details_EncounterDetailsEnemyActorSpellsDropdown_StatusBarTexture {\n }\n opened = false\n __it = <table> {\n }\n icon = Details_EncounterDetailsEnemyActorSpellsDropdown_IconTexture {\n }\n container = Details_EncounterDetails {\n }\n type = \"dropdown\"\n realsizeH = 150\n dropdown = Details_EncounterDetailsEnemyActorSpellsDropdown {\n }\n HookList = <table> {\n }\n ShowScroll = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\dropdown.lua:1023\n HideScroll = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\dropdown.lua:1018\n dframework = true\n widget = Details_EncounterDetailsEnemyActorSpellsDropdown {\n }\n}\n(*temporary) = <table> {\n CooldownToClass = <table> {\n }\n ClassCache = <table> {\n }\n SavePositionOnScreen = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\panel.lua:2035\n CreateTabContainer = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\panel.lua:3796\n IsUnitTapDenied = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\fw.lua:3494\n CancelTimer = <function> defined @Interface\\AddOns\\ACU\\Libs\\AceTimer-3.0\\AceTimer-3.0.lua:147\n NewLabel = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\label.lua:258\n BuildStatusbarAuthorInfo = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\panel.lua:6832\n PanelCounter = 222112\n IconPick = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\panel.lua:1403\n Mixin = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\fw.lua:2058\n LabelNameCounter = 222142\n GetCurrentSpec = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\fw.lua:2930\n alias_text_colors = <table> {\n }\n HidaAllBarrasInfo = <function> defined @Interface\\AddOns\\Details\\gumps\\janela_info.lua:420\n UnitFrameFunctions = <table> {\n }\n ScheduleTimer = <function> defined @Interface\\AddOns\\ACU\\Libs\\AceTimer-3.0\\AceTimer-3.0.lua:94\n CreateCastBar = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\panel.lua:8405\n RegisterScriptComm = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\fw.lua:3436\n ShowPanicWarning = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\panel.lua:1806\n UnitGroupRolesAssigned = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\fw.lua:55\n SetAutoCompleteWithSpells = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\auras.lua:1044\n ShowTutorialAlertFrame = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\fw.lua:1534\n CooldownsExternals = <table> {\n }\n GetSpecializationRole = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\fw.lua:91\n SpecListByClass = <table> {\n }\n FRAMELEVEL_BACKGROUND = 150\n CreateHealthBar = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\panel.lua:7269\n RunHooksForWidget = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\fw.lua:1912\n GetDefaultColorList = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\colors.lua:170\n button_templates = <table> {\n }\n CreateNewDropdownFrame = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\dropdown.lua:1071\n ReskinSlider",
			["stack"] = "[string \"@Interface\\AddOns\\Details\\Libs\\DF\\dropdown.lua\"]:379: in function `Select'\n[string \"@Interface\\AddOns\\Details\\Libs\\DF\\dropdown.lua\"]:1053: in function `NewDropDown'\n[string \"@Interface\\AddOns\\Details_EncounterDetails\\frames.lua\"]:2035: in function `EncounterDetailsTempWindow'\n[string \"@Interface\\AddOns\\Details_EncounterDetails\\Details_EncounterDetails.lua\"]:631: in function <...etails_EncounterDetails\\Details_EncounterDetails.lua:98>\n[string \"@Interface\\AddOns\\Details_EncounterDetails\\Details_EncounterDetails.lua\"]:2224: in function `OnEvent'\n[string \"@Interface\\AddOns\\Details\\core\\plugins.lua\"]:293: in function <Interface\\AddOns\\Details\\core\\plugins.lua:290>",
			["session"] = 2150,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "[string \"--[==[ Error in 'Sanity Bar' ]==] return fu...\"]:40: attempt to index field '?' (a nil value)",
			["time"] = "2020/03/19 19:44:40",
			["stack"] = "[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:519: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:512>\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:665: in function `ScanEventsInternal'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:626: in function `ScanEvents'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:759: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:750>",
			["session"] = 2153,
			["counter"] = 60,
		}, -- [5]
		{
			["message"] = "...\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Talents.lua:131: attempt to index field 'knownSelection' (a nil value)",
			["time"] = "2020/03/20 00:50:22",
			["locals"] = "self = Talents {\n 0 = <userdata>\n tier2 = TalentsTalentRow2 {\n }\n tier3 = TalentsTalentRow3 {\n }\n tier7 = TalentsTalentRow7 {\n }\n talentGroup = 1\n tier5 = TalentsTalentRow5 {\n }\n tier1 = TalentsTalentRow1 {\n }\n inspect = true\n tier4 = TalentsTalentRow4 {\n }\n tier6 = TalentsTalentRow6 {\n }\n}\n(for index) = 1\n(for limit) = 7\n(for step) = 1\ni = 1\n(for index) = 1\n(for limit) = 3\n(for step) = 1\nj = 1\nTalent = TalentsTalentRow1Talent1 {\n 0 = <userdata>\n border = TalentsTalentRow1Talent1Border {\n }\n shouldGlow = false\n Slot = TalentsTalentRow1Talent1Slot {\n }\n column = 1\n tier = 1\n icon = TalentsTalentRow1Talent1IconTexture {\n }\n grantedByAura = false\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index field 'knownSelection' (a nil value)\"\nAS = <table> {\n AC = <table> {\n }\n SkinAchievement = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Achievement.lua:16\n Blizzard_Channels = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Channels.lua:12\n Blizzard_AbilityButton = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\ExtraButtons.lua:4\n ArrowRotation = <table> {\n }\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface\\AddOns\\ACU\\Libs\\AceTimer-3.0\\AceTimer-3.0.lua:147\n FindFrameBySizeChild = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1151\n Blizzard_ItemSocketingUI = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Character.lua:440\n RaiderIO = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\AddOns\\RaiderIO.lua:10\n GradientHighlight = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:295\n Blank = \"Interface\\AddOns\\ElvUI\\Media\\Textures\\White8x8.tga\"\n LCG = <table> {\n }\n ES = <table> {\n }\n SkinIconButton = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:719\n ScheduleTimer = <function> defined @Interface\\AddOns\\ACU\\Libs\\AceTimer-3.0\\AceTimer-3.0.lua:94\n ADDON_LOADED = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Core.lua:163\n SkinErrors = <table> {\n }\n BuildProfile = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Options.lua:970\n data = <table> {\n }\n UIScale = 0.640000\n db = <table> {\n }\n SkinBackdropFrame = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1000\n AdjustForTheme = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1061\n SetEnabledState = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:424\n Hook = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceHook-3.0\\AceHook-3.0.lua:274\n ChangeLog = <table> {\n }\n Font = \"Fonts\\FRIZQT__.TTF\"\n events = <table> {\n }\n Noop = <function> defined @Interface\\AddOns\\AddOnSkins\\Init.lua:41\n SetBackdropColor = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:104\n SkinDoubleStateIconRow = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1285\n Blizzard_Mail = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Mail.lua:4\n SkinWidgetContainer = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1315\n Media = <table> {\n }\n NewModule = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:235\n SkinTooltip = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1031\n FindFrameByPoint = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1186\n EnumObjects = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1099\n Blizzard_Calendar = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Calendar.lua:13\n GetChatWindowInfo = <function> defined @Interface\\AddOns\\AddOnSkins\\Embed\\Core.lua:19\n EmbedEnterCombat = <function> defined @Interface\\AddOns\\AddOnSkins\\Embed\\Core.lua:152\n GetName = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:279\n GetOptions = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Options.lua:1095\n Blizzard_DebugTools = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\DebugTools.lua:4\n name = \"Ad",
			["stack"] = "[string \"@Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Talents.lua\"]:131: in function <...\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Talents.lua:127>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `TalentFrame_Update'\n[string \"@Interface\\AddOns\\Blizzard_InspectUI\\InspectTalentFrame.lua\"]:77: in function `InspectTalentFrameTalents_OnShow'\n[string \"@Interface\\AddOns\\Blizzard_InspectUI\\InspectTalentFrame.lua\"]:13: in function <...ace\\AddOns\\Blizzard_InspectUI\\InspectTalentFrame.lua:7>",
			["session"] = 2156,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WeakAuras' tried to call the protected function 'WorldFrame:SetPoint()'.",
			["time"] = "2020/03/12 15:29:43",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetPoint'\n[string \"--[==[ Error in 'Viewport' ]==] return function()\n    local offset = aura_env.config.offset\n    C_Timer.After(1, function()\n            WorldFrame:SetPoint(\"BOTTOMRIGHT\", 0, offset)\n    end)\nend\"]:4: in function <[string \"--[==[ Error in 'Viewport' ]==] return func...\"]:3>",
			["session"] = 2157,
			["counter"] = 4,
		}, -- [7]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\Modules\\skins\\Skins.lua:454: doesnt exist!",
			["time"] = "2020/03/19 21:00:45",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ElvUI\\Modules\\skins\\Skins.lua\"]:454: in function `HandleDropDownBox'\n[string \"@Interface\\AddOns\\ElvUI\\Modules\\skins\\Blizzard\\Communities-Communities.lua\"]:222: in function <...\\AddOns\\ElvUI\\Modules\\skins\\Blizzard\\Communities.lua:85>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ElvUI\\Modules\\skins\\Skins.lua\"]:1320: in function `CallLoadedAddon'\n[string \"@Interface\\AddOns\\ElvUI\\Modules\\skins\\Skins.lua\"]:1261: in function `?'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>\n[string \"=[C]\"]: in function `LoadAddOn'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:457: in function `UIParentLoadAddOn'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:707: in function <Interface\\FrameXML\\UIParent.lua:706>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `Communities_LoadUI'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:973: in function `ToggleCommunitiesFrame'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:828: in function `ToggleGuildFrame'\n[string \"TOGGLEGUILDTAB\"]:1: in function <[string \"TOGGLEGUILDTAB\"]:1>",
			["session"] = 2157,
			["counter"] = 3,
		}, -- [8]
	},
}
