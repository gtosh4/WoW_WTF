
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 1421,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'AdiBags' tried to call the protected function 'RunBinding()'.",
			["time"] = "2020/02/03 02:27:18",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `RunBinding'\n[string \"@Interface\\FrameXML\\StackSplitFrame.lua\"]:196: in function <Interface\\FrameXML\\StackSplitFrame.lua:193>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\StackSplitFrame.lua\"]:235: in function `StackSplitOkayButton_OnClick'\n[string \"@Interface\\FrameXML\\StackSplitFrame.lua\"]:165: in function <Interface\\FrameXML\\StackSplitFrame.lua:141>",
			["session"] = 1389,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\MacroToolkit\\modules\\mainframe.lua:612: Action[SetPoint] failed because[SetPoint would result in anchor family connection]: attempted from: MacroToolkitFrame:SetPoint.",
			["time"] = "2020/02/03 01:52:42",
			["locals"] = "(*temporary) = MacroToolkitFrame {\n 0 = <userdata>\n TitleText = MacroToolkitFrameTitleText {\n }\n portrait = MacroToolkitFramePortrait {\n }\n SetPortraitShown = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:52\n macroBase = 0\n SetBackdropBorderColor = <function> defined =[C]:-1\n Inset = MacroToolkitFrameInset {\n }\n SetPortraitTextureRaw = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:40\n template = \"Transparent\"\n TitleBg = <unnamed> {\n }\n SetTitleMaxLinesAndHeight = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:68\n SetTitleColor = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:56\n nulltexture = BACKGROUND {\n }\n SetTitle = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:60\n PixelSnapDisabled = true\n SetBorder = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:27\n layoutType = \"PortraitFrameTemplate\"\n SetPortraitAtlasRaw = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:44\n SetPortraitToUnit = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:36\n Bg = MacroToolkitFrameBg {\n }\n macroMax = 120\n SetTitleFormatted = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:64\n NineSlice = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n SetPortraitToAsset = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:32\n SetPortraitTexCoord = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:48\n numTabs = 3\n pixelBorders = <table> {\n }\n selectedMacro = 5\n SetBackdropColor = <function> defined =[C]:-1\n selectedTab = 1\n CloseButton = MacroToolkitFrameCloseButton {\n }\n}\n(*temporary) = \"BOTTOMLEFT\"\n(*temporary) = 1964.188599\n(*temporary) = 849.106628\n",
			["stack"] = "[string \"=[C]\"]: in function `SetPoint'\n[string \"@Interface\\AddOns\\MacroToolkit\\modules\\mainframe.lua\"]:612: in function <Interface\\AddOns\\MacroToolkit\\modules\\mainframe.lua:607>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\AddOns\\MacroToolkit\\MacroToolkit-v7.3.0.2.lua\"]:58: in function `ShowMacroFrame'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:2202: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4859: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4523: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4559: in function <Interface\\FrameXML\\ChatFrame.lua:4555>\n[string \"=[C]\"]: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 1389,
			["counter"] = 9,
		}, -- [2]
		{
			["message"] = "[string \"--[==[ Error in 'ToshAssign NP TEST' ]==] r...\"]:10: attempt to index global 'args' (a nil value)",
			["time"] = "2020/02/06 12:14:09",
			["stack"] = "[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:519: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:512>\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:732: in function `ScanWithFakeEvent'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:999: in function `LoadDisplays'\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.16.3.lua\"]:2276: in function `LoadDisplays'\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.16.3.lua\"]:2122: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2008>\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.16.3.lua\"]:2217: in function `ReloadAll'\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.16.3.lua\"]:1864: in function `ScanAll'\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.16.3.lua\"]:1809: in function `Resume'\n[string \"@Interface\\AddOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua\"]:198: in function <...dOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:174>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\WeakAurasOptions\\WeakAurasOptions-2.16.3.lua\"]:1456: in function <...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions.lua:1454>",
			["session"] = 1406,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "...\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Talents.lua:131: attempt to index field 'knownSelection' (a nil value)",
			["time"] = "2020/02/06 20:53:02",
			["locals"] = "self = Talents {\n 0 = <userdata>\n tier2 = TalentsTalentRow2 {\n }\n tier3 = TalentsTalentRow3 {\n }\n tier7 = TalentsTalentRow7 {\n }\n talentGroup = 1\n tier5 = TalentsTalentRow5 {\n }\n tier1 = TalentsTalentRow1 {\n }\n inspect = true\n tier4 = TalentsTalentRow4 {\n }\n tier6 = TalentsTalentRow6 {\n }\n}\n(for index) = 1\n(for limit) = 7\n(for step) = 1\ni = 1\n(for index) = 1\n(for limit) = 3\n(for step) = 1\nj = 1\nTalent = TalentsTalentRow1Talent1 {\n 0 = <userdata>\n border = TalentsTalentRow1Talent1Border {\n }\n shouldGlow = false\n Slot = TalentsTalentRow1Talent1Slot {\n }\n column = 1\n tier = 1\n icon = TalentsTalentRow1Talent1IconTexture {\n }\n grantedByAura = false\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index field 'knownSelection' (a nil value)\"\nAS = <table> {\n AC = <table> {\n }\n SkinAchievement = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Achievement.lua:16\n Blizzard_Channels = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Channels.lua:12\n Blizzard_AbilityButton = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\ExtraButtons.lua:4\n ArrowRotation = <table> {\n }\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface\\AddOns\\ACU\\Libs\\AceTimer-3.0\\AceTimer-3.0.lua:147\n FindFrameBySizeChild = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1151\n Blizzard_ItemSocketingUI = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Character.lua:440\n GradientHighlight = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:295\n Blank = \"Interface\\AddOns\\ElvUI\\Media\\Textures\\White8x8.tga\"\n LCG = <table> {\n }\n ES = <table> {\n }\n SkinIconButton = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:719\n ScheduleTimer = <function> defined @Interface\\AddOns\\ACU\\Libs\\AceTimer-3.0\\AceTimer-3.0.lua:94\n ADDON_LOADED = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Core.lua:163\n SkinErrors = <table> {\n }\n BuildProfile = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Options.lua:970\n data = <table> {\n }\n UIScale = 0.640000\n db = <table> {\n }\n SkinBackdropFrame = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1000\n AdjustForTheme = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1061\n SetEnabledState = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:424\n Hook = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceHook-3.0\\AceHook-3.0.lua:274\n ChangeLog = <table> {\n }\n Font = \"Fonts\\FRIZQT__.TTF\"\n events = <table> {\n }\n Noop = <function> defined @Interface\\AddOns\\AddOnSkins\\Init.lua:41\n SetBackdropColor = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:104\n SkinDoubleStateIconRow = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1285\n Blizzard_Mail = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Mail.lua:4\n SkinWidgetContainer = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1315\n Media = <table> {\n }\n NewModule = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:235\n SkinTooltip = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1031\n FindFrameByPoint = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1186\n EnumObjects = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1099\n Blizzard_Calendar = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Calendar.lua:13\n GetChatWindowInfo = <function> defined @Interface\\AddOns\\AddOnSkins\\Embed\\Core.lua:19\n EmbedEnterCombat = <function> defined @Interface\\AddOns\\AddOnSkins\\Embed\\Core.lua:152\n GetName = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:279\n GetOptions = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Options.lua:1095\n Blizzard_DebugTools = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\DebugTools.lua:4\n name = \"AddOnSkins\"\n SkinIconTextAndCurrenciesWidget = <function> defined @Interface\\AddOns\\AddOnSk",
			["stack"] = "[string \"@Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Talents.lua\"]:131: in function <...\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Retail\\Talents.lua:127>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `TalentFrame_Update'\n[string \"@Interface\\AddOns\\Blizzard_InspectUI\\InspectTalentFrame.lua\"]:77: in function `InspectTalentFrameTalents_OnShow'\n[string \"@Interface\\AddOns\\Blizzard_InspectUI\\InspectTalentFrame.lua\"]:13: in function <...ace\\AddOns\\Blizzard_InspectUI\\InspectTalentFrame.lua:7>",
			["session"] = 1409,
			["counter"] = 3,
		}, -- [4]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'bdCore' tried to call the protected function 'UNKNOWN()'.",
			["time"] = "2020/02/08 19:01:57",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\bdCore\\modules\\interrupted-Interrupted.lua\"]:16: in function <Interface\\AddOns\\bdCore\\modules\\interrupted.lua:8>",
			["session"] = 1411,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'MultiBarRight:SetShown()'.",
			["time"] = "2020/02/08 21:03:35",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetShown'\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:36: in function <Interface\\FrameXML\\MultiActionBars.lua:34>\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:70: in function `MultiActionBar_Update'\n[string \"@Interface\\FrameXML\\ActionBarController.lua\"]:169: in function `ValidateActionBarTransition'\n[string \"@Interface\\FrameXML\\ActionBarController.lua\"]:137: in function `ActionBarController_UpdateAll'\n[string \"@Interface\\FrameXML\\ZoneAbility.lua\"]:72: in function <Interface\\FrameXML\\ZoneAbility.lua:32>",
			["session"] = 1415,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:33: Attempt to register unknown event \"AUCTION_OWNED_LIST_UPDATE\"",
			["time"] = "2020/02/04 12:02:10",
			["locals"] = "(*temporary) = AceEvent30Frame {\n 0 = <userdata>\n}\n(*temporary) = \"AUCTION_OWNED_LIST_UPDATE\"\n",
			["stack"] = "[string \"=[C]\"]: in function `RegisterEvent'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:33: in function `OnUsed'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:76: in function `Fire'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1417,
			["counter"] = 3,
		}, -- [7]
		{
			["message"] = "...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:33: Attempt to register unknown event \"AUCTION_BIDDER_LIST_UPDATE\"",
			["time"] = "2020/02/04 12:02:10",
			["locals"] = "(*temporary) = AceEvent30Frame {\n 0 = <userdata>\n}\n(*temporary) = \"AUCTION_BIDDER_LIST_UPDATE\"\n",
			["stack"] = "[string \"=[C]\"]: in function `RegisterEvent'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:33: in function `OnUsed'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:76: in function `Fire'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1417,
			["counter"] = 2,
		}, -- [8]
		{
			["message"] = "...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:37: Attempt to unregister unknown event \"AUCTION_OWNED_LIST_UPDATE\"",
			["time"] = "2020/02/04 12:02:47",
			["stack"] = "[string \"=[C]\"]: in function `UnregisterEvent'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:37: in function `OnUnused'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:164: in function `UnregisterEvent'\n[string \"@Interface\\AddOns\\DataStore_Auctions\\DataStore_Auctions-r51.lua\"]:233: in function `?'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1417,
			["counter"] = 3,
		}, -- [9]
		{
			["message"] = "Interface\\FrameXML\\SpellBookFrame.lua:1260: IsPassiveSpell(): Invalid spell slot",
			["time"] = "2020/02/09 01:58:50",
			["locals"] = "(*temporary) = 132\n(*temporary) = \"professions\"\n",
			["stack"] = "[string \"=[C]\"]: in function `IsPassiveSpell'\n[string \"@Interface\\FrameXML\\SpellBookFrame.lua\"]:1260: in function `UpdateProfessionButton'\n[string \"@Interface\\FrameXML\\SpellBookFrame.lua\"]:663: in function <Interface\\FrameXML\\SpellBookFrame.lua:661>\n[string \"=[C]\"]: in function `SpellButton_UpdateButton'\n[string \"@Interface\\FrameXML\\SpellBookFrame.lua\"]:407: in function `SpellButton_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 1417,
			["counter"] = 5,
		}, -- [10]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'OPie' tried to call the protected function 'FriendsFrame:Hide()'.",
			["time"] = "2020/02/09 20:50:42",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\OPie\\Libs\\UIDropDownMenu.lua\"]:12: in function <Interface\\AddOns\\OPie\\Libs\\UIDropDownMenu.lua:6>\n[string \"=[C]\"]: in function `Communities_LoadUI'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:973: in function `ToggleCommunitiesFrame'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:828: in function `ToggleGuildFrame'\n[string \"TOGGLEGUILDTAB\"]:1: in function <[string \"TOGGLEGUILDTAB\"]:1>",
			["session"] = 1420,
			["counter"] = 1,
		}, -- [11]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WeakAuras' tried to call the protected function 'WorldFrame:SetPoint()'.",
			["time"] = "2020/02/05 19:51:10",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetPoint'\n[string \"--[==[ Error in 'Viewport' ]==] return function()\nWorldFrame:SetPoint(\"BOTTOMRIGHT\", 0, aura_env.config.offset)\nend\"]:2: in function <[string \"--[==[ Error in 'Viewport' ]==] return func...\"]:1>\n[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:548: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:512>\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:665: in function `ScanEventsInternal'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:626: in function `ScanEvents'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:759: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:750>",
			["session"] = 1420,
			["counter"] = 2,
		}, -- [12]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Favorites' tried to call the protected function 'RaidFrame:Show()'.",
			["time"] = "2020/02/09 21:02:23",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\FriendsFrame.lua\"]:82: in function `FriendsFrame_ShowSubFrame'\n[string \"@Interface\\FrameXML\\FriendsFrame.lua\"]:369: in function `FriendsFrame_Update'\n[string \"@Interface\\FrameXML\\FriendsFrame.lua\"]:323: in function <Interface\\FrameXML\\FriendsFrame.lua:304>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2739: in function `SetUIPanel'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2584: in function `ShowUIPanel'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2452: in function <Interface\\FrameXML\\UIParent.lua:2448>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:3306: in function `ShowUIPanel'\n[string \"@Interface\\FrameXML\\FriendsFrame.lua\"]:1088: in function `ToggleFriendsFrame'\n[string \"TOGGLESOCIAL\"]:1: in function <[string \"TOGGLESOCIAL\"]:1>",
			["session"] = 1420,
			["counter"] = 1,
		}, -- [13]
	},
}
