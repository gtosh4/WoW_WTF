
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 775,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:55: attempt to call method 'GetTooltip' (a nil value)",
			["time"] = "2019/04/24 13:27:54",
			["locals"] = "self = <table> {\n UpdateDB = <function> defined @Interface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:82\n statuses = <table> {\n }\n Layout = <function> defined @Interface\\AddOns\\Grid2\\GridUtils.lua:13\n Create = <function> defined @Interface\\AddOns\\Grid2\\GridUtils.lua:13\n dbx = <table> {\n }\n OnSuspend = <function> defined @Interface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:77\n GetTooltip = <function> defined @Interface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:44\n name = \"tooltip\"\n priorities = <table> {\n }\n Display = <function> defined @Interface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:48\n sortStatuses = <function> defined @Interface\\AddOns\\Grid2\\GridIndicator.lua:24\n OnUpdate = <function> defined @Interface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:67\n Hide = <function> defined @Interface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:60\n}\nunit = \"player\"\nstatus = <table> {\n GetPercent = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:198\n indicators = <table> {\n }\n GetIcons = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:200\n IsActive = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:195\n GetText = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:196\n name = \"test\"\n GetColor = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:197\n enabled = true\n GetIcon = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:199\n}\nanchor = nil\n(*temporary) = nil\n(*temporary) = <table> {\n GetPercent = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:198\n indicators = <table> {\n }\n GetIcons = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:200\n IsActive = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:195\n GetText = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:196\n name = \"test\"\n GetColor = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:197\n enabled = true\n GetIcon = <function> defined @Interface\\AddOns\\Grid2Options\\GridIndicators.lua:199\n}\n(*temporary) = \"player\"\n(*temporary) = GameTooltip {\n 0 = <userdata>\n ItemTooltip = <unnamed> {\n }\n SetCurrencyToken = <function> defined @Interface\\AddOns\\Altoholic\\Tooltip.lua:700\n SetGuildBankItem = <function> defined =[C]:-1\n hasMoney = 1\n SetBackdropBorderColor = <function> defined =[C]:-1\n SetVoidDepositItem = <function> defined =[C]:-1\n SetVoidWithdrawalItem = <function> defined =[C]:-1\n template = \"Transparent\"\n comparing = false\n SetSocketGem = <function> defined =[C]:-1\n TopOverlay = <unnamed> {\n }\n SetRecipeResultItem = <function> defined =[C]:-1\n default = 1\n SetUnitDebuff = <function> defined =[C]:-1\n SetHeirloomByItemID = <function> defined =[C]:-1\n SetLootItem = <function> defined =[C]:-1\n SetQuestItem = <function> defined =[C]:-1\n StatusBar = GameTooltipStatusBar {\n }\n TMW_SetSpellByIDWithClassIcon = <function> defined @Interface\\AddOns\\TellMeWhen\\Components\\Core\\Spells\\ClassSpellCache.lua:218\n SetTrainerService = <function> defined =[C]:-1\n numMoneyFrames = 2\n SetRecipeReagentItem = <function> defined @Interface\\AddOns\\Altoholic\\Tooltip.lua:700\n SetBuybackItem = <function> defined =[C]:-1\n shoppingTooltips = <table> {\n }\n Hide = <function> defined =[C]:-1\n SetMerchantItem = <function> defined =[C]:-1\n SetQuestLogItem = <function> defined =[C]:-1\n SetVoidItem = <function> defined =[C]:-1\n BottomOverlay = <unnamed> {\n }\n SetItemByID = <function> defined =[C]:-1\n SetTradePlayerItem = <function> defined =[C]:-1\n SetExistingSocketGem = <function> defined =[C]:-1\n SetSendMailItem = <function> defined =[C]:-1\n SetUnitBuff = <function> defined =[C]:-1\n updateTooltip = 0.166000\n SetInventoryItem = <function> defined =[C]:-1\n SetTradeTargetItem = <function> defined =[C]:-1\n SetInboxItem = <function> defined =[C]:-1\n SetLootRollItem = <function> defined =[C]:-1\n SetUnitAura = <function> defined =[C]:-1\n ignoreUpdates = true\n SetAuctionSellItem = <function> defined =[C]:-1\n SetBagItem = <function> defined =[C]:-1\n needsReset = true\n SetHyperlink = <function> defined =[C]:-1\n",
			["stack"] = "Interface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:55: in function `Display'\nInterface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:31: in function `func'\nInterface\\AddOns\\Grid2\\GridFrame.lua:94: in function <Interface\\AddOns\\Grid2\\GridFrame.lua:92>",
			["session"] = 741,
			["counter"] = 4,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\SavedInstances\\SavedInstances-8.1.2.lua:775: attempt to concatenate field 'iconTexture' (a nil value)",
			["time"] = "2019/04/24 21:48:34",
			["locals"] = "current = <table> {\n monthDay = 24\n weekday = 4\n month = 4\n minute = 47\n hour = 18\n year = 2019\n}\nmonthInfo = <table> {\n firstWeekday = 2\n numDays = 30\n year = 2019\n month = 4\n}\nmonth = 4\nday = 24\nyear = 2019\nshowMonth = 4\nshowYear = 2019\nmonthOffset = 0\nnumEvents = 3\n(for index) = 2\n(for limit) = 3\n(for step) = 1\ni = 2\nevent = <table> {\n clubID = 0\n numSequenceDays = 2\n eventID = 1074\n eventType = 4294967295\n sequenceType = \"END\"\n isCustomTitle = true\n startTime = <table> {\n }\n difficultyName = \"\"\n endTime = <table> {\n }\n invitedBy = \"\"\n dontDisplayEnd = true\n difficulty = 0\n inviteStatus = 1\n title = \"Crucible of Storms\"\n calendarType = \"HOLIDAY\"\n inviteType = 1\n sequenceIndex = 2\n dontDisplayBanner = true\n modStatus = \"\"\n}\n(*temporary) = <function> defined @Interface\\AddOns\\SavedInstances\\SavedInstances.lua:109\n(*temporary) = \"iconTexture: \"\n(*temporary) = nil\n(*temporary) = 2\n(*temporary) = \"attempt to concatenate field 'iconTexture' (a nil value)\"\ndebug = <function> defined @Interface\\AddOns\\SavedInstances\\SavedInstances.lua:109\neventInfo = <table> {\n 235476 = true\n}\n",
			["stack"] = "Interface\\AddOns\\SavedInstances\\SavedInstances-8.1.2.lua:775: in function <Interface\\AddOns\\SavedInstances\\SavedInstances.lua:766>\nInterface\\AddOns\\SavedInstances\\SavedInstances-8.1.2.lua:3825: in function `ShowTooltip'\nInterface\\AddOns\\SavedInstances\\SavedInstances-8.1.2.lua:2582: in function `OnEnter'\n...terface\\AddOns\\ElvUI\\Modules\\datatexts\\DataTexts.lua:62: in function `onEnter'\n...terface\\AddOns\\ElvUI\\Modules\\datatexts\\DataTexts.lua:228: in function <...terface\\AddOns\\ElvUI\\Modules\\datatexts\\DataTexts.lua:226>",
			["session"] = 749,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Accountant_Classic' tried to call the protected function 'Grid2LayoutFrame:ClearAllPoints()'.",
			["time"] = "2019/04/27 00:25:55",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:5: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:553: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:518>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:644: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:631: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:693: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:684>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:446: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:516: in function `RaidFrame_LoadUI'\nInterface\\FrameXML\\RaidFrame.lua:60: in function <Interface\\FrameXML\\RaidFrame.lua:51>",
			["session"] = 765,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUF_Player:ClearAllPoints()'.",
			["time"] = "2019/04/27 00:25:55",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:10: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:553: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:518>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:644: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:631: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:693: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:684>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:446: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:516: in function `RaidFrame_LoadUI'\nInterface\\FrameXML\\RaidFrame.lua:60: in function <Interface\\FrameXML\\RaidFrame.lua:51>",
			["session"] = 765,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUI_Bar1:SetWidth()'.",
			["time"] = "2019/04/28 16:13:39",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetWidth'\nInterface\\AddOns\\ElvUI\\Core\\Toolkit.lua:160: in function `Width'\n...rface\\AddOns\\ElvUI\\Modules\\actionbars\\ActionBars.lua:144: in function `PositionAndSizeBar'\n[string \"--[[ Error in 'ElvBarToggle' ]] return func...\"]:7: in function <[string \"--[[ Error in 'ElvBarToggle' ]] return func...\"]:3>",
			["session"] = 771,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Accountant_Classic' tried to call the protected function 'SecureStateDriverManager:SetAttribute()'.",
			["time"] = "2019/04/28 16:13:39",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\SecureStateDriver.lua:10: in function <Interface\\FrameXML\\SecureStateDriver.lua:8>\n(tail call): ?\n...rface\\AddOns\\ElvUI\\Modules\\actionbars\\ActionBars.lua:243: in function `PositionAndSizeBar'\n[string \"--[[ Error in 'ElvBarToggle' ]] return func...\"]:7: in function <[string \"--[[ Error in 'ElvBarToggle' ]] return func...\"]:3>",
			["session"] = 771,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MythicPlusTimer' tried to call the protected function 'ObjectiveTrackerFrame:SetParent()'.",
			["time"] = "2019/04/26 14:31:47",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetParent'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:583: in function `show_default_tracker'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:410: in function `callback'\nInterface\\AddOns\\MythicPlusTimer\\addon.lua:100: in function <Interface\\AddOns\\MythicPlusTimer\\addon.lua:94>",
			["session"] = 771,
			["counter"] = 2,
		}, -- [7]
	},
}
