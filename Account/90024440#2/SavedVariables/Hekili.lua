
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Yellowy - Kil'jaeden"] = "Yellowy - Kil'jaeden",
	},
	["profiles"] = {
		["Yellowy - Kil'jaeden"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["enableAllOfTheThings_20180820"] = true,
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Shadow"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Priest_Shadow.simc",
					["builtIn"] = true,
					["date"] = 20181230.2119,
					["author"] = "SimC",
					["desc"] = "# Shadow Priest\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Priest_Shadow.simc\n# December 30, 2018 - 21:18\n\n# Changes:\n# - Added Silence.\n# - Converted target_if syntax.",
					["lists"] = {
						["single"] = {
							{
								["action"] = "void_eruption",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.down",
								["action"] = "dark_ascension",
							}, -- [2]
							{
								["action"] = "void_bolt",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.harvested_thoughts.up & cooldown.void_bolt.remains >= 1.5 & azerite.searing_dialogue.rank >= 1",
								["action"] = "mind_sear",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 3 || cooldown.shadow_word_death.charges = 2 || ( cooldown.shadow_word_death.charges = 1 & cooldown.shadow_word_death.remains < gcd.max )",
								["action"] = "shadow_word_death",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10",
								["action"] = "dark_void",
							}, -- [7]
							{
								["action"] = "mindbender",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! buff.voidform.up || ( cooldown.shadow_word_death.charges = 2 & buff.voidform.stack < 15 )",
								["action"] = "shadow_word_death",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 5 & raid_event.adds.duration < 20",
								["action"] = "shadow_crash",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.dots_up",
								["action"] = "mind_blast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "dot.shadow_word_pain.remains > 4 & dot.vampiric_touch.remains > 4",
								["action"] = "void_torrent",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 4 & ! talent.misery.enabled & ! talent.dark_void.enabled",
								["action"] = "shadow_word_pain",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 6 || ( talent.misery.enabled & dot.shadow_word_pain.refreshable )",
								["action"] = "vampiric_touch",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "mind_sear",
								["interrupt_if"] = "ticks>=2",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
								["criteria"] = "azerite.searing_dialogue.rank >= 3",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["interrupt_if"] = "ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
							}, -- [16]
							{
								["action"] = "shadow_word_pain",
								["enabled"] = true,
							}, -- [17]
						},
						["default"] = {
							{
								["action"] = "silence",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.react || target.time_to_die <= 80 || target.health.pct < 35",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "dot.shadow_word_pain.ticking & dot.vampiric_touch.ticking",
								["var_name"] = "dots_up",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.up",
								["action"] = "fireblood",
							}, -- [5]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.up",
								["action"] = "ancestral_call",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "spell_targets.mind_sear > ( 5 + 1 * talent.misery.enabled )",
								["list_name"] = "aoe",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "cleave",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies = 1",
								["list_name"] = "single",
							}, -- [11]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.shadowform.up",
								["action"] = "shadowform",
							}, -- [6]
							{
								["action"] = "mind_blast",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "mind_blast",
								["enabled"] = true,
							}, -- [8]
						},
						["aoe"] = {
							{
								["action"] = "void_eruption",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.down",
								["action"] = "dark_ascension",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.dark_void.enabled & dot.shadow_word_pain.remains > travel_time",
								["action"] = "void_bolt",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10",
								["action"] = "dark_void",
							}, -- [5]
							{
								["action"] = "mindbender",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 5 & raid_event.adds.duration < 20",
								["action"] = "shadow_crash",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "mind_sear",
								["interrupt_if"] = "ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
							}, -- [8]
							{
								["action"] = "shadow_word_pain",
								["enabled"] = true,
							}, -- [9]
						},
						["cleave"] = {
							{
								["action"] = "void_eruption",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.down",
								["action"] = "dark_ascension",
							}, -- [2]
							{
								["action"] = "void_bolt",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 3 || buff.voidform.down",
								["action"] = "shadow_word_death",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10",
								["action"] = "dark_void",
							}, -- [6]
							{
								["action"] = "mindbender",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.mind_sear < 4 & azerite.searing_dialogue.rank = 0 ) || ( spell_targets.mind_sear < 3 & azerite.searing_dialogue.rank = 1 ) || ( spell_targets.mind_sear < 2 & azerite.searing_dialogue.rank >= 2 )",
								["action"] = "mind_blast",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.adds.in > 5 & raid_event.adds.duration < 2 ) || raid_event.adds.duration > 2",
								["action"] = "shadow_crash",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 4 & ( ! talent.misery.enabled & ! talent.dark_void.enabled )",
								["action"] = "shadow_word_pain",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( target.time_to_die > 6 )",
								["action"] = "vampiric_touch",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "dot.shadow_word_pain.refreshable & ( talent.misery.enabled & target.time_to_die > 4 )",
								["action"] = "vampiric_touch",
							}, -- [12]
							{
								["action"] = "void_torrent",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "mind_sear",
								["interrupt_if"] = "ticks>=2",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
								["criteria"] = "spell_targets.mind_sear > 1",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["interrupt_if"] = "ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
							}, -- [15]
							{
								["action"] = "shadow_word_pain",
								["enabled"] = true,
							}, -- [16]
						},
					},
					["version"] = 20181230.2119,
					["warnings"] = "WARNING:  The import for 'single' required some automated changes.\nThe following auras were used in the action list but were not found in the addon database:\n - harvested_thoughts\n\nImported 5 action lists.\n",
					["profile"] = "# Shadow Priest\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Priest_Shadow.simc\n# December 30, 2018 - 21:18\n\n# Changes:\n# - Added Silence.\n# - Converted target_if syntax.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/shadowform,if=!buff.shadowform.up\nactions.precombat+=/mind_blast\nactions.precombat+=/shadow_word_void\n\n# Executed every time the actor is available.\nactions=silence\nactions+=/use_items\nactions+=/potion,if=buff.bloodlust.react||target.time_to_die<=80||target.health.pct<35\nactions+=/variable,name=dots_up,op=set,value=dot.shadow_word_pain.ticking&dot.vampiric_touch.ticking\nactions+=/fireblood,if=buff.voidform.up\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/ancestral_call,if=buff.voidform.up\nactions+=/run_action_list,name=aoe,if=spell_targets.mind_sear>(5+1*talent.misery.enabled)\nactions+=/run_action_list,name=cleave,if=active_enemies>1\nactions+=/run_action_list,name=single,if=active_enemies=1\n\nactions.aoe=void_eruption\nactions.aoe+=/dark_ascension,if=buff.voidform.down\nactions.aoe+=/void_bolt,if=talent.dark_void.enabled&dot.shadow_word_pain.remains>travel_time\nactions.aoe+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\nactions.aoe+=/dark_void,if=raid_event.adds.in>10\nactions.aoe+=/mindbender\nactions.aoe+=/shadow_crash,if=raid_event.adds.in>5&raid_event.adds.duration<20\nactions.aoe+=/mind_sear,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.aoe+=/shadow_word_pain\n\nactions.cleave=void_eruption\nactions.cleave+=/dark_ascension,if=buff.voidform.down\nactions.cleave+=/void_bolt\nactions.cleave+=/shadow_word_death,if=target.time_to_die<3||buff.voidform.down\nactions.cleave+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\nactions.cleave+=/dark_void,if=raid_event.adds.in>10\nactions.cleave+=/mindbender\nactions.cleave+=/mind_blast,if=(spell_targets.mind_sear<4&azerite.searing_dialogue.rank=0)||(spell_targets.mind_sear<3&azerite.searing_dialogue.rank=1)||(spell_targets.mind_sear<2&azerite.searing_dialogue.rank>=2)\nactions.cleave+=/shadow_crash,if=(raid_event.adds.in>5&raid_event.adds.duration<2)||raid_event.adds.duration>2\nactions.cleave+=/shadow_word_pain,if=refreshable&target.time_to_die>4&(!talent.misery.enabled&!talent.dark_void.enabled)\nactions.cleave+=/vampiric_touch,if=refreshable&(target.time_to_die>6)\nactions.cleave+=/vampiric_touch,if=dot.shadow_word_pain.refreshable&(talent.misery.enabled&target.time_to_die>4)\nactions.cleave+=/void_torrent\nactions.cleave+=/mind_sear,if=spell_targets.mind_sear>1,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2\nactions.cleave+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.cleave+=/shadow_word_pain\n\nactions.single=void_eruption\nactions.single+=/dark_ascension,if=buff.voidform.down\nactions.single+=/void_bolt\nactions.single+=/mind_sear,if=buff.harvested_thoughts.up&cooldown.void_bolt.remains>=1.5&azerite.searing_dialogue.rank>=1\nactions.single+=/shadow_word_death,if=target.time_to_die<3||cooldown.shadow_word_death.charges=2||(cooldown.shadow_word_death.charges=1&cooldown.shadow_word_death.remains<gcd.max)\nactions.single+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\nactions.single+=/dark_void,if=raid_event.adds.in>10\nactions.single+=/mindbender\nactions.single+=/shadow_word_death,if=!buff.voidform.up||(cooldown.shadow_word_death.charges=2&buff.voidform.stack<15)\nactions.single+=/shadow_crash,if=raid_event.adds.in>5&raid_event.adds.duration<20\nactions.single+=/mind_blast,if=variable.dots_up\nactions.single+=/void_torrent,if=dot.shadow_word_pain.remains>4&dot.vampiric_touch.remains>4\nactions.single+=/shadow_word_pain,if=refreshable&target.time_to_die>4&!talent.misery.enabled&!talent.dark_void.enabled\nactions.single+=/vampiric_touch,if=refreshable&target.time_to_die>6||(talent.misery.enabled&dot.shadow_word_pain.refreshable)\nactions.single+=/mind_sear,if=azerite.searing_dialogue.rank>=3,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2\nactions.single+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.single+=/shadow_word_pain",
					["spec"] = 258,
				},
			},
			["specs"] = {
				[258] = {
					["maxRefresh"] = 10,
					["package"] = "Shadow",
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["damage"] = true,
					["throttleRefresh"] = false,
					["cycle"] = false,
					["nameplates"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["potion"] = "potion_of_rising_death",
					["nameplateRange"] = 8,
				},
			},
		},
	},
}
