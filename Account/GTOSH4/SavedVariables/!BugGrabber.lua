
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 145,
	["errors"] = {
		{
			["message"] = "...erface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:80: attempt to call method 'GetWidth' (a nil value)",
			["time"] = "2020/07/29 01:35:12",
			["locals"] = "self = <table> {\n OnRelease = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:103\n OnWidthSet = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:130\n SetStatusText = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:83\n sizer_se = <unnamed> {\n }\n OnAcquire = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:95\n EnableResize = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:151\n userdata = <table> {\n }\n SetStatusTable = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:111\n Hide = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:87\n OnHeightSet = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:141\n type = \"ToshUnitFramesOptions\"\n closebutton = <unnamed> {\n }\n AceGUIWidgetVersion = 1\n LayoutFunc = <function> defined @Interface\\AddOns\\CorruptionTooltips\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:625\n base = <table> {\n }\n ApplyStatus = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:117\n Show = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:91\n events = <table> {\n }\n title = <unnamed> {\n }\n children = <table> {\n }\n content = <unnamed> {\n }\n localstatus = <table> {\n }\n SetTitle = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:78\n frame = ToshUnitFramesOptions {\n }\n}\ntitle = \"Tosh Unit Frames 1.0.0\"\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = <unnamed> {\n 0 = <userdata>\n}\n(*temporary) = nil\n(*temporary) = SystemFont_Shadow_Med1 {\n 0 = <userdata>\n}\n(*temporary) = \"attempt to call method 'GetWidth' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua\"]:80: in function `SetTitle'\n[string \"@Interface\\AddOns\\ToshUnitFramesOptions\\core.lua\"]:47: in function `MakeOptions'\n[string \"@Interface\\AddOns\\ToshUnitFramesOptions\\core.lua\"]:7: in function `InitializeOptions'\n[string \"@Interface\\AddOns\\ToshUnitFrames\\core.lua\"]:44: in function `LoadOptions'\n[string \"@Interface\\AddOns\\ToshUnitFrames\\core.lua\"]:30: in function `LoadToshUnitFramesOptions'\n[string \"@Interface\\AddOns\\ToshUnitFrames\\core.lua\"]:38: in function `?'\n[string \"@Interface\\AddOns\\AdiBags\\libs\\AceConsole-3.0\\AceConsole-3.0-7.lua\"]:94: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4859: in function <Interface\\FrameXML\\ChatFrame.lua:4805>\n[string \"=[C]\"]: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4523: in function <Interface\\FrameXML\\ChatFrame.lua:4522>\n[string \"=[C]\"]: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4559: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 119,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "...erface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:241: attempt to index a nil value",
			["time"] = "2020/07/29 01:42:39",
			["locals"] = "backdropTemplate = false\nframe = ToshUnitFramesOptions {\n 0 = <userdata>\n obj = <table> {\n }\n}\nself = <table> {\n OnHeightSet = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:140\n type = \"ToshUnitFramesOptions\"\n OnRelease = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:102\n OnWidthSet = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:129\n SetStatusText = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:82\n closebutton = <unnamed> {\n }\n OnAcquire = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:94\n Show = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:90\n EnableResize = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:150\n frame = ToshUnitFramesOptions {\n }\n SetStatusTable = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:110\n ApplyStatus = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:116\n localstatus = <table> {\n }\n SetTitle = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:78\n Hide = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:86\n}\nclose = <unnamed> {\n 0 = <userdata>\n obj = <table> {\n }\n}\ntitle = <unnamed> {\n 0 = <userdata>\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = 0\n(*temporary) = <userdata>\n(*temporary) = <userdata>\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"ToshUnitFramesOptions\"\n(*temporary) = nil\n(*temporary) = \"attempt to index a nil value\"\nCreateFrame = <function> defined =[C]:-1\nUIParent = UIParent {\n 0 = <userdata>\n firstTimeLoaded = 1\n variablesLoaded = true\n}\nType = \"ToshUnitFramesOptions\"\nHide = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:86\nShow = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:90\nSetTitle = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:78\nOnRelease = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:102\nOnAcquire = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:94\nSetStatusText = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:82\nSetStatusTable = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:110\nApplyStatus = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:116\nOnWidthSet = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:129\nOnHeightSet = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:140\nEnableResize = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:150\nframeOnMouseDown = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:39\nframeOnShow = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:26\nframeOnClose = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:30\ncloseOnClick = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:34\ntitleOnMouseDown = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:43\nframeOnMouseUp = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:48\nCreateDecoration = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:156\nsizerseOnMouseDown = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:59\nsizerOnMouseUp = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:74\nAceGUI = <table> {\n objPools = <table> {\n }\n RegisterAsContainer = <function> defined @Interface\\AddOns\\CorruptionTooltips\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:517\n RegisterWidgetType = <function> defined @Interface\\AddOns\\CorruptionTooltips\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:555\n WidgetBase = <table> {\n }\n RegisterAsWidget = <function> defined @Interface\\AddOns\\CorruptionTooltip",
			["stack"] = "[string \"@Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua\"]:241: in function `?'\n[string \"@Interface\\AddOns\\CorruptionTooltips\\Libs\\AceGUI-3.0\\AceGUI-3.0-41.lua\"]:108: in function <...ns\\CorruptionTooltips\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:97>\n[string \"@Interface\\AddOns\\CorruptionTooltips\\Libs\\AceGUI-3.0\\AceGUI-3.0-41.lua\"]:146: in function `Create'\n[string \"@Interface\\AddOns\\ToshUnitFramesOptions\\core.lua\"]:45: in function `MakeOptions'\n[string \"@Interface\\AddOns\\ToshUnitFramesOptions\\core.lua\"]:7: in function `InitializeOptions'\n[string \"@Interface\\AddOns\\ToshUnitFrames\\core.lua\"]:44: in function `LoadOptions'\n[string \"@Interface\\AddOns\\ToshUnitFrames\\core.lua\"]:30: in function `LoadToshUnitFramesOptions'\n[string \"@Interface\\AddOns\\ToshUnitFrames\\core.lua\"]:38: in function `?'\n[string \"@Interface\\AddOns\\AdiBags\\libs\\AceConsole-3.0\\AceConsole-3.0-7.lua\"]:94: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4859: in function <Interface\\FrameXML\\ChatFrame.lua:4805>\n[string \"=[C]\"]: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4523: in function <Interface\\FrameXML\\ChatFrame.lua:4522>\n[string \"=[C]\"]: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4559: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 123,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "...erface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:31: attempt to call method 'Fire' (a nil value)",
			["time"] = "2020/07/29 01:42:44",
			["locals"] = "this = ToshUnitFramesOptions {\n 0 = <userdata>\n obj = <table> {\n }\n}\n(*temporary) = nil\n(*temporary) = <table> {\n OnHeightSet = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:140\n type = \"ToshUnitFramesOptions\"\n OnRelease = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:102\n OnWidthSet = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:129\n SetStatusText = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:82\n closebutton = <unnamed> {\n }\n OnAcquire = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:94\n Show = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:90\n EnableResize = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:150\n frame = ToshUnitFramesOptions {\n }\n SetStatusTable = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:110\n ApplyStatus = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:116\n localstatus = <table> {\n }\n SetTitle = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:78\n Hide = <function> defined @Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:86\n}\n(*temporary) = \"OnClose\"\n(*temporary) = \"attempt to call method 'Fire' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua\"]:31: in function <...erface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:30>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua\"]:87: in function `Hide'\n[string \"@Interface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua\"]:36: in function <...erface\\AddOns\\ToshUnitFramesOptions\\widgets/main.lua:34>",
			["session"] = 123,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\Transmission.lua:585: Cannot find a library instance of \"LibSerialize\".",
			["time"] = "2020/08/02 21:02:27",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"LibSerialize\".\"\n",
			["stack"] = "[string \"=[C]\"]: in function `error'\n[string \"@Interface\\AddOns\\Scrap\\libs\\LibStub\\LibStub.lua\"]:23: in function `LibStub'\n[string \"@Interface\\AddOns\\WeakAuras\\Transmission.lua\"]:585: in main chunk",
			["session"] = 139,
			["counter"] = 2,
		}, -- [4]
		{
			["message"] = "Couldn't open Interface\\AddOns\\WeakAuras\\Libs\\LibSerialize\\lib.xml",
			["session"] = 139,
			["time"] = "2020/08/02 21:02:29",
			["counter"] = 8,
		}, -- [5]
		{
			["message"] = "(null)",
			["session"] = 139,
			["time"] = "2020/08/02 21:02:29",
			["counter"] = 6,
		}, -- [6]
		{
			["message"] = "Interface\\AddOns\\Grid2Options\\GridCore.lua:5: Usage: GetLocale(application[, silent]): 'application' - No locales registered for 'Grid2Options'",
			["time"] = "2020/08/02 21:03:04",
			["locals"] = "(*temporary) = \"Usage: GetLocale(application[, silent]): 'application' - No locales registered for 'Grid2Options'\"\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Scrap\\libs\\AceLocale-3.0\\AceLocale-3.0-6.lua\"]:134: in function `GetLocale'\n[string \"@Interface\\AddOns\\Grid2Options\\GridCore.lua\"]:5: in main chunk\n[string \"=[C]\"]: in function `LoadAddOn'\n[string \"@Interface\\AddOns\\Grid2\\GridCore.lua\"]:283: in function `LoadGrid2Options'\n[string \"@Interface\\AddOns\\Grid2\\GridCore.lua\"]:300: in function `?'\n[string \"@Interface\\AddOns\\AdiBags\\libs\\AceConsole-3.0\\AceConsole-3.0-7.lua\"]:94: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4859: in function <Interface\\FrameXML\\ChatFrame.lua:4805>\n[string \"=[C]\"]: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4523: in function <Interface\\FrameXML\\ChatFrame.lua:4522>\n[string \"=[C]\"]: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4559: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 140,
			["counter"] = 3,
		}, -- [7]
		{
			["message"] = "Interface\\AddOns\\Grid2Options\\GridUtils.lua:6: attempt to index local 'Grid2Options' (a nil value)",
			["time"] = "2020/08/02 21:03:04",
			["locals"] = "Grid2Options = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index local 'Grid2Options' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\Grid2Options\\GridUtils.lua\"]:6: in main chunk\n[string \"=[C]\"]: in function `LoadAddOn'\n[string \"@Interface\\AddOns\\Grid2\\GridCore.lua\"]:283: in function `LoadGrid2Options'\n[string \"@Interface\\AddOns\\Grid2\\GridCore.lua\"]:300: in function `?'\n[string \"@Interface\\AddOns\\AdiBags\\libs\\AceConsole-3.0\\AceConsole-3.0-7.lua\"]:94: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4859: in function <Interface\\FrameXML\\ChatFrame.lua:4805>\n[string \"=[C]\"]: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4523: in function <Interface\\FrameXML\\ChatFrame.lua:4522>\n[string \"=[C]\"]: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4559: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 140,
			["counter"] = 3,
		}, -- [8]
		{
			["message"] = "Interface\\AddOns\\Grid2Options\\GridGeneral.lua:5: attempt to index global 'Grid2Options' (a nil value)",
			["time"] = "2020/08/02 21:03:04",
			["locals"] = "(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index global 'Grid2Options' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\Grid2Options\\GridGeneral.lua\"]:5: in main chunk\n[string \"=[C]\"]: in function `LoadAddOn'\n[string \"@Interface\\AddOns\\Grid2\\GridCore.lua\"]:283: in function `LoadGrid2Options'\n[string \"@Interface\\AddOns\\Grid2\\GridCore.lua\"]:300: in function `?'\n[string \"@Interface\\AddOns\\AdiBags\\libs\\AceConsole-3.0\\AceConsole-3.0-7.lua\"]:94: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4859: in function <Interface\\FrameXML\\ChatFrame.lua:4805>\n[string \"=[C]\"]: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4523: in function <Interface\\FrameXML\\ChatFrame.lua:4522>\n[string \"=[C]\"]: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4559: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 140,
			["counter"] = 3,
		}, -- [9]
		{
			["message"] = "Interface\\AddOns\\Grid2Options\\GridIndicators.lua:6: attempt to index local 'Grid2Options' (a nil value)",
			["time"] = "2020/08/02 21:03:04",
			["locals"] = "Grid2Options = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index local 'Grid2Options' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\Grid2Options\\GridIndicators.lua\"]:6: in main chunk\n[string \"=[C]\"]: in function `LoadAddOn'\n[string \"@Interface\\AddOns\\Grid2\\GridCore.lua\"]:283: in function `LoadGrid2Options'\n[string \"@Interface\\AddOns\\Grid2\\GridCore.lua\"]:300: in function `?'\n[string \"@Interface\\AddOns\\AdiBags\\libs\\AceConsole-3.0\\AceConsole-3.0-7.lua\"]:94: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4859: in function <Interface\\FrameXML\\ChatFrame.lua:4805>\n[string \"=[C]\"]: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4523: in function <Interface\\FrameXML\\ChatFrame.lua:4522>\n[string \"=[C]\"]: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4559: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 140,
			["counter"] = 3,
		}, -- [10]
		{
			["message"] = "Interface\\AddOns\\Grid2Options\\GridStatuses.lua:6: attempt to index local 'Grid2Options' (a nil value)",
			["time"] = "2020/08/02 21:03:04",
			["locals"] = "Grid2Options = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index local 'Grid2Options' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\Grid2Options\\GridStatuses.lua\"]:6: in main chunk\n[string \"=[C]\"]: in function `LoadAddOn'\n[string \"@Interface\\AddOns\\Grid2\\GridCore.lua\"]:283: in function `LoadGrid2Options'\n[string \"@Interface\\AddOns\\Grid2\\GridCore.lua\"]:300: in function `?'\n[string \"@Interface\\AddOns\\AdiBags\\libs\\AceConsole-3.0\\AceConsole-3.0-7.lua\"]:94: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4859: in function <Interface\\FrameXML\\ChatFrame.lua:4805>\n[string \"=[C]\"]: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4523: in function <Interface\\FrameXML\\ChatFrame.lua:4522>\n[string \"=[C]\"]: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4559: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 140,
			["counter"] = 3,
		}, -- [11]
		{
			["message"] = "Interface\\AddOns\\Grid2Options\\GridThemes.lua:1: attempt to index global 'Grid2Options' (a nil value)",
			["time"] = "2020/08/02 21:03:04",
			["locals"] = "(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index global 'Grid2Options' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\Grid2Options\\GridThemes.lua\"]:1: in main chunk\n[string \"=[C]\"]: in function `LoadAddOn'\n[string \"@Interface\\AddOns\\Grid2\\GridCore.lua\"]:283: in function `LoadGrid2Options'\n[string \"@Interface\\AddOns\\Grid2\\GridCore.lua\"]:300: in function `?'\n[string \"@Interface\\AddOns\\AdiBags\\libs\\AceConsole-3.0\\AceConsole-3.0-7.lua\"]:94: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4859: in function <Interface\\FrameXML\\ChatFrame.lua:4805>\n[string \"=[C]\"]: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4523: in function <Interface\\FrameXML\\ChatFrame.lua:4522>\n[string \"=[C]\"]: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4559: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 140,
			["counter"] = 3,
		}, -- [12]
		{
			["message"] = "Error loading Interface\\AddOns\\Grid2Options\\locales\\enUS-English (US).lua",
			["session"] = 140,
			["time"] = "2020/08/02 21:03:04",
			["counter"] = 3,
		}, -- [13]
		{
			["message"] = "Error loading Interface\\AddOns\\Grid2Options\\locales\\deDE-German.lua",
			["session"] = 140,
			["time"] = "2020/08/02 21:03:04",
			["counter"] = 3,
		}, -- [14]
		{
			["message"] = "Error loading Interface\\AddOns\\Grid2Options\\locales\\esES-Spanish (EU).lua",
			["session"] = 140,
			["time"] = "2020/08/02 21:03:04",
			["counter"] = 3,
		}, -- [15]
		{
			["message"] = "Error loading Interface\\AddOns\\Grid2Options\\locales\\esMX-Spanish (Latin American).lua",
			["session"] = 140,
			["time"] = "2020/08/02 21:03:04",
			["counter"] = 3,
		}, -- [16]
	},
}
