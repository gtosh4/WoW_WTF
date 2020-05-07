
EncounterDetailsDB = {
	["emotes"] = {
		{
			{
				0.2250000000931323, -- [1]
				"The tide rises!", -- [2]
				"Lady Jaina Proudmoore", -- [3]
				7, -- [4]
			}, -- [1]
			{
				8.253000000026077, -- [1]
				"Enemy vessel off our port side! Give dem a taste of our cannons!", -- [2]
				"Captain Zadari", -- [3]
				7, -- [4]
			}, -- [2]
			{
				13.45000000018627, -- [1]
				"I will freeze you where you stand!", -- [2]
				"Lady Jaina Proudmoore", -- [3]
				7, -- [4]
			}, -- [3]
			{
				19.73400000017136, -- [1]
				"A Kul Tiran Corsair approaches on the port side!", -- [2]
				"Kul Tiran Corsair", -- [3]
				1, -- [4]
			}, -- [4]
			{
				76.41800000006333, -- [1]
				"Impossible!", -- [2]
				"Captain Zadari", -- [3]
				7, -- [4]
			}, -- [5]
			{
				79.55200000014156, -- [1]
				"I lured you into open waters. Because out here, you have no hope of escape.", -- [2]
				"Lady Jaina Proudmoore", -- [3]
				7, -- [4]
			}, -- [6]
			{
				108.3250000001863, -- [1]
				"It's time we finish this.", -- [2]
				"Lady Jaina Proudmoore", -- [3]
				7, -- [4]
			}, -- [7]
			{
				124.5120000001043, -- [1]
				"I hope you don't mind the cold!", -- [2]
				"Lady Jaina Proudmoore", -- [3]
				7, -- [4]
			}, -- [8]
			{
				138.6620000000112, -- [1]
				"|TInterface\\Icons\\SPELL_FROST_FROZENCORE:20|t|cFFFF0000%s|r begins to cast |cFFFF0000|Hspell:288441|h[Icefall]|h|r!", -- [2]
				"Lady Jaina Proudmoore", -- [3]
				1, -- [4]
			}, -- [9]
			{
				148.3289999999106, -- [1]
				"Cannons, fire!", -- [2]
				"Lady Jaina Proudmoore", -- [3]
				7, -- [4]
			}, -- [10]
			{
				148.3289999999106, -- [1]
				"|TInterface\\Icons\\INV_STAFF_53:20|t|cFFFF0000%s|r marks |cFFFF0000Sploshey|r for a massive |cFFFF0000|Hspell:288380|h[Siegebreaker Blast]|h|r, move away!", -- [2]
				"Lady Jaina Proudmoore", -- [3]
				1, -- [4]
			}, -- [11]
			{
				176.6949999998324, -- [1]
				"I will freeze you where you stand!", -- [2]
				"Lady Jaina Proudmoore", -- [3]
				7, -- [4]
			}, -- [12]
			{
				202.0819999999367, -- [1]
				"What are you waiting for? Finish her.", -- [2]
				"Nathanos Blightcaller", -- [3]
				7, -- [4]
			}, -- [13]
			["boss"] = "Lady Jaina Proudmoore",
		}, -- [1]
		{
			{
				5.600000000093132, -- [1]
				"Kul Tirans on de starboard side!", -- [2]
				"Captain Zadari", -- [3]
				7, -- [4]
			}, -- [1]
			{
				10.66800000006333, -- [1]
				"I will freeze you where you stand!", -- [2]
				"Lady Jaina Proudmoore", -- [3]
				7, -- [4]
			}, -- [2]
			{
				16.73499999986962, -- [1]
				"A Kul Tiran Corsair approaches on the starboard side!", -- [2]
				"Kul Tiran Corsair", -- [3]
				1, -- [4]
			}, -- [3]
			{
				16.95099999988452, -- [1]
				"You will be washed away!", -- [2]
				"Lady Jaina Proudmoore", -- [3]
				7, -- [4]
			}, -- [4]
			["boss"] = "Lady Jaina Proudmoore",
		}, -- [2]
		{
			{
				0.2179999998770654, -- [1]
				"For the Alliance!", -- [2]
				"Lady Jaina Proudmoore", -- [3]
				7, -- [4]
			}, -- [1]
			{
				8.136999999638647, -- [1]
				"Enemy vessel off de starboard side! Man de guns!", -- [2]
				"Captain Zadari", -- [3]
				7, -- [4]
			}, -- [2]
			{
				13.63299999991432, -- [1]
				"I will freeze you where you stand!", -- [2]
				"Lady Jaina Proudmoore", -- [3]
				7, -- [4]
			}, -- [3]
			{
				18.46999999973923, -- [1]
				"A Kul Tiran Corsair approaches on the starboard side!", -- [2]
				"Kul Tiran Corsair", -- [3]
				1, -- [4]
			}, -- [4]
			{
				66.84299999987707, -- [1]
				"Impossible!", -- [2]
				"Captain Zadari", -- [3]
				7, -- [4]
			}, -- [5]
			{
				69.94599999999627, -- [1]
				"I lured you into open waters. Because out here, you have no hope of escape.", -- [2]
				"Lady Jaina Proudmoore", -- [3]
				7, -- [4]
			}, -- [6]
			["boss"] = "Lady Jaina Proudmoore",
		}, -- [3]
	},
	["encounter_spells"] = {
		[287626] = {
			["school"] = 16,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[288099] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[288619] = {
			["school"] = 16,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[290084] = {
			["school"] = 16,
			["token"] = {
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Jaina's Tide Elemental",
		},
		[290053] = {
			["school"] = 16,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Icebound Image",
		},
		[287565] = {
			["school"] = 16,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[288211] = {
			["school"] = 64,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[288038] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Kul Tiran Marine",
		},
		[288747] = {
			["school"] = 64,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[288212] = {
			["school"] = 64,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[289488] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[290087] = {
			["school"] = 16,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Jaina's Tide Elemental",
		},
		[285725] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Kul Tiran Marine",
		},
		[285253] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[288671] = {
			["school"] = 16,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
		},
		[287490] = {
			["school"] = 16,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_PERIODIC_DAMAGE"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Ice Block",
		},
		[288199] = {
			["school"] = 16,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[285254] = {
			["school"] = 16,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[288374] = {
			["school"] = 64,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[285177] = {
			["school"] = 16,
			["token"] = {
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[285508] = {
			["school"] = 4,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Munitions Barrel",
		},
		[316835] = {
			["school"] = 32,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_PERIODIC_DAMAGE"] = true,
			},
			["source"] = "Twisted Appendage",
		},
		[288345] = {
			["school"] = 16,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[288219] = {
			["school"] = 16,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Unexploded Ordnance",
		},
		[198756] = {
			["school"] = 8,
			["token"] = {
				["SPELL_HEAL"] = true,
			},
			["source"] = "Chi-Ji",
		},
		[289220] = {
			["school"] = 16,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Jaina's Tide Elemental",
		},
		[290001] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[288441] = {
			["school"] = 16,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[288394] = {
			["school"] = 4,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Unexploded Ordnance",
		},
		[280661] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Unknown",
		},
		[288363] = {
			["school"] = 16,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[192082] = {
			["school"] = 8,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Wind Rush Totem",
		},
		[288647] = {
			["school"] = 16,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Orb of Frost",
		},
		[285828] = {
			["school"] = 4,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Kul Tiran Cannon",
		},
		[288719] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[288380] = {
			["school"] = 64,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Cannons",
		},
		[289963] = {
			["school"] = 16,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Ice Blocked Nathanos",
		},
		[290621] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[289940] = {
			["school"] = 16,
			["token"] = {
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[315197] = {
			["school"] = 32,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Thing From Beyond",
		},
		[123996] = {
			["school"] = 8,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Xuen",
		},
		[287585] = {
			["school"] = 16,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[287925] = {
			["school"] = 8,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Lady Jaina Proudmoore",
		},
		[288221] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Unexploded Ordnance",
		},
	},
}
