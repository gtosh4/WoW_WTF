
ToshAssignmentsDB = {
	["profileKeys"] = {
		["Yorman - Kil'jaeden"] = "Default",
		["Yuumi - Kil'jaeden"] = "Default",
		["Toshaman - Kil'jaeden"] = "Default",
		["Tosh - Kil'jaeden"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["encounters"] = {
				[2325] = {
					["Koopa"] = {
						["enabled"] = true,
						["encounterId"] = 2325,
						["name"] = "Koopa",
						["assignments"] = {
							{
								["players"] = {
									"Tosh", -- [1]
								},
								["removeOptions"] = nil --[[ skipped inline function ]],
								["name"] = "Ramp",
								["trigger"] = {
									["type"] = "spell",
									["spell"] = {
										["spellId"] = 282082,
									},
									["eventNumber"] = "1,4,7,10",
									["time"] = {
									},
								},
								["actions"] = {
									{
										["type"] = "bar",
										["id"] = 1,
										["marker"] = {
										},
										["bar"] = {
											["icon"] = "marker6",
										},
									}, -- [1]
									{
										["type"] = "countdown",
										["id"] = 2,
										["marker"] = {
										},
										["bar"] = {
										},
									}, -- [2]
								},
								["id"] = 1,
							}, -- [1]
							{
								["players"] = {
									"Tosh", -- [1]
								},
								["removeOptions"] = nil --[[ skipped inline function ]],
								["name"] = "Rapt",
								["trigger"] = {
									["spell"] = {
										["spellId"] = 282082,
									},
									["time"] = {
									},
									["type"] = "spell",
								},
								["actions"] = {
									{
										["type"] = "bar",
										["id"] = 1,
										["marker"] = {
										},
										["bar"] = {
											["icon"] = "marker1",
										},
									}, -- [1]
									{
										["type"] = "countdown",
										["id"] = 2,
										["marker"] = {
										},
										["bar"] = {
										},
									}, -- [2]
								},
								["id"] = 2,
							}, -- [2]
						},
					},
				},
			},
		},
	},
}
