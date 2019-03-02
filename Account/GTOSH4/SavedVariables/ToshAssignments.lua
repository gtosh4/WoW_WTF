
ToshAssignmentsDB = {
	["profileKeys"] = {
		["Zaemme - Kil'jaeden"] = "Default",
		["Yuumi - Kil'jaeden"] = "Default",
		["Tosh - Kil'jaeden"] = "Default",
		["Toshaman - Kil'jaeden"] = "Default",
		["Yorman - Kil'jaeden"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["encounters"] = {
				[2325] = {
					["Koopa"] = {
						["assignments"] = {
							{
								["players"] = {
									"Tosh", -- [1]
								},
								["removeOptions"] = nil --[[ skipped inline function ]],
								["name"] = "Ramp",
								["trigger"] = {
									["spell"] = {
										["spellId"] = 282082,
									},
									["type"] = "spell",
									["time"] = {
									},
									["eventNumber"] = "1,4,7,10",
								},
								["actions"] = {
									{
										["id"] = 1,
										["type"] = "bar",
										["marker"] = {
										},
										["bar"] = {
											["icon"] = "marker6",
										},
									}, -- [1]
									{
										["id"] = 2,
										["type"] = "countdown",
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
										["marker"] = {
										},
										["type"] = "bar",
										["id"] = 1,
										["bar"] = {
											["icon"] = "marker1",
										},
									}, -- [1]
									{
										["marker"] = {
										},
										["type"] = "countdown",
										["id"] = 2,
										["bar"] = {
										},
									}, -- [2]
								},
								["id"] = 2,
							}, -- [2]
						},
						["encounterId"] = 2325,
						["name"] = "Koopa",
						["enabled"] = true,
						["showOthers"] = false,
					},
				},
			},
		},
	},
}
