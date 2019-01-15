
BugGrabberDB = {
	["session"] = 1916,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'MainMenuBar:ClearAllPoints()'.",
			["time"] = "2019/01/03 14:34:05",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\nInterface\\FrameXML\\MainMenuBar.lua:43: in function `SetPositionForStatusBars'\nInterface\\FrameXML\\MainMenuBar.lua:122: in function <Interface\\FrameXML\\MainMenuBar.lua:65>",
			["session"] = 1847,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Clique' tried to call the protected function 'CompactRaidFrame7:Show()'.",
			["time"] = "2019/01/03 21:58:30",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Show'\nInterface\\FrameXML\\CompactUnitFrame.lua:356: in function `CompactUnitFrame_UpdateVisible'\nInterface\\FrameXML\\CompactUnitFrame.lua:289: in function `CompactUnitFrame_UpdateAll'\nInterface\\FrameXML\\CompactUnitFrame.lua:188: in function <Interface\\FrameXML\\CompactUnitFrame.lua:188>",
			["session"] = 1857,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WorldQuestsList' tried to call the protected function 'Search()'.",
			["time"] = "2018/12/21 21:07:24",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Search'\nInterface\\FrameXML\\LFGList.lua:1744: in function `LFGListSearchPanel_DoSearch'\nInterface\\FrameXML\\LFGList.lua:1916: in function <Interface\\FrameXML\\LFGList.lua:1910>\n[C]: ?\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-84.lua:7005: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:7001>\n[C]: in function `Click'\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-84.lua:7098: in function `LFG_Search'\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-84.lua:7503: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:7477>",
			["session"] = 1866,
			["counter"] = 5,
		}, -- [3]
		{
			["message"] = "Usage: local spellID = C_SpecializationInfo.GetSpellsDisplay(specializationID)",
			["time"] = "2019/01/04 21:21:08",
			["locals"] = "(*temporary) = \"Usage: local spellID = C_SpecializationInfo.GetSpellsDisplay(specializationID)\"\n",
			["stack"] = "[C]: in function `GetSpellsDisplay'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:1247: in function <...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:1099>\n[C]: in function `PlayerTalentFrame_UpdateSpecFrame'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:417: in function `PlayerTalentFrame_Refresh'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:306: in function <...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:299>",
			["session"] = 1867,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "...ace\\AddOns\\ElvUI\\Modules\\unitframes\\groups\\party-Party.lua:61: attempt to call method 'Construct_SummonIcon' (a nil value)",
			["time"] = "2019/01/04 21:21:30",
			["stack"] = "[C]: ?\n[C]: ?\nInterface\\FrameXML\\RestrictedFrames.lua:641: in function <Interface\\FrameXML\\RestrictedFrames.lua:640>\nInterface\\FrameXML\\RestrictedFrames.lua:779: in function `CallMethod'\n[string \"		local header = self:GetParent()...\"]:51: in function <[string \"		local header = self:GetParent()...\"]:1>\n(tail call): ?\n[C]: ?\nInterface\\FrameXML\\RestrictedExecution.lua:484: in function <Interface\\FrameXML\\RestrictedExecution.lua:447>\nInterface\\FrameXML\\SecureGroupHeaders.lua:116: in function <Interface\\FrameXML\\SecureGroupHeaders.lua:110>\nInterface\\FrameXML\\SecureGroupHeaders.lua:166: in function <Interface\\FrameXML\\SecureGroupHeaders.lua:123>\nInterface\\FrameXML\\SecureGroupHeaders.lua:488: in function <Interface\\FrameXML\\SecureGroupHeaders.lua:387>\n[C]: in function `Show'\n...\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:129: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:129>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1583: in function `InitializeInitialModules'\nInterface\\AddOns\\ElvUI\\init.lua:116: in function <Interface\\AddOns\\ElvUI\\init.lua:66>\n[C]: ?\n...ccountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0-12.lua:70: in function <...ccountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n...ccountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0-12.lua:498: in function `InitializeAddon'\n...ccountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0-12.lua:613: in function <...ccountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:605>",
			["session"] = 1868,
			["counter"] = 10,
		}, -- [5]
		{
			["message"] = "Error loading Interface\\AddOns\\ElvUI\\Modules\\unitframes\\elements\\summonindicator.lua",
			["time"] = "2019/01/04 21:21:43",
			["session"] = 1868,
			["counter"] = 5,
		}, -- [6]
		{
			["message"] = "Error loading Interface\\AddOns\\ElvUI\\Libraries\\oUF\\elements\\summonindicator.lua",
			["time"] = "2019/01/04 21:21:43",
			["session"] = 1868,
			["counter"] = 5,
		}, -- [7]
		{
			["message"] = "[string \"--[[ Error in 'Orbs Ghuun Mythic' ]] return...\"]:24: attempt to index field '?' (a nil value)",
			["time"] = "2019/01/05 00:17:17",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\RegionTypes\\Text.lua:171: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:4208: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4202>",
			["session"] = 1870,
			["counter"] = 9,
		}, -- [8]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Clique' tried to call the protected function 'CompactRaidFrame4:Hide()'.",
			["time"] = "2019/01/05 22:42:11",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Hide'\nInterface\\FrameXML\\CompactUnitFrame.lua:358: in function `CompactUnitFrame_UpdateVisible'\nInterface\\FrameXML\\CompactUnitFrame.lua:289: in function `CompactUnitFrame_UpdateAll'\nInterface\\FrameXML\\CompactUnitFrame.lua:188: in function <Interface\\FrameXML\\CompactUnitFrame.lua:188>",
			["session"] = 1871,
			["counter"] = 1,
		}, -- [9]
		{
			["message"] = "...ic\\Libs\\AceGUI-3.0-36\\widgets\\AceGUIWidget-DropDown.lua:597: attempt to index field 'pullout' (a nil value)",
			["time"] = "2019/01/05 23:39:17",
			["stack"] = "...ic\\Libs\\AceGUI-3.0-36\\widgets\\AceGUIWidget-DropDown.lua:597: in function `SetList'\nInterface\\AddOns\\oRA3\\modules\\Promote.lua:309: in function `?'\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\oRA3\\oRA3-v8.1.0.lua:521: in function `?'\nInterface\\AddOns\\oRA3\\oRA3-v8.1.0.lua:230: in function <Interface\\AddOns\\oRA3\\oRA3.lua:225>",
			["session"] = 1871,
			["counter"] = 2,
		}, -- [10]
		{
			["message"] = "Interface\\AddOns\\AstralKeys\\AstralKeys-3.2.lua:79: attempt to call field 'GetBestClear' (a nil value)",
			["time"] = "2019/01/08 10:00:21",
			["locals"] = "self = <unnamed> {\n elapsed = 60.005002\n first = false\n interval = 60\n 0 = <userdata>\n}\nelapsed = 0.007000\n(*temporary) = nil\n(*temporary) = \"attempt to call field 'GetBestClear' (a nil value)\"\ne = <table> {\n GetCharacterID = <function> defined @Interface\\AddOns\\AstralKeys\\Character Info.lua:33\n UpdateCharacterIDs = <function> defined @Interface\\AddOns\\AstralKeys\\Character Info.lua:11\n Scale = <function> defined @Interface\\AddOns\\AstralKeys\\Init.lua:17\n SetPlayerNameRealm = <function> defined @Interface\\AddOns\\AstralKeys\\Character Info.lua:73\n Unit = <function> defined @Interface\\AddOns\\AstralKeys\\Unit Information.lua:22\n WeekTime = <function> defined @Interface\\AddOns\\AstralKeys\\AstralKeys.lua:13\n icon = <table> {\n }\n UnitClass = <function> defined @Interface\\AddOns\\AstralKeys\\Unit Information.lua:33\n UpdateCharacterFrames = <function> defined @Interface\\AddOns\\AstralKeys\\Frame.lua:1105\n PlayerName = <function> defined @Interface\\AddOns\\AstralKeys\\Character Info.lua:90\n SetPlayerClass = <function> defined @Interface\\AddOns\\AstralKeys\\Character Info.lua:95\n AffixThree = <function> defined @Interface\\AddOns\\AstralKeys\\Affixes.lua:77\n UpdateCharacterBest = <function> defined @Interface\\AddOns\\AstralKeys\\Key Information.lua:128\n SetUIScale = <function> defined @Interface\\AddOns\\AstralKeys\\Init.lua:10\n AffixTwo = <function> defined @Interface\\AddOns\\AstralKeys\\Affixes.lua:70\n SetFrameListShown = <function> defined @Interface\\AddOns\\AstralKeys\\Settings.lua:148\n GuildMemberRank = <function> defined @Interface\\AddOns\\AstralKeys\\Lists\\Guild.lua:34\n GetCharacterKeyLevel = <function> defined @Interface\\AddOns\\AstralKeys\\Character Info.lua:123\n GetFriendGaID = <function> defined @Interface\\AddOns\\AstralKeys\\Lists\\Friends.lua:28\n GuildMemberGuid = <function> defined @Interface\\AddOns\\AstralKeys\\Lists\\Guild.lua:41\n UnitKeyLevel = <function> defined @Interface\\AddOns\\AstralKeys\\Unit Information.lua:38\n SetUnitID = <function> defined @Interface\\AddOns\\AstralKeys\\Unit Information.lua:8\n GetDifficultyColour = <function> defined @Interface\\AddOns\\AstralKeys\\Key Information.lua:162\n FriendGUID = <function> defined @Interface\\AddOns\\AstralKeys\\Lists\\Friends.lua:94\n AffixOne = <function> defined @Interface\\AddOns\\AstralKeys\\Affixes.lua:63\n FriendPresName = <function> defined @Interface\\AddOns\\AstralKeys\\Lists\\Friends.lua:102\n GetListFunction = <function> defined @Interface\\AddOns\\AstralKeys\\Lists.lua:24\n AffixFour = <function> defined @Interface\\AddOns\\AstralKeys\\Affixes.lua:86\n UnitMapID = <function> defined @Interface\\AddOns\\AstralKeys\\Unit Information.lua:43\n UnitWeeklyBest = <function> defined @Interface\\AddOns\\AstralKeys\\Unit Information.lua:48\n UpdateTable = <function> defined @Interface\\AddOns\\AstralKeys\\Tables.lua:20\n DataResetTime = <function> defined @Interface\\AddOns\\AstralKeys\\Settings.lua:7\n UnitInGuild = <function> defined @Interface\\AddOns\\AstralKeys\\Lists\\Guild.lua:23\n AddUnitFunction = <function> defined @Interface\\AddOns\\AstralKeys\\Lists.lua:9\n AffixDescription = <function> defined @Interface\\AddOns\\AstralKeys\\Affixes.lua:98\n CharacterName = <function> defined @Interface\\AddOns\\AstralKeys\\Character Info.lua:26\n AnnounceNewKey = <function> defined @Interface\\AddOns\\AstralKeys\\Communications.lua:322\n PlayerClass = <function> defined @Interface\\AddOns\\AstralKeys\\Character Info.lua:101\n GetCharacterClass = <function> defined @Interface\\AddOns\\AstralKeys\\Character Info.lua:40\n AddListSort = <function> defined @Interface\\AddOns\\AstralKeys\\Tables.lua:13\n AddListFilter = <function> defined @Interface\\AddOns\\AstralKeys\\Tables.lua:6\n FrameListShown = <function> defined @Interface\\AddOns\\AstralKeys\\Settings.lua:144\n CLIENT_VERSION = \"3.2\"\n AstralToggle = <function> defined @Interface\\AddOns\\AstralKeys\\Frame.lua:1138\n AddUnitToTable = <function> defined @Interface\\AddOns\\AstralKeys\\Frame.lua:1118\n UpdateFrames = <function> defined @Interface\\AddOns\\AstralKeys\\Frame.lua:1096\n CreateCheckBox = <function> defined @Interface\\AddOns\\AstralKeys\\Frame Functions.lua:15\n FriendID = <function> defined @Interface\\AddOns\\AstralKeys\\Lists\\Friends.",
			["stack"] = "Interface\\AddOns\\AstralKeys\\AstralKeys-3.2.lua:79: in function <Interface\\AddOns\\AstralKeys\\AstralKeys.lua:61>",
			["session"] = 1879,
			["counter"] = 1,
		}, -- [11]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'MainMenuBar:SetPoint()'.",
			["time"] = "2019/01/03 19:05:55",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetPoint'\nInterface\\FrameXML\\UIParent.lua:2981: in function `UIParentManageFramePositions'\nInterface\\FrameXML\\UIParent.lua:2357: in function <Interface\\FrameXML\\UIParent.lua:2344>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3153: in function <Interface\\FrameXML\\UIParent.lua:3151>\n[C]: in function `UIParent_ManageFramePositions'\n...ard_UIWidgets\\Blizzard_UIWidgetBelowMinimapFrame.lua:25: in function <...ard_UIWidgets\\Blizzard_UIWidgetBelowMinimapFrame.lua:3>\n[C]: in function `layoutFunc'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:225: in function `UpdateWidgetSetContainerLayout'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:318: in function `ProcessWidgetSet'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:340: in function `UpdateAllWidgets'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:33: in function <...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:31>",
			["session"] = 1898,
			["counter"] = 2,
		}, -- [12]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Clique' tried to call the protected function 'CompactRaidFrameContainer:Hide()'.",
			["time"] = "2019/01/11 01:38:03",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Hide'\n...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:527: in function `CompactRaidFrameManager_UpdateContainerVisibility'\n...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:472: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:461>\n...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:511: in function `CompactRaidFrameManager_SetSetting'\n...rd_CUFProfiles\\Blizzard_CompactUnitFrameProfiles.lua:594: in function `func'\n...rd_CUFProfiles\\Blizzard_CompactUnitFrameProfiles.lua:571: in function `CompactUnitFrameProfiles_ApplyProfile'\n...rd_CUFProfiles\\Blizzard_CompactUnitFrameProfiles.lua:174: in function `CompactUnitFrameProfiles_ApplyCurrentSettings'\n...rd_CUFProfiles\\Blizzard_CompactUnitFrameProfiles.lua:83: in function `CompactUnitFrameProfiles_CancelChanges'\n...rd_CUFProfiles\\Blizzard_CompactUnitFrameProfiles.lua:76: in function <...rd_CUFProfiles\\Blizzard_CompactUnitFrameProfiles.lua:74>\n[C]: in function `pcall'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:214: in function <Interface\\FrameXML\\InterfaceOptionsFrame.lua:213>\n[C]: in function `securecall'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:249: in function <Interface\\FrameXML\\InterfaceOptionsFrame.lua:245>",
			["session"] = 1900,
			["counter"] = 1,
		}, -- [13]
	},
}
