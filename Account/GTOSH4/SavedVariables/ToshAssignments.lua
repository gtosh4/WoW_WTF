
ToshAssignmentsDB = {
	["profileKeys"] = {
		["Toshpal - Kil'jaeden"] = "Default",
		["Toshtrial - Blood Furnace"] = "Default",
		["Daggny - Frostwolf"] = "Default",
		["Tosku - Kil'jaeden"] = "Default",
		["Yorman - Kil'jaeden"] = "Default",
		["Toshtrial - The Forgotten Coast"] = "Default",
		["Tosh - Kil'jaeden"] = "Default",
		["Toshmonk - Kil'jaeden"] = "Default",
		["Zallie - Frostwolf"] = "Default",
		["Toshaman - Kil'jaeden"] = "Default",
		["Koutetsu - Frostwolf"] = "Default",
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
									["type"] = "spell",
									["spell"] = {
										["spellId"] = 282082,
									},
									["eventNumber"] = "*",
									["time"] = {
									},
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
						["enabled"] = true,
						["showOthers"] = false,
					},
				},
			},
		},
	},
}
