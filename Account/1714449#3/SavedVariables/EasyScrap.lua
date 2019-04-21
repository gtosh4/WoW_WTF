
EasyScrap_SaveData = {
	["addonSettings"] = {
		["defaultFilter"] = 1,
		["canScrapTooltip"] = false,
	},
	["addonVersion"] = 22,
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
