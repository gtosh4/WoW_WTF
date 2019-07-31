
BugGrabberDB = {
	["session"] = 1120,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\FrameXML\\SocialQueue.lua:222: attempt to index local 'rhs' (a nil value)",
			["time"] = "2019/07/30 19:43:23",
			["locals"] = "lhs = <table> {\n guid = \"Player-9-0B32A56C\"\n}\nrhs = nil\nlhsName = \"|Kq15|k\"\n_ = \"|cff82c5ff\"\nlhsRelationship = \"bnfriend\"\n(*temporary) = <function> defined @Interface\\FrameXML\\SocialQueue.lua:170\n(*temporary) = false\n(*temporary) = \"Drift\"\n(*temporary) = \"WoW\"\n(*temporary) = \"Kil'jaeden\"\n(*temporary) = 9\n(*temporary) = \"attempt to index local 'rhs' (a nil value)\"\nrelationshipPriorityOrdering = <table> {\n guild = 3\n club = 4\n bnfriend = 1\n wowfriend = 2\n}\n",
			["stack"] = "Interface\\FrameXML\\SocialQueue.lua:222: in function <Interface\\FrameXML\\SocialQueue.lua:220>\n[C]: in function `sort'\nInterface\\FrameXML\\SocialQueue.lua:220: in function `SocialQueueUtil_SortGroupMembers'\nInterface\\FrameXML\\SocialQueue.lua:84: in function `SocialQueueUtil_GetHeaderName'\nInterface\\FrameXML\\QuickJoinToast.lua:410: in function `GetCurrentText'\nInterface\\FrameXML\\QuickJoinToast.lua:280: in function `ShowToast'\nInterface\\FrameXML\\QuickJoinToast.lua:192: in function `CheckDisplayToast'\nInterface\\FrameXML\\QuickJoinToast.lua:183: in function `CheckShowToast'\nInterface\\FrameXML\\QuickJoinToast.lua:176: in function <Interface\\FrameXML\\QuickJoinToast.lua:174>\nInterface\\SharedXML\\C_TimerAugment.lua:16: in function <Interface\\SharedXML\\C_TimerAugment.lua:14>",
			["session"] = 1120,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "AceLocale-3.0-6: Quartz3: Missing entry for 'Frame Strata'",
			["time"] = "2019/07/30 21:44:54",
			["stack"] = "Interface\\AddOns\\Quartz\\modules\\GCD.lua:289: in function `v'\nInterface\\AddOns\\Quartz\\Config.lua:188: in function <Interface\\AddOns\\Quartz\\Config.lua:51>\n...-3.0\\AceConfigRegistry-3.0\\AceConfigRegistry-3.0-20.lua:333: in function `app'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-77.lua:1852: in function `Open'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-77.lua:1945: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:1943>\n[C]: ?\n...terface\\AddOns\\Hekili\\Libs\\AceGUI-3.0\\AceGUI-3.0-39.lua:72: in function <...terface\\AddOns\\Hekili\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:70>\n...terface\\AddOns\\Hekili\\Libs\\AceGUI-3.0\\AceGUI-3.0-39.lua:287: in function `Fire'\n...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:20: in function <...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:19>\n[C]: in function `Show'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:28: in function `InterfaceOptionsList_DisplayPanel'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:46: in function `InterfaceOptionsListButton_OnClick'\n[string \"*:OnClick\"]:2: in function <[string \"*:OnClick\"]:1>",
			["session"] = 1120,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "AceLocale-3.0-6: Quartz3: Missing entry for 'Low'",
			["time"] = "2019/07/30 21:44:54",
			["stack"] = "Interface\\AddOns\\Quartz\\modules\\GCD.lua:293: in function `v'\nInterface\\AddOns\\Quartz\\Config.lua:188: in function <Interface\\AddOns\\Quartz\\Config.lua:51>\n...-3.0\\AceConfigRegistry-3.0\\AceConfigRegistry-3.0-20.lua:333: in function `app'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-77.lua:1852: in function `Open'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-77.lua:1945: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:1943>\n[C]: ?\n...terface\\AddOns\\Hekili\\Libs\\AceGUI-3.0\\AceGUI-3.0-39.lua:72: in function <...terface\\AddOns\\Hekili\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:70>\n...terface\\AddOns\\Hekili\\Libs\\AceGUI-3.0\\AceGUI-3.0-39.lua:287: in function `Fire'\n...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:20: in function <...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:19>\n[C]: in function `Show'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:28: in function `InterfaceOptionsList_DisplayPanel'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:46: in function `InterfaceOptionsListButton_OnClick'\n[string \"*:OnClick\"]:2: in function <[string \"*:OnClick\"]:1>",
			["session"] = 1120,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "AceLocale-3.0-6: Quartz3: Missing entry for 'Medium'",
			["time"] = "2019/07/30 21:44:54",
			["stack"] = "Interface\\AddOns\\Quartz\\modules\\GCD.lua:294: in function `v'\nInterface\\AddOns\\Quartz\\Config.lua:188: in function <Interface\\AddOns\\Quartz\\Config.lua:51>\n...-3.0\\AceConfigRegistry-3.0\\AceConfigRegistry-3.0-20.lua:333: in function `app'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-77.lua:1852: in function `Open'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-77.lua:1945: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:1943>\n[C]: ?\n...terface\\AddOns\\Hekili\\Libs\\AceGUI-3.0\\AceGUI-3.0-39.lua:72: in function <...terface\\AddOns\\Hekili\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:70>\n...terface\\AddOns\\Hekili\\Libs\\AceGUI-3.0\\AceGUI-3.0-39.lua:287: in function `Fire'\n...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:20: in function <...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:19>\n[C]: in function `Show'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:28: in function `InterfaceOptionsList_DisplayPanel'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:46: in function `InterfaceOptionsListButton_OnClick'\n[string \"*:OnClick\"]:2: in function <[string \"*:OnClick\"]:1>",
			["session"] = 1120,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "AceLocale-3.0-6: Quartz3: Missing entry for 'High'",
			["time"] = "2019/07/30 21:44:54",
			["stack"] = "Interface\\AddOns\\Quartz\\modules\\GCD.lua:295: in function `v'\nInterface\\AddOns\\Quartz\\Config.lua:188: in function <Interface\\AddOns\\Quartz\\Config.lua:51>\n...-3.0\\AceConfigRegistry-3.0\\AceConfigRegistry-3.0-20.lua:333: in function `app'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-77.lua:1852: in function `Open'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-77.lua:1945: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:1943>\n[C]: ?\n...terface\\AddOns\\Hekili\\Libs\\AceGUI-3.0\\AceGUI-3.0-39.lua:72: in function <...terface\\AddOns\\Hekili\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:70>\n...terface\\AddOns\\Hekili\\Libs\\AceGUI-3.0\\AceGUI-3.0-39.lua:287: in function `Fire'\n...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:20: in function <...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:19>\n[C]: in function `Show'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:28: in function `InterfaceOptionsList_DisplayPanel'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:46: in function `InterfaceOptionsListButton_OnClick'\n[string \"*:OnClick\"]:2: in function <[string \"*:OnClick\"]:1>",
			["session"] = 1120,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "AceLocale-3.0-6: Quartz3: Missing entry for 'Dialog'",
			["time"] = "2019/07/30 21:44:54",
			["stack"] = "Interface\\AddOns\\Quartz\\modules\\GCD.lua:296: in function `v'\nInterface\\AddOns\\Quartz\\Config.lua:188: in function <Interface\\AddOns\\Quartz\\Config.lua:51>\n...-3.0\\AceConfigRegistry-3.0\\AceConfigRegistry-3.0-20.lua:333: in function `app'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-77.lua:1852: in function `Open'\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-77.lua:1945: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:1943>\n[C]: ?\n...terface\\AddOns\\Hekili\\Libs\\AceGUI-3.0\\AceGUI-3.0-39.lua:72: in function <...terface\\AddOns\\Hekili\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:70>\n...terface\\AddOns\\Hekili\\Libs\\AceGUI-3.0\\AceGUI-3.0-39.lua:287: in function `Fire'\n...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:20: in function <...GUI-3.0\\widgets\\AceGUIContainer-BlizOptionsGroup.lua:19>\n[C]: in function `Show'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:28: in function `InterfaceOptionsList_DisplayPanel'\nInterface\\FrameXML\\InterfaceOptionsFrame.lua:46: in function `InterfaceOptionsListButton_OnClick'\n[string \"*:OnClick\"]:2: in function <[string \"*:OnClick\"]:1>",
			["session"] = 1120,
			["counter"] = 1,
		}, -- [6]
	},
}
