
ViragDevTool_Settings = {
	["isSideBarOpen"] = true,
	["fontSize"] = 10,
	["isWndOpen"] = false,
	["collResizerPosition"] = 232.659912109375,
	["history"] = {
		"WeakAuras.GetRegion", -- [1]
		"WeakAuras", -- [2]
		"C_AzeriteEssence.GetMilestoneEssence", -- [3]
		"C_AzeriteEssence.GetEssenceInfo", -- [4]
		"C_AzeriteEssence.GetEssences", -- [5]
		"help", -- [6]
		"GetSpellInfo", -- [7]
		"Plater.TargetIndicators", -- [8]
		"ViragDevTool.settings.history", -- [9]
		"find LFR", -- [10]
		"find SLASH", -- [11]
		"find Data ViragDevTool", -- [12]
		"startswith Virag", -- [13]
	},
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
		["lightblue"] = "|cFF96C0CE",
		["table"] = {
			0.41, -- [1]
			0.8, -- [2]
			0.94, -- [3]
			1, -- [4]
		},
		["darkred"] = "|cFFC25B56",
		["default"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
			1, -- [4]
		},
		["error"] = "|cFFFF0000",
		["gray"] = "|cFFBEB9B5",
	},
	["tArgs"] = {
		"ToshAssign Timeline", -- [1]
	},
	["logs"] = {
	},
	["MAX_HISTORY_SIZE"] = 50,
	["sideBarTabSelected"] = "history",
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
			["active"] = false,
			["event"] = "COMBAT_LOG_EVENT_UNFILTERED",
			["unit"] = "player",
		}, -- [5]
	},
}
