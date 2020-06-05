
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
								["trigger"] = {
									["spell"] = {
										["spellId"] = 282205,
									},
									["time"] = {
									},
									["type"] = "spell",
								},
								["id"] = 1,
								["name"] = "Assignment 1",
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
							}, -- [1]
						},
					},
				},
			},
		},
	},
}
