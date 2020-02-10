
ViragDevTool_Settings = {
	["isSideBarOpen"] = true,
	["fontSize"] = 10,
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
		{
			["unit"] = "player",
			["event"] = "COMBAT_LOG_EVENT_UNFILTERED",
			["active"] = false,
		}, -- [5]
	},
	["isWndOpen"] = false,
	["history"] = {
		"LibStub", -- [1]
		"WeakAuras.GetRegion", -- [2]
		"WeakAuras", -- [3]
		"C_AzeriteEssence.GetMilestoneEssence", -- [4]
		"C_AzeriteEssence.GetEssenceInfo", -- [5]
		"C_AzeriteEssence.GetEssences", -- [6]
		"help", -- [7]
		"GetSpellInfo", -- [8]
		"Plater.TargetIndicators", -- [9]
		"ViragDevTool.settings.history", -- [10]
		"find LFR", -- [11]
		"find SLASH", -- [12]
		"find Data ViragDevTool", -- [13]
		"startswith Virag", -- [14]
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
			0.96, -- [2]
			0.41, -- [3]
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
		"AceEvent-3.0", -- [1]
	},
	["logs"] = {
	},
	["MAX_HISTORY_SIZE"] = 50,
	["sideBarTabSelected"] = "history",
	["collResizerPosition"] = 232.659912109375,
}
