
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 1023,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\bigdumblootcouncil\\core.lua:1000: bad argument #2 to 'strsplit' (string expected, got nil)",
			["time"] = "2019/07/07 17:43:23",
			["locals"] = "(*temporary) = \":\"\n(*temporary) = nil\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[C]: in function `strsplit'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:1000: in function <Interface\\AddOns\\bigdumblootcouncil\\core.lua:991>",
			["session"] = 1007,
			["counter"] = 9,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'AAP-Core' tried to call the protected function 'EditMacro()'.",
			["time"] = "2019/07/07 18:25:30",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `EditMacro'\nInterface\\AddOns\\AAP-Core\\QuestHandler.lua:2564: in function `MacroUpdater'\nInterface\\AddOns\\AAP-Core\\QuestHandler.lua:965: in function <Interface\\AddOns\\AAP-Core\\QuestHandler.lua:658>\nInterface\\AddOns\\AAP-Core\\QuestHandler.lua:4902: in function <Interface\\AddOns\\AAP-Core\\QuestHandler.lua:4826>",
			["session"] = 1010,
			["counter"] = 2,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'AdiBags' tried to call the protected function 'PetFrame:SetPoint()'.",
			["time"] = "2019/07/08 23:34:11",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetPoint'\nInterface\\FrameXML\\PetFrame.lua:48: in function `PetFrame_UpdateAnchoring'\nInterface\\FrameXML\\PetFrame.lua:85: in function `PetFrame_Update'\nInterface\\FrameXML\\PlayerFrame.lua:378: in function `PlayerFrame_ToVehicleArt'\nInterface\\FrameXML\\PlayerFrame.lua:355: in function `PlayerFrame_UpdateArt'\nInterface\\FrameXML\\PlayerFrame.lua:260: in function `OnEvent'\nInterface\\FrameXML\\UnitFrame.lua:933: in function <Interface\\FrameXML\\UnitFrame.lua:931>",
			["session"] = 1010,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MythicPlusTimer' tried to call the protected function 'ObjectiveTrackerFrame:SetParent()'.",
			["time"] = "2019/07/08 21:47:04",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetParent'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:606: in function `show_default_tracker'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:415: in function `callback'\nInterface\\AddOns\\MythicPlusTimer\\addon.lua:100: in function <Interface\\AddOns\\MythicPlusTimer\\addon.lua:94>",
			["session"] = 1015,
			["counter"] = 2,
		}, -- [4]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'MainMenuBar:ClearAllPoints()'.",
			["time"] = "2019/07/12 02:33:16",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\nInterface\\FrameXML\\MainMenuBar.lua:43: in function `SetPositionForStatusBars'\nInterface\\FrameXML\\MainMenuBar.lua:122: in function <Interface\\FrameXML\\MainMenuBar.lua:65>",
			["session"] = 1017,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'ElvUI' tried to call the protected function 'AcceptSpellConfirmationPrompt()'.",
			["time"] = "2019/07/12 21:58:01",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `AcceptSpellConfirmationPrompt'\nInterface\\FrameXML\\StaticPopup.lua:3842: in function `OnAccept'\nInterface\\FrameXML\\StaticPopup.lua:5074: in function `StaticPopup_OnClick'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>",
			["session"] = 1020,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:1: bad argument #1 to 'unpack' (table expected, got nil)",
			["time"] = "2019/07/12 21:58:52",
			["stack"] = "[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:1: in function <[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\AuraEnvironment.lua:174: in function `ActivateAuraEnvironment'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:686: in function `ScanWithFakeEvent'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:928: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1939: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1798: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1685>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1890: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1574: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1519: in function `Resume'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1375: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1342>",
			["session"] = 1021,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "Interface\\AddOns\\AddOnSkins\\Core\\API.lua:320: attempt to call method 'SetOutside' (a nil value)",
			["time"] = "2019/07/12 21:58:52",
			["stack"] = "Interface\\AddOns\\AddOnSkins\\Core\\API.lua:320: in function `CreateShadow'\nInterface\\AddOns\\AddOnSkins\\Core\\Core.lua:381: in function `BugReportFrame'\nInterface\\AddOns\\AddOnSkins\\Core\\Core.lua:304: in function `?'\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1021,
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "Interface\\AddOns\\AddOnSkins\\Skins\\Quartz-3.4.0.lua:15: attempt to call method 'SetOutside' (a nil value)",
			["time"] = "2019/07/12 21:58:58",
			["locals"] = "self = Quartz3CastBarPlayer {\n 0 = <userdata>\n Spark = <unnamed> {\n }\n lastNotInterruptible = false\n parent = <table> {\n }\n Text = <unnamed> {\n }\n localizedName = \"Player\"\n unit = \"player\"\n TimeText = <unnamed> {\n }\n config = <table> {\n }\n backdrop = <table> {\n }\n IconBorder = <unnamed> {\n }\n locked = true\n Bar = <unnamed> {\n }\n Icon = <unnamed> {\n }\n modName = \"Player\"\n}\n(*temporary) = nil\n(*temporary) = <unnamed> {\n 0 = <userdata>\n SetBackdropColor = <function> defined =[C]:-1\n pixelBorders = <table> {\n }\n SetBackdropBorderColor = <function> defined =[C]:-1\n}\n(*temporary) = <unnamed> {\n 0 = <userdata>\n}\n(*temporary) = \"attempt to call method 'SetOutside' (a nil value)\"\nAS = <table> {\n SkinAchievement = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Achievement.lua:15\n Blizzard_Channels = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Channels.lua:11\n Blizzard_AbilityButton = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\ExtraButtons.lua:3\n ArrowRotation = <table> {\n }\n modules = <table> {\n }\n GetBackdropColor = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:127\n FindFrameBySizeChild = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1148\n Blizzard_ItemSocketingUI = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Character.lua:452\n Blank = \"Interface\\Buttons\\WHITE8X8\"\n LCG = <table> {\n }\n SkinIconButton = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:723\n SetTemplate = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:370\n ADDON_LOADED = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Core.lua:142\n SkinErrors = <table> {\n }\n BuildProfile = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Options.lua:976\n data = <table> {\n }\n UIScale = 0.640000\n db = <table> {\n }\n SkinBackdropFrame = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1003\n AdjustForTheme = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1058\n SetEnabledState = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:424\n CreateChangeLog = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Core.lua:471\n Options = <table> {\n }\n BugReportFrame = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Core.lua:377\n Font = \"Fonts\\FRIZQT__.TTF\"\n events = <table> {\n }\n Noop = <function> defined @Interface\\AddOns\\AddOnSkins\\Init.lua:37\n SetBackdropColor = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:143\n SkinDoubleStateIconRow = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1280\n Blizzard_Mail = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Mail.lua:3\n SkinWidgetContainer = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1307\n UnregisterAllEvents = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:174\n SkinTooltip = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1033\n FindFrameByPoint = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1183\n EnumObjects = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1096\n Blizzard_Calendar = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Calendar.lua:12\n GetChatWindowInfo = <function> defined @Interface\\AddOns\\AddOnSkins\\Embed\\Core.lua:19\n EmbedEnterCombat = <function> defined @Interface\\AddOns\\AddOnSkins\\Embed\\Core.lua:154\n GetName = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:279\n GetOptions = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Options.lua:1113\n Blizzard_DebugTools = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\DebugTools.lua:3\n name = \"AddOnSkins\"\n Disable = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:314\n SkinLibraries = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Libraries.lua:154\n BugSack = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\BugSack.lua:5\n Unhook = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceHook-3.",
			["stack"] = "Interface\\AddOns\\AddOnSkins\\Skins\\Quartz-3.4.0.lua:15: in function <Interface\\AddOns\\AddOnSkins\\Skins\\Quartz.lua:10>\n[C]: in function `?'\nInterface\\AddOns\\Quartz\\CastBarTemplate.lua:126: in function <Interface\\AddOns\\Quartz\\CastBarTemplate.lua:124>",
			["session"] = 1021,
			["counter"] = 8,
		}, -- [9]
		{
			["message"] = "Interface\\AddOns\\AddOnSkins\\Core\\API.lua:293: attempt to call method 'SetOutside' (a nil value)",
			["time"] = "2019/07/12 21:59:24",
			["locals"] = "self = <table> {\n SkinAchievement = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Achievement.lua:15\n Blizzard_Channels = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Channels.lua:11\n Blizzard_AbilityButton = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\ExtraButtons.lua:3\n ArrowRotation = <table> {\n }\n modules = <table> {\n }\n GetBackdropColor = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:127\n FindFrameBySizeChild = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1148\n Blizzard_ItemSocketingUI = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Character.lua:452\n Blank = \"Interface\\Buttons\\WHITE8X8\"\n LCG = <table> {\n }\n SkinIconButton = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:723\n SetTemplate = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:370\n ADDON_LOADED = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Core.lua:142\n SkinErrors = <table> {\n }\n BuildProfile = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Options.lua:976\n data = <table> {\n }\n UIScale = 0.640000\n db = <table> {\n }\n SkinBackdropFrame = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1003\n AdjustForTheme = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1058\n SetEnabledState = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:424\n CreateChangeLog = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Core.lua:471\n Options = <table> {\n }\n BugReportFrame = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Core.lua:377\n Font = \"Fonts\\FRIZQT__.TTF\"\n events = <table> {\n }\n Noop = <function> defined @Interface\\AddOns\\AddOnSkins\\Init.lua:37\n SetBackdropColor = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:143\n SkinDoubleStateIconRow = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1280\n Blizzard_Mail = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Mail.lua:3\n SkinWidgetContainer = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1307\n UnregisterAllEvents = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:174\n SkinTooltip = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1033\n FindFrameByPoint = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1183\n EnumObjects = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1096\n Blizzard_Calendar = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Calendar.lua:12\n GetChatWindowInfo = <function> defined @Interface\\AddOns\\AddOnSkins\\Embed\\Core.lua:19\n EmbedEnterCombat = <function> defined @Interface\\AddOns\\AddOnSkins\\Embed\\Core.lua:154\n GetName = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:279\n GetOptions = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Options.lua:1113\n Blizzard_DebugTools = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\DebugTools.lua:3\n name = \"AddOnSkins\"\n Disable = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:314\n SkinLibraries = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Libraries.lua:154\n BugSack = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\BugSack.lua:5\n Unhook = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceHook-3.0\\AceHook-3.0.lua:418\n Print = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Core.lua:73\n preload = <table> {\n }\n Blizzard_IslandsPartyPoseUI = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\BfA.lua:69\n SetOutside = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:237\n Init = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\Core.lua:317\n Blizzard_BlackMarketUI = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\Auction.lua:259\n Blizzard_IslandsQueueUI = <function> defined @Interface\\AddOns\\AddOnSkins\\Skins\\Blizzard\\BfA.lua:78\n SkinDoubleStatusBarWidget = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:1255",
			["stack"] = "Interface\\AddOns\\AddOnSkins\\Core\\API.lua:293: in function `CreateBackdrop'\n...terface\\AddOns\\AddOnSkins\\Skins\\TalentSetManager.lua:20: in function <...terface\\AddOns\\AddOnSkins\\Skins\\TalentSetManager.lua:7>",
			["session"] = 1021,
			["counter"] = 1,
		}, -- [10]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Molinari' tried to call the protected function 'SecureStateDriverManager:SetAttribute()'.",
			["time"] = "2019/07/12 22:41:46",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\SecureStateDriver.lua:10: in function <Interface\\FrameXML\\SecureStateDriver.lua:8>\n(tail call): ?\nInterface\\AddOns\\Molinari\\Molinari-80200.59-Release.lua:99: in function `UpdateModifier'\nInterface\\AddOns\\Molinari\\Config.lua:27: in function `callback'\nInterface\\AddOns\\Molinari\\libs\\Wasabi\\Wasabi-7.lua:329: in function `Fire'\nInterface\\AddOns\\Molinari\\libs\\Wasabi\\Wasabi-7.lua:162: in function <Interface\\AddOns\\Molinari\\libs\\Wasabi\\Wasabi.lua:155>\n[C]: in function `pcall'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:206: in function <Interface\\FrameXML\\InterfaceOptionsFrame.lua:205>\n[C]: in function `securecall'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:229: in function <Interface\\FrameXML\\InterfaceOptionsFrame.lua:221>",
			["session"] = 1022,
			["counter"] = 1,
		}, -- [11]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUI_Bar2:SetWidth()'.",
			["time"] = "2019/07/13 03:01:27",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetWidth'\nInterface\\AddOns\\ElvUI\\Core\\Toolkit.lua:192: in function `Width'\n...rface\\AddOns\\ElvUI\\Modules\\actionbars\\ActionBars.lua:144: in function `PositionAndSizeBar'\n[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:13: in function `toggle'\n[string \"local r=WeakAuras.GetRegion(\"Elv AB toggle\"...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2171: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4836: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4497: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2991: in function <Interface\\FrameXML\\ChatFrame.lua:2984>\n[C]: in function `UseAction'\nInterface\\FrameXML\\SecureTemplates.lua:345: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 1023,
			["counter"] = 1,
		}, -- [12]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Accountant_Classic' tried to call the protected function 'SecureStateDriverManager:SetAttribute()'.",
			["time"] = "2019/07/13 03:01:27",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\SecureStateDriver.lua:10: in function <Interface\\FrameXML\\SecureStateDriver.lua:8>\n(tail call): ?\n...rface\\AddOns\\ElvUI\\Modules\\actionbars\\ActionBars.lua:243: in function `PositionAndSizeBar'\n[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:13: in function `toggle'\n[string \"local r=WeakAuras.GetRegion(\"Elv AB toggle\"...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2171: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4836: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4497: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2991: in function <Interface\\FrameXML\\ChatFrame.lua:2984>\n[C]: in function `UseAction'\nInterface\\FrameXML\\SecureTemplates.lua:345: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 1023,
			["counter"] = 1,
		}, -- [13]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'AdiBags' tried to call the protected function 'MultiBarBottomRightButton3:Hide()'.",
			["time"] = "2019/07/13 03:51:15",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Hide'\nInterface\\FrameXML\\ActionButton.lua:497: in function `ActionButton_HideGrid'\nInterface\\FrameXML\\MultiActionBars.lua:128: in function `MultiActionBar_UpdateGrid'\nInterface\\FrameXML\\MultiActionBars.lua:117: in function `MultiActionBar_HideAllGrids'\nInterface\\FrameXML\\SpellBookFrame.lua:391: in function <Interface\\FrameXML\\SpellBookFrame.lua:379>\n[C]: ?\n[C]: in function `Hide'\nInterface\\FrameXML\\UIParent.lua:2636: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2667: in function `MoveUIPanel'\nInterface\\FrameXML\\UIParent.lua:2710: in function `HideUIPanel'\nInterface\\FrameXML\\UIParent.lua:2369: in function <Interface\\FrameXML\\UIParent.lua:2361>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3232: in function `HideUIPanel'\nInterface\\FrameXML\\UIParent.lua:3384: in function `CloseWindows'\nInterface\\FrameXML\\UIParent.lua:3430: in function <Interface\\FrameXML\\UIParent.lua:3420>\n[C]: in function `securecall'\nInterface\\FrameXML\\UIParent.lua:4058: in function `ToggleGameMenu'\n[string \"TOGGLEGAMEMENU\"]:1: in function <[string \"TOGGLEGAMEMENU\"]:1>",
			["session"] = 1023,
			["counter"] = 1,
		}, -- [14]
	},
}
