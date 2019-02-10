
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 251,
	["errors"] = {
		{
			["message"] = "[string \"--[[ Error in 'Tosh Soulstone Icon' ]] retu...\"]:40: Usage: UnitIsUnit(\"unit\", \"otherUnit\")",
			["time"] = "2019/02/09 20:43:46",
			["stack"] = "[string \"--[[ Error in 'Tosh Soulstone Icon' ]] retu...\"]:40: in function `checkUnit'\n[string \"--[[ Error in 'Tosh Soulstone Icon' ]] retu...\"]:15: in function <[string \"--[[ Error in 'Tosh Soulstone Icon' ]] retu...\"]:3>\n(tail call): ?\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:517: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:511>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:637: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:624: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:686: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:677>",
			["session"] = 249,
			["counter"] = 108,
		}, -- [1]
		{
			["message"] = "Usage: local spellID = C_SpecializationInfo.GetSpellsDisplay(specializationID)",
			["time"] = "2019/02/09 23:11:13",
			["locals"] = "(*temporary) = \"Usage: local spellID = C_SpecializationInfo.GetSpellsDisplay(specializationID)\"\n",
			["stack"] = "[C]: in function `GetSpellsDisplay'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:1247: in function <...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:1099>\n[C]: in function `PlayerTalentFrame_UpdateSpecFrame'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:417: in function `PlayerTalentFrame_Refresh'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:306: in function <...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:299>",
			["session"] = 249,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "Interface\\FrameXML\\AutoComplete.lua:388: Usage: strlenutf8(string)",
			["time"] = "2019/02/09 23:43:19",
			["locals"] = "",
			["stack"] = "[C]: in function `strlenutf8'\nInterface\\FrameXML\\AutoComplete.lua:388: in function <Interface\\FrameXML\\AutoComplete.lua:387>",
			["session"] = 249,
			["counter"] = 8,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'Postal' tried to call the protected function 'SendCharacterInvitation()'.",
			["time"] = "2019/02/09 23:43:21",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SendCharacterInvitation'\nInterface\\FrameXML\\StaticPopup.lua:4126: in function <Interface\\FrameXML\\StaticPopup.lua:4112>\nInterface\\FrameXML\\StaticPopup.lua:4136: in function `OnAccept'\nInterface\\FrameXML\\StaticPopup.lua:4990: in function `StaticPopup_OnClick'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>\n[C]: in function `Click'\nInterface\\FrameXML\\StaticPopup.lua:4167: in function `EditBoxOnEnterPressed'\nInterface\\FrameXML\\StaticPopup.lua:4856: in function `StaticPopup_EditBoxOnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 249,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:132: GetAchievementCriteriaInfo(achievementID, criteriaIndex [,countHidden]), criteria not found",
			["time"] = "2019/02/09 19:14:14",
			["stack"] = "[C]: in function `GetAchievementCriteriaInfo'\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:132: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:90>\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:181: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:166>\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:214: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:209>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 251,
			["counter"] = 5,
		}, -- [5]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Accountant_Classic' tried to call the protected function 'Grid2LayoutFrame:ClearAllPoints()'.",
			["time"] = "2019/02/10 00:26:40",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:5: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:546: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:511>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:637: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:624: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:686: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:677>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:449: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:695: in function `Communities_LoadUI'\nInterface\\FrameXML\\UIParent.lua:929: in function `ToggleCommunitiesFrame'\nInterface\\FrameXML\\UIParent.lua:816: in function `ToggleGuildFrame'\n[string \"TOGGLEGUILDTAB\"]:1: in function <[string \"TOGGLEGUILDTAB\"]:1>",
			["session"] = 251,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUF_Player:ClearAllPoints()'.",
			["time"] = "2019/02/10 00:26:40",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\n[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:10: in function <[string \"--[[ Error in 'LayoutAnchors' ]] return fun...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:546: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:511>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:637: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:624: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:686: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:677>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:449: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:695: in function `Communities_LoadUI'\nInterface\\FrameXML\\UIParent.lua:929: in function `ToggleCommunitiesFrame'\nInterface\\FrameXML\\UIParent.lua:816: in function `ToggleGuildFrame'\n[string \"TOGGLEGUILDTAB\"]:1: in function <[string \"TOGGLEGUILDTAB\"]:1>",
			["session"] = 251,
			["counter"] = 1,
		}, -- [7]
	},
}
