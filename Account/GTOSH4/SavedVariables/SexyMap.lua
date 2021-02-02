
SexyMap2DB = {
	["Toshpriest-Azralon"] = {
		["core"] = {
			["clamp"] = true,
			["lock"] = false,
			["northTag"] = true,
			["shape"] = "Interface\\AddOns\\SexyMap\\shapes\\circle.tga",
			["autoZoom"] = 5,
			["rightClickToConfig"] = true,
		},
		["coordinates"] = {
			["enabled"] = false,
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
			},
			["xOffset"] = 0,
			["updateRate"] = 1,
			["backgroundColor"] = {
			},
			["yOffset"] = 10,
		},
		["buttons"] = {
			["radius"] = 10,
			["lockDragging"] = false,
			["allowDragging"] = true,
			["visibilitySettings"] = {
				["MinimapZoomIn"] = "never",
				["MinimapZoneTextButton"] = "always",
				["TimeManagerClockButton"] = "always",
				["QueueStatusMinimapButton"] = "always",
				["GarrisonLandingPageMinimapButton"] = "always",
				["MiniMapMailFrame"] = "always",
				["MinimapZoomOut"] = "never",
				["MiniMapWorldMapButton"] = "never",
			},
			["dragPositions"] = {
				["LibDBIcon10_SimulationCraft"] = 172.3520565837722,
				["LibDBIcon10_Grid2"] = 195.8911802100031,
				["LibDBIcon10_REFlex"] = 239.8998851432848,
			},
			["controlVisibility"] = true,
		},
		["movers"] = {
			["enabled"] = false,
			["framePositions"] = {
			},
			["lock"] = false,
		},
		["clock"] = {
			["bgColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["borders"] = {
			["applyPreset"] = false,
			["borders"] = {
				{
					["name"] = "Rune 1",
					["r"] = 0.3098039215686275,
					["scale"] = 1.4,
					["rotSpeed"] = -30,
					["g"] = 0.4784313725490196,
					["texture"] = 165630,
				}, -- [1]
				{
					["a"] = 0.3799999952316284,
					["rotSpeed"] = 60,
					["r"] = 0.196078431372549,
					["scale"] = 2.1,
					["name"] = "Rune 2",
					["g"] = 0.2901960784313725,
					["texture"] = 165638,
				}, -- [2]
				{
					["a"] = 0.3,
					["name"] = "Fade",
					["r"] = 0,
					["scale"] = 1.6,
					["g"] = 0.2235294117647059,
					["texture"] = 167062,
				}, -- [3]
			},
			["backdrop"] = {
				["show"] = false,
				["textureColor"] = {
				},
				["settings"] = {
					["bgFile"] = "Interface\\Tooltips\\UI-Tooltip-Background",
					["edgeFile"] = "Interface\\Tooltips\\UI-Tooltip-Border",
					["tile"] = false,
					["edgeSize"] = 16,
					["insets"] = {
						["top"] = 4,
						["right"] = 4,
						["left"] = 4,
						["bottom"] = 4,
					},
				},
				["borderColor"] = {
				},
				["scale"] = 1,
			},
			["hideBlizzard"] = true,
		},
		["zonetext"] = {
			["bgColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["ping"] = {
			["showPing"] = true,
			["showAt"] = "map",
		},
	},
	["global"] = {
		["ping"] = {
			["showPing"] = true,
			["showAt"] = "chat",
		},
		["coordinates"] = {
			["enabled"] = false,
			["fontColor"] = {
			},
			["xOffset"] = -132,
			["updateRate"] = 1,
			["yOffset"] = -132,
			["font"] = "Friz Quadrata TT",
			["borderColor"] = {
			},
			["coordPrecision"] = "%d,%d",
			["backgroundColor"] = {
			},
		},
		["buttons"] = {
			["radius"] = 10,
			["lockDragging"] = false,
			["allowDragging"] = true,
			["visibilitySettings"] = {
				["MinimapZoomIn"] = "never",
				["MiniMapMailFrame"] = "never",
				["MiniMapChallengeMode"] = "never",
				["SexyMapZoneTextButton"] = "never",
				["GameTimeFrame"] = "never",
				["LibDBIcon10_Dominos"] = "never",
				["MiniMapWorldMapButton"] = "never",
				["MinimapZoomOut"] = "never",
				["LibDBIcon10_SavedInstances"] = "never",
				["MiniMapInstanceDifficulty"] = "never",
				["QueueStatusMinimapButton"] = "always",
				["MiniMapTracking"] = "never",
				["GarrisonLandingPageMinimapButton"] = "never",
				["GuildInstanceDifficulty"] = "never",
				["TimeManagerClockButton"] = "never",
			},
			["dragPositions"] = {
				["GameTimeFrame"] = 43.8597518352463,
				["QueueStatusMinimapButton"] = 12.93495570483401,
				["GuildInstanceDifficulty"] = -27.76190129645581,
				["LibDBIcon10_SimulationCraft"] = 198.4673776858481,
				["LibDBIcon10_REFlex"] = 197.0691461092269,
				["GarrisonLandingPageMinimapButton"] = -4.853091590334242,
				["LibDBIcon10_BugSack"] = 187.8530548582654,
				["LibDBIcon10_SavedInstances"] = 180.4162643872903,
				["MiniMapTracking"] = 29.75885204016652,
			},
			["controlVisibility"] = true,
		},
		["movers"] = {
			["lockDurability"] = true,
			["lockObjectives"] = true,
			["moveDurability"] = true,
			["lockCaptureBar"] = true,
			["moveVehicle"] = true,
			["lockVehicle"] = true,
			["moverPositions"] = {
				["durability"] = {
					"TOPLEFT", -- [1]
					"TOPLEFT", -- [2]
					2.699969530105591, -- [3]
					-54.93297958374023, -- [4]
				},
				["capturebar"] = {
					"TOPRIGHT", -- [1]
					"TOPRIGHT", -- [2]
					-202.8667449951172, -- [3]
					-168.9999542236328, -- [4]
				},
				["vehicle"] = {
					"BOTTOMRIGHT", -- [1]
					"BOTTOMRIGHT", -- [2]
					-402.8000183105469, -- [3]
					0.1333678662776947, -- [4]
				},
				["buffs"] = {
					"TOPRIGHT", -- [1]
					"TOPRIGHT", -- [2]
					-6.866725921630859, -- [3]
					-3.766664266586304, -- [4]
				},
				["objectives"] = {
					"BOTTOMRIGHT", -- [1]
					"BOTTOMRIGHT", -- [2]
					-0.3664356172084808, -- [3]
					3.466556787490845, -- [4]
				},
			},
			["moveBuffs"] = true,
			["lockBuffs"] = true,
			["moveCaptureBar"] = true,
			["moveObjectives"] = true,
		},
		["clock"] = {
			["bgColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["borders"] = {
			["applyPreset"] = false,
			["borders"] = {
			},
			["backdrop"] = {
				["show"] = true,
				["textureColor"] = {
				},
				["settings"] = {
					["bgFile"] = "Interface\\Tooltips\\UI-Tooltip-Background",
					["edgeFile"] = "Interface\\Tooltips\\UI-Tooltip-Border",
					["tile"] = false,
					["edgeSize"] = 16,
					["insets"] = {
						["top"] = 4,
						["right"] = 4,
						["left"] = 4,
						["bottom"] = 4,
					},
				},
				["borderColor"] = {
				},
				["scale"] = 1,
			},
			["hideBlizzard"] = true,
		},
		["zonetext"] = {
			["bgColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
			["width"] = 140,
		},
		["core"] = {
			["clamp"] = true,
			["point"] = "BOTTOMLEFT",
			["relpoint"] = "BOTTOMLEFT",
			["autoZoom"] = 5,
			["northTag"] = false,
			["y"] = 18.05536842346191,
			["x"] = 383.333740234375,
			["lock"] = false,
			["scale"] = 1.2,
			["shape"] = 130871,
			["rightClickToConfig"] = true,
		},
	},
	["Toshaman-Area 52"] = "global",
	["Yelluwuy-Area 52"] = {
		["core"] = {
			["clamp"] = true,
			["lock"] = false,
			["northTag"] = true,
			["shape"] = "Interface\\AddOns\\SexyMap\\shapes\\circle.tga",
			["autoZoom"] = 5,
			["rightClickToConfig"] = true,
		},
		["coordinates"] = {
			["enabled"] = false,
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
			},
			["xOffset"] = 0,
			["updateRate"] = 1,
			["backgroundColor"] = {
			},
			["yOffset"] = 10,
		},
		["buttons"] = {
			["radius"] = 10,
			["lockDragging"] = false,
			["allowDragging"] = true,
			["visibilitySettings"] = {
				["MinimapZoomIn"] = "never",
				["MinimapZoneTextButton"] = "always",
				["TimeManagerClockButton"] = "always",
				["QueueStatusMinimapButton"] = "always",
				["GarrisonLandingPageMinimapButton"] = "always",
				["MiniMapMailFrame"] = "always",
				["MinimapZoomOut"] = "never",
				["MiniMapWorldMapButton"] = "never",
			},
			["dragPositions"] = {
			},
			["controlVisibility"] = true,
		},
		["movers"] = {
			["enabled"] = false,
			["framePositions"] = {
			},
			["lock"] = false,
		},
		["clock"] = {
			["bgColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["borders"] = {
			["applyPreset"] = false,
			["borders"] = {
				{
					["name"] = "Rune 1",
					["r"] = 0.3098039215686275,
					["scale"] = 1.4,
					["rotSpeed"] = -30,
					["g"] = 0.4784313725490196,
					["texture"] = 165630,
				}, -- [1]
				{
					["a"] = 0.3799999952316284,
					["rotSpeed"] = 60,
					["r"] = 0.196078431372549,
					["scale"] = 2.1,
					["name"] = "Rune 2",
					["g"] = 0.2901960784313725,
					["texture"] = 165638,
				}, -- [2]
				{
					["a"] = 0.3,
					["name"] = "Fade",
					["r"] = 0,
					["scale"] = 1.6,
					["g"] = 0.2235294117647059,
					["texture"] = 167062,
				}, -- [3]
			},
			["backdrop"] = {
				["show"] = false,
				["textureColor"] = {
				},
				["settings"] = {
					["bgFile"] = "Interface\\Tooltips\\UI-Tooltip-Background",
					["edgeFile"] = "Interface\\Tooltips\\UI-Tooltip-Border",
					["tile"] = false,
					["edgeSize"] = 16,
					["insets"] = {
						["top"] = 4,
						["right"] = 4,
						["left"] = 4,
						["bottom"] = 4,
					},
				},
				["borderColor"] = {
				},
				["scale"] = 1,
			},
			["hideBlizzard"] = true,
		},
		["zonetext"] = {
			["bgColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["ping"] = {
			["showPing"] = true,
			["showAt"] = "map",
		},
	},
	["Toshpal-Area 52"] = "global",
	["Toshpriest-Area 52"] = "global",
	["Toshtoon-Barthilas"] = {
		["core"] = {
			["clamp"] = true,
			["lock"] = false,
			["northTag"] = true,
			["shape"] = "Interface\\AddOns\\SexyMap\\shapes\\circle.tga",
			["autoZoom"] = 5,
			["rightClickToConfig"] = true,
		},
		["coordinates"] = {
			["enabled"] = false,
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
			},
			["xOffset"] = 0,
			["updateRate"] = 1,
			["backgroundColor"] = {
			},
			["yOffset"] = 10,
		},
		["buttons"] = {
			["radius"] = 10,
			["lockDragging"] = false,
			["allowDragging"] = true,
			["visibilitySettings"] = {
				["MinimapZoomIn"] = "never",
				["MinimapZoneTextButton"] = "always",
				["TimeManagerClockButton"] = "always",
				["QueueStatusMinimapButton"] = "always",
				["GarrisonLandingPageMinimapButton"] = "always",
				["MiniMapMailFrame"] = "always",
				["MinimapZoomOut"] = "never",
				["MiniMapWorldMapButton"] = "never",
			},
			["dragPositions"] = {
			},
			["controlVisibility"] = true,
		},
		["movers"] = {
			["enabled"] = false,
			["framePositions"] = {
			},
			["lock"] = false,
		},
		["clock"] = {
			["bgColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["borders"] = {
			["applyPreset"] = false,
			["borders"] = {
				{
					["name"] = "Rune 1",
					["r"] = 0.3098039215686275,
					["scale"] = 1.4,
					["rotSpeed"] = -30,
					["g"] = 0.4784313725490196,
					["texture"] = 165630,
				}, -- [1]
				{
					["a"] = 0.3799999952316284,
					["rotSpeed"] = 60,
					["r"] = 0.196078431372549,
					["scale"] = 2.1,
					["name"] = "Rune 2",
					["g"] = 0.2901960784313725,
					["texture"] = 165638,
				}, -- [2]
				{
					["a"] = 0.3,
					["name"] = "Fade",
					["r"] = 0,
					["scale"] = 1.6,
					["g"] = 0.2235294117647059,
					["texture"] = 167062,
				}, -- [3]
			},
			["backdrop"] = {
				["show"] = false,
				["textureColor"] = {
				},
				["settings"] = {
					["bgFile"] = "Interface\\Tooltips\\UI-Tooltip-Background",
					["edgeFile"] = "Interface\\Tooltips\\UI-Tooltip-Border",
					["tile"] = false,
					["edgeSize"] = 16,
					["insets"] = {
						["top"] = 4,
						["right"] = 4,
						["left"] = 4,
						["bottom"] = 4,
					},
				},
				["borderColor"] = {
				},
				["scale"] = 1,
			},
			["hideBlizzard"] = true,
		},
		["zonetext"] = {
			["bgColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["ping"] = {
			["showPing"] = true,
			["showAt"] = "map",
		},
	},
	["presets"] = {
	},
	["Toshlongboy-Eldre'Thalas"] = "global",
	["Yorman-Kil'jaeden"] = {
		["core"] = {
			["clamp"] = true,
			["lock"] = false,
			["northTag"] = true,
			["shape"] = "Interface\\AddOns\\SexyMap\\shapes\\circle.tga",
			["autoZoom"] = 5,
			["rightClickToConfig"] = true,
		},
		["coordinates"] = {
			["enabled"] = false,
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
			},
			["xOffset"] = 0,
			["updateRate"] = 1,
			["backgroundColor"] = {
			},
			["yOffset"] = 10,
		},
		["movers"] = {
			["enabled"] = false,
			["framePositions"] = {
			},
			["lock"] = false,
		},
		["buttons"] = {
			["radius"] = 10,
			["lockDragging"] = false,
			["allowDragging"] = true,
			["visibilitySettings"] = {
				["MinimapZoomIn"] = "never",
				["MinimapZoneTextButton"] = "always",
				["TimeManagerClockButton"] = "always",
				["QueueStatusMinimapButton"] = "always",
				["GarrisonLandingPageMinimapButton"] = "always",
				["MiniMapMailFrame"] = "always",
				["MinimapZoomOut"] = "never",
				["MiniMapWorldMapButton"] = "never",
			},
			["dragPositions"] = {
			},
			["controlVisibility"] = true,
		},
		["clock"] = {
			["bgColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["borders"] = {
			["applyPreset"] = false,
			["borders"] = {
				{
					["name"] = "Rune 1",
					["r"] = 0.3098039215686275,
					["scale"] = 1.4,
					["rotSpeed"] = -30,
					["g"] = 0.4784313725490196,
					["texture"] = 165630,
				}, -- [1]
				{
					["a"] = 0.3799999952316284,
					["rotSpeed"] = 60,
					["r"] = 0.196078431372549,
					["scale"] = 2.1,
					["name"] = "Rune 2",
					["g"] = 0.2901960784313725,
					["texture"] = 165638,
				}, -- [2]
				{
					["a"] = 0.3,
					["name"] = "Fade",
					["r"] = 0,
					["scale"] = 1.6,
					["g"] = 0.2235294117647059,
					["texture"] = 167062,
				}, -- [3]
			},
			["backdrop"] = {
				["show"] = false,
				["textureColor"] = {
				},
				["settings"] = {
					["bgFile"] = "Interface\\Tooltips\\UI-Tooltip-Background",
					["edgeFile"] = "Interface\\Tooltips\\UI-Tooltip-Border",
					["tile"] = false,
					["edgeSize"] = 16,
					["insets"] = {
						["top"] = 4,
						["right"] = 4,
						["left"] = 4,
						["bottom"] = 4,
					},
				},
				["borderColor"] = {
				},
				["scale"] = 1,
			},
			["hideBlizzard"] = true,
		},
		["zonetext"] = {
			["bgColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["ping"] = {
			["showPing"] = true,
			["showAt"] = "map",
		},
	},
	["Daggny-Frostwolf"] = {
		["core"] = {
			["clamp"] = true,
			["lock"] = false,
			["rightClickToConfig"] = true,
			["autoZoom"] = 5,
			["shape"] = "Interface\\AddOns\\SexyMap\\shapes\\circle.tga",
			["northTag"] = true,
		},
		["coordinates"] = {
			["enabled"] = false,
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
			},
			["xOffset"] = 0,
			["backgroundColor"] = {
			},
			["updateRate"] = 1,
			["yOffset"] = 10,
		},
		["ping"] = {
			["showPing"] = true,
			["showAt"] = "map",
		},
		["buttons"] = {
			["radius"] = 10,
			["lockDragging"] = false,
			["allowDragging"] = true,
			["visibilitySettings"] = {
				["MinimapZoomIn"] = "never",
				["MinimapZoneTextButton"] = "always",
				["MiniMapWorldMapButton"] = "never",
				["QueueStatusMinimapButton"] = "always",
				["GarrisonLandingPageMinimapButton"] = "always",
				["MinimapZoomOut"] = "never",
				["MiniMapMailFrame"] = "always",
				["TimeManagerClockButton"] = "always",
			},
			["dragPositions"] = {
			},
			["controlVisibility"] = true,
		},
		["clock"] = {
			["bgColor"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["borders"] = {
			["applyPreset"] = false,
			["borders"] = {
				{
					["name"] = "Rune 1",
					["r"] = 0.3098039215686275,
					["scale"] = 1.4,
					["rotSpeed"] = -30,
					["g"] = 0.4784313725490196,
					["texture"] = 165630,
				}, -- [1]
				{
					["a"] = 0.3799999952316284,
					["rotSpeed"] = 60,
					["r"] = 0.196078431372549,
					["scale"] = 2.1,
					["name"] = "Rune 2",
					["g"] = 0.2901960784313725,
					["texture"] = 165638,
				}, -- [2]
				{
					["a"] = 0.3,
					["name"] = "Fade",
					["r"] = 0,
					["scale"] = 1.6,
					["g"] = 0.2235294117647059,
					["texture"] = 167062,
				}, -- [3]
			},
			["backdrop"] = {
				["show"] = false,
				["textureColor"] = {
				},
				["settings"] = {
					["bgFile"] = "Interface\\Tooltips\\UI-Tooltip-Background",
					["edgeFile"] = "Interface\\Tooltips\\UI-Tooltip-Border",
					["tile"] = false,
					["edgeSize"] = 16,
					["insets"] = {
						["top"] = 4,
						["right"] = 4,
						["left"] = 4,
						["bottom"] = 4,
					},
				},
				["borderColor"] = {
				},
				["scale"] = 1,
			},
			["hideBlizzard"] = true,
		},
		["zonetext"] = {
			["bgColor"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["movers"] = {
			["enabled"] = false,
			["framePositions"] = {
			},
			["lock"] = false,
		},
	},
	["Toshdk-Kil'jaeden"] = "global",
	["Toshlongboyr-Eldre'Thalas"] = {
		["core"] = {
			["clamp"] = true,
			["lock"] = false,
			["rightClickToConfig"] = true,
			["autoZoom"] = 5,
			["shape"] = "Interface\\AddOns\\SexyMap\\shapes\\circle.tga",
			["northTag"] = true,
		},
		["coordinates"] = {
			["enabled"] = false,
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
			},
			["xOffset"] = 0,
			["backgroundColor"] = {
			},
			["updateRate"] = 1,
			["yOffset"] = 10,
		},
		["ping"] = {
			["showPing"] = true,
			["showAt"] = "map",
		},
		["buttons"] = {
			["radius"] = 10,
			["lockDragging"] = false,
			["allowDragging"] = true,
			["visibilitySettings"] = {
				["MinimapZoomIn"] = "never",
				["MinimapZoneTextButton"] = "always",
				["MiniMapWorldMapButton"] = "never",
				["QueueStatusMinimapButton"] = "always",
				["GarrisonLandingPageMinimapButton"] = "always",
				["MinimapZoomOut"] = "never",
				["MiniMapMailFrame"] = "always",
				["TimeManagerClockButton"] = "always",
			},
			["dragPositions"] = {
			},
			["controlVisibility"] = true,
		},
		["clock"] = {
			["bgColor"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["borders"] = {
			["applyPreset"] = false,
			["borders"] = {
				{
					["name"] = "Rune 1",
					["r"] = 0.3098039215686275,
					["scale"] = 1.4,
					["rotSpeed"] = -30,
					["g"] = 0.4784313725490196,
					["texture"] = 165630,
				}, -- [1]
				{
					["a"] = 0.3799999952316284,
					["rotSpeed"] = 60,
					["r"] = 0.196078431372549,
					["scale"] = 2.1,
					["name"] = "Rune 2",
					["g"] = 0.2901960784313725,
					["texture"] = 165638,
				}, -- [2]
				{
					["a"] = 0.3,
					["name"] = "Fade",
					["r"] = 0,
					["scale"] = 1.6,
					["g"] = 0.2235294117647059,
					["texture"] = 167062,
				}, -- [3]
			},
			["backdrop"] = {
				["show"] = false,
				["textureColor"] = {
				},
				["settings"] = {
					["bgFile"] = "Interface\\Tooltips\\UI-Tooltip-Background",
					["edgeFile"] = "Interface\\Tooltips\\UI-Tooltip-Border",
					["tile"] = false,
					["edgeSize"] = 16,
					["insets"] = {
						["top"] = 4,
						["right"] = 4,
						["left"] = 4,
						["bottom"] = 4,
					},
				},
				["borderColor"] = {
				},
				["scale"] = 1,
			},
			["hideBlizzard"] = true,
		},
		["zonetext"] = {
			["bgColor"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["movers"] = {
			["enabled"] = false,
			["framePositions"] = {
			},
			["lock"] = false,
		},
	},
	["Toshdruid-Area 52"] = "global",
}
