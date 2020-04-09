
JambaCoreProfileDB = {
	["profileKeys"] = {
		["Toshmonk - Kil'jaeden"] = "Toshmonk - Kil'jaeden",
		["Tosh - Kil'jaeden"] = "Default",
		["Toshaman - Kil'jaeden"] = "Default",
		["Toshpal - Area 52"] = "Toshpal - Area 52",
	},
	["profiles"] = {
		["Default"] = {
			["showStartupMessage4000"] = false,
		},
		["Tosh - Kil'jaeden"] = {
			["showStartupMessage4000"] = false,
		},
		["Toshmonk - Kil'jaeden"] = {
			["showStartupMessage4000"] = false,
		},
		["Toshaman - Kil'jaeden"] = {
			["showStartupMessage4000"] = false,
		},
		["Toshpal - Area 52"] = {
			["showStartupMessage4000"] = false,
		},
	},
}
JambaCommunicationsProfileDB = {
	["profileKeys"] = {
		["Toshmonk - Kil'jaeden"] = "Toshmonk - Kil'jaeden",
		["Tosh - Kil'jaeden"] = "Default",
		["Toshaman - Kil'jaeden"] = "Default",
		["Toshpal - Area 52"] = "Toshpal - Area 52",
	},
	["profiles"] = {
		["Default"] = {
		},
		["Tosh - Kil'jaeden"] = {
		},
		["Toshmonk - Kil'jaeden"] = {
		},
		["Toshaman - Kil'jaeden"] = {
		},
		["Toshpal - Area 52"] = {
		},
	},
}
JambaTeamProfileDB = {
	["profileKeys"] = {
		["Toshmonk - Kil'jaeden"] = "Toshmonk - Kil'jaeden",
		["Tosh - Kil'jaeden"] = "Default",
		["Toshaman - Kil'jaeden"] = "Default",
		["Toshpal - Area 52"] = "Toshpal - Area 52",
	},
	["profiles"] = {
		["Default"] = {
			["characterOnline"] = {
				["Toshpal-Kil'jaeden"] = false,
				["Toshaman-Kil'jaeden"] = true,
				["Toshdk-Kil'jaeden"] = false,
				["Toshdk-Kil'Jaeden"] = false,
				["Tosh-Kil'jaeden"] = false,
			},
			["characterClass"] = {
				["Toshpal-Kil'jaeden"] = "PALADIN",
				["Toshaman-Kil'jaeden"] = "SHAMAN",
				["Toshdk-Kil'jaeden"] = "DEATHKNIGHT",
				["Tosh-Kil'jaeden"] = "PRIEST",
				["Toshdk-Kil'Jaeden"] = "DEATHKNIGHT",
			},
			["teamList"] = {
				["Toshpal-Kil'jaeden"] = 3,
				["Toshaman-Kil'jaeden"] = 1,
				["Toshdk-Kil'jaeden"] = 5,
				["Toshdk-Kil'Jaeden"] = 4,
				["Tosh-Kil'jaeden"] = 2,
			},
			["master"] = "Tosh-Kil'jaeden",
		},
		["Tosh - Kil'jaeden"] = {
			["characterClass"] = {
				["Tosh-Kil'jaeden"] = "PRIEST",
				["Toshdk-Kil'jaeden"] = "DEATHKNIGHT",
			},
			["master"] = "Tosh-Kil'jaeden",
			["characterOnline"] = {
				["Tosh-Kil'jaeden"] = true,
				["Toshdk-Kil'jaeden"] = true,
			},
			["teamList"] = {
				["Tosh-Kil'jaeden"] = 2,
				["Toshdk-Kil'jaeden"] = 1,
			},
		},
		["Toshmonk - Kil'jaeden"] = {
			["master"] = "Toshmonk-Kil'jaeden",
			["characterOnline"] = {
				["Toshmonk-Kil'jaeden"] = true,
			},
			["teamList"] = {
				["Toshmonk-Kil'jaeden"] = 1,
			},
		},
		["Toshaman - Kil'jaeden"] = {
			["master"] = "Toshaman-Kil'jaeden",
			["teamList"] = {
				["Toshpal-Kil'jaeden"] = 2,
				["Toshaman-Kil'jaeden"] = 1,
			},
			["characterOnline"] = {
				["Toshpal-Kil'jaeden"] = true,
				["Toshaman-Kil'jaeden"] = true,
			},
		},
		["Toshpal - Area 52"] = {
			["characterClass"] = {
				["Toshpal-Area52"] = "PALADIN",
				["Toshpriest-Area52"] = "PRIEST",
			},
			["master"] = "Toshpal-Area52",
			["teamList"] = {
				["Toshpal-Area52"] = 1,
				["Toshpriest-Area52"] = 2,
			},
			["inviteConvertToRaid"] = false,
			["characterOnline"] = {
				["Toshpal-Area52"] = true,
				["Toshpriest-Area52"] = true,
			},
		},
	},
}
JambaTagProfileDB = {
	["profileKeys"] = {
		["Toshmonk - Kil'jaeden"] = "Toshmonk - Kil'jaeden",
		["Tosh - Kil'jaeden"] = "Default",
		["Toshaman - Kil'jaeden"] = "Default",
		["Toshpal - Area 52"] = "Toshpal - Area 52",
	},
	["profiles"] = {
		["Default"] = {
			["tagList"] = {
				["Toshpal-Kil'jaeden"] = {
					"all", -- [1]
					"justme", -- [2]
					"minion", -- [3]
				},
				["Toshaman-Kil'jaeden"] = {
					"all", -- [1]
					"justme", -- [2]
					"minion", -- [3]
				},
				["Toshdk-Kil'jaeden"] = {
					"all", -- [1]
					"justme", -- [2]
					"minion", -- [3]
				},
				["Toshdk-Kil'Jaeden"] = {
					"all", -- [1]
					"justme", -- [2]
					"minion", -- [3]
				},
				["Tosh-Kil'jaeden"] = {
					"all", -- [1]
					"justme", -- [2]
					"master", -- [3]
				},
			},
		},
		["Tosh - Kil'jaeden"] = {
			["tagList"] = {
				["Toshdk-Kil'jaeden"] = {
					"all", -- [1]
					"justme", -- [2]
					"minion", -- [3]
				},
				["Tosh-Kil'jaeden"] = {
					"all", -- [1]
					"justme", -- [2]
					"minion", -- [3]
				},
				["Toshaman-Kil'jaeden"] = {
					"all", -- [1]
					"justme", -- [2]
					"master", -- [3]
				},
			},
		},
		["Toshmonk - Kil'jaeden"] = {
			["tagList"] = {
				["Toshmonk-Kil'jaeden"] = {
					"all", -- [1]
					"justme", -- [2]
					"master", -- [3]
				},
			},
		},
		["Toshaman - Kil'jaeden"] = {
			["tagList"] = {
				["Toshpal-Kil'jaeden"] = {
					"all", -- [1]
					"justme", -- [2]
					"minion", -- [3]
				},
				["Toshaman-Kil'jaeden"] = {
					"all", -- [1]
					"justme", -- [2]
					"master", -- [3]
				},
			},
		},
		["Toshpal - Area 52"] = {
			["tagList"] = {
				["Toshpal-Area52"] = {
					"all", -- [1]
					"justme", -- [2]
					"master", -- [3]
				},
				["Toshpriest-Area52"] = {
					"all", -- [1]
					"justme", -- [2]
					"minion", -- [3]
				},
			},
		},
	},
}
JambaMessageProfileDB = {
	["profileKeys"] = {
		["Toshmonk - Kil'jaeden"] = "Toshmonk - Kil'jaeden",
		["Tosh - Kil'jaeden"] = "Default",
		["Toshaman - Kil'jaeden"] = "Default",
		["Toshpal - Area 52"] = "Toshpal - Area 52",
	},
	["profiles"] = {
		["Default"] = {
		},
		["Tosh - Kil'jaeden"] = {
		},
		["Toshmonk - Kil'jaeden"] = {
		},
		["Toshaman - Kil'jaeden"] = {
		},
		["Toshpal - Area 52"] = {
		},
	},
}
