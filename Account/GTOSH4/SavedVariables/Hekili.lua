
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Zaemme - Kil'jaeden"] = "Zaemme - Kil'jaeden",
		["Yuumi - Kil'jaeden"] = "Default",
		["Tosh - Kil'jaeden"] = "Tosh - Kil'jaeden",
	},
	["profiles"] = {
		["Zaemme - Kil'jaeden"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["enableAllOfTheThings_20180820"] = true,
			},
			["specs"] = {
				[70] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["throttleRefresh"] = false,
					["package"] = "Retribution",
					["damageExpiration"] = 8,
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "battle_potion_of_strength",
					["debuffPadding"] = 0,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
				},
				[66] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["throttleRefresh"] = false,
					["package"] = "Protection Paladin",
					["damageExpiration"] = 8,
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_bursting_blood",
					["debuffPadding"] = 0,
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Protection Paladin"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Paladin_Protection.simc",
					["builtIn"] = true,
					["date"] = 20181022.2059,
					["author"] = "SimC",
					["desc"] = "# Protection Paladin\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Paladin_Protection.simc\n# October 22, 2018 - 8:58 PM\n\n# Changes\n# - Added Rebuke.",
					["lists"] = {
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up",
								["action"] = "fireblood",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_of_the_righteous.charges_fractional >= 2",
								["action"] = "seraphim",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.seraphim.up || cooldown.seraphim.remains < 2 || ! talent.seraphim.enabled",
								["action"] = "avenging_wrath",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_of_the_righteous.charges_fractional <= 0",
								["action"] = "bastion_of_light",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up",
								["action"] = "potion",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.seraphim.up || ! talent.seraphim.enabled",
								["action"] = "use_items",
							}, -- [6]
							{
								["enabled"] = true,
								["name"] = "razdunks_big_red_button",
								["action"] = "razdunks_big_red_button",
							}, -- [7]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & action.shield_of_the_righteous.charges > 2 & ! ( buff.aegis_of_light.up & buff.ardent_defender.up & buff.guardian_of_ancient_kings.up & buff.divine_shield.up & buff.potion.up )",
								["action"] = "shield_of_the_righteous",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & talent.bastion_of_light.enabled & action.shield_of_the_righteous.charges < 1",
								["action"] = "bastion_of_light",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( health.pct < 40 )",
								["action"] = "light_of_the_protector",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( health.pct < 40 )",
								["action"] = "hand_of_the_protector",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_10000ms < health.max * 1.25 ) & health.pct < 55 & talent.righteous_protector.enabled",
								["action"] = "light_of_the_protector",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_13000ms < health.max * 1.6 ) & health.pct < 55",
								["action"] = "light_of_the_protector",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_6000ms < health.max * 0.7 ) & health.pct < 65 & talent.righteous_protector.enabled",
								["action"] = "hand_of_the_protector",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_9000ms < health.max * 1.2 ) & health.pct < 55",
								["action"] = "hand_of_the_protector",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "aegis_of_light",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "guardian_of_ancient_kings",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & talent.final_stand.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "divine_shield",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "ardent_defender",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & health.pct < 15",
								["action"] = "lay_on_hands",
							}, -- [13]
						},
						["default"] = {
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "rebuke",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avengers_valor.up & cooldown.shield_of_the_righteous.charges_fractional >= 2.5 ) & ( cooldown.seraphim.remains > gcd || ! talent.seraphim.enabled )",
								["action"] = "shield_of_the_righteous",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up & ! talent.seraphim.enabled ) || buff.seraphim.up & buff.avengers_valor.up",
								["action"] = "shield_of_the_righteous",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up & buff.avenging_wrath.remains < 4 & ! talent.seraphim.enabled ) || ( buff.seraphim.remains < 4 & buff.seraphim.up )",
								["action"] = "shield_of_the_righteous",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.seraphim.up & buff.seraphim.remains < 3",
								["action"] = "lights_judgment",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up",
								["action"] = "consecration",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.judgment.remains < gcd & cooldown.judgment.charges_fractional > 1 & cooldown_react ) || ! talent.crusaders_judgment.enabled",
								["action"] = "judgment",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react",
								["action"] = "avengers_shield",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react || ! talent.crusaders_judgment.enabled",
								["action"] = "judgment",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled || buff.seraphim.up",
								["action"] = "lights_judgment",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "blessed_hammer",
								["strikes"] = "2",
							}, -- [14]
							{
								["action"] = "hammer_of_the_righteous",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [16]
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
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "avenging_wrath",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "seraphim",
								["enabled"] = true,
							}, -- [8]
						},
					},
					["version"] = 20181022.2059,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 1: Unsupported action 'auto_attack'.\n\nImported 4 action lists.\n",
					["spec"] = 66,
					["profile"] = "# Protection Paladin\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Paladin_Protection.simc\n# October 22, 2018 - 8:58 PM\n\n# Changes\n# - Added Rebuke.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/lights_judgment\nactions.precombat+=/avenging_wrath\nactions.precombat+=/seraphim\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/rebuke\nactions+=/call_action_list,name=mitigation\nactions+=/call_action_list,name=cooldowns\n# Dumping SotR charges\nactions+=/shield_of_the_righteous,if=(buff.avengers_valor.up&cooldown.shield_of_the_righteous.charges_fractional>=2.5)&(cooldown.seraphim.remains>gcd||!talent.seraphim.enabled)\nactions+=/shield_of_the_righteous,if=(buff.avenging_wrath.up&!talent.seraphim.enabled)||buff.seraphim.up&buff.avengers_valor.up\nactions+=/shield_of_the_righteous,if=(buff.avenging_wrath.up&buff.avenging_wrath.remains<4&!talent.seraphim.enabled)||(buff.seraphim.remains<4&buff.seraphim.up)\nactions+=/lights_judgment,if=buff.seraphim.up&buff.seraphim.remains<3\nactions+=/consecration,if=!consecration.up\nactions+=/judgment,if=(cooldown.judgment.remains<gcd&cooldown.judgment.charges_fractional>1&cooldown_react)||!talent.crusaders_judgment.enabled\nactions+=/avengers_shield,if=cooldown_react\nactions+=/judgment,if=cooldown_react||!talent.crusaders_judgment.enabled\nactions+=/lights_judgment,if=!talent.seraphim.enabled||buff.seraphim.up\nactions+=/blessed_hammer,strikes=2\nactions+=/hammer_of_the_righteous\nactions+=/consecration\n\nactions.cooldowns=fireblood,if=buff.avenging_wrath.up\nactions.cooldowns+=/seraphim,if=cooldown.shield_of_the_righteous.charges_fractional>=2\nactions.cooldowns+=/avenging_wrath,if=buff.seraphim.up||cooldown.seraphim.remains<2||!talent.seraphim.enabled\nactions.cooldowns+=/bastion_of_light,if=cooldown.shield_of_the_righteous.charges_fractional<=0\nactions.cooldowns+=/potion,if=buff.avenging_wrath.up\nactions.cooldowns+=/use_items,if=buff.seraphim.up||!talent.seraphim.enabled\nactions.cooldowns+=/use_item,name=razdunks_big_red_button\n\nactions.mitigation=shield_of_the_righteous,if=!talent.seraphim.enabled&action.shield_of_the_righteous.charges>2&!(buff.aegis_of_light.up&buff.ardent_defender.up&buff.guardian_of_ancient_kings.up&buff.divine_shield.up&buff.potion.up)\nactions.mitigation+=/bastion_of_light,if=!talent.seraphim.enabled&talent.bastion_of_light.enabled&action.shield_of_the_righteous.charges<1\nactions.mitigation+=/light_of_the_protector,if=(health.pct<40)\nactions.mitigation+=/hand_of_the_protector,if=(health.pct<40)\nactions.mitigation+=/light_of_the_protector,if=(incoming_damage_10000ms<health.max*1.25)&health.pct<55&talent.righteous_protector.enabled\nactions.mitigation+=/light_of_the_protector,if=(incoming_damage_13000ms<health.max*1.6)&health.pct<55\nactions.mitigation+=/hand_of_the_protector,if=(incoming_damage_6000ms<health.max*0.7)&health.pct<65&talent.righteous_protector.enabled\nactions.mitigation+=/hand_of_the_protector,if=(incoming_damage_9000ms<health.max*1.2)&health.pct<55\nactions.mitigation+=/aegis_of_light,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/guardian_of_ancient_kings,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/divine_shield,if=!talent.seraphim.enabled&talent.final_stand.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/ardent_defender,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/lay_on_hands,if=!talent.seraphim.enabled&health.pct<15",
				},
				["Retribution"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier21/T21_Paladin_Retribution.simc",
					["builtIn"] = true,
					["date"] = 20181230.2104,
					["spec"] = 70,
					["desc"] = "# Retribution Paladin\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Paladin_Retribution.simc\n# December 30, 2018 - 20:54\n\n# Changes:\n# - Updated trinkets.",
					["profile"] = "# Retribution Paladin\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Paladin_Retribution.simc\n# December 30, 2018 - 20:54\n\n# Changes:\n# - Updated trinkets.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/arcane_torrent,if=!talent.wake_of_ashes.enabled\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/rebuke\nactions+=/call_action_list,name=opener\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=generators\n\nactions.cooldowns+=/use_item,name=razdunks_big_red_button\nactions.cooldowns+=/use_item,name=jes_howler,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10\nactions.cooldowns+=/use_item,name=vial_of_animated_blood,if=(buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<18)||(cooldown.avenging_wrath.remains>30||cooldown.crusade.remains>30)\nactions.cooldowns+=/use_item,name=dooms_fury,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<18\nactions.cooldowns+=/use_item,name=galecallers_beak,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<15\nactions.cooldowns+=/use_item,name=bygone_bee_almanac,if=buff.avenging_wrath.up||buff.crusade.up\nactions.cooldowns+=/use_item,name=merekthas_fang,if=(!raid_event.adds.exists||raid_event.adds.in>15)||spell_targets.divine_storm>=2\nactions.cooldowns+=/use_item,name=plunderbeards_flask,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>45||!buff.crusade.up&cooldown.crusade.remains>45\nactions.cooldowns+=/use_item,name=berserkers_juju,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>45||!buff.crusade.up&cooldown.crusade.remains>45\nactions.cooldowns+=/use_item,name=endless_tincture_of_fractional_power,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>45||cooldown.crusade.remains>45\nactions.cooldowns+=/use_item,name=pearl_divers_compass,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10\nactions.cooldowns+=/use_item,name=first_mates_spyglass,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=15\nactions.cooldowns+=/use_item,name=whirlwings_plumage,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=20\nactions.cooldowns+=/use_item,name=dread_gladiators_badge,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=20\nactions.cooldowns+=/use_item,name=dread_aspirants_medallion,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=20\nactions.cooldowns+=/use_item,name=knot_of_ancient_fury,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>30||!buff.crusade.up&cooldown.crusade.remains>30\nactions.cooldowns+=/use_items,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10\nactions.cooldowns+=/potion,if=(buff.bloodlust.react||buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<25||target.time_to_die<=40)\nactions.cooldowns+=/lights_judgment,if=spell_targets.lights_judgment>=2||(!raid_event.adds.exists||raid_event.adds.in>75)\nactions.cooldowns+=/fireblood,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10\nactions.cooldowns+=/shield_of_vengeance\nactions.cooldowns+=/avenging_wrath,if=buff.inquisition.up||!talent.inquisition.enabled\nactions.cooldowns+=/crusade,if=holy_power>=4\n\nactions.finishers=variable,name=ds_castable,value=spell_targets.divine_storm>=2&!talent.righteous_verdict.enabled||spell_targets.divine_storm>=3&talent.righteous_verdict.enabled\nactions.finishers+=/inquisition,if=buff.inquisition.down||buff.inquisition.remains<5&holy_power>=3||talent.execution_sentence.enabled&cooldown.execution_sentence.remains<10&buff.inquisition.remains<15||cooldown.avenging_wrath.remains<15&buff.inquisition.remains<20&holy_power>=3\nactions.finishers+=/execution_sentence,if=spell_targets.divine_storm<=2&(!talent.crusade.enabled||cooldown.crusade.remains>gcd*2)\nactions.finishers+=/divine_storm,if=variable.ds_castable&buff.divine_purpose.react\nactions.finishers+=/divine_storm,if=variable.ds_castable&(!talent.crusade.enabled||cooldown.crusade.remains>gcd*2)||buff.empyrean_power.up&debuff.judgment.down&buff.divine_purpose.down\nactions.finishers+=/templars_verdict,if=buff.divine_purpose.react\nactions.finishers+=/templars_verdict,if=(!talent.crusade.enabled||cooldown.crusade.remains>gcd*3)&(!talent.execution_sentence.enabled||buff.crusade.up&buff.crusade.stack<10||cooldown.execution_sentence.remains>gcd*2)\n\nactions.generators=variable,name=HoW,value=(!talent.hammer_of_wrath.enabled||target.health.pct>=20&(buff.avenging_wrath.down||buff.crusade.down))\nactions.generators+=/call_action_list,name=finishers,if=holy_power>=5\nactions.generators+=/wake_of_ashes,if=(!raid_event.adds.exists||raid_event.adds.in>15||spell_targets.wake_of_ashes>=2)&(holy_power<=0||holy_power=1&cooldown.blade_of_justice.remains>gcd)\nactions.generators+=/blade_of_justice,if=holy_power<=2||(holy_power=3&(cooldown.hammer_of_wrath.remains>gcd*2||variable.HoW))\nactions.generators+=/judgment,if=holy_power<=2||(holy_power<=4&(cooldown.blade_of_justice.remains>gcd*2||variable.HoW))\nactions.generators+=/hammer_of_wrath,if=holy_power<=4\nactions.generators+=/consecration,if=holy_power<=2||holy_power<=3&cooldown.blade_of_justice.remains>gcd*2||holy_power=4&cooldown.blade_of_justice.remains>gcd*2&cooldown.judgment.remains>gcd*2\nactions.generators+=/call_action_list,name=finishers,if=talent.hammer_of_wrath.enabled&(target.health.pct<=20||buff.avenging_wrath.up||buff.crusade.up)\nactions.generators+=/crusader_strike,if=cooldown.crusader_strike.charges_fractional>=1.75&(holy_power<=2||holy_power<=3&cooldown.blade_of_justice.remains>gcd*2||holy_power=4&cooldown.blade_of_justice.remains>gcd*2&cooldown.judgment.remains>gcd*2&cooldown.consecration.remains>gcd*2)\nactions.generators+=/call_action_list,name=finishers\nactions.generators+=/crusader_strike,if=holy_power<=4\nactions.generators+=/arcane_torrent,if=holy_power<=4\n\nactions.opener=sequence,if=talent.wake_of_ashes.enabled&talent.crusade.enabled&talent.execution_sentence.enabled&!talent.hammer_of_wrath.enabled,name=wake_opener_ES_CS:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:crusader_strike:execution_sentence\nactions.opener+=/sequence,if=talent.wake_of_ashes.enabled&talent.crusade.enabled&!talent.execution_sentence.enabled&!talent.hammer_of_wrath.enabled,name=wake_opener_CS:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:crusader_strike:templars_verdict\nactions.opener+=/sequence,if=talent.wake_of_ashes.enabled&talent.crusade.enabled&talent.execution_sentence.enabled&talent.hammer_of_wrath.enabled,name=wake_opener_ES_HoW:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:hammer_of_wrath:execution_sentence\nactions.opener+=/sequence,if=talent.wake_of_ashes.enabled&talent.crusade.enabled&!talent.execution_sentence.enabled&talent.hammer_of_wrath.enabled,name=wake_opener_HoW:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:hammer_of_wrath:templars_verdict\nactions.opener+=/sequence,if=talent.wake_of_ashes.enabled&talent.inquisition.enabled,name=wake_opener_Inq:shield_of_vengeance:blade_of_justice:judgment:inquisition:avenging_wrath:wake_of_ashes",
					["version"] = 20181230.2104,
					["warnings"] = "WARNING:  The import for 'opener' required some automated changes.\nLine 1: Unsupported action 'sequence'.\nLine 2: Unsupported action 'sequence'.\nLine 3: Unsupported action 'sequence'.\nLine 4: Unsupported action 'sequence'.\nLine 5: Unsupported action 'sequence'.\n\nWARNING:  The import for 'default' required some automated changes.\nLine 1: Unsupported action 'auto_attack'.\n\nImported 6 action lists.\n",
					["lists"] = {
						["opener"] = {
							{
								["enabled"] = true,
								["action"] = "sequence",
								["name"] = "wake_opener_ES_CS:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:crusader_strike:execution_sentence",
								["criteria"] = "talent.wake_of_ashes.enabled & talent.crusade.enabled & talent.execution_sentence.enabled & ! talent.hammer_of_wrath.enabled",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "sequence",
								["name"] = "wake_opener_CS:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:crusader_strike:templars_verdict",
								["criteria"] = "talent.wake_of_ashes.enabled & talent.crusade.enabled & ! talent.execution_sentence.enabled & ! talent.hammer_of_wrath.enabled",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "sequence",
								["name"] = "wake_opener_ES_HoW:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:hammer_of_wrath:execution_sentence",
								["criteria"] = "talent.wake_of_ashes.enabled & talent.crusade.enabled & talent.execution_sentence.enabled & talent.hammer_of_wrath.enabled",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "sequence",
								["name"] = "wake_opener_HoW:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:hammer_of_wrath:templars_verdict",
								["criteria"] = "talent.wake_of_ashes.enabled & talent.crusade.enabled & ! talent.execution_sentence.enabled & talent.hammer_of_wrath.enabled",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "sequence",
								["name"] = "wake_opener_Inq:shield_of_vengeance:blade_of_justice:judgment:inquisition:avenging_wrath:wake_of_ashes",
								["criteria"] = "talent.wake_of_ashes.enabled & talent.inquisition.enabled",
							}, -- [5]
						},
						["default"] = {
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "rebuke",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "opener",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "generators",
							}, -- [5]
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
								["criteria"] = "! talent.wake_of_ashes.enabled",
								["action"] = "arcane_torrent",
							}, -- [6]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["name"] = "razdunks_big_red_button",
								["action"] = "razdunks_big_red_button",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "jes_howler",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
								["name"] = "jes_howler",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "vial_of_animated_blood",
								["criteria"] = "( buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 18 ) || ( cooldown.avenging_wrath.remains > 30 || cooldown.crusade.remains > 30 )",
								["name"] = "vial_of_animated_blood",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "dooms_fury",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 18",
								["name"] = "dooms_fury",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "galecallers_beak",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 15",
								["name"] = "galecallers_beak",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "bygone_bee_almanac",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up",
								["name"] = "bygone_bee_almanac",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "merekthas_fang",
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.in > 15 ) || spell_targets.divine_storm >= 2",
								["name"] = "merekthas_fang",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "plunderbeards_flask",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 45 || ! buff.crusade.up & cooldown.crusade.remains > 45",
								["name"] = "plunderbeards_flask",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "berserkers_juju",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 45 || ! buff.crusade.up & cooldown.crusade.remains > 45",
								["name"] = "berserkers_juju",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "endless_tincture_of_fractional_power",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 45 || cooldown.crusade.remains > 45",
								["name"] = "endless_tincture_of_fractional_power",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "pearl_divers_compass",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10",
								["name"] = "pearl_divers_compass",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "first_mates_spyglass",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 15",
								["name"] = "first_mates_spyglass",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "whirlwings_plumage",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
								["name"] = "whirlwings_plumage",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "dread_gladiators_badge",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
								["name"] = "dread_gladiators_badge",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "dread_aspirants_medallion",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
								["name"] = "dread_aspirants_medallion",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "knot_of_ancient_fury",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 30 || ! buff.crusade.up & cooldown.crusade.remains > 30",
								["name"] = "knot_of_ancient_fury",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
								["action"] = "use_items",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "( buff.bloodlust.react || buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 25 || target.time_to_die <= 40 )",
								["action"] = "potion",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.lights_judgment >= 2 || ( ! raid_event.adds.exists || raid_event.adds.in > 75 )",
								["action"] = "lights_judgment",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
								["action"] = "fireblood",
							}, -- [20]
							{
								["action"] = "shield_of_vengeance",
								["enabled"] = true,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.inquisition.up || ! talent.inquisition.enabled",
								["action"] = "avenging_wrath",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "holy_power >= 4",
								["action"] = "crusade",
							}, -- [23]
						},
						["finishers"] = {
							{
								["value"] = "spell_targets.divine_storm >= 2 & ! talent.righteous_verdict.enabled || spell_targets.divine_storm >= 3 & talent.righteous_verdict.enabled",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "ds_castable",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.inquisition.down || buff.inquisition.remains < 5 & holy_power >= 3 || talent.execution_sentence.enabled & cooldown.execution_sentence.remains < 10 & buff.inquisition.remains < 15 || cooldown.avenging_wrath.remains < 15 & buff.inquisition.remains < 20 & holy_power >= 3",
								["action"] = "inquisition",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.divine_storm <= 2 & ( ! talent.crusade.enabled || cooldown.crusade.remains > gcd * 2 )",
								["action"] = "execution_sentence",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.ds_castable & buff.divine_purpose.react",
								["action"] = "divine_storm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.ds_castable & ( ! talent.crusade.enabled || cooldown.crusade.remains > gcd * 2 ) || buff.empyrean_power.up & debuff.judgment.down & buff.divine_purpose.down",
								["action"] = "divine_storm",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.divine_purpose.react",
								["action"] = "templars_verdict",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.crusade.enabled || cooldown.crusade.remains > gcd * 3 ) & ( ! talent.execution_sentence.enabled || buff.crusade.up & buff.crusade.stack < 10 || cooldown.execution_sentence.remains > gcd * 2 )",
								["action"] = "templars_verdict",
							}, -- [7]
						},
						["generators"] = {
							{
								["value"] = "( ! talent.hammer_of_wrath.enabled || target.health.pct >= 20 & ( buff.avenging_wrath.down || buff.crusade.down ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "HoW",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "holy_power >= 5",
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.in > 15 || spell_targets.wake_of_ashes >= 2 ) & ( holy_power <= 0 || holy_power = 1 & cooldown.blade_of_justice.remains > gcd )",
								["action"] = "wake_of_ashes",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 || ( holy_power = 3 & ( cooldown.hammer_of_wrath.remains > gcd * 2 || variable.HoW ) )",
								["action"] = "blade_of_justice",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 || ( holy_power <= 4 & ( cooldown.blade_of_justice.remains > gcd * 2 || variable.HoW ) )",
								["action"] = "judgment",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 4",
								["action"] = "hammer_of_wrath",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 || holy_power <= 3 & cooldown.blade_of_justice.remains > gcd * 2 || holy_power = 4 & cooldown.blade_of_justice.remains > gcd * 2 & cooldown.judgment.remains > gcd * 2",
								["action"] = "consecration",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.hammer_of_wrath.enabled & ( target.health.pct <= 20 || buff.avenging_wrath.up || buff.crusade.up )",
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.crusader_strike.charges_fractional >= 1.75 & ( holy_power <= 2 || holy_power <= 3 & cooldown.blade_of_justice.remains > gcd * 2 || holy_power = 4 & cooldown.blade_of_justice.remains > gcd * 2 & cooldown.judgment.remains > gcd * 2 & cooldown.consecration.remains > gcd * 2 )",
								["action"] = "crusader_strike",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 4",
								["action"] = "crusader_strike",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 4",
								["action"] = "arcane_torrent",
							}, -- [12]
						},
					},
					["author"] = "SimC",
				},
			},
		},
		["Yuumi - Kil'jaeden"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["enableAllOfTheThings_20180820"] = true,
			},
			["specs"] = {
				[269] = {
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["strict"] = false,
					["nameplateRange"] = 8,
					["cycle"] = true,
					["potion"] = "potion_of_bursting_blood",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["package"] = "Windwalker",
					["damage"] = true,
				},
				[268] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["throttleRefresh"] = false,
					["package"] = "Brewmaster",
					["damageExpiration"] = 8,
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["nameplateRange"] = 8,
					["cycle"] = false,
					["potion"] = "battle_potion_of_agility",
					["debuffPadding"] = 0,
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
				},
			},
			["displays"] = {
				["AOE"] = {
					["rel"] = "CENTER",
					["x"] = -769.043151855469,
					["y"] = 552.045288085938,
				},
				["Primary"] = {
					["rel"] = "CENTER",
					["zoom"] = 0,
					["x"] = -107.001953125,
					["primaryHeight"] = 32,
					["y"] = -172.996322631836,
					["numIcons"] = 2,
					["primaryWidth"] = 32,
					["queue"] = {
						["height"] = 24,
						["width"] = 24,
					},
				},
				["Defensives"] = {
					["rel"] = "CENTER",
					["x"] = -523.0205078125,
					["y"] = 541.048034667969,
				},
				["Interrupts"] = {
					["rel"] = "CENTER",
					["x"] = -460.020111083984,
					["y"] = 533.047485351563,
				},
			},
			["packs"] = {
				["Windwalker"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Windwalker.simc",
					["builtIn"] = true,
					["date"] = 20181212.2313,
					["spec"] = 269,
					["desc"] = "# Windwalker Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Windwalker.simc\n# December 12, 2018 - 23:12\n\n# Changes:\n# - Remove Spear Hand Strike condtions (handled by addon).\n# - Remove FSK recommendation (will become a pref).\n# - Change target_if to cycle_targets.\n# - Remove energy cap check for Fists of Fury (sim difference is negligible, but play difference is significant).\n# - Added Use Items (trinkets, etc.).",
					["lists"] = {
						["cd"] = {
							{
								["action"] = "invoke_xuen",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "lustrous_golden_plumage",
								["action"] = "lustrous_golden_plumage",
							}, -- [2]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & energy.time_to_max >= 0.5",
								["action"] = "arcane_torrent",
							}, -- [6]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 9",
								["action"] = "touch_of_death",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.storm_earth_and_fire.charges = 2 || ( cooldown.fists_of_fury.remains <= 6 & chi >= 3 & cooldown.rising_sun_kick.remains <= 1 ) || target.time_to_die <= 15",
								["action"] = "storm_earth_and_fire",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.rising_sun_kick.remains <= 2 || target.time_to_die <= 12",
								["action"] = "serenity",
							}, -- [12]
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
								["criteria"] = "( ! talent.serenity.enabled || ! talent.fist_of_the_white_tiger.enabled )",
								["action"] = "chi_burst",
							}, -- [6]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [7]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "( talent.whirling_dragon_punch.enabled & cooldown.whirling_dragon_punch.remains < 5 ) & cooldown.fists_of_fury.remains > 3",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.tiger_palm & chi <= 1 & energy < 50",
								["action"] = "energizing_elixir",
							}, -- [3]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.spinning_crane_kick & ( ( ( chi > 3 || cooldown.fists_of_fury.remains > 6 ) & ( chi >= 5 || cooldown.fists_of_fury.remains > 2 ) ) || energy.time_to_max <= 3 )",
								["action"] = "spinning_crane_kick",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi <= 3",
								["action"] = "chi_burst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 3",
								["action"] = "fist_of_the_white_tiger",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "chi.max - chi >= 2 & ( ! talent.hit_combo.enabled || ! prev_gcd.1.tiger_palm )",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "! prev_gcd.1.blackout_kick & ( buff.bok_proc.up || ( talent.hit_combo.enabled & prev_gcd.1.tiger_palm & chi < 4 ) )",
								["cycle_targets"] = 1,
							}, -- [11]
						},
						["default"] = {
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [2]
							{
								["interval"] = "90",
								["pct_health"] = "0.5",
								["action"] = "touch_of_karma",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || buff.storm_earth_and_fire.up || ( ! talent.serenity.enabled & trinket.proc.agility.react ) || buff.bloodlust.react || target.time_to_die <= 60",
								["action"] = "potion",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up",
								["action"] = "call_action_list",
								["list_name"] = "serenity",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( energy.time_to_max < 1 || ( talent.serenity.enabled & cooldown.serenity.remains < 2 ) ) & chi.max - chi >= 3",
								["action"] = "fist_of_the_white_tiger",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "( energy.time_to_max < 1 || ( talent.serenity.enabled & cooldown.serenity.remains < 2 ) ) & chi.max - chi >= 2 & ! prev_gcd.1.tiger_palm",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cd",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "call_action_list",
								["list_name"] = "st",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [10]
						},
						["st"] = {
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "chi >= 5",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.spinning_crane_kick & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down & active_enemies > 1",
								["action"] = "rushing_jade_wind",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi <= 2",
								["action"] = "fist_of_the_white_tiger",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "chi <= 3 & energy < 50",
								["action"] = "energizing_elixir",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "! prev_gcd.1.blackout_kick & ( cooldown.rising_sun_kick.remains > 3 || chi >= 3 ) & ( cooldown.fists_of_fury.remains > 4 || chi >= 4 || ( chi = 2 & prev_gcd.1.tiger_palm ) ) & buff.swift_roundhouse.stack < 2",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & active_enemies = 1 || chi.max - chi >= 2",
								["action"] = "chi_burst",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "! prev_gcd.1.tiger_palm & chi.max - chi >= 2",
								["cycle_targets"] = 1,
							}, -- [12]
						},
						["serenity"] = {
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "active_enemies < 3 || prev_gcd.1.spinning_crane_kick",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( buff.bloodlust.up & prev_gcd.1.rising_sun_kick ) || buff.serenity.remains < 1 || ( active_enemies > 1 & active_enemies < 5 )",
								["action"] = "fists_of_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.spinning_crane_kick & ( active_enemies >= 3 || ( active_enemies = 2 & prev_gcd.1.blackout_kick ) )",
								["action"] = "spinning_crane_kick",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [4]
						},
					},
					["version"] = 20181212.2313,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 1: Unsupported action 'auto_attack'.\n\nWARNING:  The import for 'st' required some automated changes.\nThe following auras were used in the action list but were not found in the addon database:\n - swift_roundhouse\n\nImported 6 action lists.\n",
					["profile"] = "# Windwalker Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Windwalker.simc\n# December 12, 2018 - 23:12\n\n# Changes:\n# - Remove Spear Hand Strike condtions (handled by addon).\n# - Remove FSK recommendation (will become a pref).\n# - Change target_if to cycle_targets.\n# - Remove energy cap check for Fists of Fury (sim difference is negligible, but play difference is significant).\n# - Added Use Items (trinkets, etc.).\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/chi_burst,if=(!talent.serenity.enabled||!talent.fist_of_the_white_tiger.enabled)\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/spear_hand_strike\n# Touch of Karma on cooldown, if Good Karma is enabled equal to 100% of maximum health\nactions+=/touch_of_karma,interval=90,pct_health=0.5\n# Potion if Serenity or Storm, Earth, and Fire are up or you are running serenity and a main stat trinket procs, or you are under the effect of bloodlust, or target time to die is greater or equal to 60\nactions+=/potion,if=buff.serenity.up||buff.storm_earth_and_fire.up||(!talent.serenity.enabled&trinket.proc.agility.react)||buff.bloodlust.react||target.time_to_die<=60\nactions+=/call_action_list,name=serenity,if=buff.serenity.up\nactions+=/fist_of_the_white_tiger,if=(energy.time_to_max<1||(talent.serenity.enabled&cooldown.serenity.remains<2))&chi.max-chi>=3\nactions+=/tiger_palm,cycle_targets=1,if=(energy.time_to_max<1||(talent.serenity.enabled&cooldown.serenity.remains<2))&chi.max-chi>=2&!prev_gcd.1.tiger_palm\nactions+=/call_action_list,name=cd\n# Call the ST action list if there are 2 or less enemies\nactions+=/call_action_list,name=st,if=active_enemies<3\n# Call the AoE action list if there are 3 or more enemies\nactions+=/call_action_list,name=aoe,if=active_enemies>=3\n\n# Actions.AoE is intended for use with Hectic_Add_Cleave and currently needs to be optimized\nactions.aoe=rising_sun_kick,cycle_targets=1,if=(talent.whirling_dragon_punch.enabled&cooldown.whirling_dragon_punch.remains<5)&cooldown.fists_of_fury.remains>3\nactions.aoe+=/whirling_dragon_punch\nactions.aoe+=/energizing_elixir,if=!prev_gcd.1.tiger_palm&chi<=1&energy<50\nactions.aoe+=/fists_of_fury\nactions.aoe+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions.aoe+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&(((chi>3||cooldown.fists_of_fury.remains>6)&(chi>=5||cooldown.fists_of_fury.remains>2))||energy.time_to_max<=3)\nactions.aoe+=/chi_burst,if=chi<=3\nactions.aoe+=/fist_of_the_white_tiger,if=chi.max-chi>=3\nactions.aoe+=/tiger_palm,cycle_targets=1,if=chi.max-chi>=2&(!talent.hit_combo.enabled||!prev_gcd.1.tiger_palm)\nactions.aoe+=/chi_wave\n# actions.aoe+=/flying_serpent_kick,if=buff.bok_proc.down,interrupt=1\nactions.aoe+=/blackout_kick,cycle_targets=1,if=!prev_gcd.1.blackout_kick&(buff.bok_proc.up||(talent.hit_combo.enabled&prev_gcd.1.tiger_palm&chi<4))\n\n# Cooldowns\nactions.cd=invoke_xuen_the_white_tiger\nactions.cd+=/use_item,name=lustrous_golden_plumage\nactions.cd+=/use_items\nactions.cd+=/blood_fury\nactions.cd+=/berserking\n# Use Arcane Torrent if you are missing at least 1 Chi and won't cap energy within 0.5 seconds\nactions.cd+=/arcane_torrent,if=chi.max-chi>=1&energy.time_to_max>=0.5\nactions.cd+=/lights_judgment\nactions.cd+=/fireblood\nactions.cd+=/ancestral_call\nactions.cd+=/touch_of_death,if=target.time_to_die>9\nactions.cd+=/storm_earth_and_fire,if=cooldown.storm_earth_and_fire.charges=2||(cooldown.fists_of_fury.remains<=6&chi>=3&cooldown.rising_sun_kick.remains<=1)||target.time_to_die<=15\nactions.cd+=/serenity,if=cooldown.rising_sun_kick.remains<=2||target.time_to_die<=12\n\n# Serenity priority\nactions.serenity=rising_sun_kick,cycle_targets=1,if=active_enemies<3||prev_gcd.1.spinning_crane_kick\nactions.serenity+=/fists_of_fury,if=(buff.bloodlust.up&prev_gcd.1.rising_sun_kick)||buff.serenity.remains<1||(active_enemies>1&active_enemies<5)\nactions.serenity+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&(active_enemies>=3||(active_enemies=2&prev_gcd.1.blackout_kick))\nactions.serenity+=/blackout_kick,cycle_targets=1\n\nactions.st=whirling_dragon_punch\nactions.st+=/rising_sun_kick,cycle_targets=1,if=chi>=5\nactions.st+=/fists_of_fury\nactions.st+=/rising_sun_kick,cycle_targets=1\nactions.st+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&buff.dance_of_chiji.up\nactions.st+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&active_enemies>1\nactions.st+=/fist_of_the_white_tiger,if=chi<=2\nactions.st+=/energizing_elixir,if=chi<=3&energy<50\nactions.st+=/blackout_kick,cycle_targets=1,if=!prev_gcd.1.blackout_kick&(cooldown.rising_sun_kick.remains>3||chi>=3)&(cooldown.fists_of_fury.remains>4||chi>=4||(chi=2&prev_gcd.1.tiger_palm))&buff.swift_roundhouse.stack<2\nactions.st+=/chi_wave\nactions.st+=/chi_burst,if=chi.max-chi>=1&active_enemies=1||chi.max-chi>=2\nactions.st+=/tiger_palm,cycle_targets=1,if=!prev_gcd.1.tiger_palm&chi.max-chi>=2\n# actions.st+=/flying_serpent_kick,if=prev_gcd.1.blackout_kick&chi>3&buff.swift_roundhouse.stack<2,interrupt=1",
					["author"] = "SimC",
				},
				["Brewmaster"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier21/T21_Monk_Brewmaster.simc",
					["builtIn"] = true,
					["date"] = 20180930.164,
					["author"] = "SimC",
					["desc"] = "# Brewmaster Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Brewmaster.simc\n# September 30, 2018 - 4:30\n\n# Changes:\n# - Relax Expel Harm a bit.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "health < health.max * 0.65",
								["action"] = "gift_of_the_ox",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 75 & incoming_damage_3s > health.max * ( group & 0.4 || 0.2 ) & buff.fortifying_brew.down",
								["action"] = "dampen_harm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 & incoming_damage_3s > health.max * ( group & 0.4 || 0.2 ) & ( buff.dampen_harm.down || buff.diffuse_magic.down )",
								["action"] = "fortifying_brew",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "lustrous_golden_plumage",
								["action"] = "lustrous_golden_plumage",
							}, -- [6]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 25",
								["action"] = "invoke_niuzao",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "stagger.pct > ( 6 * ( 3 - ( cooldown.brews.charges_fractional ) ) ) & ( stagger.last_tick_damage_1 > ( ( 0.02 + 0.001 * ( 3 - cooldown.brews.charges_fractional ) ) * stagger.last_tick_damage_30 ) )",
								["action"] = "purifying_brew",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.down & incoming_damage_1999ms > ( health.max * 0.1 + stagger.last_tick_damage_4 ) & buff.elusive_brawler.stack < 2 & ! buff.ironskin_brew.up",
								["action"] = "ironskin_brew",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.brews.charges_fractional > 1 & ( talent.black_ox_brew.enabled & cooldown.black_ox_brew.remains < 3 )",
								["action"] = "ironskin_brew",
							}, -- [17]
							{
								["action"] = "ironskin_brew",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "stagger.moderate",
								["action"] = "guard",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 33 || ( healing_sphere.count >= 3 & health.pct < 50 )",
								["action"] = "expel_harm",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 33",
								["action"] = "healing_elixir",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.brews.charges_fractional < 0.5",
								["action"] = "black_ox_brew",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( energy + ( energy.regen * cooldown.keg_smash.remains ) ) < 40 & buff.blackout_combo.down & cooldown.keg_smash.up",
								["action"] = "black_ox_brew",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 2",
								["action"] = "keg_smash",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled & buff.blackout_combo.up & buff.rushing_jade_wind.up",
								["action"] = "tiger_palm",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "( talent.invoke_niuzao_the_black_ox.enabled || talent.special_delivery.enabled ) & buff.blackout_combo.up",
								["action"] = "tiger_palm",
							}, -- [26]
							{
								["action"] = "blackout_strike",
								["enabled"] = true,
							}, -- [27]
							{
								["action"] = "keg_smash",
								["enabled"] = true,
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.down & ( buff.bloodlust.down || ( buff.bloodlust.up & dot.breath_of_fire_dot.refreshable ) )",
								["action"] = "breath_of_fire",
							}, -- [30]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [31]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "! talent.blackout_combo.enabled & cooldown.keg_smash.remains > gcd & ( energy + ( energy.regen * ( cooldown.keg_smash.remains + gcd ) ) ) >= 65",
								["action"] = "tiger_palm",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "energy < 31",
								["action"] = "arcane_torrent",
							}, -- [34]
							{
								["action"] = "rushing_jade_wind",
								["enabled"] = true,
							}, -- [35]
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
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [7]
						},
					},
					["version"] = 20180930.164,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 1: Unsupported action 'auto_attack'.\nLine 3: Unsupported action 'gift_of_the_ox'.\n\nImported 2 action lists.\n",
					["spec"] = 268,
					["profile"] = "# Brewmaster Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Brewmaster.simc\n# September 30, 2018 - 4:30\n\n# Changes:\n# - Relax Expel Harm a bit.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/chi_burst\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/spear_hand_strike\nactions+=/gift_of_the_ox,if=health<health.max*0.65\nactions+=/dampen_harm,if=health.pct<75&incoming_damage_3s>health.max*(group&0.4||0.2)&buff.fortifying_brew.down\nactions+=/fortifying_brew,if=health.pct<50&incoming_damage_3s>health.max*(group&0.4||0.2)&(buff.dampen_harm.down||buff.diffuse_magic.down)\nactions+=/use_item,name=lustrous_golden_plumage\nactions+=/use_items\nactions+=/potion\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/invoke_niuzao_the_black_ox,if=target.time_to_die>25\n\n# Purifying behaviour is based on normalization (iE the late expression triggers if stagger size increased over the last 30 ticks or 15 seconds).\nactions+=/purifying_brew,if=stagger.pct>(6*(3-(cooldown.brews.charges_fractional)))&(stagger.last_tick_damage_1>((0.02+0.001*(3-cooldown.brews.charges_fractional))*stagger.last_tick_damage_30))\n\n# Ironskin Brew priority whenever it took significant damage and ironskin brew buff is missing (adjust the health.max coefficient according to intensity of damage taken), and to dump excess charges before BoB.\nactions+=/ironskin_brew,if=buff.blackout_combo.down&incoming_damage_1999ms>(health.max*0.1+stagger.last_tick_damage_4)&buff.elusive_brawler.stack<2&!buff.ironskin_brew.up\nactions+=/ironskin_brew,if=cooldown.brews.charges_fractional>1&(talent.black_ox_brew.enabled&cooldown.black_ox_brew.remains<3)\nactions+=/ironskin_brew\n\n# Guard / Healing Elixir\nactions+=/guard,if=stagger.moderate\nactions+=/expel_harm,if=health.pct<33||(healing_sphere.count>=3&health.pct<50)\nactions+=/healing_elixir,if=health.pct<33\n\n# Black Ox Brew is currently used to either replenish brews based on less than half a brew charge available, or low energy to enable Keg Smash\nactions+=/black_ox_brew,if=cooldown.brews.charges_fractional<0.5\nactions+=/black_ox_brew,if=(energy+(energy.regen*cooldown.keg_smash.remains))<40&buff.blackout_combo.down&cooldown.keg_smash.up\n\n# Offensively, the APL prioritizes KS on cleave, BoS else, with energy spenders and cds sorted below\nactions+=/keg_smash,if=spell_targets>=2\nactions+=/tiger_palm,if=talent.rushing_jade_wind.enabled&buff.blackout_combo.up&buff.rushing_jade_wind.up\nactions+=/tiger_palm,if=(talent.invoke_niuzao_the_black_ox.enabled||talent.special_delivery.enabled)&buff.blackout_combo.up\nactions+=/blackout_strike\nactions+=/keg_smash\nactions+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions+=/breath_of_fire,if=buff.blackout_combo.down&(buff.bloodlust.down||(buff.bloodlust.up&dot.breath_of_fire_dot.refreshable))\nactions+=/chi_burst\nactions+=/chi_wave\nactions+=/tiger_palm,if=!talent.blackout_combo.enabled&cooldown.keg_smash.remains>gcd&(energy+(energy.regen*(cooldown.keg_smash.remains+gcd)))>=65\nactions+=/arcane_torrent,if=energy<31\nactions+=/rushing_jade_wind",
				},
			},
			["notifications"] = {
				["y"] = 533.033386230469,
				["x"] = -63.003662109375,
			},
			["minimapIcon"] = true,
			["iconStore"] = {
				["minimapPos"] = 170.126342107798,
				["hide"] = true,
			},
		},
		["Default"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["enableAllOfTheThings_20180820"] = true,
			},
			["minimapIcon"] = true,
			["displays"] = {
				["AOE"] = {
					["rel"] = "CENTER",
					["zoom"] = 0,
					["keybindings"] = {
						["font"] = "Expressway",
					},
					["x"] = -872.04931640625,
					["targets"] = {
						["font"] = "Expressway",
					},
					["y"] = 674.052612304688,
				},
				["Primary"] = {
					["zoom"] = 0,
					["border"] = {
						["fit"] = false,
					},
					["targets"] = {
						["enabled"] = false,
						["font"] = "Expressway",
					},
					["queue"] = {
						["height"] = 26,
						["width"] = 26,
					},
					["rel"] = "CENTER",
					["x"] = -28.996660232544,
					["delays"] = {
						["anchor"] = "BOTTOMRIGHT",
						["font"] = "Expressway",
						["fontSize"] = 14,
					},
					["primaryHeight"] = 36,
					["primaryWidth"] = 36,
					["numIcons"] = 2,
					["y"] = -155.995147705078,
					["keybindings"] = {
						["y"] = 6,
						["fontSize"] = 16,
						["anchor"] = "TOPLEFT",
						["font"] = "Expressway",
						["x"] = 0,
					},
				},
				["Defensives"] = {
					["rel"] = "CENTER",
					["x"] = -607.026123046875,
					["y"] = 641.054077148438,
				},
				["Interrupts"] = {
					["rel"] = "CENTER",
					["x"] = -544.025268554688,
					["y"] = 640.054138183594,
				},
			},
			["packs"] = {
				["Windwalker"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Windwalker.simc",
					["builtIn"] = true,
					["date"] = 20181212.2313,
					["spec"] = 269,
					["desc"] = "# Windwalker Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Windwalker.simc\n# December 12, 2018 - 23:12\n\n# Changes:\n# - Remove Spear Hand Strike condtions (handled by addon).\n# - Remove FSK recommendation (will become a pref).\n# - Change target_if to cycle_targets.\n# - Remove energy cap check for Fists of Fury (sim difference is negligible, but play difference is significant).\n# - Added Use Items (trinkets, etc.).",
					["lists"] = {
						["cd"] = {
							{
								["action"] = "invoke_xuen",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "lustrous_golden_plumage",
								["action"] = "lustrous_golden_plumage",
							}, -- [2]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & energy.time_to_max >= 0.5",
								["action"] = "arcane_torrent",
							}, -- [6]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 9",
								["action"] = "touch_of_death",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.storm_earth_and_fire.charges = 2 || ( cooldown.fists_of_fury.remains <= 6 & chi >= 3 & cooldown.rising_sun_kick.remains <= 1 ) || target.time_to_die <= 15",
								["action"] = "storm_earth_and_fire",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.rising_sun_kick.remains <= 2 || target.time_to_die <= 12",
								["action"] = "serenity",
							}, -- [12]
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
								["criteria"] = "( ! talent.serenity.enabled || ! talent.fist_of_the_white_tiger.enabled )",
								["action"] = "chi_burst",
							}, -- [6]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [7]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "( talent.whirling_dragon_punch.enabled & cooldown.whirling_dragon_punch.remains < 5 ) & cooldown.fists_of_fury.remains > 3",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.tiger_palm & chi <= 1 & energy < 50",
								["action"] = "energizing_elixir",
							}, -- [3]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.spinning_crane_kick & ( ( ( chi > 3 || cooldown.fists_of_fury.remains > 6 ) & ( chi >= 5 || cooldown.fists_of_fury.remains > 2 ) ) || energy.time_to_max <= 3 )",
								["action"] = "spinning_crane_kick",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi <= 3",
								["action"] = "chi_burst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 3",
								["action"] = "fist_of_the_white_tiger",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "chi.max - chi >= 2 & ( ! talent.hit_combo.enabled || ! prev_gcd.1.tiger_palm )",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "! prev_gcd.1.blackout_kick & ( buff.bok_proc.up || ( talent.hit_combo.enabled & prev_gcd.1.tiger_palm & chi < 4 ) )",
								["cycle_targets"] = 1,
							}, -- [11]
						},
						["default"] = {
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [2]
							{
								["interval"] = "90",
								["pct_health"] = "0.5",
								["action"] = "touch_of_karma",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || buff.storm_earth_and_fire.up || ( ! talent.serenity.enabled & trinket.proc.agility.react ) || buff.bloodlust.react || target.time_to_die <= 60",
								["action"] = "potion",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up",
								["action"] = "call_action_list",
								["list_name"] = "serenity",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( energy.time_to_max < 1 || ( talent.serenity.enabled & cooldown.serenity.remains < 2 ) ) & chi.max - chi >= 3",
								["action"] = "fist_of_the_white_tiger",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "( energy.time_to_max < 1 || ( talent.serenity.enabled & cooldown.serenity.remains < 2 ) ) & chi.max - chi >= 2 & ! prev_gcd.1.tiger_palm",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cd",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "call_action_list",
								["list_name"] = "st",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [10]
						},
						["st"] = {
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "chi >= 5",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.spinning_crane_kick & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down & active_enemies > 1",
								["action"] = "rushing_jade_wind",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi <= 2",
								["action"] = "fist_of_the_white_tiger",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "chi <= 3 & energy < 50",
								["action"] = "energizing_elixir",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "! prev_gcd.1.blackout_kick & ( cooldown.rising_sun_kick.remains > 3 || chi >= 3 ) & ( cooldown.fists_of_fury.remains > 4 || chi >= 4 || ( chi = 2 & prev_gcd.1.tiger_palm ) ) & buff.swift_roundhouse.stack < 2",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & active_enemies = 1 || chi.max - chi >= 2",
								["action"] = "chi_burst",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "! prev_gcd.1.tiger_palm & chi.max - chi >= 2",
								["cycle_targets"] = 1,
							}, -- [12]
						},
						["serenity"] = {
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "active_enemies < 3 || prev_gcd.1.spinning_crane_kick",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( buff.bloodlust.up & prev_gcd.1.rising_sun_kick ) || buff.serenity.remains < 1 || ( active_enemies > 1 & active_enemies < 5 )",
								["action"] = "fists_of_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.spinning_crane_kick & ( active_enemies >= 3 || ( active_enemies = 2 & prev_gcd.1.blackout_kick ) )",
								["action"] = "spinning_crane_kick",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [4]
						},
					},
					["version"] = 20181212.2313,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 1: Unsupported action 'auto_attack'.\n\nWARNING:  The import for 'st' required some automated changes.\nThe following auras were used in the action list but were not found in the addon database:\n - swift_roundhouse\n\nImported 6 action lists.\n",
					["profile"] = "# Windwalker Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Windwalker.simc\n# December 12, 2018 - 23:12\n\n# Changes:\n# - Remove Spear Hand Strike condtions (handled by addon).\n# - Remove FSK recommendation (will become a pref).\n# - Change target_if to cycle_targets.\n# - Remove energy cap check for Fists of Fury (sim difference is negligible, but play difference is significant).\n# - Added Use Items (trinkets, etc.).\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/chi_burst,if=(!talent.serenity.enabled||!talent.fist_of_the_white_tiger.enabled)\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/spear_hand_strike\n# Touch of Karma on cooldown, if Good Karma is enabled equal to 100% of maximum health\nactions+=/touch_of_karma,interval=90,pct_health=0.5\n# Potion if Serenity or Storm, Earth, and Fire are up or you are running serenity and a main stat trinket procs, or you are under the effect of bloodlust, or target time to die is greater or equal to 60\nactions+=/potion,if=buff.serenity.up||buff.storm_earth_and_fire.up||(!talent.serenity.enabled&trinket.proc.agility.react)||buff.bloodlust.react||target.time_to_die<=60\nactions+=/call_action_list,name=serenity,if=buff.serenity.up\nactions+=/fist_of_the_white_tiger,if=(energy.time_to_max<1||(talent.serenity.enabled&cooldown.serenity.remains<2))&chi.max-chi>=3\nactions+=/tiger_palm,cycle_targets=1,if=(energy.time_to_max<1||(talent.serenity.enabled&cooldown.serenity.remains<2))&chi.max-chi>=2&!prev_gcd.1.tiger_palm\nactions+=/call_action_list,name=cd\n# Call the ST action list if there are 2 or less enemies\nactions+=/call_action_list,name=st,if=active_enemies<3\n# Call the AoE action list if there are 3 or more enemies\nactions+=/call_action_list,name=aoe,if=active_enemies>=3\n\n# Actions.AoE is intended for use with Hectic_Add_Cleave and currently needs to be optimized\nactions.aoe=rising_sun_kick,cycle_targets=1,if=(talent.whirling_dragon_punch.enabled&cooldown.whirling_dragon_punch.remains<5)&cooldown.fists_of_fury.remains>3\nactions.aoe+=/whirling_dragon_punch\nactions.aoe+=/energizing_elixir,if=!prev_gcd.1.tiger_palm&chi<=1&energy<50\nactions.aoe+=/fists_of_fury\nactions.aoe+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions.aoe+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&(((chi>3||cooldown.fists_of_fury.remains>6)&(chi>=5||cooldown.fists_of_fury.remains>2))||energy.time_to_max<=3)\nactions.aoe+=/chi_burst,if=chi<=3\nactions.aoe+=/fist_of_the_white_tiger,if=chi.max-chi>=3\nactions.aoe+=/tiger_palm,cycle_targets=1,if=chi.max-chi>=2&(!talent.hit_combo.enabled||!prev_gcd.1.tiger_palm)\nactions.aoe+=/chi_wave\n# actions.aoe+=/flying_serpent_kick,if=buff.bok_proc.down,interrupt=1\nactions.aoe+=/blackout_kick,cycle_targets=1,if=!prev_gcd.1.blackout_kick&(buff.bok_proc.up||(talent.hit_combo.enabled&prev_gcd.1.tiger_palm&chi<4))\n\n# Cooldowns\nactions.cd=invoke_xuen_the_white_tiger\nactions.cd+=/use_item,name=lustrous_golden_plumage\nactions.cd+=/use_items\nactions.cd+=/blood_fury\nactions.cd+=/berserking\n# Use Arcane Torrent if you are missing at least 1 Chi and won't cap energy within 0.5 seconds\nactions.cd+=/arcane_torrent,if=chi.max-chi>=1&energy.time_to_max>=0.5\nactions.cd+=/lights_judgment\nactions.cd+=/fireblood\nactions.cd+=/ancestral_call\nactions.cd+=/touch_of_death,if=target.time_to_die>9\nactions.cd+=/storm_earth_and_fire,if=cooldown.storm_earth_and_fire.charges=2||(cooldown.fists_of_fury.remains<=6&chi>=3&cooldown.rising_sun_kick.remains<=1)||target.time_to_die<=15\nactions.cd+=/serenity,if=cooldown.rising_sun_kick.remains<=2||target.time_to_die<=12\n\n# Serenity priority\nactions.serenity=rising_sun_kick,cycle_targets=1,if=active_enemies<3||prev_gcd.1.spinning_crane_kick\nactions.serenity+=/fists_of_fury,if=(buff.bloodlust.up&prev_gcd.1.rising_sun_kick)||buff.serenity.remains<1||(active_enemies>1&active_enemies<5)\nactions.serenity+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&(active_enemies>=3||(active_enemies=2&prev_gcd.1.blackout_kick))\nactions.serenity+=/blackout_kick,cycle_targets=1\n\nactions.st=whirling_dragon_punch\nactions.st+=/rising_sun_kick,cycle_targets=1,if=chi>=5\nactions.st+=/fists_of_fury\nactions.st+=/rising_sun_kick,cycle_targets=1\nactions.st+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&buff.dance_of_chiji.up\nactions.st+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&active_enemies>1\nactions.st+=/fist_of_the_white_tiger,if=chi<=2\nactions.st+=/energizing_elixir,if=chi<=3&energy<50\nactions.st+=/blackout_kick,cycle_targets=1,if=!prev_gcd.1.blackout_kick&(cooldown.rising_sun_kick.remains>3||chi>=3)&(cooldown.fists_of_fury.remains>4||chi>=4||(chi=2&prev_gcd.1.tiger_palm))&buff.swift_roundhouse.stack<2\nactions.st+=/chi_wave\nactions.st+=/chi_burst,if=chi.max-chi>=1&active_enemies=1||chi.max-chi>=2\nactions.st+=/tiger_palm,cycle_targets=1,if=!prev_gcd.1.tiger_palm&chi.max-chi>=2\n# actions.st+=/flying_serpent_kick,if=prev_gcd.1.blackout_kick&chi>3&buff.swift_roundhouse.stack<2,interrupt=1",
					["author"] = "SimC",
				},
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
								["criteria"] = "azerite.searing_dialogue.rank >= 3",
								["chain"] = "1",
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
								["criteria"] = "spell_targets.mind_sear > ( 5 + 1 * talent.misery.enabled )",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "run_action_list",
								["list_name"] = "cleave",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1",
								["action"] = "run_action_list",
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
								["criteria"] = "spell_targets.mind_sear > 1",
								["chain"] = "1",
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
					["spec"] = 258,
					["profile"] = "# Shadow Priest\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Priest_Shadow.simc\n# December 30, 2018 - 21:18\n\n# Changes:\n# - Added Silence.\n# - Converted target_if syntax.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/shadowform,if=!buff.shadowform.up\nactions.precombat+=/mind_blast\nactions.precombat+=/shadow_word_void\n\n# Executed every time the actor is available.\nactions=silence\nactions+=/use_items\nactions+=/potion,if=buff.bloodlust.react||target.time_to_die<=80||target.health.pct<35\nactions+=/variable,name=dots_up,op=set,value=dot.shadow_word_pain.ticking&dot.vampiric_touch.ticking\nactions+=/fireblood,if=buff.voidform.up\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/ancestral_call,if=buff.voidform.up\nactions+=/run_action_list,name=aoe,if=spell_targets.mind_sear>(5+1*talent.misery.enabled)\nactions+=/run_action_list,name=cleave,if=active_enemies>1\nactions+=/run_action_list,name=single,if=active_enemies=1\n\nactions.aoe=void_eruption\nactions.aoe+=/dark_ascension,if=buff.voidform.down\nactions.aoe+=/void_bolt,if=talent.dark_void.enabled&dot.shadow_word_pain.remains>travel_time\nactions.aoe+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\nactions.aoe+=/dark_void,if=raid_event.adds.in>10\nactions.aoe+=/mindbender\nactions.aoe+=/shadow_crash,if=raid_event.adds.in>5&raid_event.adds.duration<20\nactions.aoe+=/mind_sear,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.aoe+=/shadow_word_pain\n\nactions.cleave=void_eruption\nactions.cleave+=/dark_ascension,if=buff.voidform.down\nactions.cleave+=/void_bolt\nactions.cleave+=/shadow_word_death,if=target.time_to_die<3||buff.voidform.down\nactions.cleave+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\nactions.cleave+=/dark_void,if=raid_event.adds.in>10\nactions.cleave+=/mindbender\nactions.cleave+=/mind_blast,if=(spell_targets.mind_sear<4&azerite.searing_dialogue.rank=0)||(spell_targets.mind_sear<3&azerite.searing_dialogue.rank=1)||(spell_targets.mind_sear<2&azerite.searing_dialogue.rank>=2)\nactions.cleave+=/shadow_crash,if=(raid_event.adds.in>5&raid_event.adds.duration<2)||raid_event.adds.duration>2\nactions.cleave+=/shadow_word_pain,if=refreshable&target.time_to_die>4&(!talent.misery.enabled&!talent.dark_void.enabled)\nactions.cleave+=/vampiric_touch,if=refreshable&(target.time_to_die>6)\nactions.cleave+=/vampiric_touch,if=dot.shadow_word_pain.refreshable&(talent.misery.enabled&target.time_to_die>4)\nactions.cleave+=/void_torrent\nactions.cleave+=/mind_sear,if=spell_targets.mind_sear>1,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2\nactions.cleave+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.cleave+=/shadow_word_pain\n\nactions.single=void_eruption\nactions.single+=/dark_ascension,if=buff.voidform.down\nactions.single+=/void_bolt\nactions.single+=/mind_sear,if=buff.harvested_thoughts.up&cooldown.void_bolt.remains>=1.5&azerite.searing_dialogue.rank>=1\nactions.single+=/shadow_word_death,if=target.time_to_die<3||cooldown.shadow_word_death.charges=2||(cooldown.shadow_word_death.charges=1&cooldown.shadow_word_death.remains<gcd.max)\nactions.single+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\nactions.single+=/dark_void,if=raid_event.adds.in>10\nactions.single+=/mindbender\nactions.single+=/shadow_word_death,if=!buff.voidform.up||(cooldown.shadow_word_death.charges=2&buff.voidform.stack<15)\nactions.single+=/shadow_crash,if=raid_event.adds.in>5&raid_event.adds.duration<20\nactions.single+=/mind_blast,if=variable.dots_up\nactions.single+=/void_torrent,if=dot.shadow_word_pain.remains>4&dot.vampiric_touch.remains>4\nactions.single+=/shadow_word_pain,if=refreshable&target.time_to_die>4&!talent.misery.enabled&!talent.dark_void.enabled\nactions.single+=/vampiric_touch,if=refreshable&target.time_to_die>6||(talent.misery.enabled&dot.shadow_word_pain.refreshable)\nactions.single+=/mind_sear,if=azerite.searing_dialogue.rank>=3,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2\nactions.single+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.single+=/shadow_word_pain",
				},
				["Brewmaster"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier21/T21_Monk_Brewmaster.simc",
					["builtIn"] = true,
					["date"] = 20180930.164,
					["author"] = "SimC",
					["desc"] = "# Brewmaster Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Brewmaster.simc\n# September 30, 2018 - 4:30\n\n# Changes:\n# - Relax Expel Harm a bit.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "health < health.max * 0.65",
								["action"] = "gift_of_the_ox",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 75 & incoming_damage_3s > health.max * ( group & 0.4 || 0.2 ) & buff.fortifying_brew.down",
								["action"] = "dampen_harm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 & incoming_damage_3s > health.max * ( group & 0.4 || 0.2 ) & ( buff.dampen_harm.down || buff.diffuse_magic.down )",
								["action"] = "fortifying_brew",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "lustrous_golden_plumage",
								["action"] = "lustrous_golden_plumage",
							}, -- [6]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 25",
								["action"] = "invoke_niuzao",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "stagger.pct > ( 6 * ( 3 - ( cooldown.brews.charges_fractional ) ) ) & ( stagger.last_tick_damage_1 > ( ( 0.02 + 0.001 * ( 3 - cooldown.brews.charges_fractional ) ) * stagger.last_tick_damage_30 ) )",
								["action"] = "purifying_brew",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.down & incoming_damage_1999ms > ( health.max * 0.1 + stagger.last_tick_damage_4 ) & buff.elusive_brawler.stack < 2 & ! buff.ironskin_brew.up",
								["action"] = "ironskin_brew",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.brews.charges_fractional > 1 & ( talent.black_ox_brew.enabled & cooldown.black_ox_brew.remains < 3 )",
								["action"] = "ironskin_brew",
							}, -- [17]
							{
								["action"] = "ironskin_brew",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "stagger.moderate",
								["action"] = "guard",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 33 || ( healing_sphere.count >= 3 & health.pct < 50 )",
								["action"] = "expel_harm",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 33",
								["action"] = "healing_elixir",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.brews.charges_fractional < 0.5",
								["action"] = "black_ox_brew",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( energy + ( energy.regen * cooldown.keg_smash.remains ) ) < 40 & buff.blackout_combo.down & cooldown.keg_smash.up",
								["action"] = "black_ox_brew",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 2",
								["action"] = "keg_smash",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled & buff.blackout_combo.up & buff.rushing_jade_wind.up",
								["action"] = "tiger_palm",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "( talent.invoke_niuzao_the_black_ox.enabled || talent.special_delivery.enabled ) & buff.blackout_combo.up",
								["action"] = "tiger_palm",
							}, -- [26]
							{
								["action"] = "blackout_strike",
								["enabled"] = true,
							}, -- [27]
							{
								["action"] = "keg_smash",
								["enabled"] = true,
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.down & ( buff.bloodlust.down || ( buff.bloodlust.up & dot.breath_of_fire_dot.refreshable ) )",
								["action"] = "breath_of_fire",
							}, -- [30]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [31]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "! talent.blackout_combo.enabled & cooldown.keg_smash.remains > gcd & ( energy + ( energy.regen * ( cooldown.keg_smash.remains + gcd ) ) ) >= 65",
								["action"] = "tiger_palm",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "energy < 31",
								["action"] = "arcane_torrent",
							}, -- [34]
							{
								["action"] = "rushing_jade_wind",
								["enabled"] = true,
							}, -- [35]
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
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [7]
						},
					},
					["version"] = 20180930.164,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 1: Unsupported action 'auto_attack'.\nLine 3: Unsupported action 'gift_of_the_ox'.\n\nImported 2 action lists.\n",
					["spec"] = 268,
					["profile"] = "# Brewmaster Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Brewmaster.simc\n# September 30, 2018 - 4:30\n\n# Changes:\n# - Relax Expel Harm a bit.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/chi_burst\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/spear_hand_strike\nactions+=/gift_of_the_ox,if=health<health.max*0.65\nactions+=/dampen_harm,if=health.pct<75&incoming_damage_3s>health.max*(group&0.4||0.2)&buff.fortifying_brew.down\nactions+=/fortifying_brew,if=health.pct<50&incoming_damage_3s>health.max*(group&0.4||0.2)&(buff.dampen_harm.down||buff.diffuse_magic.down)\nactions+=/use_item,name=lustrous_golden_plumage\nactions+=/use_items\nactions+=/potion\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/invoke_niuzao_the_black_ox,if=target.time_to_die>25\n\n# Purifying behaviour is based on normalization (iE the late expression triggers if stagger size increased over the last 30 ticks or 15 seconds).\nactions+=/purifying_brew,if=stagger.pct>(6*(3-(cooldown.brews.charges_fractional)))&(stagger.last_tick_damage_1>((0.02+0.001*(3-cooldown.brews.charges_fractional))*stagger.last_tick_damage_30))\n\n# Ironskin Brew priority whenever it took significant damage and ironskin brew buff is missing (adjust the health.max coefficient according to intensity of damage taken), and to dump excess charges before BoB.\nactions+=/ironskin_brew,if=buff.blackout_combo.down&incoming_damage_1999ms>(health.max*0.1+stagger.last_tick_damage_4)&buff.elusive_brawler.stack<2&!buff.ironskin_brew.up\nactions+=/ironskin_brew,if=cooldown.brews.charges_fractional>1&(talent.black_ox_brew.enabled&cooldown.black_ox_brew.remains<3)\nactions+=/ironskin_brew\n\n# Guard / Healing Elixir\nactions+=/guard,if=stagger.moderate\nactions+=/expel_harm,if=health.pct<33||(healing_sphere.count>=3&health.pct<50)\nactions+=/healing_elixir,if=health.pct<33\n\n# Black Ox Brew is currently used to either replenish brews based on less than half a brew charge available, or low energy to enable Keg Smash\nactions+=/black_ox_brew,if=cooldown.brews.charges_fractional<0.5\nactions+=/black_ox_brew,if=(energy+(energy.regen*cooldown.keg_smash.remains))<40&buff.blackout_combo.down&cooldown.keg_smash.up\n\n# Offensively, the APL prioritizes KS on cleave, BoS else, with energy spenders and cds sorted below\nactions+=/keg_smash,if=spell_targets>=2\nactions+=/tiger_palm,if=talent.rushing_jade_wind.enabled&buff.blackout_combo.up&buff.rushing_jade_wind.up\nactions+=/tiger_palm,if=(talent.invoke_niuzao_the_black_ox.enabled||talent.special_delivery.enabled)&buff.blackout_combo.up\nactions+=/blackout_strike\nactions+=/keg_smash\nactions+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions+=/breath_of_fire,if=buff.blackout_combo.down&(buff.bloodlust.down||(buff.bloodlust.up&dot.breath_of_fire_dot.refreshable))\nactions+=/chi_burst\nactions+=/chi_wave\nactions+=/tiger_palm,if=!talent.blackout_combo.enabled&cooldown.keg_smash.remains>gcd&(energy+(energy.regen*(cooldown.keg_smash.remains+gcd)))>=65\nactions+=/arcane_torrent,if=energy<31\nactions+=/rushing_jade_wind",
				},
			},
			["iconStore"] = {
				["minimapPos"] = 166.10719463682,
				["hide"] = true,
			},
			["notifications"] = {
				["y"] = 537.033508300781,
				["x"] = -99.0065765380859,
			},
			["specs"] = {
				[269] = {
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["strict"] = false,
					["nameplateRange"] = 8,
					["cycle"] = true,
					["potion"] = "potion_of_bursting_blood",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["damage"] = true,
					["package"] = "Windwalker",
				},
				[258] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["nameplates"] = false,
					["nameplateRange"] = 8,
					["package"] = "Shadow",
					["damageExpiration"] = 6,
					["potionsReset"] = 20180919.1,
					["throttleRefresh"] = false,
					["damage"] = true,
					["cycle"] = false,
					["potion"] = "potion_of_rising_death",
					["debuffPadding"] = 0,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
				},
				[268] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["nameplates"] = true,
					["cycle"] = false,
					["throttleRefresh"] = false,
					["damageExpiration"] = 8,
					["potionsReset"] = 20180919.1,
					["package"] = "Brewmaster",
					["damage"] = true,
					["nameplateRange"] = 8,
					["potion"] = "battle_potion_of_agility",
					["debuffPadding"] = 0,
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
				},
			},
		},
		["Tosh - Kil'jaeden"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["enableAllOfTheThings_20180820"] = true,
			},
			["specs"] = {
				[258] = {
					["maxRefresh"] = 10,
					["package"] = "Shadow",
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["buffPadding"] = 0.25,
					["cycle"] = false,
					["potion"] = "potion_of_rising_death",
					["throttleRefresh"] = false,
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["nameplateRange"] = 8,
					["potionsReset"] = 20180919.1,
				},
			},
			["displays"] = {
				["Defensives"] = {
					["rel"] = "CENTER",
					["y"] = 648.054565429688,
					["x"] = -617.02685546875,
				},
				["Primary"] = {
					["border"] = {
						["fit"] = false,
					},
					["rel"] = "CENTER",
					["numIcons"] = 2,
					["y"] = -111.992607116699,
					["zoom"] = 0,
					["queue"] = {
						["width"] = 22,
						["height"] = 22,
					},
					["keybindings"] = {
						["fontSize"] = 16,
						["y"] = 6,
						["font"] = "Expressway",
						["anchor"] = "TOPLEFT",
						["x"] = 0,
					},
					["x"] = -166.004470825195,
					["primaryHeight"] = 36,
					["primaryWidth"] = 36,
					["targets"] = {
						["font"] = "Expressway",
						["enabled"] = false,
					},
					["delays"] = {
						["fontSize"] = 14,
						["anchor"] = "BOTTOMRIGHT",
						["font"] = "Expressway",
					},
				},
				["AOE"] = {
					["targets"] = {
						["font"] = "Expressway",
					},
					["rel"] = "CENTER",
					["zoom"] = 0,
					["y"] = 665.052001953125,
					["x"] = -912.0517578125,
					["keybindings"] = {
						["font"] = "Expressway",
					},
				},
				["Interrupts"] = {
					["rel"] = "CENTER",
					["y"] = 654.05517578125,
					["x"] = -515.023681640625,
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
			["toggles"] = {
				["cooldowns"] = {
					["value"] = true,
				},
			},
			["iconStore"] = {
				["minimapPos"] = 166.10719463682,
				["hide"] = true,
			},
			["minimapIcon"] = true,
			["notifications"] = {
				["x"] = -99.0065765380859,
				["y"] = 537.033508300781,
			},
		},
	},
}
