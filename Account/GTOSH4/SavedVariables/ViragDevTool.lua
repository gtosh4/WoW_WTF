
ViragDevTool_Settings = {
	["isSideBarOpen"] = true,
	["fontSize"] = 10,
	["isWndOpen"] = false,
	["collResizerPosition"] = 449.9994506835938,
	["history"] = {
		"C_AzeriteEssence.GetMilestoneEssence", -- [1]
		"C_AzeriteEssence.GetEssenceInfo", -- [2]
		"C_AzeriteEssence.GetEssences", -- [3]
		"help", -- [4]
		"GetSpellInfo", -- [5]
		"Plater.TargetIndicators", -- [6]
		"ViragDevTool.settings.history", -- [7]
		"find LFR", -- [8]
		"find SLASH", -- [9]
		"find Data ViragDevTool", -- [10]
		"startswith Virag", -- [11]
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
		113, -- [1]
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
