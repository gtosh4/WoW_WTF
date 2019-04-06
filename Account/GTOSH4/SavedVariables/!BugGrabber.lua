
BugGrabberDB = {
	["session"] = 652,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Accountant_Classic' tried to call the protected function 'Grid2LayoutFrame:ClearAllPoints()'.",
			["time"] = "2019/03/31 01:18:27",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:5: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:555: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:520>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:646: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:633: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:695: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:686>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:446: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:516: in function `RaidFrame_LoadUI'\nInterface\\FrameXML\\RaidFrame.lua:60: in function <Interface\\FrameXML\\RaidFrame.lua:51>",
			["session"] = 639,
			["counter"] = 3,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUF_Player:ClearAllPoints()'.",
			["time"] = "2019/03/31 01:18:27",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:10: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:555: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:520>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:646: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:633: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:695: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:686>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:446: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:516: in function `RaidFrame_LoadUI'\nInterface\\FrameXML\\RaidFrame.lua:60: in function <Interface\\FrameXML\\RaidFrame.lua:51>",
			["session"] = 639,
			["counter"] = 3,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MythicPlusTimer' tried to call the protected function 'ObjectiveTrackerFrame:Hide()'.",
			["time"] = "2019/03/31 21:32:30",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Hide'\nInterface\\AddOns\\MythicPlusTimer\\CMTimer.lua:449: in function `Draw'\nInterface\\AddOns\\MythicPlusTimer\\Core.lua:380: in function `OnCMTimerTick'\nInterface\\AddOns\\MythicPlusTimer\\Core.lua:441: in function <Interface\\AddOns\\MythicPlusTimer\\Core.lua:436>\n[C]: in function `updateFunc'\n...jectiveTracker\\Blizzard_ScenarioObjectiveTracker.lua:228: in function <...jectiveTracker\\Blizzard_ScenarioObjectiveTracker.lua:226>",
			["session"] = 642,
			["counter"] = 2,
		}, -- [3]
		{
			["message"] = "...nterface\\AddOns\\DejaCharacterStats\\DCSAprilFools.lua:66: CharacterMainHandSlot:SetPoint(): DCSAFLeftframe is dependent on this",
			["time"] = "2019/04/02 00:29:59",
			["locals"] = "(*temporary) = CharacterMainHandSlot {\n HasPaperDollAzeriteItemOverlay = \"true\"\n PostOnLoad = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:169\n AzeriteTexture = <unnamed> {\n }\n IconOverlay = <unnamed> {\n }\n textureSlot7 = <unnamed> {\n }\n textureSlot5 = <unnamed> {\n }\n checkRelic = false\n duratexture = <unnamed> {\n }\n IconBorder = <unnamed> {\n }\n AvailableTraitFrame = <unnamed> {\n }\n icon = CharacterMainHandSlotIconTexture {\n }\n ignoreTexture = <unnamed> {\n }\n UpdateAzeriteRank = <function> defined @Interface\\FrameXML\\AzeritePaperDollItemOverlay.lua:42\n pushed = <unnamed> {\n }\n UpdateTooltip = <function> defined @Interface\\FrameXML\\PaperDollFrame.lua:1668\n popoutButton = CharacterMainHandSlotPopoutButton {\n }\n backgroundTextureName = 136518\n ResetAzeriteTextures = <function> defined @Interface\\FrameXML\\AzeritePaperDollItemOverlay.lua:71\n RankFrame = <unnamed> {\n }\n RegisterCallback = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:175\n UnregisterCallback = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:182\n PostOnHide = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:198\n verticalFlyout = true\n Durability = <unnamed> {\n }\n ItemLevel = <unnamed> {\n }\n durability = FontString {\n }\n iLvlText = <unnamed> {\n }\n pixelBorders = <table> {\n }\n enchantText = <unnamed> {\n }\n SetBackdropBorderColor = <function> defined =[C]:-1\n ItemContextOverlay = <unnamed> {\n }\n PostOnShow = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:189\n textureSlot6 = <unnamed> {\n }\n SetBackdropColor = <function> defined =[C]:-1\n textureSlot8 = <unnamed> {\n }\n template = \"Default\"\n DisplayAsAzeriteItem = <function> defined =[C]:-1\n textureSlot9 = <unnamed> {\n }\n textureSlot1 = <unnamed> {\n }\n textureSlot4 = <unnamed> {\n }\n textureSlot3 = <unnamed> {\n }\n textureSlot2 = <unnamed> {\n }\n SetMatchesSearch = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:202\n UpdateItemContextOverlay = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:222\n ResetAzeriteItem = <function> defined @Interface\\FrameXML\\AzeritePaperDollItemOverlay.lua:63\n itemcolor = <unnamed> {\n }\n ilevel = FontString {\n }\n itemrepair = FontString {\n }\n itemContextChangedCallback = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:170\n 0 = <userdata>\n SetAzeriteItem = <function> defined =[C]:-1\n Count = CharacterMainHandSlotCount {\n }\n textureSlot10 = <unnamed> {\n }\n searchOverlay = CharacterMainHandSlotSearchOverlay {\n }\n GetMatchesSearch = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:207\n DisplayAsAzeriteEmpoweredItem = <function> defined =[C]:-1\n UpdateItemContextMatching = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:211\n}\n(*temporary) = \"TOP\"\n(*temporary) = DCSAFLeftframe {\n 0 = <userdata>\n texture = <unnamed> {\n }\n}\n(*temporary) = \"BOTTOM\"\n(*temporary) = 15\n(*temporary) = -6\n",
			["stack"] = "[C]: in function `SetPoint'\n...nterface\\AddOns\\DejaCharacterStats\\DCSAprilFools.lua:66: in function <...nterface\\AddOns\\DejaCharacterStats\\DCSAprilFools.lua:31>\n...nterface\\AddOns\\DejaCharacterStats\\DCSAprilFools.lua:640: in function <...nterface\\AddOns\\DejaCharacterStats\\DCSAprilFools.lua:634>",
			["session"] = 642,
			["counter"] = 13,
		}, -- [4]
		{
			["message"] = "Interface\\AddOns\\ToshAssignments\\bigwigs-v142.1.lua:240: attempt to perform arithmetic on local 'length' (a nil value)",
			["time"] = "2019/04/03 21:46:27",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\ToshAssignments\\bigwigs-v142.1.lua:240: in function `?'\n...\\Accountant_Classic\\Libs\\AceHook-3.0\\AceHook-3.0-8.lua:90: in function `Bar'\n...ace\\AddOns\\BigWigs_BattleOfDazaralor\\Mekkatorque.lua:319: in function `?'\nInterface\\AddOns\\BigWigs_Core\\BossPrototype.lua:450: in function <Interface\\AddOns\\BigWigs_Core\\BossPrototype.lua:416>",
			["session"] = 651,
			["counter"] = 5,
		}, -- [5]
	},
}
