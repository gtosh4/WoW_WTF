
ViragDevTool_Settings = {
	["isSideBarOpen"] = true,
	["fontSize"] = 10,
	["collResizerPosition"] = 232.659912109375,
	["isWndOpen"] = false,
	["history"] = {
		"WeakAuras.GetUnitFrame", -- [1]
		"LibStub", -- [2]
		"WeakAuras.GetRegion", -- [3]
		"WeakAuras", -- [4]
		"C_AzeriteEssence.GetMilestoneEssence", -- [5]
		"C_AzeriteEssence.GetEssenceInfo", -- [6]
		"C_AzeriteEssence.GetEssences", -- [7]
		"help", -- [8]
		"GetSpellInfo", -- [9]
		"Plater.TargetIndicators", -- [10]
		"ViragDevTool.settings.history", -- [11]
		"find LFR", -- [12]
		"find SLASH", -- [13]
		"find Data ViragDevTool", -- [14]
		"startswith Virag", -- [15]
	},
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
			["unit"] = "player",
			["event"] = "UNIT_AURA",
			["active"] = false,
		}, -- [3]
		{
			["event"] = "CHAT_MSG_CHANNEL",
			["active"] = false,
		}, -- [4]
		{
			["event"] = "COMBAT_LOG_EVENT_UNFILTERED",
			["active"] = false,
		}, -- [5]
	},
	["tArgs"] = {
		"\"player\"", -- [1]
	},
	["logs"] = {
	},
	["MAX_HISTORY_SIZE"] = 50,
	["sideBarTabSelected"] = "events",
	["colors"] = {
		["ok"] = "|cFF00FF00",
		["string"] = {
			0.67, -- [1]
			0.83, -- [2]
			0.45, -- [3]
			1, -- [4]
		},
		["white"] = "|cFFFFFFFF",
		["parent"] = "|cFFBEB9B5",
		["lightgreen"] = "|cFF98FB98",
		["number"] = {
			1, -- [1]
			0.96, -- [2]
			0.41, -- [3]
			1, -- [4]
		},
		["red"] = "|cFFFF0000",
		["function"] = {
			1, -- [1]
			0.49, -- [2]
			0.04, -- [3]
			1, -- [4]
		},
		["green"] = "|cFF00FF00",
		["default"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
			1, -- [4]
		},
		["table"] = {
			0.41, -- [1]
			0.8, -- [2]
			0.94, -- [3]
			1, -- [4]
		},
		["darkred"] = "|cFFC25B56",
		["lightblue"] = "|cFF96C0CE",
		["error"] = "|cFFFF0000",
		["gray"] = "|cFFBEB9B5",
	},
}
