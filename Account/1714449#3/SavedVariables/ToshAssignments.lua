
ToshAssignmentsDB = {
	["profileKeys"] = {
		["Toshpal - Kil'jaeden"] = "Default",
		["Yorman - Kil'jaeden"] = "Default",
		["Tosh - Kil'jaeden"] = "Default",
		["Toshmonk - Kil'jaeden"] = "Default",
		["Toshaman - Kil'jaeden"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["encounters"] = {
				[2334] = {
					["test"] = {
						["enabled"] = true,
						["encounterId"] = 2334,
						["name"] = "test",
						["assignments"] = {
							{
								["removeOptions"] = nil --[[ skipped inline function ]],
								["name"] = "Assignment 1",
								["trigger"] = {
									["spell"] = {
										["spellId"] = 282205,
									},
									["time"] = {
									},
									["type"] = "spell",
								},
								["actions"] = {
									{
										["id"] = 1,
										["type"] = "bar",
										["marker"] = {
										},
										["bar"] = {
										},
									}, -- [1]
								},
								["id"] = 1,
							}, -- [1]
						},
					},
				},
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
									["eventNumber"] = "*",
									["spell"] = {
										["spellId"] = 282082,
									},
									["time"] = {
									},
									["type"] = "spell",
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
						},
						["encounterId"] = 2325,
						["name"] = "Koopa",
						["showOthers"] = false,
						["enabled"] = true,
					},
				},
			},
		},
	},
}
