
ViragDevTool_Settings = {
	["isSideBarOpen"] = true,
	["fontSize"] = 11,
	["events"] = {
		{
			["event"] = "ALL",
			["active"] = false,
		}, -- [1]
		{
			["event"] = "CURSOR_UPDATE",
			["active"] = false,
		}, -- [2]
		{
			["active"] = false,
			["event"] = "UNIT_AURA",
			["unit"] = "player",
		}, -- [3]
		{
			["event"] = "CHAT_MSG_CHANNEL",
			["active"] = false,
		}, -- [4]
	},
	["isWndOpen"] = false,
	["history"] = {
		"ViragDevTool.settings.history", -- [1]
		"find LFR", -- [2]
		"find SLASH", -- [3]
		"find Data ViragDevTool", -- [4]
		"startswith Virag", -- [5]
	},
	["colors"] = {
		["ok"] = "|cFF00FF00",
		["string"] = {
			0.67, -- [1]
			0.83, -- [2]
			0.45, -- [3]
			1, -- [4]
		},
		["gray"] = "|cFFBEB9B5",
		["parent"] = "|cFFBEB9B5",
		["lightgreen"] = "|cFF98FB98",
		["number"] = {
			1, -- [1]
			0.9607843137254902, -- [2]
			0.4117647058823529, -- [3]
			1, -- [4]
		},
		["default"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
			1, -- [4]
		},
		["function"] = {
			1, -- [1]
			0.49, -- [2]
			0.04, -- [3]
			1, -- [4]
		},
		["table"] = {
			0.41, -- [1]
			0.8, -- [2]
			0.94, -- [3]
			1, -- [4]
		},
		["lightblue"] = "|cFF96C0CE",
		["green"] = "|cFF00FF00",
		["darkred"] = "|cFFC25B56",
		["red"] = "|cFFFF0000",
		["error"] = "|cFFFF0000",
		["white"] = "|cFFFFFFFF",
	},
	["tArgs"] = {
	},
	["logs"] = {
	},
	["MAX_HISTORY_SIZE"] = 50,
	["sideBarTabSelected"] = "history",
	["collResizerPosition"] = 450,
}
