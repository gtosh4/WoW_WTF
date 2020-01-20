
EasyScrap_SaveData = {
	["addonSettings"] = {
		["canScrapTooltip"] = false,
		["defaultFilter"] = 1,
	},
	["addonVersion"] = 24,
	["customFilters"] = {
		{
			["name"] = "Normal",
			["rules"] = {
				{
					["filterType"] = "equipmentSet",
				}, -- [1]
				{
					["data"] = {
						0, -- [1]
						380, -- [2]
					},
					["filterType"] = "itemLevel",
				}, -- [2]
			},
		}, -- [1]
	},
}
