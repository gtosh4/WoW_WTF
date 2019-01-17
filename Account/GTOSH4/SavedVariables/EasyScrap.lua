
EasyScrap_SaveData = {
	["addonSettings"] = {
		["canScrapTooltip"] = false,
		["defaultFilter"] = 1,
	},
	["addonVersion"] = 19,
	["customFilters"] = {
		{
			["name"] = "Def",
			["rules"] = {
				{
					["filterType"] = "equipmentSet",
				}, -- [1]
				{
					["data"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
						false, -- [4]
					},
					["filterType"] = "itemQuality",
				}, -- [2]
			},
		}, -- [1]
	},
}
