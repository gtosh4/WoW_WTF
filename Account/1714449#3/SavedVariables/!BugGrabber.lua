
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 1405,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'AdiBags' tried to call the protected function 'RunBinding()'.",
			["time"] = "2020/02/03 02:27:18",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `RunBinding'\n[string \"@Interface\\FrameXML\\StackSplitFrame.lua\"]:196: in function <Interface\\FrameXML\\StackSplitFrame.lua:193>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\StackSplitFrame.lua\"]:235: in function `StackSplitOkayButton_OnClick'\n[string \"@Interface\\FrameXML\\StackSplitFrame.lua\"]:165: in function <Interface\\FrameXML\\StackSplitFrame.lua:141>",
			["session"] = 1389,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\MacroToolkit\\modules\\mainframe.lua:612: Action[SetPoint] failed because[SetPoint would result in anchor family connection]: attempted from: MacroToolkitFrame:SetPoint.",
			["time"] = "2020/02/03 01:52:42",
			["locals"] = "(*temporary) = MacroToolkitFrame {\n 0 = <userdata>\n TitleText = MacroToolkitFrameTitleText {\n }\n portrait = MacroToolkitFramePortrait {\n }\n SetPortraitShown = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:52\n macroBase = 0\n SetBackdropBorderColor = <function> defined =[C]:-1\n Inset = MacroToolkitFrameInset {\n }\n SetPortraitTextureRaw = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:40\n template = \"Transparent\"\n TitleBg = <unnamed> {\n }\n SetTitleMaxLinesAndHeight = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:68\n SetTitleColor = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:56\n nulltexture = BACKGROUND {\n }\n SetTitle = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:60\n PixelSnapDisabled = true\n SetBorder = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:27\n layoutType = \"PortraitFrameTemplate\"\n SetPortraitAtlasRaw = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:44\n SetPortraitToUnit = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:36\n Bg = MacroToolkitFrameBg {\n }\n macroMax = 120\n SetTitleFormatted = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:64\n NineSlice = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n SetPortraitToAsset = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:32\n SetPortraitTexCoord = <function> defined @Interface\\SharedXML\\PortraitFrame.lua:48\n numTabs = 3\n pixelBorders = <table> {\n }\n selectedMacro = 5\n SetBackdropColor = <function> defined =[C]:-1\n selectedTab = 1\n CloseButton = MacroToolkitFrameCloseButton {\n }\n}\n(*temporary) = \"BOTTOMLEFT\"\n(*temporary) = 1964.188599\n(*temporary) = 849.106628\n",
			["stack"] = "[string \"=[C]\"]: in function `SetPoint'\n[string \"@Interface\\AddOns\\MacroToolkit\\modules\\mainframe.lua\"]:612: in function <Interface\\AddOns\\MacroToolkit\\modules\\mainframe.lua:607>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\AddOns\\MacroToolkit\\MacroToolkit-v7.3.0.2.lua\"]:58: in function `ShowMacroFrame'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:2202: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4859: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4523: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4559: in function <Interface\\FrameXML\\ChatFrame.lua:4555>\n[string \"=[C]\"]: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 1389,
			["counter"] = 9,
		}, -- [2]
		{
			["message"] = "...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:33: Attempt to register unknown event \"AUCTION_BIDDER_LIST_UPDATE\"",
			["time"] = "2020/02/04 12:02:10",
			["locals"] = "(*temporary) = AceEvent30Frame {\n 0 = <userdata>\n}\n(*temporary) = \"AUCTION_BIDDER_LIST_UPDATE\"\n",
			["stack"] = "[string \"=[C]\"]: in function `RegisterEvent'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:33: in function `OnUsed'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:76: in function `Fire'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1395,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:33: Attempt to register unknown event \"AUCTION_OWNED_LIST_UPDATE\"",
			["time"] = "2020/02/04 12:02:10",
			["locals"] = "(*temporary) = AceEvent30Frame {\n 0 = <userdata>\n}\n(*temporary) = \"AUCTION_OWNED_LIST_UPDATE\"\n",
			["stack"] = "[string \"=[C]\"]: in function `RegisterEvent'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:33: in function `OnUsed'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:76: in function `Fire'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1395,
			["counter"] = 2,
		}, -- [4]
		{
			["message"] = "...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:37: Attempt to unregister unknown event \"AUCTION_OWNED_LIST_UPDATE\"",
			["time"] = "2020/02/04 12:02:47",
			["stack"] = "[string \"=[C]\"]: in function `UnregisterEvent'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:37: in function `OnUnused'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:164: in function `UnregisterEvent'\n[string \"@Interface\\AddOns\\DataStore_Auctions\\DataStore_Auctions-r51.lua\"]:233: in function `?'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1395,
			["counter"] = 2,
		}, -- [5]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WeakAuras' tried to call the protected function 'WorldFrame:SetPoint()'.",
			["time"] = "2020/02/05 19:51:10",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetPoint'\n[string \"--[==[ Error in 'Viewport' ]==] return function()\nWorldFrame:SetPoint(\"BOTTOMRIGHT\", 0, aura_env.config.offset)\nend\"]:2: in function <[string \"--[==[ Error in 'Viewport' ]==] return func...\"]:1>\n[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:548: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:512>\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:665: in function `ScanEventsInternal'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:626: in function `ScanEvents'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:759: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:750>",
			["session"] = 1405,
			["counter"] = 1,
		}, -- [6]
	},
}
