
BugGrabberDB = {
	["session"] = 662,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\SavedInstances\\SavedInstances-8.1.0.lua:3188: Usage: <unnamed>:SetBackdrop(nil or {bgFile = \"bgFile\", edgeFile = \"edgeFile\", tile = false, tileSize = 0, edgeSize = 32, insets = { left = 0, right = 0, top = 0, bottom = 0 }})",
			["time"] = "2019/04/02 00:26:24",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n regularFont = GameTooltipText {\n }\n OnRelease = <function> defined @Interface\\AddOns\\SavedInstances\\SavedInstances.lua:4336\n headerFont = SavedInstancedTooltipHeaderFont {\n }\n key = \"SavedInstancesTooltip\"\n scripts = <table> {\n }\n SetBackdropBorderColor = <function> defined =[C]:-1\n scrollFrame = <unnamed> {\n }\n anchorframe = SavedInstancesDetachHeader {\n }\n template = \"Transparent\"\n scrollChild = <unnamed> {\n }\n colspans = <table> {\n }\n width = 665.503168\n labelProvider = <table> {\n }\n lines = <table> {\n }\n height = 703.471794\n SetBackdropColor = <function> defined =[C]:-1\n pixelBorders = <table> {\n }\n columns = <table> {\n }\n}\n",
			["stack"] = "[C]: in function `SetBackdrop'\nInterface\\AddOns\\SavedInstances\\SavedInstances-8.1.0.lua:3188: in function <Interface\\AddOns\\SavedInstances\\SavedInstances.lua:3184>",
			["session"] = 657,
			["counter"] = 12,
		}, -- [1]
		{
			["message"] = "...nterface\\AddOns\\DejaCharacterStats\\DCSAprilFools.lua:66: CharacterMainHandSlot:SetPoint(): DCSAFLeftframe is dependent on this",
			["time"] = "2019/04/02 00:24:50",
			["locals"] = "(*temporary) = CharacterMainHandSlot {\n HasPaperDollAzeriteItemOverlay = \"true\"\n PostOnLoad = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:169\n AzeriteTexture = <unnamed> {\n }\n IconOverlay = <unnamed> {\n }\n textureSlot7 = <unnamed> {\n }\n textureSlot5 = <unnamed> {\n }\n checkRelic = false\n duratexture = <unnamed> {\n }\n IconBorder = <unnamed> {\n }\n AvailableTraitFrame = <unnamed> {\n }\n icon = CharacterMainHandSlotIconTexture {\n }\n ignoreTexture = <unnamed> {\n }\n UpdateAzeriteRank = <function> defined @Interface\\FrameXML\\AzeritePaperDollItemOverlay.lua:42\n pushed = <unnamed> {\n }\n UpdateTooltip = <function> defined @Interface\\FrameXML\\PaperDollFrame.lua:1668\n popoutButton = CharacterMainHandSlotPopoutButton {\n }\n backgroundTextureName = 136518\n ResetAzeriteTextures = <function> defined @Interface\\FrameXML\\AzeritePaperDollItemOverlay.lua:71\n RankFrame = <unnamed> {\n }\n RegisterCallback = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:175\n DisplayAsAzeriteItem = <function> defined =[C]:-1\n UnregisterCallback = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:182\n PostOnHide = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:198\n verticalFlyout = true\n count = 1\n Durability = <unnamed> {\n }\n ItemLevel = <unnamed> {\n }\n durability = FontString {\n }\n iLvlText = <unnamed> {\n }\n pixelBorders = <table> {\n }\n enchantText = <unnamed> {\n }\n SetBackdropBorderColor = <function> defined =[C]:-1\n ItemContextOverlay = <unnamed> {\n }\n PostOnShow = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:189\n textureSlot6 = <unnamed> {\n }\n SetBackdropColor = <function> defined =[C]:-1\n textureSlot8 = <unnamed> {\n }\n template = \"Default\"\n itemContextMatchResult = 3\n textureSlot9 = <unnamed> {\n }\n textureSlot1 = <unnamed> {\n }\n textureSlot4 = <unnamed> {\n }\n textureSlot3 = <unnamed> {\n }\n textureSlot2 = <unnamed> {\n }\n SetMatchesSearch = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:202\n UpdateItemContextOverlay = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:222\n ResetAzeriteItem = <function> defined @Interface\\FrameXML\\AzeritePaperDollItemOverlay.lua:63\n itemcolor = <unnamed> {\n }\n ilevel = FontString {\n }\n itemrepair = FontString {\n }\n itemContextChangedCallback = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:170\n 0 = <userdata>\n SetAzeriteItem = <function> defined =[C]:-1\n Count = CharacterMainHandSlotCount {\n }\n textureSlot10 = <unnamed> {\n }\n searchOverlay = CharacterMainHandSlotSearchOverlay {\n }\n GetMatchesSearch = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:207\n DisplayAsAzeriteEmpoweredItem = <function> defined =[C]:-1\n UpdateItemContextMatching = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:211\n}\n(*temporary) = \"TOP\"\n(*temporary) = DCSAFLeftframe {\n 0 = <userdata>\n texture = <unnamed> {\n }\n}\n(*temporary) = \"BOTTOM\"\n(*temporary) = 15\n(*temporary) = -6\n",
			["stack"] = "[C]: in function `SetPoint'\n...nterface\\AddOns\\DejaCharacterStats\\DCSAprilFools.lua:66: in function <...nterface\\AddOns\\DejaCharacterStats\\DCSAprilFools.lua:31>\n...nterface\\AddOns\\DejaCharacterStats\\DCSAprilFools.lua:640: in function <...nterface\\AddOns\\DejaCharacterStats\\DCSAprilFools.lua:634>",
			["session"] = 659,
			["counter"] = 5,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Accountant_Classic' tried to call the protected function 'Grid2LayoutFrame:ClearAllPoints()'.",
			["time"] = "2019/04/02 02:09:16",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:5: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:555: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:520>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:646: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:633: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:695: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:686>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:446: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:465: in function `IslandsPartyPose_LoadUI'\nInterface\\FrameXML\\UIParent.lua:2089: in function <Interface\\FrameXML\\UIParent.lua:1090>",
			["session"] = 659,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUF_Player:ClearAllPoints()'.",
			["time"] = "2019/04/02 02:09:16",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:10: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:555: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:520>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:646: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:633: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:695: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:686>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:446: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:465: in function `IslandsPartyPose_LoadUI'\nInterface\\FrameXML\\UIParent.lua:2089: in function <Interface\\FrameXML\\UIParent.lua:1090>",
			["session"] = 659,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "AceLocale-3.0-6: Quartz3: Missing entry for 'Frame Strata'",
			["time"] = "2019/04/02 20:09:59",
			["stack"] = "Interface\\AddOns\\Quartz\\modules\\GCD.lua:289: in function `v'\nInterface\\AddOns\\Quartz\\Config.lua:188: in function <Interface\\AddOns\\Quartz\\Config.lua:51>\n...-3.0\\AceConfigRegistry-3.0\\AceConfigRegistry-3.0-18.lua:311: in function `app'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:1800: in function `Open'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:1893: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:1891>\n[C]: ?\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:71: in function <...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:69>\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:285: in function `Fire'\n...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:20: in function <...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:19>\n[C]: in function `Show'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:28: in function `InterfaceOptionsList_DisplayPanel'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:46: in function `InterfaceOptionsListButton_OnClick'\n[string \"*:OnClick\"]:2: in function <[string \"*:OnClick\"]:1>",
			["session"] = 662,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "AceLocale-3.0-6: Quartz3: Missing entry for 'Low'",
			["time"] = "2019/04/02 20:09:59",
			["stack"] = "Interface\\AddOns\\Quartz\\modules\\GCD.lua:293: in function `v'\nInterface\\AddOns\\Quartz\\Config.lua:188: in function <Interface\\AddOns\\Quartz\\Config.lua:51>\n...-3.0\\AceConfigRegistry-3.0\\AceConfigRegistry-3.0-18.lua:311: in function `app'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:1800: in function `Open'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:1893: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:1891>\n[C]: ?\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:71: in function <...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:69>\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:285: in function `Fire'\n...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:20: in function <...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:19>\n[C]: in function `Show'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:28: in function `InterfaceOptionsList_DisplayPanel'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:46: in function `InterfaceOptionsListButton_OnClick'\n[string \"*:OnClick\"]:2: in function <[string \"*:OnClick\"]:1>",
			["session"] = 662,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "AceLocale-3.0-6: Quartz3: Missing entry for 'Medium'",
			["time"] = "2019/04/02 20:09:59",
			["stack"] = "Interface\\AddOns\\Quartz\\modules\\GCD.lua:294: in function `v'\nInterface\\AddOns\\Quartz\\Config.lua:188: in function <Interface\\AddOns\\Quartz\\Config.lua:51>\n...-3.0\\AceConfigRegistry-3.0\\AceConfigRegistry-3.0-18.lua:311: in function `app'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:1800: in function `Open'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:1893: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:1891>\n[C]: ?\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:71: in function <...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:69>\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:285: in function `Fire'\n...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:20: in function <...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:19>\n[C]: in function `Show'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:28: in function `InterfaceOptionsList_DisplayPanel'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:46: in function `InterfaceOptionsListButton_OnClick'\n[string \"*:OnClick\"]:2: in function <[string \"*:OnClick\"]:1>",
			["session"] = 662,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "AceLocale-3.0-6: Quartz3: Missing entry for 'High'",
			["time"] = "2019/04/02 20:09:59",
			["stack"] = "Interface\\AddOns\\Quartz\\modules\\GCD.lua:295: in function `v'\nInterface\\AddOns\\Quartz\\Config.lua:188: in function <Interface\\AddOns\\Quartz\\Config.lua:51>\n...-3.0\\AceConfigRegistry-3.0\\AceConfigRegistry-3.0-18.lua:311: in function `app'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:1800: in function `Open'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:1893: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:1891>\n[C]: ?\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:71: in function <...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:69>\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:285: in function `Fire'\n...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:20: in function <...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:19>\n[C]: in function `Show'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:28: in function `InterfaceOptionsList_DisplayPanel'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:46: in function `InterfaceOptionsListButton_OnClick'\n[string \"*:OnClick\"]:2: in function <[string \"*:OnClick\"]:1>",
			["session"] = 662,
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "AceLocale-3.0-6: Quartz3: Missing entry for 'Dialog'",
			["time"] = "2019/04/02 20:09:59",
			["stack"] = "Interface\\AddOns\\Quartz\\modules\\GCD.lua:296: in function `v'\nInterface\\AddOns\\Quartz\\Config.lua:188: in function <Interface\\AddOns\\Quartz\\Config.lua:51>\n...-3.0\\AceConfigRegistry-3.0\\AceConfigRegistry-3.0-18.lua:311: in function `app'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:1800: in function `Open'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-69.lua:1893: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:1891>\n[C]: ?\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:71: in function <...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:69>\n...ns\\Accountant_Classic\\Libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:285: in function `Fire'\n...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:20: in function <...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:19>\n[C]: in function `Show'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:28: in function `InterfaceOptionsList_DisplayPanel'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:46: in function `InterfaceOptionsListButton_OnClick'\n[string \"*:OnClick\"]:2: in function <[string \"*:OnClick\"]:1>",
			["session"] = 662,
			["counter"] = 1,
		}, -- [9]
	},
}
