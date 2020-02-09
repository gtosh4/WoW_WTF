
ViragDevTool_Settings = {
	["isSideBarOpen"] = true,
	["fontSize"] = 10,
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
		["lightblue"] = "|cFF96C0CE",
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
		["default"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
			1, -- [4]
		},
		["green"] = "|cFF00FF00",
		["darkred"] = "|cFFC25B56",
		["red"] = "|cFFFF0000",
		["error"] = "|cFFFF0000",
		["white"] = "|cFFFFFFFF",
	},
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
	["tArgs"] = {
		"ToshAssign Timeline", -- [1]
	},
	["logs"] = {
	},
	["MAX_HISTORY_SIZE"] = 50,
	["sideBarTabSelected"] = "history",
	["isWndOpen"] = false,
}
