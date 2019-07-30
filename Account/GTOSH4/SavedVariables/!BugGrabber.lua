
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 1117,
	["errors"] = {
		{
			["message"] = "[string \"*:OnHide\"]:3: Usage: PlaySound(soundKitID, optional[\"SFX\",\"Music\",\"Ambience\", \"Dialog\" or \"Master\"], [forceNoDuplicates, runFinishCallback])",
			["time"] = "2019/07/26 02:55:57",
			["locals"] = "(*temporary) = \"UChatScrollButton\"\n",
			["stack"] = "[C]: in function `PlaySound'\n[string \"*:OnHide\"]:3: in function <[string \"*:OnHide\"]:1>\n[C]: in function `Hide'\nInterface\\FrameXML\\UIParent.lua:3225: in function `HideUIPanel'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>",
			["session"] = 1084,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[string \"--[[ Error in 'Viewport' ]] return function...\"]:4: attempt to call method 'GetNumPoint' (a nil value)",
			["time"] = "2019/07/26 03:04:35",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\AuraEnvironment.lua:174: in function `ActivateAuraEnvironment'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:686: in function `ScanWithFakeEvent'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:928: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1939: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1798: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1685>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1890: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1574: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1519: in function `Resume'\n...dOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:191: in function <...dOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:166>\n[C]: in function `Hide'\n...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions-2.13.4.lua:1444: in function <...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions.lua:1442>",
			["session"] = 1085,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'AAP-Core' tried to call the protected function 'CLQListFddd:SetScale()'.",
			["time"] = "2019/07/26 17:15:59",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetScale'\nInterface\\AddOns\\AAP-Core\\OptionsPanel.lua:285: in function <Interface\\AddOns\\AAP-Core\\OptionsPanel.lua:282>\n[C]: in function `SetValue'\nInterface\\AddOns\\AAP-Core\\OptionsPanel.lua:293: in function `LoadOptionsFrame'\nInterface\\AddOns\\AAP-Core\\Core.lua:2138: in function <Interface\\AddOns\\AAP-Core\\Core.lua:2136>",
			["session"] = 1096,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Favorites' tried to call the protected function 'RaidFrame:Show()'.",
			["time"] = "2019/07/26 23:08:06",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Show'\nInterface\\FrameXML\\FriendsFrame.lua:86: in function `FriendsFrame_ShowSubFrame'\nInterface\\FrameXML\\FriendsFrame.lua:362: in function <Interface\\FrameXML\\FriendsFrame.lua:323>\n[C]: in function `FriendsFrame_Update'\nInterface\\FrameXML\\FriendsFrame.lua:315: in function <Interface\\FrameXML\\FriendsFrame.lua:313>\n[C]: ?\n[C]: in function `Show'\nInterface\\FrameXML\\UIParent.lua:2652: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2497: in function `ShowUIPanel'\nInterface\\FrameXML\\UIParent.lua:2365: in function <Interface\\FrameXML\\UIParent.lua:2361>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3212: in function `ShowUIPanel'\nInterface\\FrameXML\\FriendsFrame.lua:1096: in function `ToggleFriendsFrame'\n[string \"TOGGLESOCIAL\"]:1: in function <[string \"TOGGLESOCIAL\"]:1>",
			["session"] = 1098,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'MainMenuBar:ClearAllPoints()'.",
			["time"] = "2019/07/27 00:33:15",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\nInterface\\FrameXML\\MainMenuBar.lua:43: in function `SetPositionForStatusBars'\nInterface\\FrameXML\\MainMenuBar.lua:122: in function <Interface\\FrameXML\\MainMenuBar.lua:65>",
			["session"] = 1098,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "Interface\\FrameXML\\ChatFrame.lua:1631: Usage: local setWasEquipped = C_EquipmentSet.UseEquipmentSet(equipmentSetID)",
			["time"] = "2019/07/27 03:02:26",
			["locals"] = "",
			["stack"] = "[C]: in function `UseEquipmentSet'\nInterface\\FrameXML\\ChatFrame.lua:1631: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4816: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4497: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2991: in function <Interface\\FrameXML\\ChatFrame.lua:2984>\n[C]: in function `RunMacroText'\nInterface\\FrameXML\\SecureTemplates.lua:441: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n...\nInterface\\FrameXML\\ChatFrame.lua:4497: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2991: in function <Interface\\FrameXML\\ChatFrame.lua:2984>\n[C]: in function `RunMacroText'\nInterface\\FrameXML\\SecureTemplates.lua:441: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 1098,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "[string \"--[[ Error in 'Mrrl's trade game' ]] return...\"]:5: bad argument #3 to 'format' (string expected, got nil)",
			["time"] = "2019/07/27 21:23:06",
			["stack"] = "[string \"--[[ Error in 'Mrrl's trade game' ]] return...\"]:5: in function <[string \"--[[ Error in 'Mrrl's trade game' ]] return...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\AuraEnvironment.lua:174: in function `ActivateAuraEnvironment'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:686: in function `ScanWithFakeEvent'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:928: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1939: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1798: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1685>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1832: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1875: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1873>",
			["session"] = 1106,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "Invalid quest item in SetQuestLogItem(\"type\", index [, questID])",
			["time"] = "2019/07/28 18:17:55",
			["locals"] = "(*temporary) = GameTooltip {\n 0 = <userdata>\n SetExistingSocketGem = <function> defined =[C]:-1\n ItemTooltip = <unnamed> {\n }\n SetCurrencyToken = <function> defined @Interface\\AddOns\\Altoholic\\Tooltip.lua:700\n SetGuildBankItem = <function> defined =[C]:-1\n hasMoney = 1\n SetBackdropBorderColor = <function> defined =[C]:-1\n SetVoidDepositItem = <function> defined =[C]:-1\n Hide = <function> defined =[C]:-1\n template = \"Transparent\"\n comparing = false\n SetSocketGem = <function> defined =[C]:-1\n TopOverlay = <unnamed> {\n }\n SetUnitDebuff = <function> defined =[C]:-1\n SetHeirloomByItemID = <function> defined =[C]:-1\n SetLootItem = <function> defined =[C]:-1\n SetQuestItem = <function> defined =[C]:-1\n SetHyperlink = <function> defined =[C]:-1\n SetVoidItem = <function> defined =[C]:-1\n SetTrainerService = <function> defined =[C]:-1\n numMoneyFrames = 2\n SetVoidWithdrawalItem = <function> defined =[C]:-1\n PixelSnapDisabled = true\n SetRecipeReagentItem = <function> defined @Interface\\AddOns\\Altoholic\\Tooltip.lua:700\n SetBuybackItem = <function> defined =[C]:-1\n TMW_SetSpellByIDWithClassIcon = <function> defined @Interface\\AddOns\\TellMeWhen\\Components\\Core\\Spells\\ClassSpellCache.lua:212\n SetItemByID = <function> defined =[C]:-1\n SetMerchantItem = <function> defined =[C]:-1\n SetQuestLogItem = <function> defined =[C]:-1\n SetInboxItem = <function> defined =[C]:-1\n BottomOverlay = <unnamed> {\n }\n shoppingTooltips = <table> {\n }\n SetTradePlayerItem = <function> defined =[C]:-1\n SetUnitBuff = <function> defined =[C]:-1\n SetSendMailItem = <function> defined =[C]:-1\n textLeft = <table> {\n }\n updateTooltip = 0.016000\n SetInventoryItem = <function> defined =[C]:-1\n SetRecipeResultItem = <function> defined =[C]:-1\n SetTradeTargetItem = <function> defined =[C]:-1\n SetLootRollItem = <function> defined =[C]:-1\n SetUnitAura = <function> defined =[C]:-1\n ignoreUpdates = true\n SetAuctionSellItem = <function> defined =[C]:-1\n SetBagItem = <function> defined =[C]:-1\n needsReset = true\n StatusBar = GameTooltipStatusBar {\n }\n SetBackdropColor = <function> defined =[C]:-1\n pixelBorders = <table> {\n }\n SetAuctionItem = <function> defined =[C]:-1\n}\n(*temporary) = \"reward\"\n(*temporary) = 1\n",
			["stack"] = "[C]: ?\n[C]: ?\nInterface\\AddOns\\Altoholic\\Tooltip.lua:702: in function <Interface\\AddOns\\Altoholic\\Tooltip.lua:700>\n[C]: in function `SetQuestLogItem'\nInterface\\FrameXML\\QuestInfo.lua:987: in function <Interface\\FrameXML\\QuestInfo.lua:983>",
			["session"] = 1109,
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "Error loading Interface\\AddOns\\ElvUI\\Core\\API.lua",
			["session"] = 1112,
			["time"] = "2019/07/29 13:20:29",
			["counter"] = 4,
		}, -- [9]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\Core\\Core.lua:1459: attempt to call method 'LoadAPI' (a nil value)",
			["time"] = "2019/07/29 13:20:32",
			["locals"] = "self = <table> {\n GetTimeInfo = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Math.lua:314\n mylevel = 120\n Bags = <table> {\n }\n Minimap = <table> {\n }\n modules = <table> {\n }\n GetBackdropColor = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Toolkit.lua:58\n FormatMoney = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Math.lua:368\n HelloKittyToggle = <function> defined @Interface\\AddOns\\ElvUI\\Core\\AprilFools.lua:353\n UpdateUnitFrames = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Core.lua:867\n CopyTable = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Core.lua:510\n DispelClasses = <table> {\n }\n SetMoversPositions = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Movers.lua:480\n ScheduleTimer = <function> defined @Interface\\AddOns\\ACU\\Libs\\AceTimer-3.0\\AceTimer-3.0.lua:94\n PriestColors = <table> {\n }\n UpdateDB = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Core.lua:834\n SetupTheme = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Install.lua:166\n media = <table> {\n }\n SetUpAnimGroup = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Animation.lua:22\n data = <table> {\n }\n EnableBlizzardAddOns = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Commands.lua:215\n UIScale = <function> defined @Interface\\AddOns\\ElvUI\\Core\\PixelPerfect.lua:27\n db = <table> {\n }\n FramesOverlap = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Math.lua:111\n SetEnabledState = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:424\n Hook = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceHook-3.0\\AceHook-3.0.lua:274\n Options = <table> {\n }\n UpdateLayout = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Core.lua:885\n Layout = <table> {\n }\n PluginInstaller = <table> {\n }\n PixelBestSize = <function> defined @Interface\\AddOns\\ElvUI\\Core\\PixelPerfect.lua:69\n UnregisterEventForObject = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Core.lua:1147\n Distributor = <table> {\n }\n HiddenFrame = <unnamed> {\n }\n Media = <table> {\n }\n NewModule = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:235\n ScanTooltipTextures = <function> defined @Interface\\AddOns\\ElvUI\\init.lua:115\n SafeGetPoint = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Toolkit.lua:20\n UIFrameFade = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Animation.lua:212\n MinimapWidth = 180\n StaticPopup_IsLastDisplayedFrame = <function> defined @Interface\\AddOns\\ElvUI\\Core\\StaticPopups.lua:588\n StaticPopup_CreateSecureButton = <function> defined @Interface\\AddOns\\ElvUI\\Core\\StaticPopups.lua:1150\n Truncate = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Math.lua:92\n UpdateBackdropColors = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Core.lua:439\n TimeThreshold = 3\n ToggleMoveMode = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Config.lua:58\n RemoveTableDuplicates = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Core.lua:547\n name = \"ElvUI\"\n WorldMap = <table> {\n }\n MinimapHeight = 180\n Disable = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:314\n DF = <table> {\n }\n SlideOut = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Animation.lua:147\n Unhook = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceHook-3.0\\AceHook-3.0.lua:418\n Print = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Core.lua:194\n Install = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Install.lua:719\n StaticPopup_GetAllSecureButtons = <function> defined @Interface\\AddOns\\ElvUI\\Core\\StaticPopups.lua:1174\n LockedCVars = <table> {\n }\n TogglePixelBorders = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Toolkit.lua:96\n TimeFormats = <table> {\n }\n RGBToHex = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Math.lua:97\n InversePoints = <table> {\n }\n Cooldown_StopTimer = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Cooldowns.lua:93\n loadedtime = 1241247.364000\n Tutorials = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Tutorials.lua:110\n UpdateNudgeFrame = <function> defined @Interface\\AddOns\\ElvUI\\Core\\Config.lua:212\n ShortPrefixStyles = <table> {\n }\n GetCPUImpact = <f",
			["stack"] = "Interface\\AddOns\\ElvUI\\Core\\Core.lua:1459: in function `Initialize'\nInterface\\AddOns\\ElvUI\\init.lua:231: in function <Interface\\AddOns\\ElvUI\\init.lua:230>",
			["session"] = 1112,
			["counter"] = 1,
		}, -- [10]
		{
			["message"] = "...rface\\AddOns\\ElvUI\\Modules\\actionbars\\ActionBars.lua:104: attempt to index field 'db' (a nil value)",
			["time"] = "2019/07/29 13:20:33",
			["stack"] = "[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:13: in function `toggle'\n[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:29: in function <[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\AuraEnvironment.lua:174: in function `ActivateAuraEnvironment'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:686: in function `ScanWithFakeEvent'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:928: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1939: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1798: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1685>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1890: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1574: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1519: in function `Resume'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:1375: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1342>",
			["session"] = 1112,
			["counter"] = 1,
		}, -- [11]
		{
			["message"] = "Interface\\AddOns\\ElvUI_SLE\\modules\\quests\\quests.lua:14: attempt to index field 'tex' (a nil value)",
			["time"] = "2019/07/29 13:20:37",
			["stack"] = "Interface\\AddOns\\ElvUI_SLE\\modules\\quests\\quests.lua:14: in function `FULL'\nInterface\\AddOns\\ElvUI_SLE\\modules\\quests\\quests.lua:57: in function `?'\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1112,
			["counter"] = 3,
		}, -- [12]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MythicPlusTimer' tried to call the protected function 'ObjectiveTrackerFrame:SetParent()'.",
			["time"] = "2019/07/29 20:57:09",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetParent'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:606: in function `show_default_tracker'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:415: in function `callback'\nInterface\\AddOns\\MythicPlusTimer\\addon.lua:100: in function <Interface\\AddOns\\MythicPlusTimer\\addon.lua:94>",
			["session"] = 1115,
			["counter"] = 3,
		}, -- [13]
		{
			["message"] = "Interface\\FrameXML\\ContainerFrame.lua:1183: attempt to index a nil value",
			["time"] = "2019/07/29 23:31:09",
			["locals"] = "itemButton = AdiBagsItemButton126 {\n timeSinceUpgradeCheck = 0\n PostOnLoad = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:169\n BattlepayItemTexture = <unnamed> {\n }\n IconOverlay = <unnamed> {\n }\n BagStaticTop = <unnamed> {\n }\n IconBorder = <unnamed> {\n }\n newitemglowAnim = <unnamed> {\n }\n icon = AdiBagsItemButton126IconTexture {\n }\n UpdateTooltip = <function> defined @Interface\\FrameXML\\ContainerFrame.lua:1376\n ExtendedOverlay = <unnamed> {\n }\n RegisterCallback = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:175\n UnregisterCallback = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:182\n UpdateItemContextMatching = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:211\n NewItemTexture = <unnamed> {\n }\n Cooldown = AdiBagsItemButton126Cooldown {\n }\n itemContextMatchResult = 3\n count = 1\n BagStaticBottom = <unnamed> {\n }\n filterName = \"Track new items\"\n ItemContextOverlay = <unnamed> {\n }\n PostOnShow = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:189\n flash = <unnamed> {\n }\n ExtendedSlot = <unnamed> {\n }\n ExtendedOverlay2 = <unnamed> {\n }\n IconTexture = AdiBagsItemButton126IconTexture {\n }\n JunkIcon = <unnamed> {\n }\n SetMatchesSearch = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:202\n UpdateItemContextOverlay = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:222\n slot = 7\n bag = 0\n NormalTexture = AdiBagsItemButton126NormalTexture {\n }\n Stock = AdiBagsItemButton126Stock {\n }\n IconQuestTexture = AdiBagsItemButton126IconQuestTexture {\n }\n itemContextChangedCallback = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:170\n 0 = <userdata>\n Count = AdiBagsItemButton126Count {\n }\n PostOnHide = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:198\n flashAnim = <unnamed> {\n }\n GetMatchesSearch = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:207\n UpgradeIcon = <unnamed> {\n }\n searchOverlay = AdiBagsItemButton126SearchOverlay {\n }\n}\nisEquipped = nil\nquantity = 1\nslot = 7\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index a nil value\"\n",
			["stack"] = "Interface\\FrameXML\\ContainerFrame.lua:1183: in function `ContainerFrame_GetExtendedPriceString'\n[string \"*:OnMouseUp\"]:2: in function <[string \"*:OnMouseUp\"]:1>",
			["session"] = 1115,
			["counter"] = 1,
		}, -- [14]
	},
}
