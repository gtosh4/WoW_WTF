
BugGrabberDB = {
	["session"] = 12,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\Skada\\Skada-1.7.2.lua:2360: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2017/09/10 00:05:44",
			["locals"] = "(*temporary) = GameTooltip {\n 0 = <userdata>\n SetHyperlink = <function> defined =[C]:-1\n SetGuildBankItem = <function> defined =[C]:-1\n hasMoney = 1\n Hide = <function> defined =[C]:-1\n template = \"Transparent\"\n comparing = false\n SetUnitDebuff = <function> defined =[C]:-1\n SetLootItem = <function> defined =[C]:-1\n SetQuestItem = <function> defined =[C]:-1\n numMoneyFrames = 2\n SetInboxItem = <function> defined =[C]:-1\n SetBuybackItem = <function> defined =[C]:-1\n shoppingTooltips = <table> {\n }\n SetMerchantItem = <function> defined =[C]:-1\n SetQuestLogItem = <function> defined =[C]:-1\n SetTradeTargetItem = <function> defined =[C]:-1\n SetTradePlayerItem = <function> defined =[C]:-1\n SetSendMailItem = <function> defined =[C]:-1\n updateTooltip = 0.040999992564321\n SetInventoryItem = <function> defined =[C]:-1\n SetLootRollItem = <function> defined =[C]:-1\n SetUnitAura = <function> defined =[C]:-1\n ignoreUpdates = true\n SetAuctionSellItem = <function> defined =[C]:-1\n SetBagItem = <function> defined =[C]:-1\n needsReset = true\n SetRecipeReagentItem = <function> defined =[C]:-1\n SetUnitBuff = <function> defined =[C]:-1\n SetRecipeResultItem = <function> defined =[C]:-1\n SetAuctionItem = <function> defined =[C]:-1\n}\n(*temporary) = SkadaBarWindowSkada {\n 0 = <userdata>\n enablemouse = true\n win = <table> {\n }\n lastBar = <unnamed> {\n }\n callbacks = <table> {\n }\n smoothing = false\n texture = \"Interface\\Addons\\Skada\\media\\statusbar\\normTex\"\n gradMap = <table> {\n }\n colors = <table> {\n }\n showLabel = true\n showIcon = true\n spacing = 0\n button = <unnamed> {\n }\n length = 224.16644287109\n borderFrame = <unnamed> {\n }\n UnregisterAllCallbacks = <function> defined @Interface\\AddOns\\AdiBags\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:200\n offset = 0\n fontSize = 13\n fontFlags = \"\"\n buttons = <table> {\n }\n growup = false\n resizebutton = BarGroupResizeButton {\n }\n RegisterCallback = <function> defined @Interface\\AddOns\\AdiBags\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:116\n thickness = 18\n font = \"Interface\\AddOns\\ElvUI_SLE\\media\\fonts\\Accidental_Presidency.ttf\"\n UnregisterCallback = <function> defined @Interface\\AddOns\\AdiBags\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:179\n locked = true\n orientation = 1\n showTimerLabel = true\n name = \"Skada\"\n barbackgroundcolor = <table> {\n }\n}\n(*temporary) = \"ANCHOR_NONE\"\n",
			["stack"] = "[C]: in function `SetOwner'\nInterface\\AddOns\\Skada\\Skada-1.7.2.lua:2360: in function `SetTooltipPosition'\nInterface\\AddOns\\Skada\\BarDisplay.lua:178: in function <Interface\\AddOns\\Skada\\BarDisplay.lua:175>",
			["session"] = 5,
			["counter"] = 8,
		}, -- [1]
		{
			["message"] = "Interface\\FrameXML\\UIParent.lua:2924: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2017/09/10 00:05:45",
			["locals"] = "(*temporary) = GameTooltip {\n 0 = <userdata>\n SetHyperlink = <function> defined =[C]:-1\n SetGuildBankItem = <function> defined =[C]:-1\n hasMoney = 1\n Hide = <function> defined =[C]:-1\n template = \"Transparent\"\n comparing = false\n SetUnitDebuff = <function> defined =[C]:-1\n SetLootItem = <function> defined =[C]:-1\n SetQuestItem = <function> defined =[C]:-1\n numMoneyFrames = 2\n SetInboxItem = <function> defined =[C]:-1\n SetBuybackItem = <function> defined =[C]:-1\n shoppingTooltips = <table> {\n }\n SetMerchantItem = <function> defined =[C]:-1\n SetQuestLogItem = <function> defined =[C]:-1\n SetTradeTargetItem = <function> defined =[C]:-1\n SetTradePlayerItem = <function> defined =[C]:-1\n SetSendMailItem = <function> defined =[C]:-1\n updateTooltip = 0.040999992564321\n SetInventoryItem = <function> defined =[C]:-1\n SetLootRollItem = <function> defined =[C]:-1\n SetUnitAura = <function> defined =[C]:-1\n ignoreUpdates = true\n SetAuctionSellItem = <function> defined =[C]:-1\n SetBagItem = <function> defined =[C]:-1\n needsReset = true\n SetRecipeReagentItem = <function> defined =[C]:-1\n SetUnitBuff = <function> defined =[C]:-1\n SetRecipeResultItem = <function> defined =[C]:-1\n SetAuctionItem = <function> defined =[C]:-1\n}\n",
			["stack"] = "[C]: in function `IsShown'\nInterface\\FrameXML\\UIParent.lua:2924: in function <Interface\\FrameXML\\UIParent.lua:2923>\nInterface\\AddOns\\ElvUI\\Modules\\chat\\chat-Chat.lua:937: in function `?'\n...face\\AddOns\\AdiBags\\libs\\AceHook-3.0\\AceHook-3.0-8.lua:90: in function <...face\\AddOns\\AdiBags\\libs\\AceHook-3.0\\AceHook-3.0.lua:87>",
			["session"] = 5,
			["counter"] = 3,
		}, -- [2]
		{
			["message"] = "...erface\\AddOns\\ElvUI\\Libraries\\oUF\\elements\\auras-Auras.lua:81: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2017/09/10 00:06:00",
			["locals"] = "(*temporary) = GameTooltip {\n 0 = <userdata>\n SetHyperlink = <function> defined =[C]:-1\n SetGuildBankItem = <function> defined =[C]:-1\n hasMoney = 1\n Hide = <function> defined =[C]:-1\n template = \"Transparent\"\n comparing = false\n SetUnitDebuff = <function> defined =[C]:-1\n SetLootItem = <function> defined =[C]:-1\n SetQuestItem = <function> defined =[C]:-1\n numMoneyFrames = 2\n SetInboxItem = <function> defined =[C]:-1\n SetBuybackItem = <function> defined =[C]:-1\n shoppingTooltips = <table> {\n }\n SetMerchantItem = <function> defined =[C]:-1\n SetQuestLogItem = <function> defined =[C]:-1\n SetTradeTargetItem = <function> defined =[C]:-1\n SetTradePlayerItem = <function> defined =[C]:-1\n SetSendMailItem = <function> defined =[C]:-1\n updateTooltip = 0.040999992564321\n SetInventoryItem = <function> defined =[C]:-1\n SetLootRollItem = <function> defined =[C]:-1\n SetUnitAura = <function> defined =[C]:-1\n ignoreUpdates = true\n SetAuctionSellItem = <function> defined =[C]:-1\n SetBagItem = <function> defined =[C]:-1\n needsReset = true\n SetRecipeReagentItem = <function> defined =[C]:-1\n SetUnitBuff = <function> defined =[C]:-1\n SetRecipeResultItem = <function> defined =[C]:-1\n SetAuctionItem = <function> defined =[C]:-1\n}\n(*temporary) = ElvUF_PlayerDebuffsButton1 {\n 0 = <userdata>\n stealable = <unnamed> {\n }\n isStealable = false\n expirationTime = 385821.442\n expiration = 57.19599997293\n duration = 60\n cd = ElvUF_PlayerDebuffsButton1Cooldown {\n }\n name = \"Ill-Fated\"\n db = <table> {\n }\n priority = 0\n icon = <unnamed> {\n }\n isPlayer = false\n backdropTexture = <unnamed> {\n }\n template = \"Default\"\n text = <unnamed> {\n }\n spell = \"Ill-Fated\"\n nextupdate = 0.51\n overlay = <unnamed> {\n }\n count = <unnamed> {\n }\n filter = \"HARMFUL\"\n isUnitFrameElement = true\n UpdateTooltip = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\oUF\\elements\\auras.lua:74\n forcePixelMode = true\n isDebuff = true\n}\n(*temporary) = \"ANCHOR_BOTTOMRIGHT\"\n",
			["stack"] = "[C]: in function `SetOwner'\n...erface\\AddOns\\ElvUI\\Libraries\\oUF\\elements\\auras-Auras.lua:81: in function <...erface\\AddOns\\ElvUI\\Libraries\\oUF\\elements\\auras.lua:78>",
			["session"] = 5,
			["counter"] = 7,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\GatherMate2\\Collector.lua:192: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2017/09/10 00:04:20",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `GetText'\nInterface\\AddOns\\GatherMate2\\Collector.lua:192: in function `?'\n...ags\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:145: in function <...ags\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[3]\"]:4: in function <[string \"safecall Dispatcher[3]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[3]\"]:13: in function `?'\n...ags\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\n...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0.lua:119>\n[C]: in function `CastSpellByName'\nInterface\\FrameXML\\ChatFrame.lua:1105: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4492: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4180: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2759: in function <Interface\\FrameXML\\ChatFrame.lua:2752>\n[C]: in function `UseAction'\nInterface\\FrameXML\\SecureTemplates.lua:346: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:619: in function <Interface\\FrameXML\\SecureTemplates.lua:567>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:264: in function <Interface\\FrameXML\\SecureHandlers.lua:261>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:294: in function <Interface\\FrameXML\\SecureHandlers.lua:277>\n(tail call): ?",
			["session"] = 6,
			["counter"] = 36,
		}, -- [4]
		{
			["message"] = "...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:1158: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2017/09/10 00:04:31",
			["locals"] = "(*temporary) = GameTooltip {\n 0 = <userdata>\n SetHyperlink = <function> defined =[C]:-1\n SetGuildBankItem = <function> defined =[C]:-1\n hasMoney = 1\n Hide = <function> defined =[C]:-1\n template = \"Transparent\"\n comparing = false\n SetUnitDebuff = <function> defined =[C]:-1\n SetLootItem = <function> defined =[C]:-1\n SetQuestItem = <function> defined =[C]:-1\n numMoneyFrames = 2\n SetInboxItem = <function> defined =[C]:-1\n SetBuybackItem = <function> defined =[C]:-1\n shoppingTooltips = <table> {\n }\n SetMerchantItem = <function> defined =[C]:-1\n SetQuestLogItem = <function> defined =[C]:-1\n SetTradeTargetItem = <function> defined =[C]:-1\n SetTradePlayerItem = <function> defined =[C]:-1\n SetSendMailItem = <function> defined =[C]:-1\n updateTooltip = 0.1619999974966\n SetInventoryItem = <function> defined =[C]:-1\n SetLootRollItem = <function> defined =[C]:-1\n SetUnitAura = <function> defined =[C]:-1\n ignoreUpdates = true\n SetAuctionSellItem = <function> defined =[C]:-1\n SetBagItem = <function> defined =[C]:-1\n needsReset = true\n SetRecipeReagentItem = <function> defined =[C]:-1\n SetUnitBuff = <function> defined =[C]:-1\n SetRecipeResultItem = <function> defined =[C]:-1\n SetAuctionItem = <function> defined =[C]:-1\n}\n",
			["stack"] = "[C]: in function `GetOwner'\n...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:1158: in function <...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:1061>\n...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:755: in function <...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:745>",
			["session"] = 6,
			["counter"] = 5,
		}, -- [5]
		{
			["message"] = "Interface\\FrameXML\\UnitFrame.lua:463: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2017/09/10 00:04:15",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `FadeOut'\nInterface\\FrameXML\\UnitFrame.lua:463: in function <Interface\\FrameXML\\UnitFrame.lua:458>",
			["session"] = 6,
			["counter"] = 324,
		}, -- [6]
		{
			["message"] = "...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:803: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2017/09/10 00:13:02",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `GetOwner'\n...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:803: in function <...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:745>",
			["session"] = 6,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "[string \"GameTooltip:OnEnter\"]:1: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2017/09/10 00:04:55",
			["locals"] = "(*temporary) = GameTooltip {\n 0 = <userdata>\n SetHyperlink = <function> defined =[C]:-1\n SetGuildBankItem = <function> defined =[C]:-1\n hasMoney = 1\n Hide = <function> defined =[C]:-1\n template = \"Transparent\"\n comparing = false\n default = 1\n SetUnitDebuff = <function> defined =[C]:-1\n SetLootItem = <function> defined =[C]:-1\n SetQuestItem = <function> defined =[C]:-1\n numMoneyFrames = 2\n SetInboxItem = <function> defined =[C]:-1\n SetBuybackItem = <function> defined =[C]:-1\n shoppingTooltips = <table> {\n }\n SetMerchantItem = <function> defined =[C]:-1\n SetQuestLogItem = <function> defined =[C]:-1\n SetTradeTargetItem = <function> defined =[C]:-1\n SetTradePlayerItem = <function> defined =[C]:-1\n SetSendMailItem = <function> defined =[C]:-1\n updateTooltip = 0.01099999230355\n SetInventoryItem = <function> defined =[C]:-1\n SetLootRollItem = <function> defined =[C]:-1\n SetUnitAura = <function> defined =[C]:-1\n ignoreUpdates = true\n SetAuctionSellItem = <function> defined =[C]:-1\n SetBagItem = <function> defined =[C]:-1\n needsReset = true\n SetRecipeReagentItem = <function> defined =[C]:-1\n SetUnitBuff = <function> defined =[C]:-1\n SetRecipeResultItem = <function> defined =[C]:-1\n SetAuctionItem = <function> defined =[C]:-1\n}\n(*temporary) = ElvUIPlayerDebuffsAuraButton1 {\n 0 = <userdata>\n backdropTexture = <unnamed> {\n }\n template = \"Default\"\n nextUpdate = 0.43699999734759\n count = <unnamed> {\n }\n highlight = <unnamed> {\n }\n timeLeft = 47.847999997379\n time = <unnamed> {\n }\n anim = Flash {\n }\n texture = <unnamed> {\n }\n}\n(*temporary) = \"ANCHOR_BOTTOMLEFT\"\n(*temporary) = -5\n(*temporary) = -5\n",
			["stack"] = "[C]: in function `SetOwner'\n[string \"*:OnEnter\"]:1: in function <[string \"*:OnEnter\"]:1>",
			["session"] = 6,
			["counter"] = 2,
		}, -- [8]
		{
			["message"] = "Interface\\AddOns\\ExRT\\Options-Options.lua:181: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2017/09/10 00:04:57",
			["locals"] = "(*temporary) = GameTooltip {\n 0 = <userdata>\n SetHyperlink = <function> defined =[C]:-1\n SetGuildBankItem = <function> defined =[C]:-1\n hasMoney = 1\n Hide = <function> defined =[C]:-1\n template = \"Transparent\"\n comparing = false\n SetUnitDebuff = <function> defined =[C]:-1\n SetLootItem = <function> defined =[C]:-1\n SetQuestItem = <function> defined =[C]:-1\n numMoneyFrames = 2\n SetInboxItem = <function> defined =[C]:-1\n SetBuybackItem = <function> defined =[C]:-1\n shoppingTooltips = <table> {\n }\n SetMerchantItem = <function> defined =[C]:-1\n SetQuestLogItem = <function> defined =[C]:-1\n SetTradeTargetItem = <function> defined =[C]:-1\n SetTradePlayerItem = <function> defined =[C]:-1\n SetSendMailItem = <function> defined =[C]:-1\n updateTooltip = 0.2\n SetInventoryItem = <function> defined =[C]:-1\n SetLootRollItem = <function> defined =[C]:-1\n SetUnitAura = <function> defined =[C]:-1\n ignoreUpdates = true\n SetAuctionSellItem = <function> defined =[C]:-1\n SetBagItem = <function> defined =[C]:-1\n needsReset = true\n SetRecipeReagentItem = <function> defined =[C]:-1\n SetUnitBuff = <function> defined =[C]:-1\n SetRecipeResultItem = <function> defined =[C]:-1\n SetAuctionItem = <function> defined =[C]:-1\n}\n(*temporary) = LibDBIcon10_ExorsusRaidTools {\n 0 = <userdata>\n icon = <unnamed> {\n }\n border = <unnamed> {\n }\n}\n(*temporary) = \"ANCHOR_LEFT\"\n",
			["stack"] = "[C]: in function `SetOwner'\nInterface\\AddOns\\ExRT\\Options-Options.lua:181: in function <Interface\\AddOns\\ExRT\\Options.lua:180>",
			["session"] = 6,
			["counter"] = 9,
		}, -- [9]
		{
			["message"] = "...\\AddOns\\BugSack\\Libs\\LibDBIcon-1.0\\LibDBIcon-1.0-34.lua:61: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2017/09/10 00:04:57",
			["locals"] = "(*temporary) = GameTooltip {\n 0 = <userdata>\n SetHyperlink = <function> defined =[C]:-1\n SetGuildBankItem = <function> defined =[C]:-1\n hasMoney = 1\n Hide = <function> defined =[C]:-1\n template = \"Transparent\"\n comparing = false\n SetUnitDebuff = <function> defined =[C]:-1\n SetLootItem = <function> defined =[C]:-1\n SetQuestItem = <function> defined =[C]:-1\n numMoneyFrames = 2\n SetInboxItem = <function> defined =[C]:-1\n SetBuybackItem = <function> defined =[C]:-1\n shoppingTooltips = <table> {\n }\n SetMerchantItem = <function> defined =[C]:-1\n SetQuestLogItem = <function> defined =[C]:-1\n SetTradeTargetItem = <function> defined =[C]:-1\n SetTradePlayerItem = <function> defined =[C]:-1\n SetSendMailItem = <function> defined =[C]:-1\n updateTooltip = 0.2\n SetInventoryItem = <function> defined =[C]:-1\n SetLootRollItem = <function> defined =[C]:-1\n SetUnitAura = <function> defined =[C]:-1\n ignoreUpdates = true\n SetAuctionSellItem = <function> defined =[C]:-1\n SetBagItem = <function> defined =[C]:-1\n needsReset = true\n SetRecipeReagentItem = <function> defined =[C]:-1\n SetUnitBuff = <function> defined =[C]:-1\n SetRecipeResultItem = <function> defined =[C]:-1\n SetAuctionItem = <function> defined =[C]:-1\n}\n(*temporary) = LibDBIcon10_BugSack {\n 0 = <userdata>\n dataObject = <table> {\n }\n isMouseDown = false\n db = <table> {\n }\n icon = <unnamed> {\n }\n}\n(*temporary) = \"ANCHOR_NONE\"\n",
			["stack"] = "[C]: in function `SetOwner'\n...\\AddOns\\BugSack\\Libs\\LibDBIcon-1.0\\LibDBIcon-1.0-34.lua:61: in function <...\\AddOns\\BugSack\\Libs\\LibDBIcon-1.0\\LibDBIcon-1.0.lua:57>",
			["session"] = 6,
			["counter"] = 7,
		}, -- [10]
		{
			["message"] = "Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2017/09/10 00:04:55",
			["locals"] = "(*temporary) = GameTooltip {\n 0 = <userdata>\n SetHyperlink = <function> defined =[C]:-1\n SetGuildBankItem = <function> defined =[C]:-1\n hasMoney = 1\n Hide = <function> defined =[C]:-1\n template = \"Transparent\"\n comparing = false\n default = 1\n SetUnitDebuff = <function> defined =[C]:-1\n SetLootItem = <function> defined =[C]:-1\n SetQuestItem = <function> defined =[C]:-1\n numMoneyFrames = 2\n SetInboxItem = <function> defined =[C]:-1\n SetBuybackItem = <function> defined =[C]:-1\n shoppingTooltips = <table> {\n }\n SetMerchantItem = <function> defined =[C]:-1\n SetQuestLogItem = <function> defined =[C]:-1\n SetTradeTargetItem = <function> defined =[C]:-1\n SetTradePlayerItem = <function> defined =[C]:-1\n SetSendMailItem = <function> defined =[C]:-1\n updateTooltip = 0.2\n SetInventoryItem = <function> defined =[C]:-1\n SetLootRollItem = <function> defined =[C]:-1\n SetUnitAura = <function> defined =[C]:-1\n ignoreUpdates = true\n SetAuctionSellItem = <function> defined =[C]:-1\n SetBagItem = <function> defined =[C]:-1\n needsReset = true\n SetRecipeReagentItem = <function> defined =[C]:-1\n SetUnitBuff = <function> defined =[C]:-1\n SetRecipeResultItem = <function> defined =[C]:-1\n SetAuctionItem = <function> defined =[C]:-1\n}\n",
			["stack"] = "[C]: ?\n[C]: in function `Hide'\nInterface\\FrameXML\\GameTooltip.lua:508: in function <Interface\\FrameXML\\GameTooltip.lua:506>",
			["session"] = 6,
			["counter"] = 42,
		}, -- [11]
		{
			["message"] = "Interface\\SharedXML\\SharedUIPanelTemplates.lua:672: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2017/09/10 00:04:57",
			["locals"] = "(*temporary) = GameTooltip {\n 0 = <userdata>\n SetHyperlink = <function> defined =[C]:-1\n SetGuildBankItem = <function> defined =[C]:-1\n hasMoney = 1\n Hide = <function> defined =[C]:-1\n template = \"Transparent\"\n comparing = false\n SetUnitDebuff = <function> defined =[C]:-1\n SetLootItem = <function> defined =[C]:-1\n SetQuestItem = <function> defined =[C]:-1\n numMoneyFrames = 2\n SetInboxItem = <function> defined =[C]:-1\n SetBuybackItem = <function> defined =[C]:-1\n shoppingTooltips = <table> {\n }\n SetMerchantItem = <function> defined =[C]:-1\n SetQuestLogItem = <function> defined =[C]:-1\n SetTradeTargetItem = <function> defined =[C]:-1\n SetTradePlayerItem = <function> defined =[C]:-1\n SetSendMailItem = <function> defined =[C]:-1\n updateTooltip = 0.2\n SetInventoryItem = <function> defined =[C]:-1\n SetLootRollItem = <function> defined =[C]:-1\n SetUnitAura = <function> defined =[C]:-1\n ignoreUpdates = true\n SetAuctionSellItem = <function> defined =[C]:-1\n SetBagItem = <function> defined =[C]:-1\n needsReset = true\n SetRecipeReagentItem = <function> defined =[C]:-1\n SetUnitBuff = <function> defined =[C]:-1\n SetRecipeResultItem = <function> defined =[C]:-1\n SetAuctionItem = <function> defined =[C]:-1\n}\n(*temporary) = BugSackTabAll {\n 0 = <userdata>\n bugs = \"all\"\n}\n",
			["stack"] = "[C]: in function `IsOwned'\nInterface\\SharedXML\\SharedUIPanelTemplates.lua:672: in function `PanelTemplates_SelectTab'\nInterface\\AddOns\\BugSack\\sack.lua:430: in function <Interface\\AddOns\\BugSack\\sack.lua:174>\nInterface\\AddOns\\BugSack\\sack.lua:442: in function <Interface\\AddOns\\BugSack\\sack.lua:440>\nInterface\\AddOns\\BugSack\\sack.lua:464: in function `OpenSack'\nInterface\\AddOns\\BugSack\\ldb.lua:28: in function `OnClick'\n...\\AddOns\\BugSack\\Libs\\LibDBIcon-1.0\\LibDBIcon-1.0-34.lua:116: in function <...\\AddOns\\BugSack\\Libs\\LibDBIcon-1.0\\LibDBIcon-1.0.lua:116>",
			["session"] = 6,
			["counter"] = 20,
		}, -- [12]
		{
			["message"] = "Interface\\FrameXML\\GameTooltip.lua:84: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2017/09/10 00:04:14",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `SetOwner'\nInterface\\FrameXML\\GameTooltip.lua:84: in function <Interface\\FrameXML\\GameTooltip.lua:83>\n[C]: in function `GameTooltip_SetDefaultAnchor'\nInterface\\FrameXML\\UnitFrame.lua:468: in function `UnitFrame_UpdateTooltip'\nInterface\\FrameXML\\UnitFrame.lua:455: in function <Interface\\FrameXML\\UnitFrame.lua:442>",
			["session"] = 6,
			["counter"] = 300,
		}, -- [13]
		{
			["message"] = "...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:514: Usage: UnitAura(\"unit\", [index] or [\"name\", \"rank\"][, \"filter\"])",
			["time"] = "2017/09/10 00:13:29",
			["locals"] = "(*temporary) = nil\n(*temporary) = 1\n(*temporary) = \"HARMFUL|RAID\"\n",
			["stack"] = "[C]: in function `UnitAura'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:514: in function `UpdateBuffs'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:164: in function `OnUnitAuraUpdate'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:53: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:35>",
			["session"] = 6,
			["counter"] = 2,
		}, -- [14]
		{
			["message"] = "Interface\\FrameXML\\CompactUnitFrame.lua:654: Usage: UnitDistanceSquared(\"unit\")",
			["time"] = "2017/09/10 00:13:18",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[C]: in function `UnitDistanceSquared'\nInterface\\FrameXML\\CompactUnitFrame.lua:654: in function `CompactUnitFrame_UpdateDistance'\nInterface\\FrameXML\\CompactUnitFrame.lua:144: in function <Interface\\FrameXML\\CompactUnitFrame.lua:142>",
			["session"] = 6,
			["counter"] = 155,
		}, -- [15]
		{
			["message"] = "Interface\\FrameXML\\CompactUnitFrame.lua:1776: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2017/09/10 00:13:17",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n holdTime = 0\n Flash = <unnamed> {\n }\n castID = \"3-3134-1530-11142-133-001CB4E5BF\"\n showCastbar = true\n Spark = <unnamed> {\n }\n value = 1.6770000625402\n background = <unnamed> {\n }\n Icon = <unnamed> {\n }\n startChannelColor = <table> {\n }\n finishedCastColor = <table> {\n }\n flash = true\n iconWhenNoninterruptible = true\n maxValue = 1.667\n Text = <unnamed> {\n }\n additionalFadeWidgets = <table> {\n }\n BorderShield = <unnamed> {\n }\n finishedColorSameAsStart = true\n startCastColor = <table> {\n }\n flashColorSameAsStart = true\n failedCastColor = <table> {\n }\n nonInterruptibleColor = <table> {\n }\n}\n(*temporary) = 8\n",
			["stack"] = "[C]: in function `SetHeight'\nInterface\\FrameXML\\CompactUnitFrame.lua:1776: in function `DefaultCompactNamePlateFrameSetupInternal'\nInterface\\FrameXML\\CompactUnitFrame.lua:1755: in function `DefaultCompactNamePlateFrameSetup'\nInterface\\FrameXML\\CompactUnitFrame.lua:1759: in function `func'\nInterface\\FrameXML\\CompactUnitFrame.lua:204: in function `CompactUnitFrame_SetUpFrame'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:108: in function `ApplyFrameOptions'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:84: in function `OnNamePlateAdded'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:44: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:35>",
			["session"] = 6,
			["counter"] = 3,
		}, -- [16]
		{
			["message"] = "...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:789: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2017/09/10 00:04:14",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `GetOwner'\n...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:789: in function <...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:745>",
			["session"] = 6,
			["counter"] = 921,
		}, -- [17]
		{
			["message"] = "Interface\\FrameXML\\CompactUnitFrame.lua:238: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2017/09/10 00:13:18",
			["locals"] = "(*temporary) = ForbiddenNamePlate7UnitFrame {\n 0 = <userdata>\n classificationIndicator = <unnamed> {\n }\n castBar = <unnamed> {\n }\n maxDispelDebuffs = 0\n inVehicle = false\n healthBar = <unnamed> {\n }\n overAbsorbGlow = <unnamed> {\n }\n totalAbsorb = <unnamed> {\n }\n myHealPrediction = <unnamed> {\n }\n aggroHighlight = <unnamed> {\n }\n hideCastbar = false\n myHealAbsorbRightShadow = <unnamed> {\n }\n overHealAbsorbGlow = <unnamed> {\n }\n newUnit = true\n selectionHighlight = <unnamed> {\n }\n myHealAbsorbLeftShadow = <unnamed> {\n }\n maxDebuffs = 0\n unitExists = true\n disableMouse = true\n statusText = <unnamed> {\n }\n otherHealPrediction = <unnamed> {\n }\n BuffFrame = <unnamed> {\n }\n name = <unnamed> {\n }\n ClassificationFrame = <unnamed> {\n }\n myHealAbsorb = <unnamed> {\n }\n maxBuffs = 0\n optionTable = <table> {\n }\n totalAbsorbOverlay = <unnamed> {\n }\n RaidTargetFrame = <unnamed> {\n }\n LoseAggroAnim = <unnamed> {\n }\n}\n(*temporary) = \"OnEvent\"\n(*temporary) = nil\n",
			["stack"] = "[C]: in function `SetScript'\nInterface\\FrameXML\\CompactUnitFrame.lua:238: in function `CompactUnitFrame_UnregisterEvents'\nInterface\\FrameXML\\CompactUnitFrame.lua:163: in function `CompactUnitFrame_SetUnit'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:365: in function `OnRemoved'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:132: in function `OnNamePlateRemoved'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:47: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:35>",
			["session"] = 6,
			["counter"] = 3,
		}, -- [18]
		{
			["message"] = "...rface\\AddOns\\AdiBags_Legion_Filters\\Localization.lua:18: attempt to call global 'GetMapNameByID' (a nil value)",
			["time"] = "2018/07/18 23:48:55",
			["locals"] = "AddonName = \"AdiBags_Legion_Filters\"\nAddonTable = <table> {\n L = <table> {\n }\n}\nL = <table> {\n Put items from Legion in their own sections. = true\n Bait = true\n Champion Equipment = true\n Rare Fish = true\n Legion = \"Legion\"\n Fish Bait = true\n Reputation = \"Reputation\"\n Ancient Mana = \"Ancient Mana\"\n Champion Upgrades = true\n Artifact Power = \"Artifact Power\"\n}\nlocale = \"enUS\"\n(*temporary) = nil\n(*temporary) = 1021\n(*temporary) = \"attempt to call global 'GetMapNameByID' (a nil value)\"\n",
			["stack"] = "...rface\\AddOns\\AdiBags_Legion_Filters\\Localization.lua:18: in main chunk",
			["session"] = 11,
			["counter"] = 1,
		}, -- [19]
		{
			["message"] = "...Ons\\AdiBags_Legion_Filters\\Artifact_Power_Plugin.lua:15: bad argument #1 to 'pairs' (table expected, got nil)",
			["time"] = "2018/07/18 23:48:55",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"table expected, got nil\"\n = <function> defined =[C]:-1\n",
			["stack"] = "[C]: in function `pairs'\n...Ons\\AdiBags_Legion_Filters\\Artifact_Power_Plugin.lua:15: in main chunk",
			["session"] = 11,
			["counter"] = 1,
		}, -- [20]
		{
			["message"] = "...s\\AdiBags_Legion_Filters\\Artifact_Power_Currency.lua:15: Usage: NewModule(name, [prototype, [lib, lib, lib, ...]): 'name' - string expected got 'nil'.",
			["time"] = "2018/07/18 23:48:55",
			["locals"] = "(*temporary) = \"Usage: NewModule(name, [prototype, [lib, lib, lib, ...]): 'name' - string expected got 'nil'.\"\n",
			["stack"] = "[C]: ?\n...ce\\AddOns\\AdiBags\\libs\\AceAddon-3.0\\AceAddon-3.0-12.lua:267: in function `NewModule'\n...s\\AdiBags_Legion_Filters\\Artifact_Power_Currency.lua:15: in main chunk",
			["session"] = 11,
			["counter"] = 1,
		}, -- [21]
		{
			["message"] = "Interface\\AddOns\\AdiBags\\widgets\\ContainerFrame.lua:932: attempt to compare boolean with string",
			["time"] = "2018/07/18 23:49:04",
			["stack"] = "(tail call): ?\nInterface\\AddOns\\AdiBags\\widgets\\LayeredRegion.lua:119: in function <Interface\\AddOns\\AdiBags\\widgets\\LayeredRegion.lua:108>",
			["session"] = 11,
			["counter"] = 1,
		}, -- [22]
		{
			["message"] = "...ngryAssignments\\libs\\AceComm-3.0\\ChatThrottleLib-23.nil.lua:216: hooksecurefunc(): SendAddonMessage is not a function",
			["time"] = "2018/07/18 23:48:55",
			["locals"] = "",
			["stack"] = "[C]: in function `hooksecurefunc'\n...ngryAssignments\\libs\\AceComm-3.0\\ChatThrottleLib-23.nil.lua:216: in function `Init'\n...ngryAssignments\\libs\\AceComm-3.0\\ChatThrottleLib-23.nil.lua:512: in main chunk",
			["session"] = 12,
			["counter"] = 2,
		}, -- [23]
		{
			["message"] = "Interface\\AddOns\\Binder\\Binder-2.6.2.lua:54: Cannot find a library instance of \"LibKeyBound-1.0\".",
			["time"] = "2018/07/18 23:48:55",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"LibKeyBound-1.0\".\"\n",
			["stack"] = "[C]: in function `error'\nInterface\\AddOns\\AdiBags\\libs\\LibStub\\LibStub.lua:38: in function `GetLibrary'\nInterface\\AddOns\\Binder\\Binder-2.6.2.lua:54: in function `Binder_OnLoad'\n[string \"*:OnLoad\"]:1: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 12,
			["counter"] = 2,
		}, -- [24]
		{
			["message"] = "...\\TomTom\\libs\\HereBeDragons-1.0\\HereBeDragons-1.0-33.lua:125: attempt to call global 'GetWorldMapTransforms' (a nil value)",
			["time"] = "2018/07/18 23:48:57",
			["locals"] = "(*temporary) = <function> defined =[C]:-1\n(*temporary) = nil\n(*temporary) = \"attempt to call global 'GetWorldMapTransforms' (a nil value)\"\ntransforms = <table> {\n}\nipairs = <function> defined =[C]:-1\nband = <function> defined =[C]:-1\n",
			["stack"] = "...\\TomTom\\libs\\HereBeDragons-1.0\\HereBeDragons-1.0-33.lua:125: in function <...\\TomTom\\libs\\HereBeDragons-1.0\\HereBeDragons-1.0.lua:123>\n...\\TomTom\\libs\\HereBeDragons-1.0\\HereBeDragons-1.0-33.lua:352: in function `gatherMapData'\n...\\TomTom\\libs\\HereBeDragons-1.0\\HereBeDragons-1.0-33.lua:381: in main chunk",
			["session"] = 12,
			["counter"] = 2,
		}, -- [25]
		{
			["message"] = "...om\\libs\\HereBeDragons-1.0-33\\HereBeDragons-Pins-1.0-16.lua:102: attempt to index global 'WorldMapButton' (a nil value)",
			["time"] = "2018/07/18 23:48:57",
			["locals"] = "MAJOR = \"HereBeDragons-Pins-1.0\"\nMINOR = 16\npins = <table> {\n minimapPins = <table> {\n }\n Minimap = Minimap {\n }\n worldmapPins = <table> {\n }\n updateFrame = <unnamed> {\n }\n worldmapPinRegistry = <table> {\n }\n minimapPinRegistry = <table> {\n }\n activeMinimapPins = <table> {\n }\n}\noldversion = nil\nHBD = <table> {\n mapData = <table> {\n }\n callbacks = <table> {\n }\n RegisterCallback = <function> defined @Interface\\AddOns\\AdiBags\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:116\n transforms = <table> {\n }\n microDungeons = <table> {\n }\n UnregisterCallback = <function> defined @Interface\\AddOns\\AdiBags\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:179\n mapToID = <table> {\n }\n eventFrame = <unnamed> {\n }\n continentZoneMap = <table> {\n }\n}\ncos = <function> defined =[C]:-1\nsin = <function> defined =[C]:-1\nmax = <function> defined =[C]:-1\ntype = <function> defined =[C]:-1\npairs = <function> defined =[C]:-1\nGetPlayerFacing = <function> defined =[C]:-1\nminimapPins = <table> {\n}\nactiveMinimapPins = <table> {\n}\nminimapPinRegistry = <table> {\n}\nworldmapPins = <table> {\n}\nworldmapPinRegistry = <table> {\n}\nminimap_size = <table> {\n outdoor = <table> {\n }\n indoor = <table> {\n }\n}\nminimap_shapes = <table> {\n SQUARE = <table> {\n }\n SIDE-RIGHT = <table> {\n }\n SIDE-TOP = <table> {\n }\n CORNER-TOPRIGHT = <table> {\n }\n SIDE-BOTTOM = <table> {\n }\n TRICORNER-TOPRIGHT = <table> {\n }\n CORNER-BOTTOMRIGHT = <table> {\n }\n TRICORNER-BOTTOMLEFT = <table> {\n }\n TRICORNER-BOTTOMRIGHT = <table> {\n }\n TRICORNER-TOPLEFT = <table> {\n }\n SIDE-LEFT = <table> {\n }\n CORNER-BOTTOMLEFT = <table> {\n }\n CORNER-TOPLEFT = <table> {\n }\n}\ntableCache = <table> {\n}\nnewCachedTable = <function> defined @Interface\\AddOns\\TomTom\\libs\\HereBeDragons-1.0\\HereBeDragons-Pins-1.0.lua:78\nrecycle = <function> defined @Interface\\AddOns\\TomTom\\libs\\HereBeDragons-1.0\\HereBeDragons-Pins-1.0.lua:88\nrotateMinimap = true\nindoors = \"outdoor\"\nminimapPinCount = 0\nqueueFullUpdate = false\nminimapScale = nil\nminimapShape = nil\nmapRadius = nil\nminimapWidth = nil\nminimapHeight = nil\nmapSin = nil\nmapCos = nil\nlastZoom = nil\nlastFacing = nil\nlastXY = nil\nlastYY = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index global 'WorldMapButton' (a nil value)\"\n",
			["stack"] = "...om\\libs\\HereBeDragons-1.0-33\\HereBeDragons-Pins-1.0-16.lua:102: in main chunk",
			["session"] = 12,
			["counter"] = 2,
		}, -- [26]
		{
			["message"] = "Interface\\AddOns\\TomTom\\TomTom-v70300-1.0.0.lua:313: attempt to index global 'WORLDMAP_SETTINGS' (a nil value)",
			["time"] = "2018/07/18 23:48:57",
			["locals"] = "L = <table> {\n Allow control-right clicking on map to create new waypoint = \"Allow control-right clicking on map to create new waypoint\"\n Play a sound when arriving at a waypoint = \"Play a sound when arriving at a waypoint\"\n Minimap = \"Minimap\"\n TomTom can display a tooltip containing information abouto waypoints, when they are moused over.  This setting toggles that functionality = \"TomTom can display a tooltip containing information abouto waypoints, when they are moused over.  This setting toggles that functionality\"\n Remove all waypoints from this zone = \"Remove all waypoints from this zone\"\n When you 'arrive' at a waypoint (this distance is controlled by the 'Arrival Distance' setting in this group) a sound can be played to indicate this.  You can enable or disable this sound using this setting. = \"When you 'arrive' at a waypoint (this distance is controlled by the 'Arrival Distance' setting in this group) a sound can be played to indicate this.  You can enable or disable this sound using this setting.\"\n TomTom can be configured to set waypoints for the quest objectives that are shown in the watch frame and on the world map.  These options can be used to configure these options. = \"TomTom can be configured to set waypoints for the quest objectives that are shown in the watch frame and on the world map.  These options can be used to configure these options.\"\n Border color = \"Border color\"\n Disable all mouse input = \"Disable all mouse input\"\n Alpha = \"Alpha\"\n Prompt before accepting sent waypoints = \"Prompt before accepting sent waypoints\"\n Enable mouseover tooltips = \"Enable mouseover tooltips\"\n Quest Objectives = \"Quest Objectives\"\n Good color = \"Good color\"\n Display Settings = \"Display Settings\"\n Background color = \"Background color\"\n Enables the automatic setting of quest objective waypoints based on which objective is closest to your current location.  This setting WILL override the setting of manual waypoints. = \"Enables the automatic setting of quest objective waypoints based on which objective is closest to your current location.  This setting WILL override the setting of manual waypoints.\"\n Show the distance to the waypoint = \"Show the distance to the waypoint\"\n Arrow colors = \"Arrow colors\"\n Enables a floating block that displays your current position in the current zone = \"Enables a floating block that displays your current position in the current zone\"\n Data Feed Options = \"Data Feed Options\"\n Coordinate feed accuracy = \"Coordinate feed accuracy\"\n The color to be displayed when you are moving in the exact direction of the active waypoint = \"The color to be displayed when you are moving in the exact direction of the active waypoint\"\n TomTom provides you with a floating coordinate display that can be used to determine your current position.  These options can be used to enable or disable this display, or customize the block's display. = \"TomTom provides you with a floating coordinate display that can be used to determine your current position.  These options can be used to enable or disable this display, or customize the block's display.\"\n %s (%.2f, %.2f) = \"%s (%.2f, %.2f)\"\n The color to be displayed when you are halfway between the direction of the active waypoint and the completely wrong direction = \"The color to be displayed when you are halfway between the direction of the active waypoint and the completely wrong direction\"\n When a new waypoint is added, TomTom can automatically set the new waypoint as the \"Crazy Arrow\" waypoint. = \"When a new waypoint is added, TomTom can automatically set the new waypoint as the \"Crazy Arrow\" waypoint.\"\n |cffffff78/way list|r - Lists active waypoints in current zone = \"|cffffff78/way list|r - Lists active waypoints in current zone\"\n There were no waypoints to remove in %s = \"There were no waypoints to remove in %s\"\n Ask for confirmation on \"Remove All\" = \"Ask for confirmation on \"Remove All\"\"\n This setting allows you to specify the maximum height of the title text.  Any titles that are longer than this height (in game pixels) will be truncated. = \"This setting allows",
			["stack"] = "Interface\\AddOns\\TomTom\\TomTom-v70300-1.0.0.lua:313: in main chunk",
			["session"] = 12,
			["counter"] = 2,
		}, -- [27]
		{
			["message"] = "Interface\\AddOns\\TomTom\\TomTom_POIIntegration.lua:225: hooksecurefunc(): TaskPOI_OnClick is not a function",
			["time"] = "2018/07/18 23:48:57",
			["locals"] = "",
			["stack"] = "[C]: in function `hooksecurefunc'\nInterface\\AddOns\\TomTom\\TomTom_POIIntegration.lua:225: in main chunk",
			["session"] = 12,
			["counter"] = 2,
		}, -- [28]
		{
			["message"] = "Interface\\AddOns\\TomTom\\TomTom-v70300-1.0.0.lua:234: attempt to call method 'ShowHideWorldCoords' (a nil value)",
			["time"] = "2018/07/18 23:48:57",
			["locals"] = "self = <table> {\n defaults = <table> {\n }\n SetCrazyArrowColor = <function> defined @Interface\\AddOns\\TomTom\\TomTom_CrazyArrow.lua:538\n ShowHideCrazyArrow = <function> defined @Interface\\AddOns\\TomTom\\TomTom_CrazyArrow.lua:240\n ClearAllWaypoints = <function> defined @Interface\\AddOns\\TomTom\\TomTom.lua:240\n GetDirectionToWaypoint = <function> defined @Interface\\AddOns\\TomTom\\TomTom_Waypoints.lua:245\n ResetWaypointOptions = <function> defined @Interface\\AddOns\\TomTom\\TomTom.lua:249\n GetKeyArgs = <function> defined @Interface\\AddOns\\TomTom\\TomTom.lua:200\n Printf = <function> defined @Interface\\AddOns\\TomTom\\AddonCore.lua:60\n optpanels = <table> {\n }\n profile = <table> {\n }\n version = \"v70300-1.0.0\"\n Initialize = <function> defined @Interface\\AddOns\\TomTom\\TomTom.lua:27\n ClearWaypoint = <function> defined @Interface\\AddOns\\TomTom\\TomTom_Waypoints.lua:213\n waypointprofile = <table> {\n }\n waypoints = <table> {\n }\n Defer = <function> defined @Interface\\AddOns\\TomTom\\AddonCore.lua:164\n GetCurrentPlayerPosition = <function> defined @Interface\\AddOns\\TomTom\\TomTom.lua:225\n hbd = <table> {\n }\n UpdateCoordFeedThrottle = <function> defined @Interface\\AddOns\\TomTom\\TomTom.lua:308\n tooltip = TomTomTooltip {\n }\n RegisterMessage = <function> defined @Interface\\AddOns\\TomTom\\AddonCore.lua:105\n ReloadWaypoints = <function> defined @Interface\\AddOns\\TomTom\\TomTom.lua:265\n GetKey = <function> defined @Interface\\AddOns\\TomTom\\TomTom.lua:195\n waydb = <table> {\n }\n CrazyArrowIsHijacked = <function> defined @Interface\\AddOns\\TomTom\\TomTom_CrazyArrow.lua:564\n GetCurrentCoords = <function> defined @Interface\\AddOns\\TomTom\\TomTom.lua:218\n ReleaseCrazyArrow = <function> defined @Interface\\AddOns\\TomTom\\TomTom_CrazyArrow.lua:558\n HijackCrazyArrow = <function> defined @Interface\\AddOns\\TomTom\\TomTom_CrazyArrow.lua:551\n db = <table> {\n }\n L = <table> {\n }\n eventFrame = TomTomEventFrame {\n }\n ReloadOptions = <function> defined @Interface\\AddOns\\TomTom\\TomTom.lua:230\n SetWaypoint = <function> defined @Interface\\AddOns\\TomTom\\TomTom_Waypoints.lua:71\n SetCrazyArrowDirection = <function> defined @Interface\\AddOns\\TomTom\\TomTom_CrazyArrow.lua:528\n waydefaults = <table> {\n }\n SetCrazyArrowTitle = <function> defined @Interface\\AddOns\\TomTom\\TomTom_CrazyArrow.lua:544\n RegisterEvent = <function> defined @Interface\\AddOns\\TomTom\\AddonCore.lua:77\n IsCrazyArrowEmpty = <function> defined @Interface\\AddOns\\TomTom\\TomTom_CrazyArrow.lua:104\n UnregisterMessage = <function> defined @Interface\\AddOns\\TomTom\\AddonCore.lua:110\n SetCrazyArrow = <function> defined @Interface\\AddOns\\TomTom\\TomTom_CrazyArrow.lua:85\n GetDistanceToWaypoint = <function> defined @Interface\\AddOns\\TomTom\\TomTom_Waypoints.lua:237\n dropdown = TomTomDropdown {\n }\n RegisterLocale = <function> defined @Interface\\AddOns\\TomTom\\AddonCore.lua:206\n FireMessage = <function> defined @Interface\\AddOns\\TomTom\\AddonCore.lua:115\n HideWaypoint = <function> defined @Interface\\AddOns\\TomTom\\TomTom_Waypoints.lua:186\n ShowWaypoint = <function> defined @Interface\\AddOns\\TomTom\\TomTom_Waypoints.lua:201\n UnregisterEvent = <function> defined @Interface\\AddOns\\TomTom\\AddonCore.lua:83\n ReparentMinimap = <function> defined @Interface\\AddOns\\TomTom\\TomTom_Waypoints.lua:62\n}\n(*temporary) = nil\n(*temporary) = <table> {\n defaults = <table> {\n }\n SetCrazyArrowColor = <function> defined @Interface\\AddOns\\TomTom\\TomTom_CrazyArrow.lua:538\n ShowHideCrazyArrow = <function> defined @Interface\\AddOns\\TomTom\\TomTom_CrazyArrow.lua:240\n ClearAllWaypoints = <function> defined @Interface\\AddOns\\TomTom\\TomTom.lua:240\n GetDirectionToWaypoint = <function> defined @Interface\\AddOns\\TomTom\\TomTom_Waypoints.lua:245\n ResetWaypointOptions = <function> defined @Interface\\AddOns\\TomTom\\TomTom.lua:249\n GetKeyArgs = <function> defined @Interface\\AddOns\\TomTom\\TomTom.lua:200\n Printf = <function> defined @Interface\\AddOns\\TomTom\\AddonCore.lua:60\n optpanels = <table> {\n }\n profile = <table> {\n }\n version = \"v70300-1.0.0\"\n Initialize = <function> defined @Interface\\AddOns\\TomTom\\TomTom.lua:27\n ClearWaypoint = <function> defined @Interface\\AddOns\\TomTom\\TomTo",
			["stack"] = "Interface\\AddOns\\TomTom\\TomTom-v70300-1.0.0.lua:234: in function `ReloadOptions'\nInterface\\AddOns\\TomTom\\TomTom-v70300-1.0.0.lua:156: in function `Initialize'\nInterface\\AddOns\\TomTom\\AddonCore.lua:135: in function `handler'\nInterface\\AddOns\\TomTom\\AddonCore.lua:93: in function <Interface\\AddOns\\TomTom\\AddonCore.lua:89>",
			["session"] = 12,
			["counter"] = 2,
		}, -- [29]
		{
			["message"] = "Interface\\AddOns\\TomTom\\TomTom_POIIntegration.lua:39: attempt to call global 'GetCurrentMapAreaID' (a nil value)",
			["time"] = "2018/07/18 23:50:00",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"attempt to call global 'GetCurrentMapAreaID' (a nil value)\"\nenableClosest = true\nscanning = true\nhbd = <table> {\n mapData = <table> {\n }\n callbacks = <table> {\n }\n RegisterCallback = <function> defined @Interface\\AddOns\\AdiBags\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:116\n transforms = <table> {\n }\n microDungeons = <table> {\n }\n UnregisterCallback = <function> defined @Interface\\AddOns\\AdiBags\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:179\n mapToID = <table> {\n }\n eventFrame = <unnamed> {\n }\n continentZoneMap = <table> {\n }\n}\ngetQIDFromIndex = <function> defined @Interface\\AddOns\\TomTom\\TomTom_POIIntegration.lua:21\nlastWaypoint = nil\n",
			["stack"] = "Interface\\AddOns\\TomTom\\TomTom_POIIntegration.lua:39: in function <Interface\\AddOns\\TomTom\\TomTom_POIIntegration.lua:25>\nInterface\\AddOns\\TomTom\\TomTom_POIIntegration.lua:141: in function <Interface\\AddOns\\TomTom\\TomTom_POIIntegration.lua:137>",
			["session"] = 12,
			["counter"] = 1,
		}, -- [30]
		{
			["message"] = "(null)",
			["time"] = "2018/07/18 23:50:00",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:578: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:578>",
			["session"] = 12,
			["counter"] = 2,
		}, -- [31]
		{
			["message"] = "...\\AngryAssignments\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:33: Attempt to register unknown event \"PARTY_CONVERTED_TO_RAID\"",
			["time"] = "2018/07/18 23:49:01",
			["locals"] = "(*temporary) = AceEvent30Frame {\n 0 = <userdata>\n}\n(*temporary) = \"PARTY_CONVERTED_TO_RAID\"\n",
			["stack"] = "[C]: in function `RegisterEvent'\n...\\AngryAssignments\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:33: in function `OnUsed'\n...ags\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:168: in function `RegisterEvent'\nInterface\\AddOns\\AngryAssignments\\Core.lua:2584: in function `?'\n...\\AngryAssignments\\libs\\AceTimer-3.0\\AceTimer-3.0-17.lua:53: in function <...\\AngryAssignments\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:48>",
			["session"] = 12,
			["counter"] = 2,
		}, -- [32]
	},
}
