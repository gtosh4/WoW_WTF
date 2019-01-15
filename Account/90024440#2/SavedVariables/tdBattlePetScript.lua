
TD_DB_BATTLEPETSCRIPT_GLOBAL = {
	["global"] = {
		["scripts"] = {
			["Base"] = {
				["1975;1586;646:1712;550;1441"] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "New script 1",
					["code"] = "ability(Ironskin)\nability(Predatory Strike) [enemy.hpp <= 25]\nability(Falcosaur Swarm!)",
				},
			},
			["Rematch"] = {
				[72285] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Chi-Chi, Hatchling of Chi-Ji",
					["code"] = "ability(Immolation:409) [!self.aura(Immolation:408).exists]\nability(Wild Magic:592) [!enemy.aura(Wild Magic:591).exists]\nability(Acidic Goo:369) [self.round=1]\nability(Dive:564) [self.round=4]\nchange(#2)\nability(#1)",
				},
				[97804] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Tiffany Nelson",
					["code"] = "if [enemy(#1).active] \nability(312) [enemy.round>1] \nability(574) [enemy.hp<300 & !self.aura(820).exists] \nability(504) \nendif \nif [enemy(#2).active] \nchange(#2) [enemy.round=1] \nchange(#3) [self(#2).active] \nability(589) [!weather(590)] \nability(489) \nendif \nif [enemy(#3).active] \nability(122) \nchange(#1) [self(#3).dead] \nability(504) [enemy.hp<380] \nability(312) \nability(574) [!self.aura(Nature's Ward:820).exists] \nability(504) \nendif",
				},
				[105250] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Aulier",
					["code"] = "if [ self(Bronze Whelpling).active & enemy(Beauty).active]\nability(Arcane Storm) [self.round = 1]\nability(Early Advantage) [self.round = 2]\nability(Arcane Slash)\nendif\nif [ self(Bronze Whelpling).active & enemy(Conviction).active]\nability(Early Advantage) [enemy.round = 1]\nability(Arcane Slash)\nstandby [enemy.round = 3]\nchange(Mechanical Pandaren Dragonling)\nendif\nif [ self(Mechanical Pandaren Dragonling).active & enemy(Conviction).active] \nability(Breath)\nendif\nif [ self(Mechanical Pandaren Dragonling).active & enemy(Dignity).active] \nability(Thunderbolt)\nability(Breath)\nability(Explode) [enemy.hp<=560]\nendif",
				},
				[99210] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Bodhi Sunwayver(7)",
					["code"] = "change(#3) [self(#2).active] \nquit [ self(#2).dead ] \nability(Proto-Strike) [self.aura(Whirlpool).duration=1] \nability(Ancient Blessing) [self.aura(Cyclone).duration=5] \nability(Howl) [enemy(#3).hp<1362] \nability(Surge of Power) [enemy.aura(Howl).exists] \nability(#1) \nchange(#2)",
				},
				[128009] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Baneglow",
					["code"] = "ability(Curse of Doom:218) \nability(Haunt:652) \nability(Flock:581) [enemy.aura(Black Claw:918).exists] \nability(Black Claw:919) \nchange(next)",
				},
				[128017] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Corrupted Blood of Argus",
					["code"] = "ability(Breath) \nability(#2) [ !enemy.aura(918).exists ] \nability(#3) \nchange(#1)",
				},
				[99742] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Heliosus(1)",
					["code"] = "ability(919) [self.round=1]\nability(581)\nability(218)\nability(652)\nchange(#3)\nchange(Ikky) [self(#3).active]",
				},
				[72290] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Zao, Calfling of Niuzao",
					["code"] = "ability(Supercharge:208)\nability(Call Lightning:204)\nchange(#2)\nability(Exposed Wounds:305) [!enemy.aura(Exposed Wounds:306).exists]\nability(#1)",
				},
				[140461] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Dilbert McClint",
					["code"] = "ability(Black Claw:919) [ !enemy.aura(Black Claw:918).exists ]\nability(Black Claw:919) [ enemy(#3).active & self.hp>366 ]\nability(Flock:581)\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(Make it Rain:985)\nability(#1)",
				},
				[99077] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Bredda Tenderhide",
					["code"] = "ability(208) [self.round=2]\nability(459)\nchange(#2) [self(#1).dead]\nif [enemy(#3).active]\nability(334)\nability(647) [enemy.round=2]\nability(115)\nendif\nability(115)\nchange(#3) [self(#2).dead]\nability(206)\nability(384)",
				},
				[139987] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Bristlespine",
					["code"] = "ability(Curse of Doom:218) \nability(Haunt:652) \nchange(Ikky:1532) \nability(Black Claw:919) [ !enemy.aura(Black Claw:918).exists ] \nability(Flock:581)",
				},
				[71932] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Wise Mari",
					["code"] = "if [enemy(#2).active] \nchange(#2) \nability(#3) \nability(#2) \nability(#1) \nendif \nif [self(Lesser Voidcaller).active]\nability(Prismatic Barrier)\nstandby [self.round = 2]\nability(Drain Power)\nability(Nether Blast)\nendif\nchange(#1) [enemy(#3).active] \nability(#2) \nability(#3) \nability(#1) \nchange(Lesser Voidcaller)",
				},
				[105386] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Rydyr(1)",
					["code"] = "ability(Decoy) [self.round = 4]\nability(Bombing Run)\nability(Missile)\nability(Toxic Smoke:640) [enemy.hpp<100]\nability(Supercharge:208) [self.aura(Wind-Up:458).exists]\nability(Wind-Up)\nchange(Iron Starlette) [self(#2).active]\nchange(#2)",
				},
				[128010] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Retch(1)",
					["code"] = "standby [self.round = 1 & self(#1).active]\nchange(#2)\nchange(#3) [self(#2).dead]\nability(Black Claw:919) [round=2]\nability(Hunting Party:921)\nability(Leap:364)",
				},
				[117934] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Sissix",
					["code"] = "change(#2) [self(#3).active] \nstandby [enemy.aura(Undead).exists] \nability(Ironskin) [round=1] \nability(Predatory Strike) [enemy.aura(Shattered Defenses).exists] \nif [self.aura(Wind-Up).exists] \nability(Powerball) [!self.aura(Speed Boost).exists] \nability(Supercharge) [!self.aura(Supercharged).exists] \nendif \nability(#1) \nchange(#3)",
				},
				[105779] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Felsoul Seer(1)",
					["code"] = "change(#2) [ self.aura(333).exists & ! self.hp.full ] \nif [ self.hp.full ] \nability(334) \nability(312) \nendif \nability(334) [ self.aura(154).exists ] \nability(115) \nchange(#3) \nability(574) [self.type = 3 & ! self.aura(311).exists ] \nability(504)",
				},
				[106476] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Beguiling Orb",
					["code"] = "change(#3) [self(#1).dead] \nif [enemy(#1).active] \nability(Dodge) \nability(Nature's Ward) [!self.aura(Nature's Ward).exists] \nability(Alpha Strike) \nendif \nif [enemy(#2).active] \nstandby [self.aura(Stunned).exists & self(#1).active] \nchange(#1) [self(#2).active] \nchange(#1) [self(#3).active] \nchange(#2) [enemy.ability(Clobber).usable & !self(#2).played & enemy.aura(Uncanny Luck).exists] \nability(Dodge) [enemy.aura(Uncanny Luck).exists] \nability(Nature's Ward) [!self.aura(Nature's Ward).exists] \nability(Alpha Strike) \nendif \nif [enemy(#3).active] \nability(Dodge) [enemy.aura(Leaping).exists & self.speed.fast] \nability(Dodge) [enemy.ability(Heroic Leap).usable & self.speed.slow] \nability(Nature's Ward) [!self.aura(Nature's Ward).exists] \nability(Alpha Strike) \nendif\nability(Deflection) [enemy.aura(Leaping).exists & self.speed.fast] \nability(Deflection) [enemy.ability(Heroic Leap).usable & self.speed.slow] \nability(Sandstorm) [!weather]\nability(Crush)",
				},
				[128016] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Shadeflicker",
					["code"] = "ability(Claw) [enemy.aura(Black Claw).exists]\nability(Dodge)\nability(Nature's Ward) [self.round = 3]\nability(Claw)\nability(Curse of Doom) [self.round = 2]\nability(Shadow Slash)\nability(Black Claw) [!enemy.aura(Black Claw).exists]\nability(Flock)",
				},
				[117950] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Madam Viciosa(10)",
					["code"] = "change(#3) [self.aura(Decoy:333).exists]\nchange(#2) [self(#3).active]\nstandby [round=1]\nstandby [self.aura(Stunned:927).exists]\nability(Haunt:652) [enemy(#2).active]\nif [enemy(#3).active]\n  ability(Decoy:334) [enemy.round=1]\n  ability(Thunderbolt:779)\n  ability(Curse of Doom:218)\nendif\nability(#1)\nchange(#1)",
				},
				[105323] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Ancient Catacomb Eggs",
					["code"] = "if [enemy(#1).active]\n    ability(647) [self.round=1]\n    ability(334) [self.round=3]\n    ability(777)\nendif\nif [enemy(#2).active]\n    change(#2) [enemy.round=1]\n    ability(312) [self.round=1]\n    ability(504) [self.round=2]\n    ability(574) [!self.aura(820).exists]\n    ability(504)\nendif\nif [enemy(#3).active]\n    change(#3) [enemy.round=1]\n    change(#1) [self(#3).active]\n    change(#2) [self(#1).dead]\n    ability(334) [self.round=1]\n    ability(647) [self.round=2]\n    ability(777)\n    ability(312) [self.round=1]\n    ability(504)\nendif",
				},
				[99035] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Durian Strongfruit",
					["code"] = "if [self(#1).active&enemy(#1).active] \nability(Cleansing Rain:230) [self.round=2] \nability(Pump:297) [self.round=1] \nability(Water Jet:118) \nendif \nif [self(#1).active&enemy(#2).active] \nability(Pump:297) [enemy.round=1] \nability(Water Jet:118) \nendif \nif [self(#1).active&enemy(#3).active] \nability(Water Jet:118) \nendif \nif [self(#3).active] \nability(Howl:362) [self.round=1] \nability(Surge of Power:593) \nendif \nchange(#2) [self(#1).dead] \nchange(#3) [self(#2).active] \nstandby",
				},
				[128020] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Bloat(1)",
					["code"] = "ability(305) \nchange(#3) [!self(#2).active] \nchange(#2) \nability(919) [self.round=1] \nability(921)",
				},
				[72291] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Yu'la, Broodling of Yu'lon",
					["code"] = "ability(Dodge) [enemy.aura(Flying).exists] \nability(Burrow) [enemy.aura(Emerald Presence).duration=2] \nability(Scratch)\nchange(Spring Rabbit)\nchange(Flayer Youngling)\nability(Focus) [!self.aura(Focused).exists]\nability(Rampage)\nability(Blitz)",
				},
				[72009] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Xu-Fu, Cub of Xuen",
					["code"] = "ability(Call Lightning)\nchange(Lil' Bling)\nability(Make it Rain) [!enemy.aura(Make it Rain).exists]\nability(Inflation)\nchange(Darkmoon Tonk)\nability(Shock and Awe)\nability(Ion Cannon)",
				},
				[141479] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Burly",
					["code"] = "change(#2) [self(Iron Starlette:1387).dead & !self(#2).played]\nchange(Benax) [self(#2).active]\n\nability(Wind-Up:459) [self(Iron Starlette:1387).aura(Wind-Up:458).exists & self(Iron Starlette:1387).aura(Supercharged:207).exists]\nability(Powerball:566) [enemy.aura(Undead:242).exists]\nability(Powerball:566) [self(Iron Starlette:1387).aura(Mechanical:244).exists]\nability(Wind-Up:459) [!self(Iron Starlette:1387).aura(Wind-Up:458).exists]\nability(Supercharge:208) [self(Iron Starlette:1387).aura(Wind-Up:458).exists]\nability(Wind-Up:459) [self(Iron Starlette:1387).aura(Supercharged:207).exists]\n\nability(Bubble:934)\nability(Swarm of Flies:232) [!enemy.aura(Swarm of Flies:231).exists]\nability(Tongue Lash:228)",
				},
				[141046] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Leana Darkwind",
					["code"] = "ability(Black Claw) [round = 1 ]\nability(Flock)\nchange(#2)\nability(Ironskin) [self.round = 4]\nability(Predatory Strike) [self.round = 5]\nability(Falcosaur Swarm!)\nchange(#3)\nability(Decoy)\nability(Breath)",
				},
				[71929] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Sully \"The Pickle\" McLeary",
					["code"] = "ability(Swarm of Flies) [!enemy.aura(Swarm of Flies).exists]\nability(Healing Wave)\nability(Tongue Lash)\nchange(Mist Fox Kit)\nability(Dazzling Dance) [enemy(Rikki).active & !self.aura(Dazzling Dance).exists]\nability(Bite)\nchange(Sprite Darter Hatchling)\nability(Slicing Wind)",
				},
				[71933] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Blingtron 4000",
					["code"] = "if [enemy(Au:1278).active] \nability(Pump:297) [enemy.round=1] \nability(Water Jet:118) [enemy.round=2] \nability(Pump:297) [enemy.round=3] \nability(Water Jet:118) \nendif \nif [enemy(Banks:1279).active] \nability(Water Jet:118) \nchange(Teroclaw Hatchling:1416) [self(#1).dead] \nability(Nature's Ward:574) [self.aura(Nature's Ward:820).duration<2] \nability(Hawk Eye:521) [self.aura(Nature's Ward:820).duration>4] \nability(Claw:429) \nendif \nif [enemy(Lil' B:1277).active] \nability(Nature's Ward:574) [self.aura(Nature's Ward:820).duration<2] \nability(Hawk Eye:521) [self.aura(Nature's Ward:820).duration>4] \nability(Claw:429) \nchange(Dark Phoenix Hatchling:270) [self(#2).dead] \nability(Immolate:178) [self.round=1] \nability(Conflagrate:179) [self.round=2] \nability(Burn:113) \nendif",
				},
				[128007] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Ruinhoof",
					["code"] = "ability(Curse of Doom)\nability(Haunt)\nchange(Ikky)\nability(Black Claw)\nability(Flock)\nchange(#3)",
				},
				[105898] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Blottis",
					["code"] = "ability(321)\nchange(#2)\nability(919) [self.round=1]\nability(581)",
				},
				[128015] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Gloamwing(n)",
					["code"] = "standby [round=1]\nability(Build Turret)\nability(Metal Fist)\nability(Decoy)\nability(Thunderbolt)\nability(Breath)\nability(Black Claw) [!enemy.aura(Black Claw).exists ]\nability(Flock)\nchange(next)",
				},
				[128019] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Watcher",
					["code"] = "ability(#1) [self.round<3] \nability(#3) [self.round=3] \nchange(#2) [self(#1).dead]",
				},
				[128023] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Minixis",
					["code"] = "ability(#2) [ ! enemy.aura(Black Claw:918).exists ] \nability(#3) \nchange(next)",
				},
				[107489] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Amalia(6)",
					["code"] = "if [enemy(#1).active]\n    ability(634)\n    ability(209) [enemy.hp<=1098]\n    ability(777)\nendif\nif [enemy(#2).active]\n    ability(634)\n    standby [self(#1).active]\n    change(#3) [self(#1).dead]\n    ability(312) [self.round=1]\n    ability(574) [!self.aura(820).exists]\n    ability(504)\nendif\nif [enemy(#3).active]\n    change(#3) [self(#2).active]\n    standby [enemy.round=4]\n    ability(312)\n    ability(574) [!self.aura(820).exists]\n    ability(504)\nendif",
				},
				[117951] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Nameless Mystic",
					["code"] = "standby [enemy(#3).hp<618 & self(#1).active] \nability(334) [!enemy(#2).active & !self(#2).active] \nability(779) [!enemy(#1).active] \nability(115) \nchange(#2) [self(#1).dead] \nability(282) [enemy.hp<=618] \nability(777)",
				},
				[106552] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Nightwatcher Merayl",
					["code"] = "change(#2) [self(#3).active] \nability(Arcane Storm) [enemy(#2).active] \nability(Mana Surge) [weather(Arcane Winds)] \nability(Surge of Power) \nability(#1) \nchange(#3)",
				},
				[99878] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Ominitron Defense System(20)",
					["code"] = "ability(453)\nability(406) [self.round=2]\nability(814)\nability(406)\nchange(#2) [!self(#2).played]\nchange(#3)\nability(334) [self.round=1]\nability(779) [enemy(#1).dead & enemy(#2).dead]\nability(115)",
				},
				[99150] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Grixis Tinypop(5)",
					["code"] = "ability(Sandstorm) [round=1] \nchange(#2) [round=2] \nchange(#3) [round=3] \nchange(#1) [self(#3).dead] \nability(Dodge) [round=5] \n\nif [enemy(#2).active] \nability(Nature's Ward) [enemy.round=1] \nability(Nature's Ward) [enemy.round=6] \nendif \n\nif [enemy(#3).active] \nability(Dodge) \nendif \n\nability(Alpha Strike) \nability(Sandstorm) \nability(Crush)",
				},
				[71934] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Dr. Ion Goldbloom",
					["code"] = "ability(Arcane Storm)\nability(Mana Surge)\nability(Tail Sweep)\nchange(Mechanical Pandaren Dragonling)\nability(Breath) [enemy.hp <= 249]\nability(Decoy) [self.round = 4]\nability(Decoy) [enemy(Screamer).active]\nability(Bombing Run) [!enemy.aura(Bomb).exists]\nability(Breath)\nchange(Emerald Proto-Whelp)",
				},
				[105387] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Andurs(1,1)",
					["code"] = "ability(Explode:282) [enemy.hp<=620] \nability(Toxic Smoke:640) [enemy.aura(Toxic Smoke:639).duration!=2] \nability(#1)",
				},
				[141292] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Delia Hanako",
					["code"] = "change(#2) [ !self(#2).played & self(#1).dead ]\nchange(#3) [ self(#2).played ]\nability(Hawk Eye:521) [ round=3 ]\nability(Alpha Strike:504) [ enemy(#2).active & self.speed.fast ]\nability(Dodge:312) [ round>1 ]\nability(Alpha Strike:504)\nability(Black Claw:919) [ enemy(#3).active & !enemy.aura(Black Claw:918).exists ]\nability(Quills:184) [ self.speed.fast ]\nability(Flock:581)\nability(#1)",
				},
				[71926] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Lorewalker Cho",
					["code"] = "ability(Moonfire:595) [round = 1] \nability(Life Exchange:277) [enemy(#2).active] \nability(Arcane Blast:421) \nchange(Feline Familiar:319) \nability(Prowl:536) [enemy(#3).active] \nability(Call Darkness:256) [enemy(#3).active] \nability(Pounce:535)",
				},
				[71930] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Shademaster Kiryn",
					["code"] = "if [enemy(Summer).active]\nstandby [enemy.round = 1]\nstandby [enemy.round = 2]\nability(Deep Freeze)\nability(Call Blizzard)\nability(Snowball)\nchange(Unborn Val'kyr)\nability(Shadow Slash) [enemy.ability(Dodge).usable]\nability(Curse of Doom) [!enemy.aura(Dodge).exists]\nability(Shadow Slash)\nchange(Iron Starlette)\nendif\nability(Curse of Doom) \nability(Haunt)\nchange(Tiny Snowman)\nability(Deep Freeze) [self.round = 1]\nability(Call Blizzard) [self.round = 4]\nability(Snowball)\nability(Supercharge) [self.round = 2]\nability(Wind-Up)",
				},
				[79179] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Squirt",
					["code"] = "quit [ self(Enchanted Broom).dead & self(Weebominaton).dead ]\n quit [ self(#2).dead ]\n ability(Sweep) [ enemy(Deebs).active & enemy.round =1 ]\n change(#2) [ enemy(Puzzle).active & enemy.round=1 & !self(Weebomination).dead ]\n change(Weebomination) [ enemy(Puzzle).active & self(#2).active & !self(Weebomination).dead ]\n if [ enemy(Puzzle).active & self(Weebomination).active ]\n     ability(Cleave)    \n     change(Enchanted Broom)  \n endif  \n if [ enemy(Puzzle).active & self(Enchanted Broom).active & self(Weebomination).dead ]  \n     ability(Wind-Up) [ enemy(Puzzle).aura(Dodge).exists & !self(Enchanted Broom).aura(Wind-Up).exists ]  \n     ability(Wind-Up) [ !enemy(Puzzle).aura(Dodge).exists & self(Enchanted Broom).aura(Wind-Up).exists]\n     ability(Batter)\n endif\n ability(Batter) [ enemy(Deebs).active ]\n ability(Batter) [ enemy(Tyri).active ]\n standby",
				},
				[128008] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Foulclaw",
					["code"] = "if [ self(Ikky).active ]\nability(Black Claw) [self.round = 1] \nability(Flock)\nchange(#3)\nendif\nif [ self(#3).active]\nchange(Direbeak Hatchling) [self.round = 1]\nendif\nif [ self(Direbeak Hatchling).active]\nability(Ironskin)\nability(Falcosaur Swarm!)\nendif",
				},
				[128012] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Gnasher",
					["code"] = "ability(Curse of Doom:218) \nability(Haunt:652) \nability(Flock:581) [enemy.aura(Black Claw:918).exists] \nability(Black Claw:919) \nchange(next)",
				},
				[105840] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Stitches Jr. Jr.",
					["code"] = "standby [enemy.aura(Undead:242).exists] \nability(Supercharge) [self.aura(Wind-Up:458).exists] \nability(Wind-Up)\nability(Ion Cannon)\nability(Pump)\nchange(#2)\nchange(#3)",
				},
				[91354] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Thistleleaf Ruffian(5,5)",
					["code"] = "if [enemy(#1).active] \nability(312) [enemy.round>1] \nability(574) [!self.aura(820).exists] \nability(504) \nendif \nif [!enemy(#1).active] \nchange(#2) [!self(#2).played] \nchange(#3) [!self(#3).played] \nchange(#1) \nability(312) \nability(574) [!self.aura(820).exists] \nability(504) \nendif",
				},
				[128024] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "One-of-Many(n)",
					["code"] = "ability(#2) [ ! enemy.aura(Black Claw:918).exists ] \nability(#3) \nchange(next)",
				},
				[104970] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Xorvasc(1)",
					["code"] = "change(#3) [self(#2).active]\nif [!enemy(#3).active]\n  ability(Dodge:312) [round>1 & enemy.hpp>50]\n  ability(Nature's Ward:574) [round>3 & !self.aura(Nature's Ward:820).exists]\nendif\nability(Whirlpool:513) [enemy(#3).hpp>50]\nability(Dive:564) [enemy.aura(Whirlpool:512).duration=1]\nability(#1)\nchange(#2)",
				},
				[105352] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Surging Mana Crystal",
					["code"] = "if [enemy(#1).active]  \nchange(#2) [enemy.round=2] \nchange(#1) [self(#2).active] \nability(334) \nability(115) \nendif \nability(334) \nability(115) \nchange(#3) [self(#1).dead] \nability(710) \nability(384)",
				},
				[140813] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Fizzie Sparkwhistle",
					["code"] = "ability(Whirlpool:513) [self(Pandaren Water Spirit:868).active]\nability(Dive:564) [self(Pandaren Water Spirit:868).active]\nability(Water Jet:118) [self(Pandaren Water Spirit:868).active]\nchange(#2) [self(Pandaren Water Spirit:868).dead & !self(Rapana Whelk:743).active]\nchange(Rapana Whelk:743)\nability(Shell Shield:310) [self(Rapana Whelk:743).aura(Shell Shield:309).duration <2]\nability(Dive:564)\nability(Absorb:449)",
				},
				[141588] = {
					["author"] = "Yellowy-Kil'jaeden",
					["name"] = "Bloodtusk",
					["code"] = "ability(Wind-Up)",
				},
			},
		},
	},
	["profileKeys"] = {
		["Aenllumath - Tichondrius"] = "Default",
		["Edwillianna - Kil'jaeden"] = "Default",
		["Yellowy - Kil'jaeden"] = "Default",
		["Itsyellowy - Kil'jaeden"] = "Default",
		["Ivande - Kil'jaeden"] = "Default",
		["Yellowysham - Kil'jaeden"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["position"] = {
				["y"] = 145.000198364258,
				["x"] = -110.835205078125,
				["point"] = "BOTTOMRIGHT",
				["height"] = 431.666625976562,
				["scale"] = 1,
				["width"] = 685.833374023438,
			},
			["minimap"] = {
				["minimapPos"] = 167.347490318801,
			},
		},
	},
}
