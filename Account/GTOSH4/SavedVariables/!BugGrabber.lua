
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 951,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Molinari' tried to call the protected function 'SecureStateDriverManager:SetAttribute()'.",
			["time"] = "2019/06/01 21:32:53",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\SecureStateDriver.lua:10: in function <Interface\\FrameXML\\SecureStateDriver.lua:8>\n(tail call): ?\nInterface\\AddOns\\Molinari\\Molinari-80000.58-Release.lua:98: in function `UpdateModifier'\nInterface\\AddOns\\Molinari\\Config.lua:27: in function `callback'\nInterface\\AddOns\\Molinari\\libs\\Wasabi\\Wasabi-6.lua:327: in function `Fire'\nInterface\\AddOns\\Molinari\\libs\\Wasabi\\Wasabi-6.lua:160: in function <Interface\\AddOns\\Molinari\\libs\\Wasabi\\Wasabi.lua:153>\n[C]: in function `pcall'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:206: in function <Interface\\FrameXML\\InterfaceOptionsFrame.lua:205>\n[C]: in function `securecall'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:229: in function <Interface\\FrameXML\\InterfaceOptionsFrame.lua:221>",
			["session"] = 916,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\Grid2\\GridFrame.lua:12: table index is nil",
			["time"] = "2019/06/03 12:23:54",
			["locals"] = "self = <table> {\n nameplate1 = <table> {\n }\n player = <table> {\n }\n party1 = <table> {\n }\n}\nkey = nil\nresult = <table> {\n}\n(*temporary) = \"table index is nil\"\n",
			["stack"] = "Interface\\AddOns\\Grid2\\GridFrame.lua:12: in function <Interface\\AddOns\\Grid2\\GridFrame.lua:10>\nInterface\\AddOns\\Grid2\\GridFrame.lua:29: in function `GetUnitFrames'\n...\\Grid2DispellableDebuffs\\Grid2DispellableDebuffs.lua:18: in function <...\\Grid2DispellableDebuffs\\Grid2DispellableDebuffs.lua:17>",
			["session"] = 929,
			["counter"] = 20,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:55: attempt to call method 'GetTooltip' (a nil value)",
			["time"] = "2019/06/03 14:31:27",
			["locals"] = "self = <table> {\n UpdateDB = <function> defined @Interface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:82\n statuses = <table> {\n }\n Layout = <function> defined @Interface\\AddOns\\Grid2\\GridUtils.lua:13\n Create = <function> defined @Interface\\AddOns\\Grid2\\GridUtils.lua:13\n dbx = <table> {\n }\n OnSuspend = <function> defined @Interface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:77\n GetTooltip = <function> defined @Interface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:44\n name = \"tooltip\"\n priorities = <table> {\n }\n Display = <function> defined @Interface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:48\n sortStatuses = <function> defined @Interface\\AddOns\\Grid2\\GridIndicator.lua:24\n OnUpdate = <function> defined @Interface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:67\n Hide = <function> defined @Interface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:60\n}\nunit = \"player\"\nstatus = <table> {\n GetPercent = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:198\n indicators = <table> {\n }\n GetIcons = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:200\n IsActive = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:195\n GetText = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:196\n name = \"test\"\n GetColor = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:197\n enabled = true\n GetIcon = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:199\n}\nanchor = nil\n(*temporary) = nil\n(*temporary) = <table> {\n GetPercent = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:198\n indicators = <table> {\n }\n GetIcons = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:200\n IsActive = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:195\n GetText = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:196\n name = \"test\"\n GetColor = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:197\n enabled = true\n GetIcon = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:199\n}\n(*temporary) = \"player\"\n(*temporary) = GameTooltip {\n 0 = <userdata>\n ItemTooltip = <unnamed> {\n }\n SetCurrencyToken = <function> defined @Interface\\AddOns\\Altoholic\\Tooltip.lua:700\n SetGuildBankItem = <function> defined =[C]:-1\n hasMoney = 1\n SetBackdropBorderColor = <function> defined =[C]:-1\n SetVoidDepositItem = <function> defined =[C]:-1\n Hide = <function> defined =[C]:-1\n template = \"Transparent\"\n comparing = false\n SetSocketGem = <function> defined =[C]:-1\n TopOverlay = <unnamed> {\n }\n SetRecipeResultItem = <function> defined =[C]:-1\n default = 1\n SetUnitDebuff = <function> defined =[C]:-1\n SetHeirloomByItemID = <function> defined =[C]:-1\n SetLootItem = <function> defined =[C]:-1\n SetQuestItem = <function> defined =[C]:-1\n StatusBar = GameTooltipStatusBar {\n }\n TMW_SetSpellByIDWithClassIcon = <function> defined @Interface\\AddOns\\TellMeWhen\\Components\\Core\\Spells\\ClassSpellCache.lua:218\n SetTrainerService = <function> defined =[C]:-1\n numMoneyFrames = 2\n PixelSnapDisabled = true\n SetRecipeReagentItem = <function> defined @Interface\\AddOns\\Altoholic\\Tooltip.lua:700\n SetBuybackItem = <function> defined =[C]:-1\n shoppingTooltips = <table> {\n }\n SetVoidWithdrawalItem = <function> defined =[C]:-1\n SetMerchantItem = <function> defined =[C]:-1\n SetQuestLogItem = <function> defined =[C]:-1\n SetVoidItem = <function> defined =[C]:-1\n BottomOverlay = <unnamed> {\n }\n SetItemByID = <function> defined =[C]:-1\n SetTradePlayerItem = <function> defined =[C]:-1\n SetExistingSocketGem = <function> defined =[C]:-1\n SetSendMailItem = <function> defined =[C]:-1\n SetUnitBuff = <function> defined =[C]:-1\n updateTooltip = 0.055000\n SetInventoryItem = <function> defined =[C]:-1\n SetTradeTargetItem = <function> defined =[C]:-1\n SetInboxItem = <function> defined =[C]:-1\n SetLootRollItem = <function> defined =[C]:-1\n SetUnitAura = <function> defined =[C]:-1\n ignoreUpdates = true\n SetAuctionSellItem = <function> defined =[C]:-1\n SetBagItem = <function> defined =[C]:-1\n needsReset = true\n SetHyperlink = <",
			["stack"] = "Interface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:55: in function `Display'\nInterface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:31: in function `func'\nInterface\\AddOns\\Grid2\\GridFrame.lua:94: in function <Interface\\AddOns\\Grid2\\GridFrame.lua:92>",
			["session"] = 935,
			["counter"] = 3,
		}, -- [3]
		{
			["message"] = "...ns\\Grid2Options\\modules\\general\\GridExportImport.lua:238: attempt to call global 'IsAddonMessagePrefixRegistered' (a nil value)",
			["time"] = "2019/06/03 14:51:34",
			["stack"] = "...ns\\Grid2Options\\modules\\general\\GridExportImport.lua:238: in function `Enable'\n...ns\\Grid2Options\\modules\\general\\GridExportImport.lua:364: in function <...ns\\Grid2Options\\modules\\general\\GridExportImport.lua:364>\n[C]: ?\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:50: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:48>\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:789: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:610>\n[C]: ?\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:71: in function <...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:69>\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:285: in function `Fire'\n...ic\\Libs\\AceGUI-3.0-36\\widgets\\AceGUIWidget-CheckBox.lua:68: in function <...ic\\Libs\\AceGUI-3.0\\widgets\\AceGUIWidget-CheckBox.lua:57>",
			["session"] = 937,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "Interface\\AddOns\\Grid2\\modules\\IndicatorSquare.lua:45: attempt to index local 'f' (a nil value)",
			["time"] = "2019/06/03 14:52:31",
			["stack"] = "Interface\\AddOns\\Grid2\\modules\\IndicatorSquare.lua:45: in function `func'\nInterface\\AddOns\\Grid2\\GridFrame.lua:326: in function `?'\nInterface\\AddOns\\Grid2\\GridFrame.lua:335: in function `WithAllFrames'\nInterface\\AddOns\\Grid2\\GridIndicator.lua:170: in function `UnregisterIndicator'\nInterface\\AddOns\\Grid2\\GridSetup.lua:12: in function `SetupShutdown'\nInterface\\AddOns\\Grid2\\GridCore.lua:150: in function `ProfileShutdown'\n...\\AddOns\\Grid2Options\\modules\\general\\GridProfile.lua:142: in function <...\\AddOns\\Grid2Options\\modules\\general\\GridProfile.lua:141>\n[C]: ?\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:50: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:48>\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:557: in function `OnAccept'\nInterface\\FrameXML\\StaticPopup.lua:5053: in function `StaticPopup_OnClick'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>",
			["session"] = 937,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "Interface\\AddOns\\Grid2\\GridFrame.lua:343: attempt to index local 'frame' (a nil value)",
			["time"] = "2019/06/03 14:52:28",
			["stack"] = "Interface\\AddOns\\Grid2\\GridFrame.lua:343: in function `SetBlinkEffect'\nInterface\\AddOns\\Grid2\\GridIndicator.lua:96: in function `Update'\nInterface\\AddOns\\Grid2\\GridStatus.lua:74: in function `UpdateIndicators'\nInterface\\AddOns\\Grid2\\GridUtils.lua:161: in function `UpdateAllUnits'\nInterface\\AddOns\\Grid2\\modules\\StatusRole.lua:173: in function `OnEnable'\nInterface\\AddOns\\Grid2\\GridStatus.lua:85: in function `RegisterIndicator'\nInterface\\AddOns\\Grid2\\GridIndicator.lua:46: in function `RegisterStatus'\nInterface\\AddOns\\Grid2\\GridSetup.lua:64: in function `SetupStatusMap'\nInterface\\AddOns\\Grid2\\GridSetup.lua:79: in function `Setup'\nInterface\\AddOns\\Grid2\\GridCore.lua:144: in function `LoadConfig'\nInterface\\AddOns\\Grid2\\GridCore.lua:155: in function `?'\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n...\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:50: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:48>\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:789: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:610>\n[C]: ?\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:71: in function <...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:69>\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:285: in function `Fire'\n...ic\\Libs\\AceGUI-3.0-36\\widgets\\AceGUIWidget-DropDown.lua:442: in function <...ic\\Libs\\AceGUI-3.0\\widgets\\AceGUIWidget-DropDown.lua:433>\n[C]: ?\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:71: in function <...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:69>\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:285: in function `Fire'\n...s\\AceGUI-3.0-36\\widgets\\AceGUIWidget-DropDown-Items.lua:351: in function <...s\\AceGUI-3.0\\widgets\\AceGUIWidget-DropDown-Items.lua:341>",
			["session"] = 938,
			["counter"] = 2,
		}, -- [6]
		{
			["message"] = "[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:11: attempt to concatenate local 'n' (a boolean value)",
			["time"] = "2019/06/03 15:51:22",
			["stack"] = "[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:25: in function <[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\AuraEnvironment.lua:173: in function `ActivateAuraEnvironment'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:658: in function `ScanWithFakeEvent'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:828: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:1920: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:1779: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1667>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:1871: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:1556: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:1501: in function `Resume'\n...dOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:191: in function <...dOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:166>\n[C]: in function `Hide'\n...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions-2.12.3.lua:1428: in function <...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions.lua:1426>",
			["session"] = 943,
			["counter"] = 2,
		}, -- [7]
		{
			["message"] = "[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:12: attempt to concatenate local 'n' (a boolean value)",
			["time"] = "2019/06/03 15:52:54",
			["stack"] = "[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:27: in function <[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\AuraEnvironment.lua:173: in function `ActivateAuraEnvironment'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:658: in function `ScanWithFakeEvent'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:828: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:1920: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:1779: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1667>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:1871: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:1556: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:1501: in function `Resume'\n...dOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:191: in function <...dOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:166>\n[C]: in function `Hide'\n...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions-2.12.3.lua:1428: in function <...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions.lua:1426>",
			["session"] = 944,
			["counter"] = 2,
		}, -- [8]
		{
			["message"] = "[string \"--[[ Error in 'Island Expedition Scoreboard...\"]:10: attempt to concatenate a nil value",
			["time"] = "2019/06/03 16:47:32",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\RegionTypes\\Text.lua:172: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:4333: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4327>",
			["session"] = 947,
			["counter"] = 896,
		}, -- [9]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MythicPlusTimer' tried to call the protected function 'ObjectiveTrackerFrame:SetParent()'.",
			["time"] = "2019/06/02 14:54:12",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetParent'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:606: in function `show_default_tracker'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:415: in function `callback'\nInterface\\AddOns\\MythicPlusTimer\\addon.lua:100: in function <Interface\\AddOns\\MythicPlusTimer\\addon.lua:94>",
			["session"] = 951,
			["counter"] = 3,
		}, -- [10]
	},
}
