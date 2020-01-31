
BugGrabberDB = {
	["session"] = 1360,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:33: Attempt to register unknown event \"AUCTION_OWNED_LIST_UPDATE\"",
			["time"] = "2020/01/30 20:27:17",
			["locals"] = "(*temporary) = AceEvent30Frame {\n 0 = <userdata>\n}\n(*temporary) = \"AUCTION_OWNED_LIST_UPDATE\"\n",
			["stack"] = "[string \"=[C]\"]: in function `RegisterEvent'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:33: in function `OnUsed'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:76: in function `Fire'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1358,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:33: Attempt to register unknown event \"AUCTION_BIDDER_LIST_UPDATE\"",
			["time"] = "2020/01/30 20:27:17",
			["locals"] = "(*temporary) = AceEvent30Frame {\n 0 = <userdata>\n}\n(*temporary) = \"AUCTION_BIDDER_LIST_UPDATE\"\n",
			["stack"] = "[string \"=[C]\"]: in function `RegisterEvent'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:33: in function `OnUsed'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:76: in function `Fire'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1358,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:37: Attempt to unregister unknown event \"AUCTION_OWNED_LIST_UPDATE\"",
			["time"] = "2020/01/30 20:27:41",
			["stack"] = "[string \"=[C]\"]: in function `UnregisterEvent'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:37: in function `OnUnused'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:164: in function `UnregisterEvent'\n[string \"@Interface\\AddOns\\DataStore_Auctions\\DataStore_Auctions-r51.lua\"]:233: in function `?'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1358,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'MultiBarRight:SetShown()'.",
			["time"] = "2020/01/30 20:41:33",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetShown'\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:36: in function <Interface\\FrameXML\\MultiActionBars.lua:34>\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:70: in function `MultiActionBar_Update'\n[string \"@Interface\\FrameXML\\ActionBarController.lua\"]:169: in function `ValidateActionBarTransition'\n[string \"@Interface\\FrameXML\\ActionBarController.lua\"]:137: in function `ActionBarController_UpdateAll'\n[string \"@Interface\\FrameXML\\ZoneAbility.lua\"]:72: in function <Interface\\FrameXML\\ZoneAbility.lua:32>",
			["session"] = 1358,
			["counter"] = 1,
		}, -- [4]
	},
}
