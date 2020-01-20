
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 1581,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Plater' tried to call the protected function 'SetTargetClampingInsets()'.",
			["time"] = "2020/01/19 21:10:06",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetTargetClampingInsets'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:274: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:213>\n[string \"=[C]\"]: in function `SetupClassNameplateBars'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:96: in function `OnNamePlateAdded'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:51: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:42>",
			["session"] = 1575,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\Details\\Libs\\DF\\fw.lua:2711: D!Framework (DetailsFrameworkButtonNumber635288:OnMouseUp()) error: Interface\\AddOns\\Details\\Libs\\DF\\fw.lua:1745: attempt to index field '?' (a nil value)\n====================\n[string \"@Interface\\AddOns\\Details\\Libs\\DF\\button.lua\"]:887: in function <Interface\\AddOns\\Details\\Libs\\DF\\button.lua:800>\n\n====================\n",
			["time"] = "2020/01/19 21:22:00",
			["locals"] = "(*temporary) = \"D!Framework (DetailsFrameworkButtonNumber635288:OnMouseUp()) error: Interface\\AddOns\\Details\\Libs\\DF\\fw.lua:1745: attempt to index field '?' (a nil value)\n====================\n[string \"@Interface\\AddOns\\Details\\Libs\\DF\\button.lua\"]:887: in function <Interface\\AddOns\\Details\\Libs\\DF\\button.lua:800>\n\n====================\n\"\n",
			["stack"] = "[string \"=[C]\"]: in function `error'\n[string \"@Interface\\AddOns\\Details\\Libs\\DF\\fw.lua\"]:2711: in function `CoreDispatch'\n[string \"@Interface\\AddOns\\Details\\Libs\\DF\\button.lua\"]:887: in function <Interface\\AddOns\\Details\\Libs\\DF\\button.lua:800>",
			["session"] = 1577,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\AdiBags\\modules\\Junk.lua:246: attempt to call method 'HookScript' (a nil value)",
			["time"] = "2020/01/19 21:12:57",
			["locals"] = "addonName = \"AdiBags\"\naddon = <table> {\n AcquireItemButton = <function> defined @Interface\\AddOns\\AdiBags\\widgets\\ItemButton.lua:155\n modules = <table> {\n }\n UpdateFilters = <function> defined @Interface\\AddOns\\AdiBags\\core\\Filters.lua:83\n SecureHook = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceHook-3.0\\AceHook-3.0.lua:336\n GetInteractingWindow = <function> defined @Interface\\AddOns\\AdiBags\\core\\Core.lua:451\n ConfigChanged = <function> defined @Interface\\AddOns\\AdiBags\\core\\Core.lua:371\n GetSlotId = <function> defined @Interface\\AddOns\\AdiBags\\core\\Utility.lua:57\n Filter = <function> defined @Interface\\AddOns\\AdiBags\\core\\Filters.lua:144\n IsEnabled = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:451\n Reconfigure = <function> defined @Interface\\AddOns\\AdiBags\\core\\Core.lua:183\n SetupTooltip = <function> defined @Interface\\AddOns\\AdiBags\\core\\Utility.lua:114\n RegisterMessage = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:90\n UnregisterMessage = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:153\n hooks = <table> {\n }\n GetDistinctItemID = <function> defined @Interface\\AddOns\\AdiBags\\core\\Utility.lua:188\n CreateFont = <function> defined @Interface\\AddOns\\AdiBags\\core\\Fonts.lua:122\n filterProto = <table> {\n }\n OpenOptions = <function> defined @Interface\\AddOns\\AdiBags\\core\\Core.lua:289\n SetEnabledState = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:424\n Hook = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceHook-3.0\\AceHook-3.0.lua:274\n IterateBags = <function> defined @Interface\\AddOns\\AdiBags\\core\\Bags.lua:183\n OnEnable = <function> defined @Interface\\AddOns\\AdiBags\\core\\Core.lua:115\n HookBagFrameCreation = <function> defined @Interface\\AddOns\\AdiBags\\core\\Bags.lua:305\n NewBag = <function> defined @Interface\\AddOns\\AdiBags\\core\\Bags.lua:150\n GetClass = <function> defined @Interface\\AddOns\\AdiBags\\core\\OO.lua:129\n RegisterFilter = <function> defined @Interface\\AddOns\\AdiBags\\core\\Filters.lua:120\n BACKDROP = <table> {\n }\n OnInitialize = <function> defined =[C]:-1\n NewModule = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:235\n InitializeFilters = <function> defined @Interface\\AddOns\\AdiBags\\core\\Filters.lua:64\n IterateFilters = <function> defined @Interface\\AddOns\\AdiBags\\core\\Filters.lua:116\n ReagentBankUpdated = <function> defined @Interface\\AddOns\\AdiBags\\core\\Core.lua:362\n CreateBagSlotPanel = <function> defined @Interface\\AddOns\\AdiBags\\widgets\\BagSlots.lua:437\n TOP_PADDING = 32\n hookedBags = <table> {\n }\n OpenBag = <function> defined @Interface\\AddOns\\AdiBags\\core\\Hooks.lua:137\n ToggleAllBags = <function> defined @Interface\\AddOns\\AdiBags\\core\\Hooks.lua:86\n OnProfileChanged = <function> defined @Interface\\AddOns\\AdiBags\\core\\Core.lua:191\n GetName = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:279\n name = \"AdiBags\"\n OpenBackpack = <function> defined @Interface\\AddOns\\AdiBags\\core\\Hooks.lua:168\n LayoutBags = <function> defined @Interface\\AddOns\\AdiBags\\core\\Layout.lua:101\n Disable = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:314\n SetGlobalLock = <function> defined @Interface\\AddOns\\AdiBags\\core\\Core.lua:419\n Unhook = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceHook-3.0\\AceHook-3.0.lua:418\n Print = <function> defined @Interface\\AddOns\\Accountant_Classic\\Libs\\AceConsole-3.0\\AceConsole-3.0.lua:54\n OpenAllBags = <function> defined @Interface\\AddOns\\AdiBags\\core\\Hooks.lua:109\n L = <table> {\n }\n safecall = <function> defined @Interface\\AddOns\\AdiBags\\core\\Utility.lua:81\n Debug = <function> defined @Interface\\AddOns\\AdiBags\\core\\Core.lua:61\n CreateAnchorWidget = <function> defined @Interface\\AddOns\\AdiBags\\widgets\\AnchorWidget.lua:37\n ITEM_SIZE = 37\n DEFAULT_SETTINGS = <table> {\n }\n CreateBagAnchorWidget = <function> defined @Interf",
			["stack"] = "[string \"@Interface\\AddOns\\AdiBags\\modules\\Junk.lua\"]:246: in main chunk",
			["session"] = 1581,
			["counter"] = 6,
		}, -- [3]
		{
			["message"] = "(null)",
			["session"] = 1581,
			["time"] = "2020/01/19 21:13:10",
			["counter"] = 18,
		}, -- [4]
	},
}
