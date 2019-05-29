
BugGrabberDB = {
	["session"] = 882,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUI_Bar2:SetWidth()'.",
			["time"] = "2019/05/26 22:04:31",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetWidth'\nInterface\\AddOns\\ElvUI\\Core\\Toolkit.lua:179: in function `Width'\n...rface\\AddOns\\ElvUI\\Modules\\actionbars\\ActionBars.lua:144: in function `PositionAndSizeBar'\n[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:10: in function `toggle'\n[string \"local r=WeakAuras.GetRegion(\"Elv AB toggle\"...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2155: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4721: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4382: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2895: in function <Interface\\FrameXML\\ChatFrame.lua:2888>\n[C]: in function `UseAction'\nInterface\\FrameXML\\SecureTemplates.lua:345: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 872,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Accountant_Classic' tried to call the protected function 'SecureStateDriverManager:SetAttribute()'.",
			["time"] = "2019/05/26 22:04:31",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\SecureStateDriver.lua:10: in function <Interface\\FrameXML\\SecureStateDriver.lua:8>\n(tail call): ?\n...rface\\AddOns\\ElvUI\\Modules\\actionbars\\ActionBars.lua:243: in function `PositionAndSizeBar'\n[string \"--[[ Error in 'Elv AB toggle' ]] return fun...\"]:10: in function `toggle'\n[string \"local r=WeakAuras.GetRegion(\"Elv AB toggle\"...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2155: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4721: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4382: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2895: in function <Interface\\FrameXML\\ChatFrame.lua:2888>\n[C]: in function `UseAction'\nInterface\\FrameXML\\SecureTemplates.lua:345: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:632: in function <Interface\\FrameXML\\SecureTemplates.lua:580>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 872,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "...ace\\AddOns\\AdvancedInterfaceOptions\\basicOptions.lua:451: attempt to index global 'reverseCleanupBags' (a nil value)",
			["time"] = "2019/05/26 21:40:09",
			["locals"] = "addonName = \"AdvancedInterfaceOptions\"\naddon = <table> {\n SetCVar = <function> defined @Interface\\AddOns\\AdvancedInterfaceOptions\\basicOptions.lua:157\n combatProtected = <table> {\n }\n DontRecordCVar = <function> defined @Interface\\AddOns\\AdvancedInterfaceOptions\\basicOptions.lua:138\n CreateListFrame = <function> defined @Interface\\AddOns\\AdvancedInterfaceOptions\\semlib\\widgets.lua:192\n CreateString = <function> defined @Interface\\AddOns\\AdvancedInterfaceOptions\\semlib\\widgets.lua:3\n CreateDropdown = <function> defined @Interface\\AddOns\\AdvancedInterfaceOptions\\semlib\\widgets.lua:483\n Eve = <table> {\n }\n CreateInput = <function> defined @Interface\\AddOns\\AdvancedInterfaceOptions\\semlib\\widgets.lua:403\n hiddenOptions = <table> {\n }\n RecordCVar = <function> defined @Interface\\AddOns\\AdvancedInterfaceOptions\\basicOptions.lua:110\n}\nE = <table> {\n VARIABLES_LOADED = <function> defined @Interface\\AddOns\\AdvancedInterfaceOptions\\basicOptions.lua:45\n ADDON_LOADED = <function> defined @Interface\\AddOns\\AdvancedInterfaceOptions\\basicOptions.lua:53\n Init = <function> defined @Interface\\AddOns\\AdvancedInterfaceOptions\\basicOptions.lua:75\n}\n_G = <table> {\n UpdateOnBarHighlightMarksBySpell = <function> defined @Interface\\FrameXML\\ActionButton.lua:74\n ERR_OUT_OF_CHI = \"Not enough chi\"\n DH_HAVOC_CORE_ABILITY_2 = \"Strong melee attack that consumes Fury. If it critical strikes, some Fury is refunded.\"\n MultiCastActionButton6Cooldown = MultiCastActionButton6Cooldown {\n }\n MerchantItem9ItemButtonStock = MerchantItem9ItemButtonStock {\n }\n GetTrainerServiceTypeFilter = <function> defined =[C]:-1\n UNIT_NAMES_COMBATLOG_TOOLTIP = \"Color unit names.\"\n SetTrainerServiceTypeFilter = <function> defined =[C]:-1\n LE_GAME_ERR_CHAT_RAID_RESTRICTED_TRIAL = 740\n SPELL_FAILED_CUSTOM_ERROR_71 = \"This partygoer wants to dance with you.\"\n LE_GAME_ERR_PET_SPELL_TARGETS_DEAD = 398\n ERROR_CLUB_TICKET_COUNT_AT_MAX_COMMUNITY = \"Can't create any more invite links for this community.\"\n RecruitAFriendFrame = RecruitAFriendFrame {\n }\n TutorialFrameLeft19 = TutorialFrameLeft19 {\n }\n MultiCastActionButton2Cooldown = MultiCastActionButton2Cooldown {\n }\n ERR_TRADE_EQUIPPED_BAG = \"You can't trade equipped bags.\"\n PVP_RANK_6_1 = \"Corporal\"\n MultiBarLeftButton7 = MultiBarLeftButton7 {\n }\n AudioOptionsVoicePanelOutputDeviceDropdownButtonHighlightTexture = AudioOptionsVoicePanelOutputDeviceDropdownButtonHighlightTexture {\n }\n VideoOptionsFrameCategoryFrameButton17ToggleHighlightTexture = VideoOptionsFrameCategoryFrameButton17ToggleHighlightTexture {\n }\n MerchantItem1AltCurrencyFrameItem1Text = MerchantItem1AltCurrencyFrameItem1Text {\n }\n OPTION_TOOLTIP_ACTION_BUTTON_USE_KEY_DOWN = \"Action button keybinds will respond on key down, rather than on key up.\"\n BINDING_NAME_NAMEPLATES = \"Show Enemy Name Plates\"\n INSTANCE_UNAVAILABLE_OTHER_TEMPORARILY_DISABLED = \"%s cannot enter. This instance is temporarily disabled.\"\n MultiBarBottomRightButton8Shine5 = MultiBarBottomRightButton8Shine5 {\n }\n IsReferAFriendLinked = <function> defined =[C]:-1\n MAIL_LETTER_TOOLTIP = \"Click to make a permanent\ncopy of this letter.\"\n UnitFrameManaBar_UnregisterDefaultEvents = <function> defined @Interface\\FrameXML\\UnitFrame.lua:794\n PaperDollTitlesPaneButton10BgTop = PaperDollTitlesPaneButton10BgTop {\n }\n ERR_NOAMMO_S = \"%s\"\n CHAT_CONFIG_OTHER_COMBAT = <table> {\n }\n FCFDockOverflowButton_OnClick = <function> defined @Interface\\FrameXML\\FloatingChatFrame.lua:2372\n TutorialFrameRight19 = TutorialFrameRight19 {\n }\n ChatFrame6EditBoxFocusMid = ChatFrame6EditBoxFocusMid {\n }\n BN_UNABLE_TO_RESOLVE_NAME = \"Unable to whisper '%s'. Blizzard services may be unavailable.\"\n LE_GAME_ERR_RECRUIT_A_FRIEND_FAILED = 950\n CompactRaidFrameManagerDisplayFrameHiddenModeToggleTopRight = CompactRaidFrameManagerDisplayFrameHiddenModeToggleTopRight {\n }\n LFGTeleport = <function> defined =[C]:-1\n LE_GAME_ERR_ONLY_ONE_QUIVER = 32\n SpellButton6Cooldown = SpellButton6Cooldown {\n }\n ToggleEncounterJournal = <function> defined @Interface\\FrameXML\\UIParent.lua:910\n AdiBagsItemButton4IconQuestTexture = AdiBagsItemButton4IconQuestTexture ",
			["stack"] = "...ace\\AddOns\\AdvancedInterfaceOptions\\basicOptions.lua:451: in main chunk",
			["session"] = 875,
			["counter"] = 5,
		}, -- [3]
		{
			["message"] = "(null)",
			["session"] = 875,
			["time"] = "2019/05/26 21:40:15",
			["counter"] = 15,
		}, -- [4]
		{
			["message"] = "Interface\\AddOns\\bigdumblootcouncil\\core.lua:689: attempt to index field 'voteFrame' (a nil value)",
			["time"] = "2019/05/28 18:39:12",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\bigdumblootcouncil\\core.lua:689: in function `startLooterList'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:917: in function <Interface\\AddOns\\bigdumblootcouncil\\core.lua:781>",
			["session"] = 877,
			["counter"] = 4,
		}, -- [5]
		{
			["message"] = "Interface\\AddOns\\bigdumblootcouncil\\frames.lua:937: attempt to get length of field 'tabs' (a nil value)",
			["time"] = "2019/05/26 21:37:10",
			["stack"] = "Interface\\AddOns\\bigdumblootcouncil\\frames.lua:937: in function `endEntry'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:337: in function `?'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:666: in function `mainCallback'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:789: in function <Interface\\AddOns\\bigdumblootcouncil\\core.lua:789>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...Ons\\ElvUI\\Libraries\\Ace3\\AceComm-3.0\\AceComm-3.0-12.lua:264: in function <...Ons\\ElvUI\\Libraries\\Ace3\\AceComm-3.0\\AceComm-3.0.lua:246>",
			["session"] = 877,
			["counter"] = 9,
		}, -- [6]
		{
			["message"] = "Interface\\AddOns\\bigdumblootcouncil\\core.lua:708: attempt to index field 'voteFrame' (a nil value)",
			["time"] = "2019/05/26 21:37:07",
			["stack"] = "Interface\\AddOns\\bigdumblootcouncil\\core.lua:708: in function `drawLooters'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:684: in function `?'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:666: in function `mainCallback'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:789: in function <Interface\\AddOns\\bigdumblootcouncil\\core.lua:789>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...Ons\\ElvUI\\Libraries\\Ace3\\AceComm-3.0\\AceComm-3.0-12.lua:264: in function <...Ons\\ElvUI\\Libraries\\Ace3\\AceComm-3.0\\AceComm-3.0.lua:246>",
			["session"] = 877,
			["counter"] = 5,
		}, -- [7]
		{
			["message"] = "Interface\\AddOns\\bigdumblootcouncil\\core.lua:156: attempt to index field 'voteFrame' (a nil value)",
			["time"] = "2019/05/26 21:37:08",
			["stack"] = "Interface\\AddOns\\bigdumblootcouncil\\core.lua:156: in function `createVoteWindow'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:53: in function `?'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:666: in function `mainCallback'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:789: in function <Interface\\AddOns\\bigdumblootcouncil\\core.lua:789>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...Ons\\ElvUI\\Libraries\\Ace3\\AceComm-3.0\\AceComm-3.0-12.lua:264: in function <...Ons\\ElvUI\\Libraries\\Ace3\\AceComm-3.0\\AceComm-3.0.lua:246>",
			["session"] = 877,
			["counter"] = 5,
		}, -- [8]
		{
			["message"] = "Interface\\AddOns\\bigdumblootcouncil\\frames.lua:874: attempt to get length of field 'tabs' (a nil value)",
			["time"] = "2019/05/26 21:37:08",
			["stack"] = "Interface\\AddOns\\bigdumblootcouncil\\frames.lua:874: in function `getEntry'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:297: in function `?'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:666: in function `mainCallback'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:789: in function <Interface\\AddOns\\bigdumblootcouncil\\core.lua:789>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...Ons\\ElvUI\\Libraries\\Ace3\\AceComm-3.0\\AceComm-3.0-12.lua:264: in function <...Ons\\ElvUI\\Libraries\\Ace3\\AceComm-3.0\\AceComm-3.0.lua:246>",
			["session"] = 877,
			["counter"] = 12,
		}, -- [9]
		{
			["message"] = "Interface\\AddOns\\bigdumblootcouncil\\frames.lua:906: attempt to get length of field 'tabs' (a nil value)",
			["time"] = "2019/05/28 19:00:22",
			["stack"] = "Interface\\AddOns\\bigdumblootcouncil\\frames.lua:906: in function `endTab'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:71: in function `?'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:666: in function `mainCallback'\nInterface\\AddOns\\bigdumblootcouncil\\core.lua:789: in function <Interface\\AddOns\\bigdumblootcouncil\\core.lua:789>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...Ons\\ElvUI\\Libraries\\Ace3\\AceComm-3.0\\AceComm-3.0-12.lua:264: in function <...Ons\\ElvUI\\Libraries\\Ace3\\AceComm-3.0\\AceComm-3.0.lua:246>",
			["session"] = 877,
			["counter"] = 4,
		}, -- [10]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MythicPlusTimer' tried to call the protected function 'ObjectiveTrackerFrame:SetParent()'.",
			["time"] = "2019/05/26 22:19:57",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetParent'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:606: in function `show_default_tracker'\nInterface\\AddOns\\MythicPlusTimer\\main.lua:415: in function `callback'\nInterface\\AddOns\\MythicPlusTimer\\addon.lua:100: in function <Interface\\AddOns\\MythicPlusTimer\\addon.lua:94>",
			["session"] = 879,
			["counter"] = 3,
		}, -- [11]
		{
			["message"] = "[string \"--[[ Error in 'Tosh HealerMana bar' ]] retu...\"]:6: attempt to index field 'inspectLib' (a nil value)",
			["time"] = "2019/05/28 19:02:36",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:524: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:518>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:666: in function `ScanWithFakeEvent'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:828: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:1920: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:1779: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1667>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:1871: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:1556: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:1501: in function `Resume'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.12.3.lua:1357: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1324>",
			["session"] = 881,
			["counter"] = 22,
		}, -- [12]
		{
			["message"] = "...Ons\\ElvUI\\Modules\\skins\\Blizzard\\BlizzardOptions.lua:322: attempt to index field 'CompactUnitFrameProfilesNewProfileDialog' (a nil value)",
			["time"] = "2019/05/26 21:40:19",
			["stack"] = "...Ons\\ElvUI\\Modules\\skins\\Blizzard\\BlizzardOptions.lua:322: in function <...Ons\\ElvUI\\Modules\\skins\\Blizzard\\BlizzardOptions.lua:37>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\Skins.lua:1346: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\Skins.lua:1327>\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: in function `Initialize'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\Skins.lua:1387: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\Skins.lua:1386>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:129: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:129>\n[C]: ?\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\Core\\Core.lua:1626: in function `InitializeModules'\nInterface\\AddOns\\ElvUI\\Core\\Core.lua:1944: in function `Initialize'\nInterface\\AddOns\\ElvUI\\init.lua:213: in function <Interface\\AddOns\\ElvUI\\init.lua:212>",
			["session"] = 882,
			["counter"] = 12,
		}, -- [13]
	},
}
