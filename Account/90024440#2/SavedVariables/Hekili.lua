
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
			["displays"] = {
				["Defensives"] = {
					["rel"] = "CENTER",
					["y"] = 289.2137145996094,
					["x"] = -116.526969909668,
				},
				["Primary"] = {
					["glow"] = {
						["mode"] = "pixel",
					},
					["rel"] = "CENTER",
					["queue"] = {
						["width"] = 32,
						["height"] = 32,
					},
					["y"] = 86.94971466064453,
					["x"] = -70.93091583251953,
					["keybindings"] = {
						["fontSize"] = 14,
						["font"] = "Expressway",
					},
				},
				["AOE"] = {
					["rel"] = "CENTER",
					["y"] = 288.8678283691406,
					["x"] = -61.87451553344727,
				},
				["Interrupts"] = {
					["rel"] = "CENTER",
					["y"] = 290.2200317382813,
					["x"] = -173.2263336181641,
				},
			},
			["packs"] = {
				["Shadow"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20191016,
					["author"] = "SimC",
					["desc"] = "# Shadow Priest\n# https://github.com/simulationcraft/simc/\n# August 10, 2019 - 10:01\n\n# Changes:\n# - Added Silence.\n# - Converted target_if syntax.\n# - Converted target.time_to_die to time_to_die where applicable.",
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
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.harvested_thoughts.up & cooldown.void_bolt.remains >= 1.5 & azerite.searing_dialogue.rank >= 1",
								["action"] = "mind_sear",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 3 || cooldown.shadow_word_death.charges = 2 || ( cooldown.shadow_word_death.charges = 1 & cooldown.shadow_word_death.remains < gcd.max )",
								["action"] = "shadow_word_death",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10",
								["action"] = "dark_void",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.mindbender.enabled || ( buff.voidform.stack > 18 || time_to_die < 15 )",
								["action"] = "mindbender",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! buff.voidform.up || ( cooldown.shadow_word_death.charges = 2 & buff.voidform.stack < 15 )",
								["action"] = "shadow_word_death",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 5 & raid_event.adds.duration < 20",
								["action"] = "shadow_crash",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.dots_up & ( ( raid_event.movement.in > cast_time + 0.5 & raid_event.movement.in < 4 ) || ! talent.shadow_word_void.enabled || buff.voidform.down || buff.voidform.stack > 14 & ( insanity < 70 || charges_fractional > 1.33 ) || buff.voidform.stack <= 14 & ( insanity < 60 || charges_fractional > 1.33 ) )",
								["action"] = "mind_blast",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "dot.shadow_word_pain.remains > 4 & dot.vampiric_touch.remains > 4 & buff.voidform.up",
								["action"] = "void_torrent",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & time_to_die > 4 & ! talent.misery.enabled & ! talent.dark_void.enabled",
								["action"] = "shadow_word_pain",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & time_to_die > 6 || ( talent.misery.enabled & dot.shadow_word_pain.refreshable )",
								["action"] = "vampiric_touch",
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
								["criteria"] = "buff.bloodlust.react || time_to_die <= 80 || target.health.pct < 35",
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
								["criteria"] = "active_enemies > 1",
								["action"] = "run_action_list",
								["list_name"] = "cleave",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1",
								["action"] = "run_action_list",
								["list_name"] = "single",
							}, -- [6]
						},
						["precombat"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "floor ( ( 4.5 + azerite.whispers_of_the_damned.rank ) % ( 1 + 0.27 * azerite.searing_dialogue.rank ) )",
								["var_name"] = "mind_blast_targets",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( 1 - 0.07 * azerite.death_throes.rank + 0.2 * azerite.thought_harvester.rank ) * ( 1 - 0.09 * azerite.thought_harvester.rank * azerite.searing_dialogue.rank )",
								["var_name"] = "swp_trait_ranks_check",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( 1 - 0.04 * azerite.thought_harvester.rank - 0.05 * azerite.spiteful_apparitions.rank )",
								["var_name"] = "vt_trait_ranks_check",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( 1 - 0.07 * azerite.death_throes.rank - 0.03 * azerite.thought_harvester.rank - 0.055 * azerite.spiteful_apparitions.rank ) * ( 1 - 0.027 * azerite.thought_harvester.rank * azerite.searing_dialogue.rank )",
								["var_name"] = "vt_mis_trait_ranks_check",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "1 - 0.014 * azerite.searing_dialogue.rank",
								["var_name"] = "vt_mis_sd_check",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.shadowform.up",
								["action"] = "shadowform",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.mind_sear < 2 || azerite.thought_harvester.rank = 0",
								["action"] = "mind_blast",
							}, -- [9]
							{
								["action"] = "vampiric_touch",
								["enabled"] = true,
							}, -- [10]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["criteria"] = "( buff.voidform.stack > 20 & insanity <= 50 ) || buff.voidform.stack > ( 26 + 7 * buff.bloodlust.up ) || ( current_insanity_drain * ( ( gcd.max * 2 ) + action.mind_blast.cast_time ) ) > insanity",
								["action"] = "memory_of_lucid_dreams",
							}, -- [1]
							{
								["action"] = "blood_of_the_enemy",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "guardian_of_azeroth",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.mind_sear >= 2 || raid_event.adds.in > 60",
								["action"] = "focused_azerite_beam",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.mind_sear >= 2 || raid_event.adds.in > 60",
								["action"] = "purifying_blast",
							}, -- [5]
							{
								["action"] = "the_unbound_force",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "concentrated_flame",
								["criteria"] = "time <= 10 || ( buff.chorus_of_insanity.stack >= 15 & buff.voidform.up ) || full_recharge_time < gcd || time_to_die < 5",
								["line_cd"] = "6",
							}, -- [7]
							{
								["action"] = "ripple_in_space",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.lifeblood.stack < 3",
								["action"] = "worldvein_resonance",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( buff.voidform.up & buff.chorus_of_insanity.stack > 20 ) || azerite.chorus_of_insanity.rank = 0",
								["action"] = "call_action_list",
								["list_name"] = "crit_cds",
							}, -- [10]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [11]
						},
						["crit_cds"] = {
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [2]
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
								["enabled"] = true,
								["criteria"] = "! ticking & azerite.thought_harvester.rank >= 1",
								["action"] = "vampiric_touch",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.harvested_thoughts.up",
								["action"] = "mind_sear",
							}, -- [4]
							{
								["action"] = "void_bolt",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "shadow_word_death",
								["criteria"] = "time_to_die < 3 || buff.voidform.down",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10 & ( dot.shadow_word_pain.refreshable || time_to_die > 30 )",
								["action"] = "dark_void",
							}, -- [9]
							{
								["action"] = "mindbender",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "mind_blast",
								["criteria"] = "spell_targets.mind_sear < variable.mind_blast_targets",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.adds.in > 5 & raid_event.adds.duration < 2 ) || raid_event.adds.duration > 2",
								["action"] = "shadow_crash",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "shadow_word_pain",
								["criteria"] = "! talent.misery.enabled & refreshable & time_to_die > ( ( - 1.2 + 3.3 * spell_targets.mind_sear ) * variable.swp_trait_ranks_check * ( 1 - 0.012 * azerite.searing_dialogue.rank * spell_targets.mind_sear ) )",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "vampiric_touch",
								["criteria"] = "refreshable & time_to_die > ( ( 1 + 3.3 * spell_targets.mind_sear ) * variable.vt_trait_ranks_check * ( 1 + 0.10 * azerite.searing_dialogue.rank * spell_targets.mind_sear ) )",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "vampiric_touch",
								["criteria"] = "dot.shadow_word_pain.refreshable & ( talent.misery.enabled & time_to_die > ( ( 1.0 + 2.0 * spell_targets.mind_sear ) * variable.vt_mis_trait_ranks_check * ( variable.vt_mis_sd_check * spell_targets.mind_sear ) ) )",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.up",
								["action"] = "void_torrent",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "mind_sear",
								["interrupt_if"] = "ticks>=2",
								["interrupt_immediate"] = "1",
								["criteria"] = "spell_targets.mind_sear > 1",
								["chain"] = "1",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["interrupt_if"] = "ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
							}, -- [18]
							{
								["action"] = "shadow_word_pain",
								["enabled"] = true,
							}, -- [19]
						},
					},
					["version"] = 20191016,
					["warnings"] = "Imported 6 action lists.\n",
					["profile"] = "# Shadow Priest\n# https://github.com/simulationcraft/simc/\n# August 10, 2019 - 10:01\n\n# Changes:\n# - Added Silence.\n# - Converted target_if syntax.\n# - Converted target.time_to_die to time_to_die where applicable.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/variable,name=mind_blast_targets,op=set,value=floor((4.5+azerite.whispers_of_the_damned.rank)%(1+0.27*azerite.searing_dialogue.rank))\nactions.precombat+=/variable,name=swp_trait_ranks_check,op=set,value=(1-0.07*azerite.death_throes.rank+0.2*azerite.thought_harvester.rank)*(1-0.09*azerite.thought_harvester.rank*azerite.searing_dialogue.rank)\nactions.precombat+=/variable,name=vt_trait_ranks_check,op=set,value=(1-0.04*azerite.thought_harvester.rank-0.05*azerite.spiteful_apparitions.rank)\nactions.precombat+=/variable,name=vt_mis_trait_ranks_check,op=set,value=(1-0.07*azerite.death_throes.rank-0.03*azerite.thought_harvester.rank-0.055*azerite.spiteful_apparitions.rank)*(1-0.027*azerite.thought_harvester.rank*azerite.searing_dialogue.rank)\nactions.precombat+=/variable,name=vt_mis_sd_check,op=set,value=1-0.014*azerite.searing_dialogue.rank\nactions.precombat+=/shadowform,if=!buff.shadowform.up\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/mind_blast,if=spell_targets.mind_sear<2||azerite.thought_harvester.rank=0\nactions.precombat+=/vampiric_touch\n\n# Executed every time the actor is available.\nactions=silence\nactions+=/use_items\nactions+=/potion,if=buff.bloodlust.react||time_to_die<=80||target.health.pct<35\nactions+=/variable,name=dots_up,op=set,value=dot.shadow_word_pain.ticking&dot.vampiric_touch.ticking\nactions+=/run_action_list,name=cleave,if=active_enemies>1\nactions+=/run_action_list,name=single,if=active_enemies=1\n\n+ # Use Memory of Lucid Dreams right before you are about to fall out of Voidform\nactions.cds=memory_of_lucid_dreams,if=(buff.voidform.stack>20&insanity<=50)||buff.voidform.stack>(26+7*buff.bloodlust.up)||(current_insanity_drain*((gcd.max*2)+action.mind_blast.cast_time))>insanity\nactions.cds+=/blood_of_the_enemy\nactions.cds+=/guardian_of_azeroth\nactions.cds+=/focused_azerite_beam,if=spell_targets.mind_sear>=2||raid_event.adds.in>60\nactions.cds+=/purifying_blast,if=spell_targets.mind_sear>=2||raid_event.adds.in>60\nactions.cds+=/the_unbound_force\n# Wait at least 6s between casting CF. Use the first cast ASAP to get it on CD, then every subsequent cast should be used when Chorus of Insanity is active or it will recharge in the next gcd, or the target is about to die.\nactions.cds+=/concentrated_flame,line_cd=6,if=time<=10||(buff.chorus_of_insanity.stack>=15&buff.voidform.up)||full_recharge_time<gcd||time_to_die<5\nactions.cds+=/ripple_in_space\nactions.cds+=/worldvein_resonance,if=buff.lifeblood.stack<3\n# Use these cooldowns in between your 1st and 2nd Void Bolt in your 2nd Voidform when you have Chorus of Insanity active\nactions.cds+=/call_action_list,name=crit_cds,if=(buff.voidform.up&buff.chorus_of_insanity.stack>20)||azerite.chorus_of_insanity.rank=0\n# Default fallback for usable items: Use on cooldown.\nactions.cds+=/use_items\n\nactions.cleave=void_eruption\nactions.cleave+=/dark_ascension,if=buff.voidform.down\nactions.cleave+=/vampiric_touch,if=!ticking&azerite.thought_harvester.rank>=1\nactions.cleave+=/mind_sear,if=buff.harvested_thoughts.up\nactions.cleave+=/void_bolt\nactions.cleave+=/call_action_list,name=cds\nactions.cleave+=/shadow_word_death,cycle_targets=1,if=time_to_die<3||buff.voidform.down\nactions.cleave+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\n# Use Dark Void on CD unless adds are incoming in 10s or less.\nactions.cleave+=/dark_void,if=raid_event.adds.in>10&(dot.shadow_word_pain.refreshable||time_to_die>30)\nactions.cleave+=/mindbender\nactions.cleave+=/mind_blast,cycle_targets=1,if=spell_targets.mind_sear<variable.mind_blast_targets\nactions.cleave+=/shadow_crash,if=(raid_event.adds.in>5&raid_event.adds.duration<2)||raid_event.adds.duration>2\nactions.cleave+=/shadow_word_pain,cycle_targets=1,if=!talent.misery.enabled&refreshable&time_to_die>((-1.2+3.3*spell_targets.mind_sear)*variable.swp_trait_ranks_check*(1-0.012*azerite.searing_dialogue.rank*spell_targets.mind_sear))\nactions.cleave+=/vampiric_touch,cycle_targets=1,if=refreshable&time_to_die>((1+3.3*spell_targets.mind_sear)*variable.vt_trait_ranks_check*(1+0.10*azerite.searing_dialogue.rank*spell_targets.mind_sear))\nactions.cleave+=/vampiric_touch,cycle_targets=1,if=dot.shadow_word_pain.refreshable&(talent.misery.enabled&time_to_die>((1.0+2.0*spell_targets.mind_sear)*variable.vt_mis_trait_ranks_check*(variable.vt_mis_sd_check*spell_targets.mind_sear)))\nactions.cleave+=/void_torrent,if=buff.voidform.up\nactions.cleave+=/mind_sear,if=spell_targets.mind_sear>1,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2\nactions.cleave+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.cleave+=/shadow_word_pain\n\nactions.crit_cds=use_item,name=azsharas_font_of_power\nactions.crit_cds+=/use_item,effect_name=cyclotronic_blast\n\nactions.single=void_eruption\nactions.single+=/dark_ascension,if=buff.voidform.down\nactions.single+=/void_bolt\nactions.single+=/call_action_list,name=cds\n# Use Mind Sear on ST only if you get a Thought Harvester Proc with at least 1 Searing Dialogue Trait.\nactions.single+=/mind_sear,if=buff.harvested_thoughts.up&cooldown.void_bolt.remains>=1.5&azerite.searing_dialogue.rank>=1\n# Use SWD before capping charges, or the target is about to die.\nactions.single+=/shadow_word_death,if=target.time_to_die<3||cooldown.shadow_word_death.charges=2||(cooldown.shadow_word_death.charges=1&cooldown.shadow_word_death.remains<gcd.max)\nactions.single+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\n+ # Use Dark Void on CD unless adds are incoming in 10s or less.\nactions.single+=/dark_void,if=raid_event.adds.in>10\n# Use Mindbender at 19 or more stacks, or if the target will die in less than 15s.\nactions.single+=/mindbender,if=talent.mindbender.enabled||(buff.voidform.stack>18||time_to_die<15)\nactions.single+=/shadow_word_death,if=!buff.voidform.up||(cooldown.shadow_word_death.charges=2&buff.voidform.stack<15)\n# Use Shadow Crash on CD unless there are adds incoming.\nactions.single+=/shadow_crash,if=raid_event.adds.in>5&raid_event.adds.duration<20\n# Bank the Shadow Word: Void charges for a bit to try and avoid overcapping on Insanity.\nactions.single+=/mind_blast,if=variable.dots_up&((raid_event.movement.in>cast_time+0.5&raid_event.movement.in<4)||!talent.shadow_word_void.enabled||buff.voidform.down||buff.voidform.stack>14&(insanity<70||charges_fractional>1.33)||buff.voidform.stack<=14&(insanity<60||charges_fractional>1.33))\nactions.single+=/void_torrent,if=dot.shadow_word_pain.remains>4&dot.vampiric_touch.remains>4&buff.voidform.up\nactions.single+=/shadow_word_pain,if=refreshable&time_to_die>4&!talent.misery.enabled&!talent.dark_void.enabled\nactions.single+=/vampiric_touch,if=refreshable&time_to_die>6||(talent.misery.enabled&dot.shadow_word_pain.refreshable)\nactions.single+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.single+=/shadow_word_pain",
					["spec"] = 258,
				},
			},
			["notifications"] = {
				["x"] = -31.19531631469727,
				["y"] = 556.47802734375,
			},
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["resetPotionsToDefaults_20190717"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["autoconvertDisplayToggle_20190621_1"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				[258] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["package"] = "Shadow",
					["damage"] = true,
					["cycle_min"] = 6,
					["cycle"] = false,
					["potion"] = "unbridled_fury",
					["potionsReset"] = 20180919.1,
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["nameplateRange"] = 8,
					["damageRange"] = 0,
				},
				[256] = {
					["potionsReset"] = 20180919.1,
				},
			},
		},
	},
}
