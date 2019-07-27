
PlaterDB = {
	["profileKeys"] = {
		["Toshpal - Kil'jaeden"] = "PixelPerfect",
		["Daggny - Frostwolf"] = "Default",
		["Tosku - Kil'jaeden"] = "PixelPerfect",
		["Yorman - Kil'jaeden"] = "PixelPerfect",
		["Tosh - Kil'jaeden"] = "PixelPerfect",
		["Toshmonk - Kil'jaeden"] = "Default",
		["Zallie - Frostwolf"] = "Default",
		["Toshaman - Kil'jaeden"] = "PixelPerfect",
		["Koutetsu - Frostwolf"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["aura_height"] = 14,
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 156,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
					["NpcNames"] = {
						"135029", -- [1]
						"134388", -- [2]
						"134612", -- [3]
						"133361", -- [4]
						"136330", -- [5]
						"130896", -- [6]
						"129758", -- [7]
						"Healing Tide Totem", -- [8]
						"131009", -- [9]
					},
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 3,
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["Name"] = "Unit - Important [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1537884697,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["Icon"] = 135996,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Time"] = 1548811052,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 400,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["NpcNames"] = {
					},
					["Desc"] = "Add the buff name in the trigger box.",
					["Name"] = "Aura - Buff Alert [Plater]",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 388,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Bombad�o-Azralon",
					["ScriptType"] = 2,
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Very Important [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						257785, -- [1]
						267237, -- [2]
						266951, -- [3]
						267273, -- [4]
						267433, -- [5]
						263066, -- [6]
						255577, -- [7]
						255371, -- [8]
					},
					["PlaterCore"] = 1,
					["Time"] = 1538066775,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 324,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Bombad�o-Azralon",
					["ScriptType"] = 2,
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["Name"] = "Explosion Affix M+ [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["PlaterCore"] = 1,
					["Time"] = 1540663131,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["Icon"] = 2175503,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 232,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["ScriptType"] = 1,
					["Desc"] = "Add the debuff name in the trigger box.",
					["Name"] = "Aura - Debuff Alert [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1538429739,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 567,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["ScriptType"] = 2,
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Big Alert [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						257069, -- [3]
						274569, -- [4]
						278020, -- [5]
						261635, -- [6]
						272700, -- [7]
						280404, -- [8]
						268030, -- [9]
						265368, -- [10]
						263891, -- [11]
						264520, -- [12]
						265407, -- [13]
						278567, -- [14]
						278602, -- [15]
						258128, -- [16]
						257791, -- [17]
						258938, -- [18]
						265089, -- [19]
						272183, -- [20]
						256060, -- [21]
						257397, -- [22]
						257899, -- [23]
						269972, -- [24]
						270901, -- [25]
						270492, -- [26]
						268129, -- [27]
						268709, -- [28]
						263215, -- [29]
						268797, -- [30]
						262540, -- [31]
						262554, -- [32]
						253517, -- [33]
						255041, -- [34]
						252781, -- [35]
						250368, -- [36]
						258777, -- [37]
					},
					["PlaterCore"] = 1,
					["Time"] = 1538237586,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --https://www.wowhead.com/spell=253583/fiery-enchant\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 376,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["ScriptType"] = 2,
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Small Alert [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["SpellIds"] = {
						275192, -- [1]
						265912, -- [2]
						274438, -- [3]
						268317, -- [4]
						268375, -- [5]
						276767, -- [6]
						264105, -- [7]
						265876, -- [8]
						270464, -- [9]
						266106, -- [10]
						272180, -- [11]
						278961, -- [12]
						278755, -- [13]
						265468, -- [14]
						256405, -- [15]
						256897, -- [16]
						264101, -- [17]
						280604, -- [18]
						268702, -- [19]
						281621, -- [20]
						262515, -- [21]
						255824, -- [22]
						253583, -- [23]
						250096, -- [24]
					},
					["PlaterCore"] = 1,
					["Time"] = 1539201768,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 106,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["PlaterCore"] = 1,
					["Time"] = 1538256464,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
				}, -- [8]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Time"] = 1548811057,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["Icon"] = 135024,
					["Enabled"] = true,
					["Revision"] = 60,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["Name"] = "Color Change [Plater]",
				}, -- [9]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Time"] = 1548811044,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["Enabled"] = true,
					["Revision"] = 158,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Name"] = "Aura - Blink by Time Left [Plater]",
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["Name"] = "Aura - Border Color [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1543680853,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["Icon"] = 133006,
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 131,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Author"] = "Celian-Sylvanas",
					["ScriptType"] = 3,
					["Desc"] = "Show the energy amount above the nameplate",
					["Name"] = "UnitPower [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1539015649,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["Icon"] = 136048,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
				}, -- [12]
				{
					["Enabled"] = true,
					["Revision"] = 171,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 2,
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["SpellIds"] = {
						255952, -- [1]
						257426, -- [2]
						274400, -- [3]
						272609, -- [4]
						269843, -- [5]
						269029, -- [6]
						272827, -- [7]
						269266, -- [8]
						263912, -- [9]
						264923, -- [10]
						258864, -- [11]
						256955, -- [12]
						265540, -- [13]
						260793, -- [14]
						270003, -- [15]
						270507, -- [16]
						257337, -- [17]
						268415, -- [18]
						275907, -- [19]
						268865, -- [20]
						260669, -- [21]
						260280, -- [22]
						253239, -- [23]
						265541, -- [24]
						250258, -- [25]
					},
					["PlaterCore"] = 1,
					["Time"] = 1539201849,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
				}, -- [13]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Time"] = 1548923043,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = 1029718,
					["Enabled"] = true,
					["Revision"] = 196,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
						282209, -- [3]
					},
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Desc"] = "Show above the nameplate who is the player fixated",
					["Name"] = "Fixate [Plater]",
				}, -- [14]
				{
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    if envTable.FixateTarget then\n        envTable.FixateTarget:SetText (\"\")\n        envTable.FixateTarget:Hide()\n    end\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1549380637,
					["Temp_ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [\n            [268074] = \"Dark Purpose\", --G'huun Mythic Add\n            [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n            [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n            [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n            [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n            [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n            [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n            [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n            --[] = \"\" --       \n            \n        }\n        \n        --build the list with localized spell names\n        envTable.FixateDebuffs = {}\n        for spellID, enUSSpellName in pairs (spellList) do\n            local localizedSpellName = GetSpellInfo (spellID)\n            envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n        end\n        \n        --debug - smuggled crawg\n        envTable.FixateDebuffs [\"Jagged Maw\"] = true\n        \n    end\n    \n    --[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n\n",
					["Icon"] = 841383,
					["Enabled"] = true,
					["Revision"] = 201,
					["Author"] = "Tecno-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    if envTable.FixateTarget then\n        envTable.FixateTarget:SetText (\"\")\n        envTable.FixateTarget:Hide()\n    end\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n\n\n",
					["NpcNames"] = {
						"smuggled crawg", -- [1]
						"sergeant bainbridge", -- [2]
						"blacktooth scrapper", -- [3]
						"irontide grenadier", -- [4]
						"feral bloodswarmer", -- [5]
						"earthrager", -- [6]
						"crawler mine", -- [7]
						"rezan", -- [8]
						"136461", -- [9]
					},
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["Name"] = "Fixate On You [Plater]",
				}, -- [15]
			},
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 50,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1547392935,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["Name"] = "Color Automation [Plater]",
				}, -- [1]
				{
					["Enabled"] = true,
					["Revision"] = 57,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Time"] = 1548810968,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Nameplate Updated",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2280, -- [1]
							["Enabled"] = true,
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["Name"] = "Stormwall Encounter [Plater]",
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 74,
					["HooksTemp"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1548811013,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 1990989,
					["Name"] = "Hide Neutral Units [Plater]",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 223,
					["HooksTemp"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for the Jaina encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
					},
					["Time"] = 1557431240,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2281, -- [1]
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["Name"] = "Jaina Encounter [Plater]",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
					},
					["Time"] = 1547406548,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 135358,
					["Name"] = "Execute Range [Plater]",
				}, -- [5]
				{
					["Enabled"] = false,
					["Revision"] = 224,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1548811389,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["Name"] = "Attacking Specific Unit [Plater]",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 103,
					["HooksTemp"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)\n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)    \n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.4 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\nend\n\n\n\n\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the transparency of nameplates that isn't your target. You might want to disable 'Use Range Check' in the General Settings tab when using this hook.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)\n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)    \n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.4 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1548810956,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 132177,
					["Name"] = "No Target Alpha [Plater]",
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 89,
					["HooksTemp"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["Time"] = 1548811034,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Nameplate Added",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 574574,
					["Name"] = "Reorder Nameplate [Plater]",
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 177,
					["HooksTemp"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Author"] = "Tecno-Azralon",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Time"] = 1548811010,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 133689,
					["Name"] = "Extra Border [Plater]",
				}, -- [9]
				{
					["Enabled"] = false,
					["Revision"] = 189,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1548354524,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
							[103] = true,
							["Enabled"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 135426,
					["Name"] = "Combo Points [Plater]",
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 183,
					["HooksTemp"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Time"] = 1548811018,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 1966587,
					["Name"] = "Players Targeting a Target [Plater]",
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1552354619,
					["PlaterCore"] = 1,
					["Name"] = "Current Target Color [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 878211,
					["LastHookEdited"] = "",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 239,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 1\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
					},
					["Time"] = 1548004596,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Name"] = "Aura Reorder [Plater]",
				}, -- [13]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1549937733,
					["PlaterCore"] = 1,
					["Name"] = "Don't Have Aura [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 136207,
					["LastHookEdited"] = "",
				}, -- [14]
				{
					["Enabled"] = true,
					["Revision"] = 37,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["Time"] = 1549827281,
					["PlaterCore"] = 1,
					["Name"] = "M+ Bwonsamdi Reaping",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
							["Enabled"] = true,
							["party"] = true,
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
							[117] = true,
							["Enabled"] = true,
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 2446016,
					["LastHookEdited"] = "",
				}, -- [15]
			},
			["first_run3"] = true,
			["aura_cache_by_name"] = {
				["mark of prey"] = {
					230381, -- [1]
					282208, -- [2]
					282209, -- [3]
				},
			},
			["aura_width"] = 22,
			["indicator_raidmark_scale"] = 0.999999940395355,
			["cast_statusbar_spark_alpha"] = 0.8299999833107,
			["pet_width_scale"] = 0.949999988079071,
			["plate_config"] = {
				["player"] = {
					["click_through"] = true,
					["castbar_enabled"] = false,
					["spellpercent_text_enabled"] = false,
				},
				["friendlyplayer"] = {
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["level_text_size"] = 8,
					["big_actortitle_text_font"] = "Friz Quadrata TT",
					["cast"] = {
						140, -- [1]
						10, -- [2]
					},
					["percent_text_ooc"] = true,
					["big_actortitle_text_size"] = 10,
					["percent_text_show_decimals"] = false,
					["big_actortitle_text_shadow_color_offset"] = {
						1, -- [1]
						-1, -- [2]
					},
					["cast_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["spellname_text_outline"] = "OUTLINE",
					["big_actorname_text_shadow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["big_actortitle_text_shadow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["percent_text_anchor"] = {
						["side"] = 11,
					},
					["level_text_font"] = "Friz Quadrata TT",
					["actorname_text_font"] = "Friz Quadrata TT",
					["big_actorname_text_outline"] = "OUTLINE",
					["big_actorname_text_shadow_color_offset"] = {
						1, -- [1]
						-1, -- [2]
					},
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["mana_incombat"] = {
						nil, -- [1]
						4, -- [2]
					},
					["big_actorname_text_font"] = "Friz Quadrata TT",
					["all_names"] = true,
					["mana"] = {
						nil, -- [1]
						4, -- [2]
					},
					["percent_show_health"] = true,
					["percent_text_enabled"] = true,
					["big_actortitle_text_outline"] = "OUTLINE",
					["actorname_text_spacing"] = 7,
					["percent_text_font"] = "Friz Quadrata TT",
					["buff_frame_y_offset"] = 0,
					["big_actorname_text_size"] = 10,
					["quest_enabled"] = true,
					["spellpercent_text_size"] = 8,
					["percent_text_size"] = 8,
					["health_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["spellname_text_size"] = 12,
					["health"] = {
						140, -- [1]
						10, -- [2]
					},
					["percent_text_alpha"] = 0.799999952316284,
					["actorname_text_anchor"] = {
						["side"] = 1,
					},
					["spellpercent_text_enabled"] = true,
					["actorname_text_size"] = 8,
					["level_text_enabled"] = true,
				},
				["enemynpc"] = {
					["actorname_text_font"] = "Friz Quadrata TT",
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["actorname_text_size"] = 8,
					["big_actortitle_text_font"] = "Friz Quadrata TT",
					["cast"] = {
						140, -- [1]
					},
					["spellpercent_text_size"] = 8,
					["actorname_text_outline"] = "OUTLINE",
					["actorname_text_anchor"] = {
						["side"] = 1,
					},
					["percent_text_size"] = 8,
					["percent_text_alpha"] = 0.799999952316284,
					["percent_text_font"] = "Friz Quadrata TT",
					["cast_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["health_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["health"] = {
						140, -- [1]
						10, -- [2]
					},
					["actorname_text_spacing"] = 7,
					["percent_text_show_decimals"] = false,
					["percent_text_anchor"] = {
						["side"] = 11,
					},
					["level_text_font"] = "Friz Quadrata TT",
					["big_actorname_text_font"] = "Friz Quadrata TT",
				},
				["enemyplayer"] = {
					["actorname_text_font"] = "Friz Quadrata TT",
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["level_text_size"] = 8,
					["big_actortitle_text_font"] = "Friz Quadrata TT",
					["cast"] = {
						140, -- [1]
					},
					["all_names"] = true,
					["big_actortitle_text_size"] = 10,
					["actorname_text_outline"] = "OUTLINE",
					["actorname_text_anchor"] = {
						["side"] = 1,
					},
					["percent_text_alpha"] = 0.799999952316284,
					["percent_text_size"] = 8,
					["actorname_text_spacing"] = 7,
					["percent_text_font"] = "Friz Quadrata TT",
					["spellpercent_text_size"] = 8,
					["percent_text_show_decimals"] = false,
					["cast_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["spellname_text_outline"] = "OUTLINE",
					["actorname_text_size"] = 8,
					["big_actorname_text_size"] = 10,
					["health_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["health"] = {
						140, -- [1]
						10, -- [2]
					},
					["spellname_text_size"] = 12,
					["quest_enabled"] = true,
					["percent_text_anchor"] = {
						["side"] = 11,
					},
					["level_text_font"] = "Friz Quadrata TT",
					["big_actorname_text_font"] = "Friz Quadrata TT",
				},
				["friendlynpc"] = {
					["actorname_text_spacing"] = 9,
					["big_actortitle_text_size"] = 9,
				},
			},
			["aura_tracker"] = {
				["buff_tracked"] = {
					[209859] = true,
				},
			},
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Unit - Important"] = 5,
				["Aura Border Color"] = 1,
				["Cast - Very Important"] = 2,
				["Explosion Affix M+"] = 3,
				["Aura - Debuff Alert"] = 3,
				["Unit Power"] = 1,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Blink Time Left"] = 1,
				["Color Change"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["cast_statusbar_fadeout_time"] = 0.499999970197678,
			["aura_timer_text_size"] = 12,
			["first_run2"] = true,
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.1",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateSelfTopInset"] = "0.5",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateGlobalScale"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateMinScale"] = "1",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateOtherTopInset"] = "0.085",
				["nameplateSelfScale"] = "1",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateSelfAlpha"] = "1",
				["NamePlateHorizontalScale"] = "1",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateShowSelf"] = "0",
				["NamePlateVerticalScale"] = "1",
			},
			["minor_width_scale"] = 0.899999976158142,
			["cast_statusbar_texture"] = "ElvUI Norm",
			["cast_statusbar_spark_texture"] = "Interface\\AddOns\\Plater\\images\\spark8",
			["npc_cache"] = {
				[33343] = {
					"XS-013 Scrapbot", -- [1]
					"Ulduar", -- [2]
				},
				[134012] = {
					"Taskmaster Askari", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[147439] = {
					"Molten Hound", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129601] = {
					"Cutwater Harpooner", -- [1]
					"Freehold", -- [2]
				},
				[144754] = {
					"Fa'thuul the Feared", -- [1]
					"Crucible of Storms", -- [2]
				},
				[139000] = {
					"Elder Yur", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[33823] = {
					"Twilight Slayer", -- [1]
					"Ulduar", -- [2]
				},
				[147440] = {
					"Blazing Fireguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138489] = {
					"Shadow of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[144755] = {
					"Zaxasj the Speaker", -- [1]
					"Crucible of Storms", -- [2]
				},
				[33983] = {
					"Constrictor Tentacle", -- [1]
					"Ulduar", -- [2]
				},
				[139001] = {
					"Wildlands Ursa", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[33088] = {
					"Iron Roots", -- [1]
					"Ulduar", -- [2]
				},
				[129602] = {
					"Irontide Enforcer", -- [1]
					"Freehold", -- [2]
				},
				[147825] = {
					"7th Legion Medic", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140792] = {
					"Breakbeak Bonepicker", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[120651] = {
					"Explosives", -- [1]
					"Freehold", -- [2]
				},
				[139002] = {
					"Wildlands Totemic", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[131009] = {
					"Spirit of Gold", -- [1]
					"Atal'Dazar", -- [2]
				},
				[33344] = {
					"XM-024 Pummeller", -- [1]
					"Ulduar", -- [2]
				},
				[136829] = {
					"Witherbranch Axe Thrower", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[139003] = {
					"Wildlands Warrior", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[135167] = {
					"Spectral Berserker", -- [1]
					"Kings' Rest", -- [2]
				},
				[147827] = {
					"7th Legion Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136830] = {
					"Witherbranch Headhunter", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[139004] = {
					"Wildlands Shaman", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[33824] = {
					"Twilight Shadowblade", -- [1]
					"Ulduar", -- [2]
				},
				[32865] = {
					"Thorim", -- [1]
					"Ulduar", -- [2]
				},
				[138493] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[147828] = {
					"7th Legion Cavalier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136831] = {
					"Witherbranch Witch Doctor", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[139005] = {
					"Wildlands Tracker", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[145399] = {
					"Wild Starcaller", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[33121] = {
					"Iron Construct", -- [1]
					"Ulduar", -- [2]
				},
				[139006] = {
					"Wildlands Furbolg", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[126919] = {
					"Irontide Stormcaller", -- [1]
					"Freehold", -- [2]
				},
				[126983] = {
					"Harlan Sweete", -- [1]
					"Freehold", -- [2]
				},
				[127111] = {
					"Irontide Oarsman", -- [1]
					"Freehold", -- [2]
				},
				[138623] = {
					"Amathet Archer", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[136833] = {
					"Witherbranch Venom Priest", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[130436] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[145273] = {
					"The Hand of In'zashi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146552] = {
					"Kul Tiran Tideweaver", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137473] = {
					"Guard Captain Atu", -- [1]
					"Kings' Rest", -- [2]
				},
				[138624] = {
					"Amathet Champion", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134788] = {
					"Spineclaw Rockshell", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[127879] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[145274] = {
					"Yalat's Bulwark", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145402] = {
					"Frenzied Wildheart", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146553] = {
					"Kul Tiran Strongarm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137474] = {
					"King Timalji", -- [1]
					"Kings' Rest", -- [2]
				},
				[138625] = {
					"Amathet Enforcer", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33985] = {
					"Corruptor Tentacle", -- [1]
					"Ulduar", -- [2]
				},
				[134789] = {
					"Monstrous Spineclaw", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[130437] = {
					"Mine Rat", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[128455] = {
					"T'lonja", -- [1]
					"Atal'Dazar", -- [2]
				},
				[138626] = {
					"Amathet Zealot", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[34273] = {
					"XB-488 Disposalbot", -- [1]
					"Ulduar", -- [2]
				},
				[33346] = {
					"XE-321 Boombot", -- [1]
					"Ulduar", -- [2]
				},
				[144637] = {
					"Grong", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136837] = {
					"Venomancer Ant'su", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[142336] = {
					"Pygmy Octopus", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138628] = {
					"Amathet Priest", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146940] = {
					"Primordial Mindbender", -- [1]
					"Crucible of Storms", -- [2]
				},
				[136838] = {
					"Zgordo the Brutalizer", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[137989] = {
					"Embalming Fluid", -- [1]
					"Kings' Rest", -- [2]
				},
				[32867] = {
					"Steelbreaker", -- [1]
					"Ulduar", -- [2]
				},
				[137478] = {
					"Queen Wasi", -- [1]
					"Kings' Rest", -- [2]
				},
				[144767] = {
					"Gonk's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140292] = {
					"Snowfur Alpha", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138630] = {
					"Cleric Izzad", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[150139] = {
					"K'thxx the Void Hunter", -- [1]
					"Uldir Scenario", -- [2]
				},
				[140293] = {
					"Snowfur Snarler", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138631] = {
					"Pathfinder Qadim", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135818] = {
					"Gust Soldier", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146816] = {
					"Sir Barton Brigham", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[147967] = {
					"7th Legion Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135819] = {
					"Living Tornado", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140295] = {
					"Snowfur Pup", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[148607] = {
					"Kal'ia Pa'kuaya", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147968] = {
					"Agitated Azerite", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[131728] = {
					"Raul the Tenacious", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[134158] = {
					"Shadow-Borne Champion", -- [1]
					"Kings' Rest", -- [2]
				},
				[129802] = {
					"Earthrager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[34275] = {
					"Ward of Life", -- [1]
					"Ulduar", -- [2]
				},
				[137484] = {
					"King A'akul", -- [1]
					"Kings' Rest", -- [2]
				},
				[129227] = {
					"Azerokk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134799] = {
					"Fathomclaw", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33572] = {
					"Steelforged Defender", -- [1]
					"Ulduar", -- [2]
				},
				[129547] = {
					"Blacktooth Knuckleduster", -- [1]
					"Freehold", -- [2]
				},
				[137485] = {
					"Bloodsworn Agent", -- [1]
					"Kings' Rest", -- [2]
				},
				[127757] = {
					"Reanimated Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[148483] = {
					"Ancestral Avenger", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148611] = {
					"Yoru'cha", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137486] = {
					"Queen Patlaa", -- [1]
					"Kings' Rest", -- [2]
				},
				[32933] = {
					"Left Arm", -- [1]
					"Ulduar", -- [2]
				},
				[33988] = {
					"Immortal Guardian", -- [1]
					"Ulduar", -- [2]
				},
				[132755] = {
					"Breakbeak Scavenger", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[129548] = {
					"Blacktooth Brute", -- [1]
					"Freehold", -- [2]
				},
				[130635] = {
					"Stonefury", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[137487] = {
					"Skeletal Hunting Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[136592] = {
					"Flynn Fairwind", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[149508] = {
					"Ice Blocked Nathanos", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148613] = {
					"Commander Broadside", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[127119] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[132885] = {
					"Air Elemental", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[137233] = {
					"ElChapo", -- [1]
					"Crucible of Storms", -- [2]
				},
				[148614] = {
					"Kul Tiran Cannoneer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146185] = {
					"Firesting Drone", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[126928] = {
					"Irontide Corsair", -- [1]
					"Freehold", -- [2]
				},
				[148615] = {
					"Div'yane", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139536] = {
					"Zara'thik Drone", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[32934] = {
					"Right Arm", -- [1]
					"Ulduar", -- [2]
				},
				[145035] = {
					"Swifttail Courser", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[146186] = {
					"Firesting Warrior", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[34085] = {
					"Forge Construct", -- [1]
					"Ulduar", -- [2]
				},
				[148488] = {
					"Unliving Augur", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33350] = {
					"Mimiron", -- [1]
					"Ulduar", -- [2]
				},
				[122965] = {
					"Vol'kaal", -- [1]
					"Atal'Dazar", -- [2]
				},
				[146827] = {
					"Feral Dog", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[145932] = {
					"Celestra Brightmoon", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[135830] = {
					"Galefury", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[134935] = {
					"Mother Vishis", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[33670] = {
					"Aerial Command Unit", -- [1]
					"Ulduar", -- [2]
				},
				[146828] = {
					"Feral Pup", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[3527] = {
					"Healing Stream Totem", -- [1]
					"Crucible of Storms", -- [2]
				},
				[135192] = {
					"Honored Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[143760] = {
					"Bump-On-A-Log", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[34086] = {
					"Magma Rager", -- [1]
					"Ulduar", -- [2]
				},
				[129552] = {
					"Monzumi", -- [1]
					"Atal'Dazar", -- [2]
				},
				[130639] = {
					"Vicejaw Chomper", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140692] = {
					"Bloodbore", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[136984] = {
					"Reban", -- [1]
					"Kings' Rest", -- [2]
				},
				[148621] = {
					"Jek'kwa", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146831] = {
					"Kul Tiran Stormbringer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[133660] = {
					"BomBot 9000", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[127315] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134939] = {
					"Bristlethorn Maneater", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146320] = {
					"Prelate Za'lan", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[132126] = {
					"Gilded Priestess", -- [1]
					"Atal'Dazar", -- [2]
				},
				[148622] = {
					"Echo of Kimbul", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134940] = {
					"Bristlethorn Piercer", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[145298] = {
					"Feral Hungerer", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[122968] = {
					"Yazma", -- [1]
					"Atal'Dazar", -- [2]
				},
				[127124] = {
					"Freehold Barhand", -- [1]
					"Freehold", -- [2]
				},
				[134941] = {
					"Bristlethorn Spider", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146322] = {
					"Siegebreaker Roka", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134174] = {
					"Shadow-Borne Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[148624] = {
					"Echo of Pa'ku", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34183] = {
					"Arachnopod Destroyer", -- [1]
					"Ulduar", -- [2]
				},
				[33288] = {
					"Yogg-Saron", -- [1]
					"Ulduar", -- [2]
				},
				[148625] = {
					"Echo of Krag'wa", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[123289] = {
					"Sparkleshell Deathclaw", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[151056] = {
					"Varanq'ul the Mighty", -- [1]
					"Crucible of Storms", -- [2]
				},
				[33768] = {
					"Rubble", -- [1]
					"Ulduar", -- [2]
				},
				[136990] = {
					"Cursed Ankali", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[32873] = {
					"Ancient Rune Giant", -- [1]
					"Ulduar", -- [2]
				},
				[133666] = {
					"Dizzy's Decoy", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[123290] = {
					"Sparkleshell Clacker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146326] = {
					"Headhunter Gal'wana", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34184] = {
					"Clockwork Mechanic", -- [1]
					"Ulduar", -- [2]
				},
				[151058] = {
					"Bubbling Blood", -- [1]
					"Crucible of Storms", -- [2]
				},
				[145304] = {
					"Feral Strangler", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[122971] = {
					"Dazar'ai Juggernaut", -- [1]
					"Atal'Dazar", -- [2]
				},
				[151059] = {
					"Eternal Guardian", -- [1]
					"Crucible of Storms", -- [2]
				},
				[118176] = {
					"Thundershock", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[145305] = {
					"Feral Hulk", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[125977] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[32874] = {
					"Iron Ring Guard", -- [1]
					"Ulduar", -- [2]
				},
				[134437] = {
					"Medic Bot", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[32938] = {
					"Flash Freeze", -- [1]
					"Ulduar", -- [2]
				},
				[130325] = {
					"Deepsea Viseclaw", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[148120] = {
					"Kul Tiran Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34057] = {
					"Assault Bot", -- [1]
					"Ulduar", -- [2]
				},
				[144796] = {
					"High Tinker Mekkatorque", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147098] = {
					"Spirit of Xuen", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33354] = {
					"Corrupted Servitor", -- [1]
					"Ulduar", -- [2]
				},
				[122973] = {
					"Dazar'ai Confessor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[144286] = {
					"Asset Manager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129559] = {
					"Cutwater Duelist", -- [1]
					"Freehold", -- [2]
				},
				[140834] = {
					"Laughing Blaze", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[135975] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[32875] = {
					"Iron Honor Guard", -- [1]
					"Ulduar", -- [2]
				},
				[140835] = {
					"Scheming Flame", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[33355] = {
					"Misguided Nymph", -- [1]
					"Ulduar", -- [2]
				},
				[33387] = {
					"Writhing Lasher", -- [1]
					"Ulduar", -- [2]
				},
				[148893] = {
					"Tormented Soul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[33515] = {
					"Auriaya", -- [1]
					"Ulduar", -- [2]
				},
				[148254] = {
					"Frost Shard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148894] = {
					"Lost Soul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[140838] = {
					"Mischievous Flood", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[132910] = {
					"Bristlemane Squealer", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[32876] = {
					"Dark Rune Champion", -- [1]
					"Ulduar", -- [2]
				},
				[32908] = {
					"Captured Mercenary Captain", -- [1]
					"Ulduar", -- [2]
				},
				[140839] = {
					"Water Spirit", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[89] = {
					"Infernal", -- [1]
					"Crucible of Storms", -- [2]
				},
				[130521] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[147745] = {
					"The Indomitable", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33228] = {
					"Eonar's Gift", -- [1]
					"Ulduar", -- [2]
				},
				[140968] = {
					"Garnetback Striker", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[133935] = {
					"Animated Guardian", -- [1]
					"Kings' Rest", -- [2]
				},
				[33388] = {
					"Dark Rune Guardian", -- [1]
					"Ulduar", -- [2]
				},
				[135470] = {
					"Aka'ali the Conqueror", -- [1]
					"Kings' Rest", -- [2]
				},
				[139690] = {
					"Brineshell Seacaller", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[132913] = {
					"Island Ettin", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[130522] = {
					"Freehold Shipmate", -- [1]
					"Freehold", -- [2]
				},
				[139691] = {
					"Brineshell Squallshaper", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33772] = {
					"Faceless Horror", -- [1]
					"Ulduar", -- [2]
				},
				[130011] = {
					"Irontide Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[32845] = {
					"Hodir", -- [1]
					"Ulduar", -- [2]
				},
				[32877] = {
					"Dark Rune Warbringer", -- [1]
					"Ulduar", -- [2]
				},
				[135472] = {
					"Zanazal the Wise", -- [1]
					"Kings' Rest", -- [2]
				},
				[144807] = {
					"Ravenous Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140076] = {
					"Knucklebump Silverback", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[147621] = {
					"Dark Iron Vanguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[150818] = {
					"Disturbed Blood Globule", -- [1]
					"Uldir Scenario", -- [2]
				},
				[136880] = {
					"Bristlemane Quilboar", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140077] = {
					"Knucklebump Stomper", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[130012] = {
					"Irontide Ravager", -- [1]
					"Freehold", -- [2]
				},
				[133556] = {
					"Razak Ironsides", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[136881] = {
					"Bristlemane Pathfinder", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140078] = {
					"Knucklebump Gorilla", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[147495] = {
					"Rastari Enforcer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135475] = {
					"Kula the Butcher", -- [1]
					"Kings' Rest", -- [2]
				},
				[133557] = {
					"Razak Ironsides", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[136882] = {
					"Bristlemane Defender", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140335] = {
					"Nightscale Screecher", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[32878] = {
					"Dark Rune Evoker", -- [1]
					"Ulduar", -- [2]
				},
				[133430] = {
					"Venture Co. Mastermind", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136883] = {
					"Bristlemane Thorncaller", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140336] = {
					"Nightscale Wind Serpent", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33134] = {
					"Sara", -- [1]
					"Ulduar", -- [2]
				},
				[19668] = {
					"Shadowfiend", -- [1]
					"Crucible of Storms", -- [2]
				},
				[129758] = {
					"Irontide Grenadier", -- [1]
					"Freehold", -- [2]
				},
				[136884] = {
					"Bristlethorn Battleguard", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135989] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[147370] = {
					"Bladeguard Kaja", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140337] = {
					"Nightscale Hatchling", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146731] = {
					"Zombie Dust Totem", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146859] = {
					"Enslaved Rock Elemental", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[144941] = {
					"Akunda's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136885] = {
					"Bristlemane Bramble-Weaver", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[148522] = {
					"Ice Block", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144942] = {
					"Spark Bot", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33806] = {
					"Void Beast", -- [1]
					"Ulduar", -- [2]
				},
				[33838] = {
					"Enslaved Fire Elemental", -- [1]
					"Ulduar", -- [2]
				},
				[148907] = {
					"Prismatic Image", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34190] = {
					"Hardened Iron Golem", -- [1]
					"Ulduar", -- [2]
				},
				[140085] = {
					"Pinegraze Greatstag", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[134331] = {
					"King Rahu'ai", -- [1]
					"Kings' Rest", -- [2]
				},
				[133436] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146863] = {
					"Mistscorn Ravager", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140981] = {
					"Gnashing Horror", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140086] = {
					"Pinegraze Courser", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[124582] = {
					"Chasm-Hunter", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[146864] = {
					"Mistscorn Earthbinder", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140087] = {
					"Pinegraze Doe", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[147376] = {
					"Barrier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[122984] = {
					"Dazar'ai Colossus", -- [1]
					"Atal'Dazar", -- [2]
				},
				[140983] = {
					"Frostbore Burster", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140344] = {
					"Sky Viper", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33136] = {
					"Guardian of Yogg-Saron", -- [1]
					"Ulduar", -- [2]
				},
				[124583] = {
					"Garnetback Worm", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140984] = {
					"Frostbore Worm", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140089] = {
					"Gloamhoof the Elder", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[144693] = {
					"Manceroy Flamefist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140857] = {
					"Jadeflare", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[135231] = {
					"Spectral Brute", -- [1]
					"Kings' Rest", -- [2]
				},
				[129699] = {
					"Ludwig Von Tortollan", -- [1]
					"Freehold", -- [2]
				},
				[144822] = {
					"Golden Flametongue", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140858] = {
					"Pyrekin", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[122986] = {
					"Wild Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[32913] = {
					"Elder Ironbranch", -- [1]
					"Ulduar", -- [2]
				},
				[146102] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34192] = {
					"Boomer XP-500", -- [1]
					"Ulduar", -- [2]
				},
				[34224] = {
					"Ice Turret", -- [1]
					"Ulduar", -- [2]
				},
				[129828] = {
					"Brineshell Clacker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146103] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33329] = {
					"Heart of the Deconstructor", -- [1]
					"Ulduar", -- [2]
				},
				[149556] = {
					"Eternal Enforcer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146104] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135235] = {
					"Spectral Beastmaster", -- [1]
					"Kings' Rest", -- [2]
				},
				[146872] = {
					"Kachota the Exiled", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140095] = {
					"Mudsnout Gorer", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[32882] = {
					"Jormungar Behemoth", -- [1]
					"Ulduar", -- [2]
				},
				[32914] = {
					"Elder Stonebark", -- [1]
					"Ulduar", -- [2]
				},
				[136643] = {
					"Azerite Extractor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[128551] = {
					"Irontide Mastiff", -- [1]
					"Freehold", -- [2]
				},
				[34161] = {
					"Mechanostriker 54-A", -- [1]
					"Ulduar", -- [2]
				},
				[34193] = {
					"Clockwork Sapper", -- [1]
					"Ulduar", -- [2]
				},
				[33202] = {
					"Ancient Water Spirit", -- [1]
					"Ulduar", -- [2]
				},
				[136005] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146491] = {
					"Phantom of Retribution", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148665] = {
					"Rastari Royal Guard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140609] = {
					"Ravenous Mako", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[136006] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146492] = {
					"Phantom of Rage", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[151096] = {
					"Hati", -- [1]
					"Crucible of Storms", -- [2]
				},
				[146365] = {
					"Blazing Fireguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146493] = {
					"Phantom of Slaughter", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148667] = {
					"Rastari Punisher", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[32915] = {
					"Elder Brightleaf", -- [1]
					"Ulduar", -- [2]
				},
				[34034] = {
					"Swarming Guardian", -- [1]
					"Ulduar", -- [2]
				},
				[146366] = {
					"Molten Hound", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140356] = {
					"Brightscale Hatchling", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[33203] = {
					"Ancient Conservator", -- [1]
					"Ulduar", -- [2]
				},
				[151098] = {
					"Shadowy Appendage", -- [1]
					"Crucible of Storms", -- [2]
				},
				[133963] = {
					"Test Subject", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146367] = {
					"Char'golm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[127019] = {
					"Training Dummy", -- [1]
					"Freehold", -- [2]
				},
				[416] = {
					"Belgup", -- [1]
					"Crucible of Storms", -- [2]
				},
				[33651] = {
					"VX-001", -- [1]
					"Ulduar", -- [2]
				},
				[33715] = {
					"Charged Sphere", -- [1]
					"Ulduar", -- [2]
				},
				[136139] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146753] = {
					"Kul Tiran Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144963] = {
					"Kimbul's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34035] = {
					"Feral Defender", -- [1]
					"Ulduar", -- [2]
				},
				[146370] = {
					"Dark Iron Vanguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33236] = {
					"Steelforged Defender", -- [1]
					"Ulduar", -- [2]
				},
				[146371] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148673] = {
					"Vessel of Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149569] = {
					"Dazari Worshipper", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146756] = {
					"Energized Storm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[133585] = {
					"Dizzy Dina", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135759] = {
					"Earthwall Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[138061] = {
					"Venture Co. Longshoreman", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[32885] = {
					"Captured Mercenary Soldier", -- [1]
					"Ulduar", -- [2]
				},
				[140619] = {
					"Coastal Fathomjaw", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[134993] = {
					"Mchimba the Embalmer", -- [1]
					"Kings' Rest", -- [2]
				},
				[34164] = {
					"Mechagnome Battletank", -- [1]
					"Ulduar", -- [2]
				},
				[140620] = {
					"South Sea Stinger", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[135761] = {
					"Thundering Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[132820] = {
					"Mudsnout Piglet", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138063] = {
					"Posh Vacationer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133588] = {
					"Automatic Explosive Ejector", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134739] = {
					"Purification Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[33525] = {
					"Mangrove Ent", -- [1]
					"Ulduar", -- [2]
				},
				[138064] = {
					"Posh Vacationer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129517] = {
					"Reanimated Raptor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[126832] = {
					"Skycap'n Kragg", -- [1]
					"Freehold", -- [2]
				},
				[32886] = {
					"Dark Rune Acolyte", -- [1]
					"Ulduar", -- [2]
				},
				[32918] = {
					"Detonating Lasher", -- [1]
					"Ulduar", -- [2]
				},
				[135764] = {
					"Explosive Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[34069] = {
					"Molten Colossus", -- [1]
					"Ulduar", -- [2]
				},
				[132056] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[33110] = {
					"Dark Rune Acolyte", -- [1]
					"Ulduar", -- [2]
				},
				[34197] = {
					"Chamber Overseer", -- [1]
					"Ulduar", -- [2]
				},
				[135765] = {
					"Torrent Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[146251] = {
					"Sister Katherine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33430] = {
					"Guardian Lasher", -- [1]
					"Ulduar", -- [2]
				},
				[137940] = {
					"Safety Shark", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134232] = {
					"Hired Assassin", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[147787] = {
					"7th Legion Battlemage", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[133593] = {
					"Expert Technician", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146253] = {
					"Brother Joseph", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[32919] = {
					"Storm Lasher", -- [1]
					"Ulduar", -- [2]
				},
				[34134] = {
					"Winter Revenant", -- [1]
					"Ulduar", -- [2]
				},
				[146766] = {
					"Greater Serpent Totem", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138838] = {
					"Zara'thik Mantid", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[33271] = {
					"General Vezax", -- [1]
					"Ulduar", -- [2]
				},
				[145616] = {
					"King Rastakhan", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33431] = {
					"Forest Swarmer", -- [1]
					"Ulduar", -- [2]
				},
				[33527] = {
					"Nature's Blade", -- [1]
					"Ulduar", -- [2]
				},
				[146256] = {
					"Laminaria", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140630] = {
					"Ornate Puffer", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140631] = {
					"South Sea Ray", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[78116] = {
					"Water Elemental", -- [1]
					"Crucible of Storms", -- [2]
				},
				[128435] = {
					"Toxic Saurid", -- [1]
					"Atal'Dazar", -- [2]
				},
				[34135] = {
					"Winter Rumbler", -- [1]
					"Ulduar", -- [2]
				},
				[140632] = {
					"Scaleback Snapper", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140377] = {
					"Duneshell Harvester", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33432] = {
					"Leviathan Mk II", -- [1]
					"Ulduar", -- [2]
				},
				[33528] = {
					"Guardian of Life", -- [1]
					"Ulduar", -- [2]
				},
				[140250] = {
					"Pinegraze Stag", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140378] = {
					"Duneshell Broodwatcher", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[133345] = {
					"Feckless Assistant", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[32857] = {
					"Stormcaller Brundir", -- [1]
					"Ulduar", -- [2]
				},
				[138845] = {
					"Commander Jo'vak", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[136160] = {
					"King Dazar", -- [1]
					"Kings' Rest", -- [2]
				},
				[33113] = {
					"Flame Leviathan", -- [1]
					"Ulduar", -- [2]
				},
				[129231] = {
					"Rixxa Fluxflame", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[93349] = {
					"FelBane", -- [1]
					"Crucible of Storms", -- [2]
				},
				[129232] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[127799] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[133627] = {
					"Tally Zapnabber", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[151068] = {
					"Tentacled Voidpriest", -- [1]
					"Crucible of Storms", -- [2]
				},
				[151630] = {
					"Void Ichor", -- [1]
					"Crucible of Storms", -- [2]
				},
				[129600] = {
					"Bilge Rat Brinescale", -- [1]
					"Freehold", -- [2]
				},
				[130435] = {
					"Addled Thug", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[33293] = {
					"XT-002 Deconstructor", -- [1]
					"Ulduar", -- [2]
				},
				[33836] = {
					"Bomb Bot", -- [1]
					"Ulduar", -- [2]
				},
				[151041] = {
					"Etruvis the Vassal", -- [1]
					"Crucible of Storms", -- [2]
				},
				[129526] = {
					"Bilge Rat Swabby", -- [1]
					"Freehold", -- [2]
				},
				[130485] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[145371] = {
					"Uu'nat", -- [1]
					"Crucible of Storms", -- [2]
				},
				[149591] = {
					"Rastari Marksman", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[32872] = {
					"Runic Colossus", -- [1]
					"Ulduar", -- [2]
				},
				[130575] = {
					"Wandering Axebeak", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33488] = {
					"Saronite Vapors", -- [1]
					"Ulduar", -- [2]
				},
				[148631] = {
					"Unexploded Ordnance", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138369] = {
					"Footbomb Hooligan", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[126969] = {
					"Trothak", -- [1]
					"Freehold", -- [2]
				},
				[145372] = {
					"Wild Mooncaller", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[148569] = {
					"Breakwater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[143011] = {
					"Sandy Perch", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[147218] = {
					"Spirit of Gold", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148441] = {
					"Gnomish Gyro-Engineer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[132713] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131726] = {
					"Gunnolf the Ferocious", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[32906] = {
					"Freya", -- [1]
					"Ulduar", -- [2]
				},
				[129527] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[126918] = {
					"Irontide Crackshot", -- [1]
					"Freehold", -- [2]
				},
				[129471] = {
					"Deepsea Sandcrawler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[148442] = {
					"Gnomish Commando", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33722] = {
					"Storm Tempered Keeper", -- [1]
					"Ulduar", -- [2]
				},
				[33754] = {
					"Dark Rune Thunderer", -- [1]
					"Ulduar", -- [2]
				},
				[136934] = {
					"Weapons Tester", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[33818] = {
					"Twilight Adherent", -- [1]
					"Ulduar", -- [2]
				},
				[148443] = {
					"Defense-A-Bot", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135834] = {
					"Vile Cloud", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[130653] = {
					"Wanton Sapper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133482] = {
					"Crawler Mine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[147932] = {
					"Agitated Azershard", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[136470] = {
					"Refreshment Vendor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[145644] = {
					"Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[130400] = {
					"Irontide Crusher", -- [1]
					"Freehold", -- [2]
				},
				[147614] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[132893] = {
					"Fire Spirit", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[147933] = {
					"Geoactive Azershard", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[130743] = {
					"Adolescent Direhorn", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34234] = {
					"Runeforged Sentry", -- [1]
					"Ulduar", -- [2]
				},
				[150137] = {
					"Faceless Subduer", -- [1]
					"Uldir Scenario", -- [2]
				},
				[33214] = {
					"Mechanolift 304-A", -- [1]
					"Ulduar", -- [2]
				},
				[137029] = {
					"Ordnance Specialist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140334] = {
					"Nightscale Coilfang", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134251] = {
					"Seneschal M'bara", -- [1]
					"Kings' Rest", -- [2]
				},
				[33118] = {
					"Ignis the Furnace Master", -- [1]
					"Ulduar", -- [2]
				},
				[132797] = {
					"Pinegraze Calf", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[129553] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				[133943] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[140691] = {
					"Giant Dreadfang", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[130488] = {
					"Mech Jockey", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129529] = {
					"Blacktooth Scrapper", -- [1]
					"Freehold", -- [2]
				},
				[131727] = {
					"Fenrae the Cunning", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[131311] = {
					"Unleashed Azerite", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[129214] = {
					"Coin-Operated Crowd Pummeler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[147935] = {
					"Azergem Crawler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33755] = {
					"Dark Rune Ravager", -- [1]
					"Ulduar", -- [2]
				},
				[33216] = {
					"Mechagnome Pilot", -- [1]
					"Ulduar", -- [2]
				},
				[33819] = {
					"Twilight Frost Mage", -- [1]
					"Ulduar", -- [2]
				},
				[144680] = {
					"Frida Ironbellows", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129550] = {
					"Bilge Rat Padfoot", -- [1]
					"Freehold", -- [2]
				},
				[126424] = {
					"Coralback Surfcrawler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[137969] = {
					"Interment Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[147936] = {
					"Azergem Shardback", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[34191] = {
					"Trash", -- [1]
					"Ulduar", -- [2]
				},
				[134893] = {
					"Ironweb Spider", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[130489] = {
					"Dazarian Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33855] = {
					"Junk Bot", -- [1]
					"Ulduar", -- [2]
				},
				[135239] = {
					"Spectral Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[122970] = {
					"Shadowblade Stalker", -- [1]
					"Atal'Dazar", -- [2]
				},
				[136828] = {
					"Witherbranch Warrior", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140355] = {
					"Brightscale Screecher", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[34267] = {
					"Parts Recovery Technician", -- [1]
					"Ulduar", -- [2]
				},
				[134894] = {
					"Ironweb Spinner", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[34196] = {
					"Rune Etched Sentry", -- [1]
					"Ulduar", -- [2]
				},
				[122963] = {
					"Rezan", -- [1]
					"Atal'Dazar", -- [2]
				},
				[126845] = {
					"Captain Jolly", -- [1]
					"Freehold", -- [2]
				},
				[135406] = {
					"Animated Gold", -- [1]
					"Kings' Rest", -- [2]
				},
				[130298] = {
					"Water Elemental", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[147938] = {
					"Azergem Crystalback", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[128434] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134895] = {
					"Ironweb Weaver", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[136264] = {
					"Half-Finished Mummy", -- [1]
					"Kings' Rest", -- [2]
				},
				[132868] = {
					"Congealed Azerite", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[32930] = {
					"Kologarn", -- [1]
					"Ulduar", -- [2]
				},
				[33526] = {
					"Ironroot Lasher", -- [1]
					"Ulduar", -- [2]
				},
				[148194] = {
					"Icy Barrier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148962] = {
					"Ravenous Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[142324] = {
					"Bluefin Dolphin", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[144231] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[33820] = {
					"Twilight Pyromancer", -- [1]
					"Ulduar", -- [2]
				},
				[33186] = {
					"Razorscale", -- [1]
					"Ulduar", -- [2]
				},
				[34288] = {
					"Salvagebot Sawblade", -- [1]
					"Ulduar", -- [2]
				},
				[130024] = {
					"Soggy Shiprat", -- [1]
					"Freehold", -- [2]
				},
				[135204] = {
					"Spectral Hex Priest", -- [1]
					"Kings' Rest", -- [2]
				},
				[151653] = {
					"Void Tentacle", -- [1]
					"Uldir Scenario", -- [2]
				},
				[144690] = {
					"Mestrah", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140690] = {
					"Dreadfang Viper", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[144232] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[135322] = {
					"The Golden Serpent", -- [1]
					"Kings' Rest", -- [2]
				},
				[130404] = {
					"Vermin Trapper", -- [1]
					"Freehold", -- [2]
				},
				[122967] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
				},
				[131729] = {
					"Lyco", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[129788] = {
					"Irontide Bonesaw", -- [1]
					"Freehold", -- [2]
				},
				[148243] = {
					"Fallen Disciple", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[126847] = {
					"Captain Raoul", -- [1]
					"Freehold", -- [2]
				},
				[32916] = {
					"Snaplasher", -- [1]
					"Ulduar", -- [2]
				},
				[126848] = {
					"Captain Eudora", -- [1]
					"Freehold", -- [2]
				},
				[140354] = {
					"Brightscale Wind Serpent", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[139698] = {
					"Clattercraw the Oracle", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33699] = {
					"Storm Tempered Keeper", -- [1]
					"Ulduar", -- [2]
				},
				[135817] = {
					"Zephyr", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[144747] = {
					"Pa'ku's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134899] = {
					"Venomfang Lurker", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[129469] = {
					"Deepsea Crawler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[122969] = {
					"Zanchuli Witch-Doctor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[148582] = {
					"Stormbound Guardian", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33966] = {
					"Crusher Tentacle", -- [1]
					"Ulduar", -- [2]
				},
				[134157] = {
					"Shadow-Borne Warrior", -- [1]
					"Kings' Rest", -- [2]
				},
				[137713] = {
					"Big Money Crab", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[148617] = {
					"Akunda the Devout", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134900] = {
					"Venomfang Spider", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[134005] = {
					"Shalebiter", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146409] = {
					"Lady Jaina Proudmoore", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33237] = {
					"Ulduar Colossus", -- [1]
					"Ulduar", -- [2]
				},
				[134994] = {
					"Spectral Headhunter", -- [1]
					"Kings' Rest", -- [2]
				},
				[32926] = {
					"Flash Freeze", -- [1]
					"Ulduar", -- [2]
				},
				[145898] = {
					"Anointed Disciple", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[122972] = {
					"Dazar'ai Augur", -- [1]
					"Atal'Dazar", -- [2]
				},
				[138993] = {
					"Gurlack", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[129470] = {
					"Deepsea Crab", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[34133] = {
					"Champion of Hodir", -- [1]
					"Ulduar", -- [2]
				},
				[129598] = {
					"Freehold Pack Mule", -- [1]
					"Freehold", -- [2]
				},
				[34199] = {
					"Lightning Charged Iron Dwarf", -- [1]
					"Ulduar", -- [2]
				},
				[149144] = {
					"Jaina's Tide Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144876] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34269] = {
					"XR-949 Salvagebot", -- [1]
					"Ulduar", -- [2]
				},
				[138994] = {
					"Timberfist", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[34271] = {
					"XD-175 Compactobot", -- [1]
					"Ulduar", -- [2]
				},
				[146436] = {
					"Tempting Siren", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34198] = {
					"Iron Mender", -- [1]
					"Ulduar", -- [2]
				},
				[78001] = {
					"Cloudburst Totem", -- [1]
					"Crucible of Storms", -- [2]
				},
				[148262] = {
					"Tidewater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137716] = {
					"Bottom Feeder", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[33453] = {
					"Dark Rune Watcher", -- [1]
					"Ulduar", -- [2]
				},
				[130661] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[145261] = {
					"Opulence", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[126429] = {
					"Encrusted Coralback", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[129599] = {
					"Cutwater Knife Juggler", -- [1]
					"Freehold", -- [2]
				},
				[148623] = {
					"Echo of Gonk", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[133432] = {
					"Venture Co. Alchemist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133463] = {
					"Venture Co. War Machine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[417] = {
					"크리툰", -- [1]
					"Crucible of Storms", -- [2]
				},
				[34137] = {
					"Winter Jormungar", -- [1]
					"Ulduar", -- [2]
				},
				[33822] = {
					"Twilight Guardian", -- [1]
					"Ulduar", -- [2]
				},
				[146829] = {
					"Undying Guardian", -- [1]
					"Crucible of Storms", -- [2]
				},
				[140353] = {
					"Brightscale Coilfang", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[127106] = {
					"Irontide Officer", -- [1]
					"Freehold", -- [2]
				},
				[32927] = {
					"Runemaster Molgeim", -- [1]
					"Ulduar", -- [2]
				},
				[147948] = {
					"Coagulated Azerite", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[34014] = {
					"Sanctum Sentry", -- [1]
					"Ulduar", -- [2]
				},
				[50159] = {
					"Uzi", -- [1]
					"Crucible of Storms", -- [2]
				},
				[62005] = {
					"Beast", -- [1]
					"Crucible of Storms", -- [2]
				},
				[53006] = {
					"Spirit Link Totem", -- [1]
					"Crucible of Storms", -- [2]
				},
				[149611] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148716] = {
					"Risen Soul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[137591] = {
					"Healing Tide Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[145903] = {
					"Darkforged Crusader", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146945] = {
					"Swarming Voidspawn", -- [1]
					"Crucible of Storms", -- [2]
				},
				[125828] = {
					"Pluie", -- [1]
					"Atal'Dazar", -- [2]
				},
				[126023] = {
					"Harbor Saurid", -- [1]
					"Crucible of Storms", -- [2]
				},
			},
			["health_selection_overlay_alpha"] = 0.0999999940395355,
			["health_animation_time_dilatation"] = 2.61999988555908,
			["castbar_target_font"] = "Friz Quadrata TT",
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["pet_height_scale"] = 0.949999988079071,
			["health_statusbar_bgtexture"] = "ElvUI Norm",
			["hook_auto_imported"] = {
				["Targetting Alpha"] = 3,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Attacking Specific Unit"] = 1,
				["Jaina Encounter"] = 6,
				["Aura Reorder"] = 1,
				["Reorder Nameplate"] = 3,
				["Hide Neutral Units"] = 1,
				["Extra Border"] = 2,
				["Combo Points"] = 3,
				["Target Color"] = 3,
				["Execute Range"] = 1,
				["Blockade Encounter"] = 1,
			},
			["captured_spells"] = {
				[269279] = {
					["type"] = "BUFF",
					["source"] = "Zoltyen-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[272090] = {
					["type"] = "BUFF",
					["source"] = "Moomoodoom-Dalaran",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[268769] = {
					["type"] = "BUFF",
					["source"] = "Firstparadox-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[268898] = {
					["type"] = "BUFF",
					["source"] = "Ellymiraba-Azralon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[185358] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kkjuggy-Khaz'goroth",
					["encounterID"] = 2272,
				},
				[185422] = {
					["type"] = "BUFF",
					["source"] = "Firstparadox-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[257537] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Relani-Boulderfist",
					["encounterID"] = 2272,
				},
				[268899] = {
					["type"] = "BUFF",
					["source"] = "Ellymiraba-Azralon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[205032] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gertie-Trollbane",
					["encounterID"] = 2272,
				},
				[279503] = {
					["type"] = "BUFF",
					["source"] = "Eniggma",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[272733] = {
					["type"] = "BUFF",
					["source"] = "Kkjuggy-Khaz'goroth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[219788] = {
					["type"] = "BUFF",
					["source"] = "Eniggma",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[275672] = {
					["type"] = "BUFF",
					["source"] = "Swappz-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[195452] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Firstparadox-Arthas",
					["encounterID"] = 2272,
				},
				[109128] = {
					["type"] = "BUFF",
					["source"] = "Swappz-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[280400] = {
					["type"] = "BUFF",
					["source"] = "Draycootwo-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[115356] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drec-Draka",
					["encounterID"] = 2272,
				},
				[124682] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pinkmenise-BleedingHollow",
					["encounterID"] = 2272,
				},
				[268904] = {
					["type"] = "BUFF",
					["source"] = "Gertie-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[268905] = {
					["type"] = "BUFF",
					["source"] = "Gertie-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[277720] = {
					["type"] = "BUFF",
					["source"] = "Firstparadox-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[23881] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Swappz-Hyjal",
					["encounterID"] = 2272,
				},
				[225603] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Livinrage",
					["npcID"] = 0,
				},
				[193538] = {
					["type"] = "BUFF",
					["source"] = "Orukei-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[118455] = {
					["type"] = "BUFF",
					["source"] = "Sousarock-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[258883] = {
					["type"] = "DEBUFF",
					["source"] = "Blueblight-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[2050] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mccuddy-Trollbane",
					["encounterID"] = 2272,
				},
				[56641] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kkjuggy-Khaz'goroth",
					["encounterID"] = 2272,
				},
				[200183] = {
					["type"] = "BUFF",
					["source"] = "Mccuddy-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[2060] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mccuddy-Trollbane",
					["encounterID"] = 2272,
				},
				[2061] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mccuddy-Trollbane",
					["encounterID"] = 2272,
				},
				[193796] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drec-Draka",
					["encounterID"] = 2272,
				},
				[184662] = {
					["type"] = "BUFF",
					["source"] = "Blackthox-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[262652] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[190411] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Swappz-Hyjal",
					["encounterID"] = 2272,
				},
				[774] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moomoodoom-Dalaran",
					["encounterID"] = 2272,
				},
				[194627] = {
					["type"] = "BUFF",
					["source"] = "Kasrasris-WyrmrestAccord",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[2580] = {
					["source"] = "Divinebovine-Akama",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198013] = {
					["type"] = "BUFF",
					["source"] = "Blueblight-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[281178] = {
					["type"] = "BUFF",
					["source"] = "Zoltyen-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[280412] = {
					["type"] = "BUFF",
					["source"] = "Moomoodoom-Dalaran",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[223819] = {
					["type"] = "BUFF",
					["source"] = "Zoltyen-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[288333] = {
					["type"] = "DEBUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[270576] = {
					["type"] = "BUFF",
					["source"] = "Eniggma",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[280413] = {
					["type"] = "BUFF",
					["source"] = "Moomoodoom-Dalaran",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[280286] = {
					["type"] = "DEBUFF",
					["source"] = "Ninburn-Deathwing",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[11366] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kasrasris-WyrmrestAccord",
					["encounterID"] = 2272,
				},
				[43308] = {
					["source"] = "Duuvessa-Misha",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204019] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tremendous-Farstriders",
					["npcID"] = 0,
				},
				[147362] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kkjuggy-Khaz'goroth",
					["encounterID"] = 2272,
				},
				[216411] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[273006] = {
					["type"] = "DEBUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[284376] = {
					["type"] = "DEBUFF",
					["source"] = "Bwonsamdi",
					["npcID"] = 145644,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[164545] = {
					["type"] = "BUFF",
					["source"] = "Ellymiraba-Azralon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[210152] = {
					["type"] = "BUFF",
					["source"] = "Blueblight-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[53209] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sousarock-Tichondrius",
					["encounterID"] = 2272,
				},
				[108366] = {
					["type"] = "BUFF",
					["source"] = "Nuttsmugglar-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[2098] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orukei-Thrall",
					["encounterID"] = 2272,
				},
				[114051] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[116670] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pinkmenise-BleedingHollow",
					["encounterID"] = 2272,
				},
				[783] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mightymorphh-Illidan",
					["npcID"] = 0,
				},
				[216413] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[228358] = {
					["type"] = "DEBUFF",
					["source"] = "Relani-Boulderfist",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[164547] = {
					["type"] = "BUFF",
					["source"] = "Ellymiraba-Azralon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[153561] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kasrasris-WyrmrestAccord",
					["encounterID"] = 2272,
				},
				[155158] = {
					["type"] = "DEBUFF",
					["source"] = "Kasrasris-WyrmrestAccord",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[288981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[55078] = {
					["type"] = "DEBUFF",
					["source"] = "Griftore-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[193356] = {
					["type"] = "BUFF",
					["source"] = "Orukei-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[126476] = {
					["type"] = "BUFF",
					["source"] = "Nuttsmugglar-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[26573] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["encounterID"] = 2272,
				},
				[235450] = {
					["type"] = "BUFF",
					["source"] = "Gertie-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[155347] = {
					["source"] = "Daggny",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20473] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["encounterID"] = 2272,
				},
				[105174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lazareth-Hyjal",
					["npcID"] = 0,
				},
				[171253] = {
					["source"] = "Daggny",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[158982] = {
					["source"] = "Unknown",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 80690,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[54149] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[275699] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Draycootwo-Tichondrius",
					["encounterID"] = 2272,
				},
				[85948] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Draycootwo-Tichondrius",
					["encounterID"] = 2272,
				},
				[2643] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sousarock-Tichondrius",
					["encounterID"] = 2272,
				},
				[295501] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Boodytrap-Illidan",
					["encounterID"] = 2272,
				},
				[256459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Doopy",
					["npcID"] = 0,
				},
				[199600] = {
					["type"] = "BUFF",
					["source"] = "Orukei-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[290264] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Acornstheft",
					["npcID"] = 0,
				},
				[227723] = {
					["type"] = "BUFF",
					["source"] = "Aiex-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[194310] = {
					["type"] = "DEBUFF",
					["source"] = "Draycootwo-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[185438] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Firstparadox-Arthas",
					["encounterID"] = 2272,
				},
				[49998] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Griftore-Hyjal",
					["encounterID"] = 2272,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Kasrasris-WyrmrestAccord",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[268893] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[1329] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Haelanis-Azralon",
					["encounterID"] = 2272,
				},
				[51533] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drec-Draka",
					["encounterID"] = 2272,
				},
				[119611] = {
					["type"] = "BUFF",
					["source"] = "Pinkmenise-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[269571] = {
					["type"] = "BUFF",
					["source"] = "Zoltyen-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[5308] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Swappz-Hyjal",
					["encounterID"] = 2272,
				},
				[272893] = {
					["type"] = "BUFF",
					["source"] = "Nuttsmugglar-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[255937] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blackthox-Illidan",
					["encounterID"] = 2272,
				},
				[271105] = {
					["type"] = "BUFF",
					["source"] = "Griftore-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[197561] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Harleyquiinn-Stormscale",
					["npcID"] = 0,
				},
				[17] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mauwy-Stonemaul",
					["npcID"] = 0,
				},
				[256453] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Demosthenes",
					["npcID"] = 0,
				},
				[6673] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Livinrage",
					["npcID"] = 0,
				},
				[64373] = {
					["source"] = "Divinebovine-Akama",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257044] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kkjuggy-Khaz'goroth",
					["encounterID"] = 2272,
				},
				[280772] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Swappz-Hyjal",
					["encounterID"] = 2272,
				},
				[100] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Swappz-Hyjal",
					["encounterID"] = 2272,
				},
				[280433] = {
					["type"] = "BUFF",
					["source"] = "Gertie-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[279028] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[185313] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Firstparadox-Arthas",
					["encounterID"] = 2272,
				},
				[188370] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Harleyquiinn-Stormscale",
					["npcID"] = 0,
				},
				[19434] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Boodytrap-Illidan",
					["encounterID"] = 2272,
				},
				[279029] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[48181] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nuttsmugglar-Illidan",
					["encounterID"] = 2272,
				},
				[269576] = {
					["type"] = "BUFF",
					["source"] = "Boodytrap-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[195072] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blueblight-Illidan",
					["encounterID"] = 2272,
				},
				[205179] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nuttsmugglar-Illidan",
					["encounterID"] = 2272,
				},
				[289858] = {
					["npcID"] = 146322,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Siegebreaker Roka",
					["encounterID"] = 2272,
				},
				[11426] = {
					["type"] = "BUFF",
					["source"] = "Relani-Boulderfist",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[272260] = {
					["type"] = "BUFF",
					["source"] = "Pinkmenise-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[261764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gilgomesh",
					["npcID"] = 0,
				},
				[81256] = {
					["type"] = "BUFF",
					["source"] = "Eniggma",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[185123] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Demunmentour-Dalaran",
					["npcID"] = 0,
				},
				[288613] = {
					["type"] = "BUFF",
					["source"] = "Kkjuggy-Khaz'goroth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[97097] = {
					["source"] = "Benjamin Brode",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 88779,
				},
				[268429] = {
					["type"] = "DEBUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[165961] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mightymorphh-Illidan",
					["npcID"] = 0,
				},
				[279033] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[198793] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Doopy",
					["npcID"] = 0,
				},
				[19236] = {
					["type"] = "BUFF",
					["source"] = "Mccuddy-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[1604] = {
					["source"] = "Grom'kar Shieldbearer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 75089,
				},
				[279902] = {
					["type"] = "BUFF",
					["source"] = "Zoltyen-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Moomoodoom-Dalaran",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[207289] = {
					["type"] = "BUFF",
					["source"] = "Draycootwo-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[49028] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eniggma",
					["encounterID"] = 2272,
				},
				[20271] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ninburn-Deathwing",
					["encounterID"] = 2272,
				},
				[30151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krimraksha",
					["npcID"] = 17252,
				},
				[270987] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Disciple of Nalorakk",
					["npcID"] = 120949,
				},
				[260242] = {
					["type"] = "BUFF",
					["source"] = "Boodytrap-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[280780] = {
					["type"] = "BUFF",
					["source"] = "Eniggma",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[108839] = {
					["type"] = "BUFF",
					["source"] = "Relani-Boulderfist",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[55233] = {
					["type"] = "BUFF",
					["source"] = "Eniggma",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[186403] = {
					["type"] = "BUFF",
					["source"] = "Aiex-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[285041] = {
					["type"] = "BUFF",
					["source"] = "Plague Toad",
					["npcID"] = 146695,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[285496] = {
					["type"] = "BUFF",
					["source"] = "Gertie-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[205473] = {
					["type"] = "BUFF",
					["source"] = "Relani-Boulderfist",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[115175] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pinkmenise-BleedingHollow",
					["encounterID"] = 2272,
				},
				[116] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Relani-Boulderfist",
					["encounterID"] = 2272,
				},
				[63560] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Draycootwo-Tichondrius",
					["encounterID"] = 2272,
				},
				[284276] = {
					["type"] = "BUFF",
					["source"] = "King Rastakhan",
					["npcID"] = 145616,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[77489] = {
					["type"] = "BUFF",
					["source"] = "Mccuddy-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[145205] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moomoodoom-Dalaran",
					["encounterID"] = 2272,
				},
				[271374] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Draycootwo-Tichondrius",
					["encounterID"] = 2272,
				},
				[284277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skedaddle",
					["npcID"] = 0,
				},
				[27243] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nuttsmugglar-Illidan",
					["encounterID"] = 2272,
				},
				[285044] = {
					["type"] = "DEBUFF",
					["source"] = "Plague Toad",
					["npcID"] = 146695,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[164815] = {
					["type"] = "DEBUFF",
					["source"] = "Moomoodoom-Dalaran",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[31884] = {
					["type"] = "BUFF",
					["source"] = "Zoltyen-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[284917] = {
					["npcID"] = 146698,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Plague Toad",
					["encounterID"] = 2272,
				},
				[34861] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mccuddy-Trollbane",
					["encounterID"] = 2272,
				},
				[84963] = {
					["type"] = "BUFF",
					["source"] = "Ninburn-Deathwing",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[146739] = {
					["type"] = "DEBUFF",
					["source"] = "Nuttsmugglar-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[280830] = {
					["type"] = "BUFF",
					["source"] = "Sousarock-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[186254] = {
					["type"] = "BUFF",
					["source"] = "Sousarock-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[24275] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blackthox-Illidan",
					["encounterID"] = 2272,
				},
				[284280] = {
					["type"] = "BUFF",
					["source"] = "King Rastakhan",
					["npcID"] = 145616,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[184362] = {
					["type"] = "BUFF",
					["source"] = "Swappz-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[272783] = {
					["type"] = "BUFF",
					["source"] = "Mccuddy-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[24858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Squirreltãg",
					["npcID"] = 0,
				},
				[199373] = {
					["npcID"] = 24207,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Army of the Dead",
					["encounterID"] = 2272,
				},
				[33763] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moomoodoom-Dalaran",
					["encounterID"] = 2272,
				},
				[289647] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Breakwater Elemental",
					["npcID"] = 148569,
				},
				[108853] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kasrasris-WyrmrestAccord",
					["encounterID"] = 2272,
				},
				[264353] = {
					["type"] = "BUFF",
					["source"] = "Gertie-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[289520] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Swappz-Hyjal",
					["encounterID"] = 2272,
				},
				[131347] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vómitory",
					["npcID"] = 0,
				},
				[273424] = {
					["type"] = "BUFF",
					["source"] = "Firstparadox-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[196819] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Firstparadox-Arthas",
					["encounterID"] = 2272,
				},
				[77575] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Draycootwo-Tichondrius",
					["encounterID"] = 2272,
				},
				[257620] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kkjuggy-Khaz'goroth",
					["encounterID"] = 2272,
				},
				[274447] = {
					["type"] = "BUFF",
					["source"] = "Kkjuggy-Khaz'goroth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Relani-Boulderfist",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[268887] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[275689] = {
					["type"] = "BUFF",
					["source"] = "Swappz-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[43265] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eniggma",
					["encounterID"] = 2272,
				},
				[268955] = {
					["type"] = "BUFF",
					["source"] = "Relani-Boulderfist",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[289523] = {
					["type"] = "BUFF",
					["source"] = "Gertie-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[268756] = {
					["type"] = "DEBUFF",
					["source"] = "Firstparadox-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[162264] = {
					["type"] = "BUFF",
					["source"] = "Blueblight-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[268956] = {
					["type"] = "BUFF",
					["source"] = "Ellymiraba-Azralon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[289524] = {
					["type"] = "BUFF",
					["source"] = "Aiex-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[172] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nuttsmugglar-Illidan",
					["encounterID"] = 2272,
				},
				[257946] = {
					["type"] = "BUFF",
					["source"] = "Sousarock-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[264352] = {
					["type"] = "BUFF",
					["source"] = "Gertie-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[269085] = {
					["type"] = "BUFF",
					["source"] = "Pinkmenise-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[272790] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sousarock-Tichondrius",
					["encounterID"] = 2272,
				},
				[114250] = {
					["type"] = "BUFF",
					["source"] = "Blackthox-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[160285] = {
					["source"] = "Goren Gouger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 80690,
				},
				[245686] = {
					["type"] = "BUFF",
					["source"] = "Aiex-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[286393] = {
					["type"] = "BUFF",
					["source"] = "Blackthox-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[12042] = {
					["type"] = "BUFF",
					["source"] = "Gertie-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[139] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mccuddy-Trollbane",
					["encounterID"] = 2272,
				},
				[90328] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Leoroxx",
					["npcID"] = 38453,
				},
				[78674] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ellymiraba-Azralon",
					["encounterID"] = 2272,
				},
				[217200] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sousarock-Tichondrius",
					["encounterID"] = 2272,
				},
				[285489] = {
					["type"] = "BUFF",
					["source"] = "Blackthox-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[184367] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Swappz-Hyjal",
					["encounterID"] = 2272,
				},
				[264106] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nuttsmugglar-Illidan",
					["encounterID"] = 2272,
				},
				[263725] = {
					["type"] = "BUFF",
					["source"] = "Gertie-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[295408] = {
					["type"] = "BUFF",
					["source"] = "Boodytrap-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[275863] = {
					["type"] = "BUFF",
					["source"] = "Orukei-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[236298] = {
					["type"] = "BUFF",
					["source"] = "Gertie-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[278543] = {
					["type"] = "BUFF",
					["source"] = "Eniggma",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[31821] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[207386] = {
					["type"] = "BUFF",
					["source"] = "Moomoodoom-Dalaran",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[273947] = {
					["type"] = "BUFF",
					["source"] = "Griftore-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[85222] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["encounterID"] = 2272,
				},
				[183752] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Demonlash-Daggerspine",
					["npcID"] = 0,
				},
				[194844] = {
					["type"] = "BUFF",
					["source"] = "Eniggma",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[256739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vómitory",
					["npcID"] = 0,
				},
				[81262] = {
					["type"] = "BUFF",
					["source"] = "Efflorescence",
					["npcID"] = 47649,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[289915] = {
					["npcID"] = 145616,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "King Rastakhan",
					["encounterID"] = 2272,
				},
				[284933] = {
					["npcID"] = 145616,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "King Rastakhan",
					["encounterID"] = 2272,
				},
				[257506] = {
					["type"] = "BUFF",
					["source"] = "Firstparadox-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[289277] = {
					["source"] = "Divinebovine-Akama",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12472] = {
					["type"] = "BUFF",
					["source"] = "Relani-Boulderfist",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[267560] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vómitory",
					["npcID"] = 0,
				},
				[126664] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Swappz-Hyjal",
					["encounterID"] = 2272,
				},
				[280709] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[196782] = {
					["type"] = "DEBUFF",
					["source"] = "Draycootwo-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[284688] = {
					["npcID"] = 146322,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Siegebreaker Roka",
					["encounterID"] = 2272,
				},
				[233490] = {
					["type"] = "DEBUFF",
					["source"] = "Nuttsmugglar-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[149181] = {
					["source"] = "Grom'kar Grunt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 82047,
				},
				[193315] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orukei-Thrall",
					["encounterID"] = 2272,
				},
				[284719] = {
					["npcID"] = 146322,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Siegebreaker Roka",
					["encounterID"] = 2272,
				},
				[273955] = {
					["type"] = "BUFF",
					["source"] = "Draycootwo-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[84714] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Relani-Boulderfist",
					["encounterID"] = 2272,
				},
				[44544] = {
					["type"] = "BUFF",
					["source"] = "Relani-Boulderfist",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[102383] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ellymiraba-Azralon",
					["encounterID"] = 2272,
				},
				[276136] = {
					["type"] = "BUFF",
					["source"] = "Moomoodoom-Dalaran",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[295413] = {
					["type"] = "DEBUFF",
					["source"] = "Boodytrap-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[703] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Haelanis-Azralon",
					["encounterID"] = 2272,
				},
				[19574] = {
					["type"] = "BUFF",
					["source"] = "Sousarock-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[279956] = {
					["type"] = "DEBUFF",
					["source"] = "Griftore-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[270661] = {
					["type"] = "BUFF",
					["source"] = "Boodytrap-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[276124] = {
					["type"] = "BUFF",
					["source"] = "Kasrasris-WyrmrestAccord",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[204301] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Tremendous-Farstriders",
					["npcID"] = 0,
				},
				[58501] = {
					["type"] = "BUFF",
					["source"] = "Aiex-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[82326] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["encounterID"] = 2272,
				},
				[85256] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zoltyen-Thrall",
					["encounterID"] = 2272,
				},
				[85288] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Swappz-Hyjal",
					["encounterID"] = 2272,
				},
				[273836] = {
					["type"] = "DEBUFF",
					["source"] = "Gertie-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[268854] = {
					["type"] = "BUFF",
					["source"] = "Pinkmenise-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[118000] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Swappz-Hyjal",
					["encounterID"] = 2272,
				},
				[277179] = {
					["type"] = "BUFF",
					["source"] = "Eniggma",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[2818] = {
					["type"] = "DEBUFF",
					["source"] = "Haelanis-Azralon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[284686] = {
					["npcID"] = 146322,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Siegebreaker Roka",
					["encounterID"] = 2272,
				},
				[289924] = {
					["type"] = "BUFF",
					["source"] = "Bwonsamdi",
					["npcID"] = 145644,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[193316] = {
					["type"] = "BUFF",
					["source"] = "Orukei-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[167898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[2823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kurochanx-Tichondrius",
					["npcID"] = 0,
				},
				[77535] = {
					["type"] = "BUFF",
					["source"] = "Griftore-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[115310] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pinkmenise-BleedingHollow",
					["encounterID"] = 2272,
				},
				[149179] = {
					["source"] = "Grom'kar Grunt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 82047,
				},
				[197277] = {
					["type"] = "DEBUFF",
					["source"] = "Ninburn-Deathwing",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[130736] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Draycootwo-Tichondrius",
					["encounterID"] = 2272,
				},
				[288548] = {
					["npcID"] = 148797,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Magus of the Dead",
					["encounterID"] = 2272,
				},
				[292361] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Digmonk",
					["npcID"] = 0,
				},
				[5143] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gertie-Trollbane",
					["encounterID"] = 2272,
				},
				[281240] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gilgomesh",
					["npcID"] = 0,
				},
				[194084] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[197214] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drec-Draka",
					["encounterID"] = 2272,
				},
				[21562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Reportme",
					["npcID"] = 0,
				},
				[115151] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pinkmenise-BleedingHollow",
					["encounterID"] = 2272,
				},
				[289423] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rhenzlo",
					["npcID"] = 0,
				},
				[260072] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pa'kura Priest",
					["npcID"] = 131834,
				},
				[288146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Syckk",
					["npcID"] = 0,
				},
				[276132] = {
					["type"] = "DEBUFF",
					["source"] = "Kasrasris-WyrmrestAccord",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[62574] = {
					["source"] = "Duuvessa-Misha",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233496] = {
					["type"] = "DEBUFF",
					["source"] = "Nuttsmugglar-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[93402] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moomoodoom-Dalaran",
					["encounterID"] = 2272,
				},
				[120517] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mccuddy-Trollbane",
					["encounterID"] = 2272,
				},
				[19750] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["encounterID"] = 2272,
				},
				[596] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mccuddy-Trollbane",
					["encounterID"] = 2272,
				},
				[272940] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Syckk",
					["npcID"] = 0,
				},
				[204242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Harleyquiinn-Stormscale",
					["npcID"] = 0,
				},
				[51460] = {
					["type"] = "BUFF",
					["source"] = "Draycootwo-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[260069] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Priest of Gonk",
					["npcID"] = 131809,
				},
				[143625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Flossz",
					["npcID"] = 0,
				},
				[195182] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eniggma",
					["encounterID"] = 2272,
				},
				[251839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Muushubeef",
					["npcID"] = 0,
				},
				[205648] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[53600] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tremendous-Farstriders",
					["npcID"] = 0,
				},
				[258920] = {
					["type"] = "BUFF",
					["source"] = "Blueblight-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[231390] = {
					["type"] = "BUFF",
					["source"] = "Sousarock-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[260070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pa'kura Priest",
					["npcID"] = 131834,
				},
				[49576] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eniggma",
					["encounterID"] = 2272,
				},
				[1943] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Haelanis-Azralon",
					["encounterID"] = 2272,
				},
				[287638] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Tremendous-Farstriders",
					["npcID"] = 0,
				},
				[269239] = {
					["type"] = "BUFF",
					["source"] = "Griftore-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[48107] = {
					["type"] = "BUFF",
					["source"] = "Kasrasris-WyrmrestAccord",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[279715] = {
					["type"] = "BUFF",
					["source"] = "Kasrasris-WyrmrestAccord",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[85739] = {
					["type"] = "BUFF",
					["source"] = "Swappz-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[204883] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mccuddy-Trollbane",
					["encounterID"] = 2272,
				},
				[199844] = {
					["type"] = "BUFF",
					["source"] = "Relani-Boulderfist",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[276139] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lazareth-Hyjal",
					["npcID"] = 0,
				},
				[285976] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Digmonk",
					["npcID"] = 0,
				},
				[232670] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nuttsmugglar-Illidan",
					["encounterID"] = 2272,
				},
				[210824] = {
					["type"] = "DEBUFF",
					["source"] = "Gertie-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[64843] = {
					["type"] = "BUFF",
					["source"] = "Mccuddy-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[201754] = {
					["npcID"] = 107477,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unknown",
					["encounterID"] = 2272,
				},
				[194153] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ellymiraba-Azralon",
					["encounterID"] = 2272,
				},
				[267326] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[139546] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orukei-Thrall",
					["encounterID"] = 2272,
				},
				[8921] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moomoodoom-Dalaran",
					["encounterID"] = 2272,
				},
				[180612] = {
					["type"] = "BUFF",
					["source"] = "Eniggma",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[32645] = {
					["type"] = "BUFF",
					["source"] = "Haelanis-Azralon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[294027] = {
					["type"] = "BUFF",
					["source"] = "Zoltyen-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[285979] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Acornstheft",
					["npcID"] = 0,
				},
				[264774] = {
					["type"] = "BUFF",
					["source"] = "Gertie-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[183998] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["encounterID"] = 2272,
				},
				[6788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mauwy-Stonemaul",
					["npcID"] = 0,
				},
				[980] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nuttsmugglar-Illidan",
					["encounterID"] = 2272,
				},
				[278954] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Harleyquiinn-Stormscale",
					["npcID"] = 0,
				},
				[267329] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[81141] = {
					["type"] = "BUFF",
					["source"] = "Griftore-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[285981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Flossz",
					["npcID"] = 0,
				},
				[275378] = {
					["type"] = "BUFF",
					["source"] = "Nuttsmugglar-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[272440] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Buzzae",
					["npcID"] = 0,
				},
				[281517] = {
					["type"] = "BUFF",
					["source"] = "Boodytrap-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[273974] = {
					["type"] = "BUFF",
					["source"] = "Zoltyen-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[2383] = {
					["type"] = "BUFF",
					["source"] = "Aiex-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[48108] = {
					["type"] = "BUFF",
					["source"] = "Kasrasris-WyrmrestAccord",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[285472] = {
					["type"] = "BUFF",
					["source"] = "Griftore-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[256434] = {
					["source"] = "Vercerys-Proudmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206931] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Griftore-Hyjal",
					["encounterID"] = 2272,
				},
				[201846] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[184575] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ninburn-Deathwing",
					["encounterID"] = 2272,
				},
				[181062] = {
					["source"] = "Daggny",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195627] = {
					["type"] = "BUFF",
					["source"] = "Orukei-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[273465] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[231843] = {
					["type"] = "BUFF",
					["source"] = "Zoltyen-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[251836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhenzlo",
					["npcID"] = 0,
				},
				[66004] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 36120,
				},
				[289926] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[260843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jahden Fla",
					["npcID"] = 122704,
				},
				[285475] = {
					["type"] = "BUFF",
					["source"] = "Kkjuggy-Khaz'goroth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[288158] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Syckk",
					["npcID"] = 0,
				},
				[193455] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sousarock-Tichondrius",
					["encounterID"] = 2272,
				},
				[246152] = {
					["type"] = "BUFF",
					["source"] = "Sousarock-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[251837] = {
					["type"] = "BUFF",
					["source"] = "Aiex-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[1459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Reitokuki",
					["npcID"] = 0,
				},
				[54049] = {
					["npcID"] = 417,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pryythun",
					["encounterID"] = 2272,
				},
				[12654] = {
					["type"] = "DEBUFF",
					["source"] = "Kasrasris-WyrmrestAccord",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[3408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kurochanx-Tichondrius",
					["npcID"] = 0,
				},
				[31935] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Harleyquiinn-Stormscale",
					["npcID"] = 0,
				},
				[64844] = {
					["type"] = "BUFF",
					["source"] = "Mccuddy-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[207317] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Draycootwo-Tichondrius",
					["encounterID"] = 2272,
				},
				[267330] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[195181] = {
					["type"] = "BUFF",
					["source"] = "Eniggma",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[276025] = {
					["type"] = "BUFF",
					["source"] = "Pinkmenise-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[206930] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Griftore-Hyjal",
					["encounterID"] = 2272,
				},
				[246851] = {
					["type"] = "BUFF",
					["source"] = "Sousarock-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[1719] = {
					["type"] = "BUFF",
					["source"] = "Swappz-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[210320] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[276154] = {
					["type"] = "BUFF",
					["source"] = "Ellymiraba-Azralon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[288546] = {
					["npcID"] = 148797,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Magus of the Dead",
					["encounterID"] = 2272,
				},
				[277943] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[149184] = {
					["source"] = "Grom'kar Grunt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 82047,
				},
				[245388] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Haelanis-Azralon",
					["encounterID"] = 2272,
				},
				[268856] = {
					["type"] = "BUFF",
					["source"] = "Pinkmenise-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[196834] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[53] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Firstparadox-Arthas",
					["encounterID"] = 2272,
				},
				[190446] = {
					["type"] = "BUFF",
					["source"] = "Relani-Boulderfist",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[275773] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["encounterID"] = 2272,
				},
				[57994] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cahot-Greymane",
					["npcID"] = 0,
				},
				[72968] = {
					["source"] = "Divinebovine-Akama",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245389] = {
					["type"] = "DEBUFF",
					["source"] = "Haelanis-Azralon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[51399] = {
					["type"] = "DEBUFF",
					["source"] = "Eniggma",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 1860,
				},
				[279709] = {
					["type"] = "BUFF",
					["source"] = "Ellymiraba-Azralon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[200166] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blueblight-Illidan",
					["encounterID"] = 2272,
				},
				[198300] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[276130] = {
					["type"] = "BUFF",
					["source"] = "Kasrasris-WyrmrestAccord",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[268877] = {
					["type"] = "BUFF",
					["source"] = "Sousarock-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[27576] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Haelanis-Azralon",
					["encounterID"] = 2272,
				},
				[17364] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drec-Draka",
					["encounterID"] = 2272,
				},
				[193641] = {
					["type"] = "BUFF",
					["source"] = "Haelanis-Azralon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[273988] = {
					["type"] = "BUFF",
					["source"] = "Firstparadox-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[201427] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blueblight-Illidan",
					["encounterID"] = 2272,
				},
				[231895] = {
					["type"] = "BUFF",
					["source"] = "Blackthox-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[288267] = {
					["type"] = "BUFF",
					["source"] = "Swappz-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[295962] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Swappz-Hyjal",
					["encounterID"] = 2272,
				},
				[281744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Razelle",
					["npcID"] = 0,
				},
				[292360] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fairlymabus",
					["npcID"] = 0,
				},
				[35395] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ninburn-Deathwing",
					["encounterID"] = 2272,
				},
				[260402] = {
					["type"] = "BUFF",
					["source"] = "Boodytrap-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[56222] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eniggma",
					["encounterID"] = 2272,
				},
				[275779] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tremendous-Farstriders",
					["npcID"] = 0,
				},
				[191587] = {
					["type"] = "DEBUFF",
					["source"] = "Draycootwo-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[267558] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Livinrage",
					["npcID"] = 0,
				},
				[277185] = {
					["type"] = "BUFF",
					["source"] = "Ninburn-Deathwing",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[270670] = {
					["type"] = "BUFF",
					["source"] = "Gertie-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[280204] = {
					["type"] = "BUFF",
					["source"] = "Zoltyen-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[272970] = {
					["type"] = "DEBUFF",
					["source"] = "Relani-Boulderfist",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[48438] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moomoodoom-Dalaran",
					["encounterID"] = 2272,
				},
				[53385] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blackthox-Illidan",
					["encounterID"] = 2272,
				},
				[199786] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Relani-Boulderfist",
					["encounterID"] = 2272,
				},
				[287790] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fairlymabus",
					["npcID"] = 0,
				},
				[214222] = {
					["type"] = "DEBUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[34026] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sousarock-Tichondrius",
					["encounterID"] = 2272,
				},
				[60103] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drec-Draka",
					["encounterID"] = 2272,
				},
				[187878] = {
					["type"] = "BUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[1490] = {
					["type"] = "DEBUFF",
					["source"] = "Blueblight-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[61684] = {
					["type"] = "BUFF",
					["source"] = "Jarrod",
					["npcID"] = 107477,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[257284] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kkjuggy-Khaz'goroth",
					["encounterID"] = 2272,
				},
				[30108] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nuttsmugglar-Illidan",
					["encounterID"] = 2272,
				},
				[205025] = {
					["type"] = "BUFF",
					["source"] = "Gertie-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[30455] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Relani-Boulderfist",
					["encounterID"] = 2272,
				},
				[188290] = {
					["type"] = "BUFF",
					["source"] = "Eniggma",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[284377] = {
					["type"] = "BUFF",
					["source"] = "Bwonsamdi",
					["npcID"] = 145644,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[187874] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drec-Draka",
					["encounterID"] = 2272,
				},
				[57724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Svensins",
					["npcID"] = 0,
				},
				[190984] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ellymiraba-Azralon",
					["encounterID"] = 2272,
				},
				[288305] = {
					["type"] = "BUFF",
					["source"] = "Mccuddy-Trollbane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[30451] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gertie-Trollbane",
					["encounterID"] = 2272,
				},
				[280385] = {
					["type"] = "BUFF",
					["source"] = "Ninburn-Deathwing",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[105771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Swappz-Hyjal",
					["npcID"] = 0,
				},
				[44425] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gertie-Trollbane",
					["encounterID"] = 2272,
				},
				[277703] = {
					["type"] = "DEBUFF",
					["source"] = "Kasrasris-WyrmrestAccord",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[267611] = {
					["type"] = "BUFF",
					["source"] = "Ninburn-Deathwing",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[162243] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blueblight-Illidan",
					["encounterID"] = 2272,
				},
				[284730] = {
					["npcID"] = 146322,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Siegebreaker Roka",
					["encounterID"] = 2272,
				},
				[44614] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Relani-Boulderfist",
					["encounterID"] = 2272,
				},
				[281843] = {
					["type"] = "BUFF",
					["source"] = "Ellymiraba-Azralon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[280398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Reportme",
					["npcID"] = 0,
				},
				[17253] = {
					["npcID"] = 107477,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unknown",
					["encounterID"] = 2272,
				},
				[53365] = {
					["type"] = "BUFF",
					["source"] = "Eniggma",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[225787] = {
					["source"] = "Sickviper-Lightbringer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50842] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Griftore-Hyjal",
					["encounterID"] = 2272,
				},
				[272979] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Harleyquiinn-Stormscale",
					["npcID"] = 0,
				},
				[193786] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drec-Draka",
					["encounterID"] = 2272,
				},
				[278134] = {
					["type"] = "BUFF",
					["source"] = "Swappz-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[196980] = {
					["type"] = "BUFF",
					["source"] = "Firstparadox-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[270058] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kurochanx-Tichondrius",
					["npcID"] = 0,
				},
				[280773] = {
					["type"] = "DEBUFF",
					["source"] = "Swappz-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[81340] = {
					["type"] = "BUFF",
					["source"] = "Draycootwo-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[278736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gilgomesh",
					["npcID"] = 0,
				},
				[132403] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tremendous-Farstriders",
					["npcID"] = 0,
				},
				[55090] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Draycootwo-Tichondrius",
					["encounterID"] = 2272,
				},
				[259140] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[257104] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Reitokuki",
					["npcID"] = 0,
				},
				[16870] = {
					["type"] = "BUFF",
					["source"] = "Moomoodoom-Dalaran",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[133] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kasrasris-WyrmrestAccord",
					["encounterID"] = 2272,
				},
				[232698] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Goonin",
					["npcID"] = 0,
				},
				[288330] = {
					["type"] = "DEBUFF",
					["source"] = "Drec-Draka",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[257415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kurochanx-Tichondrius",
					["npcID"] = 0,
				},
				[280776] = {
					["type"] = "BUFF",
					["source"] = "Swappz-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2272,
				},
				[115450] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pinkmenise-BleedingHollow",
					["encounterID"] = 2272,
				},
				[293946] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Doopy",
					["npcID"] = 0,
				},
			},
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["cast_statusbar_bgtexture"] = "ElvUI Norm",
			["target_highlight_height"] = 16,
			["aura_stack_font"] = "Friz Quadrata TT",
			["aura_timer_text_font"] = "Friz Quadrata TT",
			["number_region_first_run"] = true,
			["minor_height_scale"] = 0.949999988079071,
			["patch_version"] = 7,
			["health_statusbar_texture"] = "ElvUI Norm",
			["update_throttle"] = 0.249999985098839,
		},
		["PixelPerfect"] = {
			["script_data"] = {
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1548349245,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 387,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Name"] = "Cast - Small Alert [Plater]",
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["SpellIds"] = {
						275192, -- [1]
						265912, -- [2]
						274438, -- [3]
						268317, -- [4]
						268375, -- [5]
						276767, -- [6]
						264105, -- [7]
						265876, -- [8]
						270464, -- [9]
						266106, -- [10]
						272180, -- [11]
						278961, -- [12]
						278755, -- [13]
						265468, -- [14]
						256405, -- [15]
						256897, -- [16]
						264101, -- [17]
						280604, -- [18]
						268702, -- [19]
						281621, -- [20]
						262515, -- [21]
						255824, -- [22]
						253583, -- [23]
						250096, -- [24]
					},
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Time"] = 1541263726,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["Enabled"] = true,
					["Revision"] = 108,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["PlaterCore"] = 1,
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
				}, -- [2]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Time"] = 1551467254,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 432,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["PlaterCore"] = 1,
					["Name"] = "Aura - Buff Alert [Plater]",
					["Desc"] = "Add the buff name in the trigger box.",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
				}, -- [3]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1548349245,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Enabled"] = true,
					["Revision"] = 399,
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						257785, -- [1]
						267237, -- [2]
						266951, -- [3]
						267273, -- [4]
						267433, -- [5]
						263066, -- [6]
						255577, -- [7]
						255371, -- [8]
					},
					["PlaterCore"] = 1,
					["Name"] = "Cast - Very Important [Plater]",
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
				}, -- [4]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1551466091,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 247,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Name"] = "Aura - Debuff Alert [Plater]",
					["Desc"] = "Add the debuff name in the trigger box.",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
				}, -- [5]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Time"] = 1548349245,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 192,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["Temp_UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["SpellIds"] = {
						255952, -- [1]
						257426, -- [2]
						274400, -- [3]
						272609, -- [4]
						269843, -- [5]
						269029, -- [6]
						272827, -- [7]
						269266, -- [8]
						263912, -- [9]
						264923, -- [10]
						258864, -- [11]
						256955, -- [12]
						265540, -- [13]
						260793, -- [14]
						270003, -- [15]
						270507, -- [16]
						257337, -- [17]
						268415, -- [18]
						275907, -- [19]
						268865, -- [20]
						260669, -- [21]
						260280, -- [22]
						253239, -- [23]
						265541, -- [24]
						250258, -- [25]
					},
				}, -- [6]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Time"] = 1550595071,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = 1029718,
					["Enabled"] = true,
					["Revision"] = 197,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Name"] = "Fixate [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
					},
					["Desc"] = "Show above the nameplate who is the player fixated",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
				}, -- [7]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Time"] = 1547158828,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
					["Icon"] = 136048,
					["Enabled"] = true,
					["Revision"] = 135,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Name"] = "UnitPower [Plater]",
					["Desc"] = "Show the energy amount above the nameplate",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
				}, -- [8]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1548957216,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["NpcNames"] = {
						"135029", -- [1]
						"134388", -- [2]
						"134612", -- [3]
						"133361", -- [4]
						"136330", -- [5]
						"130896", -- [6]
						"129758", -- [7]
						"Healing Tide Totem", -- [8]
						"131009", -- [9]
					},
					["Enabled"] = true,
					["Revision"] = 162,
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
					["Icon"] = 135996,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["Name"] = "Unit - Important [Plater]",
				}, -- [9]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --https://www.wowhead.com/spell=253583/fiery-enchant\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1551892410,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --https://www.wowhead.com/spell=253583/fiery-enchant\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 581,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						257069, -- [3]
						274569, -- [4]
						278020, -- [5]
						261635, -- [6]
						272700, -- [7]
						280404, -- [8]
						268030, -- [9]
						265368, -- [10]
						263891, -- [11]
						264520, -- [12]
						265407, -- [13]
						278567, -- [14]
						278602, -- [15]
						258128, -- [16]
						257791, -- [17]
						258938, -- [18]
						265089, -- [19]
						272183, -- [20]
						256060, -- [21]
						257397, -- [22]
						257899, -- [23]
						269972, -- [24]
						270901, -- [25]
						270492, -- [26]
						268129, -- [27]
						268709, -- [28]
						263215, -- [29]
						268797, -- [30]
						262540, -- [31]
						262554, -- [32]
						253517, -- [33]
						255041, -- [34]
						252781, -- [35]
						250368, -- [36]
						258777, -- [37]
						72286, -- [38]
					},
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Big Alert [Plater]",
				}, -- [10]
				{
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        \n        [288038] = \"Marked Target\", --marine jaina encounter on battle of dazar'alor\n        [282209] = \"Mark of Prey\", --ravenous stalker conclave encounter on battle of dazar'alor\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n146753: Kul Tiran Marine from jaina encounter on battle of dazar'alor\n144807: Ravenous Stalker conclave encounter on battle of dazar'alor\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1548105751,
					["Temp_ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        \n        [288038] = \"Marked Target\", --marine jaina encounter\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n146753: kul tiran marine from jaina encounter\n--]=]\n\n\n\n\n",
					["NpcNames"] = {
						"smuggled crawg", -- [1]
						"sergeant bainbridge", -- [2]
						"blacktooth scrapper", -- [3]
						"irontide grenadier", -- [4]
						"feral bloodswarmer", -- [5]
						"earthrager", -- [6]
						"crawler mine", -- [7]
						"rezan", -- [8]
						"136461", -- [9]
						"146753", -- [10]
						"144807", -- [11]
					},
					["Enabled"] = true,
					["Revision"] = 208,
					["Author"] = "Tecno-Azralon",
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
						"136461", -- [10]
					},
					["PlaterCore"] = 1,
					["Name"] = "Fixate On You [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Icon"] = 841383,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
				}, -- [11]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"pink\" \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    \nend\n\n\n",
					["Time"] = 1541606626,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"pink\" \n    \nend\n\n\n",
					["Icon"] = "INTERFACE\\ICONS\\Achievement_PVP_P_01",
					["Enabled"] = false,
					["Revision"] = 45,
					["Author"] = "抹了油的大叔-白银之手",
					["Desc"] = "NameplaterColor with Special Buff ID",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    \nend\n\n\n",
					["SpellIds"] = {
						277242, -- [1]
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "NameplaterColor with Special Buff ID",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
				}, -- [12]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3 --increases the size of the healthBar\n    envTable.GlowAlpha = 0.45 --from zero to one, is the percent of transparency of the glowing border\n    envTable.ShowArrow = true --or 'false' to hide the arrow above the healthBar\n    envTable.ArrowAlpha = 0.45 --transparent of the arrow above the healthBar\n    envTable.HealthBarColor = \"orange\" --color of the healthBar\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["Time"] = 1550589212,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3 --increases the size of the healthBar\n    envTable.GlowAlpha = 0.45 --from zero to one, is the percent of transparency of the glowing border\n    envTable.ShowArrow = true --or 'false' to hide the arrow above the healthBar\n    envTable.ArrowAlpha = 0.45 --transparent of the arrow above the healthBar\n    envTable.HealthBarColor = \"orange\" --color of the healthBar\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 335,
					["Author"] = "Bombad�o-Azralon",
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["PlaterCore"] = 1,
					["Name"] = "Explosion Affix M+ [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["Icon"] = 2175503,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
				}, -- [13]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Time"] = 1548349253,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["Enabled"] = true,
					["Revision"] = 67,
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Name"] = "Color Change [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = 135024,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
				}, -- [14]
				{
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Time"] = 1547158827,
					["Temp_ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
					["Icon"] = 133006,
					["Enabled"] = false,
					["Revision"] = 46,
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Name"] = "Aura - Border Color [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
				}, -- [15]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Time"] = 1549120808,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["Enabled"] = true,
					["Revision"] = 164,
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["NpcNames"] = {
					},
				}, -- [16]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["OnHideCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Temp_OnShowCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local isTanking = UnitDetailedThreatSituation (\"player\", unitId)\n    if (not isTanking) then \n        Plater.SetNameplateColor (unitFrame, \"pink\") \n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1550589160,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
						"surf darter", -- [1]
					},
					["Enabled"] = false,
					["Revision"] = 5,
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local isTanking = UnitDetailedThreatSituation (\"player\", unitId)\n    if (not isTanking) then \n        Plater.SetNameplateColor (unitFrame, \"pink\") \n    end\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["OnShowCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Temp_OnHideCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Name"] = "New Script",
				}, -- [17]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.CastbarColor = \"orangered\"\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    envTable.CastBarHeightAdd = 1.5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-22, 20, 8, -11)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+20, self:GetHeight()+30, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetWidth (envTable.OriginalWidth)\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n        envTable.OriginalWidth = nil\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    Plater.SetCastBarBorderColor (self, 1, 0, 0, 0.4)\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetWidth (envTable.OriginalWidth)\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    \n    --increase the cast bar size\n    envTable.OriginalHeight = self:GetHeight()\n    envTable.OriginalWidth = self:GetWidth()\n    local width = Plater.db.profile.plate_config.enemynpc.cast_incombat[1]\n    local height = Plater.db.profile.plate_config.enemynpc.cast_incombat[2]\n    \n    self:SetWidth (width)\n    self:SetHeight (height * envTable.CastBarHeightAdd)\n    \n    print (envTable.glowEffect:GetAlpha())\n    \nend",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1548957952,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.CastbarColor = \"orangered\"\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    envTable.CastBarHeightAdd = 1.5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-22, 20, 8, -11)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+20, self:GetHeight()+30, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["Icon"] = "INTERFACE\\ICONS\\Spell_Fire_FelFlameStrike",
					["Enabled"] = false,
					["Revision"] = 1382,
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						274569, -- [3]
						278020, -- [4]
						261635, -- [5]
						272700, -- [6]
						268030, -- [7]
						265368, -- [8]
						264520, -- [9]
						265407, -- [10]
						278567, -- [11]
						278602, -- [12]
						258128, -- [13]
						257791, -- [14]
						258938, -- [15]
						265089, -- [16]
						272183, -- [17]
						256060, -- [18]
						257397, -- [19]
						269972, -- [20]
						270901, -- [21]
						270492, -- [22]
						263215, -- [23]
						268797, -- [24]
						262554, -- [25]
						253517, -- [26]
						255041, -- [27]
						252781, -- [28]
						250368, -- [29]
						258777, -- [30]
						278504, -- [31]
						266106, -- [32]
						257732, -- [33]
						268309, -- [34]
						269302, -- [35]
						263202, -- [36]
						257784, -- [37]
						278755, -- [38]
						272180, -- [39]
						263066, -- [40]
						267273, -- [41]
						265912, -- [42]
						274438, -- [43]
						268317, -- [44]
						268375, -- [45]
						276767, -- [46]
						264105, -- [47]
						265876, -- [48]
						270464, -- [49]
						278961, -- [50]
						265468, -- [51]
						256897, -- [52]
						280604, -- [53]
						268702, -- [54]
						255824, -- [55]
						253583, -- [56]
						250096, -- [57]
						278456, -- [58]
						262092, -- [59]
						257270, -- [60]
						267818, -- [61]
						265091, -- [62]
						262540, -- [63]
						263318, -- [64]
						263959, -- [65]
						257069, -- [66]
						256849, -- [67]
						267459, -- [68]
						253544, -- [69]
						268008, -- [70]
						267981, -- [71]
						272659, -- [72]
						264396, -- [73]
						257736, -- [74]
						264390, -- [75]
						255952, -- [76]
						257426, -- [77]
						274400, -- [78]
						272609, -- [79]
						269843, -- [80]
						269029, -- [81]
						272827, -- [82]
						269266, -- [83]
						263912, -- [84]
						264923, -- [85]
						258864, -- [86]
						256955, -- [87]
						265540, -- [88]
						260793, -- [89]
						270003, -- [90]
						270507, -- [91]
						257337, -- [92]
						268415, -- [93]
						275907, -- [94]
						268865, -- [95]
						260669, -- [96]
						260280, -- [97]
						253239, -- [98]
						265541, -- [99]
						250258, -- [100]
						256709, -- [101]
						277596, -- [102]
						276268, -- [103]
						265372, -- [104]
						263905, -- [105]
						265781, -- [106]
						257170, -- [107]
						268846, -- [108]
						270514, -- [109]
						258622, -- [110]
						258199, -- [111]
						256627, -- [112]
						257870, -- [113]
						259711, -- [114]
						258917, -- [115]
						263891, -- [116]
						268027, -- [117]
						268348, -- [118]
						269313, -- [119]
						272711, -- [120]
						271174, -- [121]
						268260, -- [122]
						269399, -- [123]
						268239, -- [124]
						264574, -- [125]
						261563, -- [126]
						257288, -- [127]
						257757, -- [128]
						267899, -- [129]
						255741, -- [130]
						264757, -- [131]
						260894, -- [132]
						263365, -- [133]
						260292, -- [134]
						263583, -- [135]
						276292, -- [136]
						272874, -- [137]
						264101, -- [138]
						264407, -- [139]
						271456, -- [140]
						262515, -- [141]
						275192, -- [142]
						256405, -- [143]
						270084, -- [144]
						257785, -- [145]
						267237, -- [146]
						266951, -- [147]
						267433, -- [148]
						255577, -- [149]
						255371, -- [150]
						270891, -- [151]
						267357, -- [152]
						258338, -- [153]
						257169, -- [154]
						270927, -- [155]
						273995, -- [156]
						260926, -- [157]
						264027, -- [158]
						267257, -- [159]
						253721, -- [160]
						265019, -- [161]
						260924, -- [162]
						263309, -- [163]
						266206, -- [164]
						268187, -- [165]
						260067, -- [166]
						274507, -- [167]
						276068, -- [168]
						263278, -- [169]
						258317, -- [170]
						256594, -- [171]
						268391, -- [172]
						268230, -- [173]
						260852, -- [174]
						267763, -- [175]
						268706, -- [176]
						264734, -- [177]
						288693, -- [178]
						288694, -- [179]
						270590, -- [180]
						290787, -- [181]
						72286, -- [182]
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "M+ Important Spells [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    Plater.SetCastBarBorderColor (self, 1, 0, 0, 0.4)\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetWidth (envTable.OriginalWidth)\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    \n    --increase the cast bar size\n    envTable.OriginalHeight = self:GetHeight()\n    envTable.OriginalWidth = self:GetWidth()\n    local width = Plater.db.profile.plate_config.enemynpc.cast_incombat[1]\n    local height = Plater.db.profile.plate_config.enemynpc.cast_incombat[2]\n    \n    self:SetWidth (width)\n    self:SetHeight (height * envTable.CastBarHeightAdd)\n    \n    print (envTable.glowEffect:GetAlpha())\n    \nend",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetWidth (envTable.OriginalWidth)\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n        envTable.OriginalWidth = nil\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
				}, -- [18]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --custom frames\n    unitFrame.JadeFireGlowEffect = unitFrame.JadeFireGlowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    unitFrame.JadeFireGlowEffect:SetOffset (-27, 25, 6, -8)\n    unitFrame.JadeFireGlowEffect:Hide()\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:Hide() \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:Show() \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:SetAlpha (.5)\nend\n\n\n",
					["Time"] = 1550596124,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --custom frames\n    unitFrame.JadeFireGlowEffect = unitFrame.JadeFireGlowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    unitFrame.JadeFireGlowEffect:SetOffset (-27, 25, 6, -8)\n    unitFrame.JadeFireGlowEffect:Hide()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 33,
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Alert when the unit has the Fire Shield to be broken.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:SetAlpha (.5)\nend\n\n\n",
					["SpellIds"] = {
						286425, -- [1]
					},
					["PlaterCore"] = 1,
					["Name"] = "Jadefire [BOD] - Fire Shield",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:Hide() \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:Show() \nend\n\n\n",
					["Icon"] = 132221,
				}, -- [19]
			},
			["show_shield_prediction"] = true,
			["cast_statusbar_fadein_time"] = 0.0208119247108698,
			["target_shady_enabled"] = false,
			["aura2_y_offset"] = 3,
			["aura_timer_text_anchor"] = {
				["y"] = -7,
				["x"] = -1,
				["side"] = 1,
			},
			["castbar_framelevel"] = 0,
			["buffs_on_aura2"] = true,
			["plate_config"] = {
				["player"] = {
					["spellpercent_text_font"] = "Accidental Presidency",
					["level_text_font"] = "Accidental Presidency",
					["actorname_text_font"] = "Accidental Presidency",
					["big_actortitle_text_font"] = "Accidental Presidency",
					["spellname_text_font"] = "Accidental Presidency",
					["click_through"] = true,
					["power_percent_text_font"] = "Accidental Presidency",
					["power_percent_text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
					["percent_text_font"] = "Accidental Presidency",
					["big_actorname_text_font"] = "Accidental Presidency",
				},
				["friendlyplayer"] = {
					["spellpercent_text_font"] = "Accidental Presidency",
					["level_text_size"] = 8,
					["actorname_use_class_color"] = true,
					["cast"] = {
						120, -- [1]
					},
					["spellpercent_text_anchor"] = {
						["x"] = 1,
						["side"] = 5,
					},
					["big_actorname_text_shadow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["spellpercent_text_outline"] = "NONE",
					["level_text_font"] = "Accidental Presidency",
					["actorname_text_font"] = "Accidental Presidency",
					["big_actorname_text_shadow_color_offset"] = {
						1, -- [1]
						-1, -- [2]
					},
					["mana_incombat"] = {
						nil, -- [1]
						4, -- [2]
					},
					["all_names"] = true,
					["big_actortitle_text_outline"] = "OUTLINE",
					["only_damaged"] = false,
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["big_actortitle_text_font"] = "Accidental Presidency",
					["percent_text_ooc"] = true,
					["level_text_anchor"] = {
						["x"] = 1,
						["side"] = 5,
					},
					["big_actortitle_text_shadow_color_offset"] = {
						1, -- [1]
						-1, -- [2]
					},
					["cast_incombat"] = {
						120, -- [1]
					},
					["percent_show_health"] = true,
					["spellname_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["big_actortitle_text_shadow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["percent_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["power_percent_text_font"] = "Accidental Presidency",
					["spellname_text_font"] = "Accidental Presidency",
					["big_actorname_text_outline"] = "OUTLINE",
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["actorname_text_size"] = 11,
					["percent_text_enabled"] = true,
					["big_actorname_text_size"] = 10,
					["spellpercent_text_size"] = 9,
					["big_actortitle_text_size"] = 10,
					["level_text_alpha"] = 0.299999982118607,
					["percent_text_size"] = 8,
					["spellname_text_color"] = {
						0.952941176470588, -- [1]
						[3] = 0.992156862745098,
					},
					["percent_text_font"] = "Accidental Presidency",
					["buff_frame_y_offset"] = 0,
					["percent_text_outline"] = "NONE",
					["quest_enabled"] = true,
					["health_incombat"] = {
						120, -- [1]
						12, -- [2]
					},
					["spellname_text_size"] = 9,
					["health"] = {
						120, -- [1]
						12, -- [2]
					},
					["spellpercent_text_enabled"] = true,
					["mana"] = {
						nil, -- [1]
						4, -- [2]
					},
					["actorname_text_anchor"] = {
						["y"] = -3,
						["x"] = -1,
						["side"] = 1,
					},
					["big_actorname_text_font"] = "Accidental Presidency",
					["level_text_enabled"] = true,
				},
				["friendlynpc"] = {
					["big_actorname_text_size"] = 10,
					["spellpercent_text_font"] = "Accidental Presidency",
					["level_text_size"] = 8,
					["cast"] = {
						120, -- [1]
						8, -- [2]
					},
					["spellpercent_text_anchor"] = {
						["x"] = 1,
						["side"] = 5,
					},
					["spellpercent_text_outline"] = "NONE",
					["level_text_font"] = "Accidental Presidency",
					["spellname_text_color"] = {
						0.952941176470588, -- [1]
						[3] = 0.992156862745098,
					},
					["actorname_text_outline"] = "OUTLINE",
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["big_actortitle_text_font"] = "Accidental Presidency",
					["spellpercent_text_size"] = 9,
					["level_text_anchor"] = {
						["x"] = 1,
						["side"] = 5,
					},
					["spellname_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["percent_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["spellname_text_font"] = "Accidental Presidency",
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["actorname_text_size"] = 11,
					["percent_text_enabled"] = true,
					["big_actortitle_text_size"] = 10,
					["percent_text_ooc"] = true,
					["level_text_alpha"] = 0.299999982118607,
					["percent_text_size"] = 8,
					["percent_text_font"] = "Accidental Presidency",
					["spellname_text_size"] = 9,
					["percent_text_outline"] = "NONE",
					["actorname_text_font"] = "Accidental Presidency",
					["power_percent_text_font"] = "Accidental Presidency",
					["health_incombat"] = {
						nil, -- [1]
						12, -- [2]
					},
					["health"] = {
						120, -- [1]
					},
					["actorname_text_anchor"] = {
						["y"] = -3,
						["x"] = -1,
						["side"] = 1,
					},
					["spellpercent_text_enabled"] = true,
					["big_actorname_text_font"] = "Accidental Presidency",
					["percent_show_health"] = true,
					["level_text_enabled"] = true,
				},
				["enemyplayer"] = {
					["spellpercent_text_font"] = "Accidental Presidency",
					["level_text_size"] = 8,
					["cast"] = {
						120, -- [1]
						8, -- [2]
					},
					["spellpercent_text_anchor"] = {
						["x"] = 1,
						["side"] = 5,
					},
					["spellpercent_text_outline"] = "NONE",
					["level_text_font"] = "Accidental Presidency",
					["spellname_text_color"] = {
						0.952941176470588, -- [1]
						[3] = 0.992156862745098,
					},
					["all_names"] = true,
					["actorname_text_outline"] = "OUTLINE",
					["actorname_text_spacing"] = 10,
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["big_actortitle_text_font"] = "Accidental Presidency",
					["spellpercent_text_size"] = 9,
					["level_text_anchor"] = {
						["x"] = 1,
						["side"] = 5,
					},
					["health_incombat"] = {
						nil, -- [1]
						12, -- [2]
					},
					["spellname_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["percent_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["spellname_text_font"] = "Accidental Presidency",
					["actorname_text_font"] = "Accidental Presidency",
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["actorname_text_size"] = 11,
					["big_actorname_text_font"] = "Accidental Presidency",
					["big_actortitle_text_size"] = 10,
					["big_actorname_text_size"] = 10,
					["level_text_alpha"] = 0.299999982118607,
					["percent_text_size"] = 8,
					["percent_text_font"] = "Accidental Presidency",
					["percent_text_outline"] = "NONE",
					["spellname_text_size"] = 9,
					["health"] = {
						120, -- [1]
					},
					["power_percent_text_font"] = "Accidental Presidency",
					["actorname_text_anchor"] = {
						["y"] = -3,
						["x"] = -1,
						["side"] = 1,
					},
					["quest_enabled"] = true,
				},
				["enemynpc"] = {
					["spellpercent_text_font"] = "Accidental Presidency",
					["cast"] = {
						120, -- [1]
						8, -- [2]
					},
					["spellpercent_text_anchor"] = {
						["x"] = 1,
						["side"] = 5,
					},
					["spellname_text_outline"] = "NONE",
					["spellpercent_text_outline"] = "NONE",
					["level_text_font"] = "Accidental Presidency",
					["spellname_text_color"] = {
						0.952941176470588, -- [1]
						[3] = 0.992156862745098,
					},
					["actorname_text_outline"] = "OUTLINE",
					["big_actortitle_text_font"] = "Accidental Presidency",
					["level_text_anchor"] = {
						["x"] = 1,
						["side"] = 5,
					},
					["cast_incombat"] = {
						nil, -- [1]
						8, -- [2]
					},
					["spellname_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["percent_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["spellname_text_size"] = 9,
					["spellname_text_font"] = "Accidental Presidency",
					["power_percent_text_font"] = "Accidental Presidency",
					["big_actorname_text_font"] = "Accidental Presidency",
					["spellpercent_text_size"] = 9,
					["level_text_alpha"] = 0.299999982118607,
					["percent_text_size"] = 8,
					["percent_text_font"] = "Accidental Presidency",
					["percent_text_outline"] = "NONE",
					["health_incombat"] = {
						nil, -- [1]
						14, -- [2]
					},
					["health"] = {
						120, -- [1]
						14, -- [2]
					},
					["actorname_text_anchor"] = {
						["y"] = -3,
						["x"] = -1,
						["side"] = 1,
					},
					["actorname_text_font"] = "Accidental Presidency",
				},
			},
			["aura_y_offset"] = 3,
			["npc_cache"] = {
				[138972] = {
					"Zian-Ti Cloudbreaker", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[155860] = {
					"Shirakess Voidreaper", -- [1]
					"The Eternal Palace", -- [2]
				},
				[139229] = {
					"Aluna Leaf-Sister", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[12460] = {
					"Death Talon Wyrmguard", -- [1]
					"Blackwing Lair", -- [2]
				},
				[135903] = {
					"Manifestation of the Deep", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[148441] = {
					"Gnomish Gyro-Engineer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146650] = {
					"Champion Sentinel", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[155094] = {
					"Mechagon Trooper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[145371] = {
					"Uu'nat", -- [1]
					"Crucible of Storms", -- [2]
				},
				[133345] = {
					"Feckless Assistant", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[148442] = {
					"Gnomish Commando", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145372] = {
					"Wild Mooncaller", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[148443] = {
					"Defense-A-Bot", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138464] = {
					"Ashvane Deckhand", -- [1]
					"Siege of Boralus", -- [2]
				},
				[132835] = {
					"Dreadfang Snake", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[147932] = {
					"Agitated Azershard", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[146653] = {
					"Champion Huntress", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[140768] = {
					"Guuru the Mountain-Breaker", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[147933] = {
					"Geoactive Azershard", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[138466] = {
					"Obsidian Whelp", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140769] = {
					"Goldenvein", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[155354] = {
					"Azshara's Indomitable", -- [1]
					"The Eternal Palace", -- [2]
				},
				[133605] = {
					"Escaped Convict", -- [1]
					"Tol Dagor", -- [2]
				},
				[127477] = {
					"Saltwater Snapper", -- [1]
					"Tol Dagor", -- [2]
				},
				[138467] = {
					"Obsidian Dragonkin", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[146911] = {
					"Fleshrot Blighthound", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[141282] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[151773] = {
					"Junkyard D.0.G.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[147935] = {
					"Azergem Crawler", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140259] = {
					"Runehoof Greatstag", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138468] = {
					"Obsidian Flamecaller", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[416] = {
					"Rulyal", -- [1]
					"Crucible of Storms", -- [2]
				},
				[141283] = {
					"Kul Tiran Halberd", -- [1]
					"Siege of Boralus", -- [2]
				},
				[147936] = {
					"Azergem Shardback", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140260] = {
					"Runehoof Courser", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[146657] = {
					"Veteran Sentinel", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[136934] = {
					"Weapons Tester", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[141284] = {
					"Kul Tiran Wavetender", -- [1]
					"Siege of Boralus", -- [2]
				},
				[155869] = {
					"Shirakess Shadowcaster", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131817] = {
					"Cragmaw the Infested", -- [1]
					"The Underrot", -- [2]
				},
				[138470] = {
					"Obsidian Drake", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[145123] = {
					"Myara Nightsong", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[141285] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[147938] = {
					"Azergem Crystalback", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[148194] = {
					"Icy Barrier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140262] = {
					"Runehoof Doe", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[138471] = {
					"Obsidian Wyrmguard", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[148962] = {
					"Ravenous Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[155871] = {
					"Voidbound Terror", -- [1]
					"The Eternal Palace", -- [2]
				},
				[152033] = {
					"Inconspicuous Plant", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[131819] = {
					"Coven Diviner", -- [1]
					"Waycrest Manor", -- [2]
				},
				[140263] = {
					"Runehoof Stag", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[128631] = {
					"Tidal Clickshell", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[155616] = {
					"Zanj'ir Brute", -- [1]
					"The Eternal Palace", -- [2]
				},
				[127480] = {
					"Stinging Parasite", -- [1]
					"Tol Dagor", -- [2]
				},
				[19668] = {
					"Shadowfiend", -- [1]
					"The Eternal Palace", -- [2]
				},
				[155873] = {
					"Darkcast Annihilator", -- [1]
					"The Eternal Palace", -- [2]
				},
				[13996] = {
					"Blackwing Technician", -- [1]
					"Blackwing Lair", -- [2]
				},
				[11981] = {
					"Flamegor", -- [1]
					"Blackwing Lair", -- [2]
				},
				[140777] = {
					"Gemshard Colossus", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[126969] = {
					"Trothak", -- [1]
					"Freehold", -- [2]
				},
				[156130] = {
					"Lesser Zoatroid", -- [1]
					"The Eternal Palace", -- [2]
				},
				[138475] = {
					"Tyrantion", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[153060] = {
					"Cyranus", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134893] = {
					"Ironweb Spider", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[155619] = {
					"Zanj'ir Honor Guard", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131311] = {
					"Unleashed Azerite", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[156131] = {
					"Zanj'ir Myrmidon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131823] = {
					"Sister Malady", -- [1]
					"Waycrest Manor", -- [2]
				},
				[134894] = {
					"Ironweb Spinner", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[135406] = {
					"Animated Gold", -- [1]
					"Kings' Rest", -- [2]
				},
				[156132] = {
					"Azsh'ari Witch", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131824] = {
					"Sister Solena", -- [1]
					"Waycrest Manor", -- [2]
				},
				[146409] = {
					"Lady Jaina Proudmoore", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145898] = {
					"Anointed Disciple", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[131825] = {
					"Sister Briar", -- [1]
					"Waycrest Manor", -- [2]
				},
				[140269] = {
					"Ulu'tale", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[12557] = {
					"Grethok the Controller", -- [1]
					"Blackwing Lair", -- [2]
				},
				[133361] = {
					"Wasting Servant", -- [1]
					"Waycrest Manor", -- [2]
				},
				[139758] = {
					"Annie Two-Pistols", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[150249] = {
					"Pistonhead Scrapper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[144876] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145644] = {
					"Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[130298] = {
					"Water Elemental", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[150250] = {
					"Pistonhead Blaster", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[140271] = {
					"Severhorn", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[147948] = {
					"Coagulated Azerite", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[137969] = {
					"Interment Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[127484] = {
					"Jes Howlis", -- [1]
					"Tol Dagor", -- [2]
				},
				[148716] = {
					"Risen Soul", -- [1]
					"Tol Dagor", -- [2]
				},
				[138993] = {
					"Gurlack", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[137458] = {
					"Rotting Spore", -- [1]
					"The Underrot", -- [2]
				},
				[130299] = {
					"Droplet", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[140273] = {
					"Runehoof Denkeeper", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[134388] = {
					"A Knot of Snakes", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[134900] = {
					"Venomfang Spider", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[131318] = {
					"Elder Leaxa", -- [1]
					"The Underrot", -- [2]
				},
				[145903] = {
					"Darkforged Crusader", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[150253] = {
					"Weaponized Crawler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[127485] = {
					"Bilge Rat Looter", -- [1]
					"Tol Dagor", -- [2]
				},
				[138483] = {
					"Obsidian Monstrosity", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[129788] = {
					"Irontide Bonesaw", -- [1]
					"Freehold", -- [2]
				},
				[137204] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[137716] = {
					"Bottom Feeder", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[150254] = {
					"Scraphound", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[136181] = {
					"Volcano", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[134390] = {
					"Sand-crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[138740] = {
					"Musashitake", -- [1]
					"The Underrot", -- [2]
				},
				[138996] = {
					"Earth-Speaker Juwa", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[124927] = {
					"Jun-Ti", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[127486] = {
					"Ashvane Officer", -- [1]
					"Tol Dagor", -- [2]
				},
				[138997] = {
					"Grawlash the Frenzied", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[155629] = {
					"Azsh'ari Stormbinder", -- [1]
					"The Eternal Palace", -- [2]
				},
				[142324] = {
					"Bluefin Dolphin", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[134904] = {
					"Nightlurker", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[134137] = {
					"Temple Attendant", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[152816] = {
					"Stormling", -- [1]
					"The Eternal Palace", -- [2]
				},
				[138999] = {
					"Elder Ordol", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[126848] = {
					"Captain Eudora", -- [1]
					"Freehold", -- [2]
				},
				[133627] = {
					"Tally Zapnabber", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[127488] = {
					"Ashvane Flamecaster", -- [1]
					"Tol Dagor", -- [2]
				},
				[138489] = {
					"Shadow of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[140792] = {
					"Breakbeak Bonepicker", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[139001] = {
					"Wildlands Ursa", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[146678] = {
					"Ancient Protector", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[151028] = {
					"Thornstalker Nydora", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[139002] = {
					"Wildlands Totemic", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[145399] = {
					"Wild Starcaller", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[150773] = {
					"Shimmerskin Pufferfish", -- [1]
					"The Eternal Palace", -- [2]
				},
				[151029] = {
					"Thornspeaker Tavery", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[139003] = {
					"Wildlands Warrior", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140795] = {
					"Dunecircler the Bleak", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[139004] = {
					"Wildlands Shaman", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[127106] = {
					"Irontide Officer", -- [1]
					"Freehold", -- [2]
				},
				[127490] = {
					"Knight Captain Valyri", -- [1]
					"Tol Dagor", -- [2]
				},
				[142587] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				[132864] = {
					"Juvenile Knucklebump", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[135167] = {
					"Spectral Berserker", -- [1]
					"Kings' Rest", -- [2]
				},
				[131585] = {
					"Enthralled Guard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[152311] = {
					"Zanj'ir Myrmidon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134144] = {
					"Living Current", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[140541] = {
					"Kindleweb Creeper", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[139006] = {
					"Wildlands Furbolg", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[69791] = {
					"Cidwow", -- [1]
					"Crucible of Storms", -- [2]
				},
				[131586] = {
					"Banquet Steward", -- [1]
					"Waycrest Manor", -- [2]
				},
				[152312] = {
					"Azsh'ari Witch", -- [1]
					"The Eternal Palace", -- [2]
				},
				[140542] = {
					"Kindleweb Spider", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[125828] = {
					"Zetapally", -- [1]
					"Atal'Dazar", -- [2]
				},
				[135169] = {
					"Spirit Drain Totem", -- [1]
					"The Underrot", -- [2]
				},
				[141566] = {
					"Scrimshaw Gutter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[131587] = {
					"Bewitched Captain", -- [1]
					"Waycrest Manor", -- [2]
				},
				[152313] = {
					"Dreadcoil Hulk", -- [1]
					"The Eternal Palace", -- [2]
				},
				[138496] = {
					"Twilight Drakonaar", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146940] = {
					"Primordial Mindbender", -- [1]
					"Crucible of Storms", -- [2]
				},
				[134914] = {
					"Trapdoor Spider", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[137473] = {
					"Guard Captain Atu", -- [1]
					"Kings' Rest", -- [2]
				},
				[138497] = {
					"Twilight Scalesworn", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[140800] = {
					"Cloudwing the Killthief", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[132868] = {
					"Congealed Azerite", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[137474] = {
					"King Timalji", -- [1]
					"Kings' Rest", -- [2]
				},
				[130307] = {
					"Unstable Typhoon", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[130435] = {
					"Addled Thug", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[142336] = {
					"Pygmy Octopus", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138498] = {
					"Twilight Drake", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[138499] = {
					"Twilight Dragonkin", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[155899] = {
					"Sak'ja", -- [1]
					"The Eternal Palace", -- [2]
				},
				[147967] = {
					"7th Legion Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[131847] = {
					"Waycrest Reveler", -- [1]
					"Waycrest Manor", -- [2]
				},
				[134150] = {
					"Runecarver Sorn", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[138500] = {
					"Twilight Scalesister", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[155900] = {
					"Zsal'iss", -- [1]
					"The Eternal Palace", -- [2]
				},
				[147968] = {
					"Agitated Azerite", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[137989] = {
					"Embalming Fluid", -- [1]
					"Kings' Rest", -- [2]
				},
				[140292] = {
					"Snowfur Alpha", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138501] = {
					"Twilight Whelp", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146945] = {
					"Swarming Voidspawn", -- [1]
					"Crucible of Storms", -- [2]
				},
				[139269] = {
					"Gloom Horror", -- [1]
					"Waycrest Manor", -- [2]
				},
				[133384] = {
					"Merektha", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[131849] = {
					"Crazed Marksman", -- [1]
					"Waycrest Manor", -- [2]
				},
				[140293] = {
					"Snowfur Snarler", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138502] = {
					"Naroviak Wyrm-Bender", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[147202] = {
					"Animated Azershard", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[126983] = {
					"Harlan Sweete", -- [1]
					"Freehold", -- [2]
				},
				[127111] = {
					"Irontide Oarsman", -- [1]
					"Freehold", -- [2]
				},
				[140038] = {
					"Abyssal Eel", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[138247] = {
					"Irontide Marauder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[151041] = {
					"Etruvis the Vassal", -- [1]
					"Crucible of Storms", -- [2]
				},
				[127879] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[126216] = {
					"Zian-Ti Destroyer", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146436] = {
					"Tempting Siren", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[63508] = {
					"Xuen", -- [1]
					"Crucible of Storms", -- [2]
				},
				[123146] = {
					"Torn Spirit", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[153090] = {
					"Lady Venomtongue", -- [1]
					"The Eternal Palace", -- [2]
				},
				[149508] = {
					"Ice Blocked Nathanos", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139529] = {
					"Muklai", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[150276] = {
					"Heavy Scrapbot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[11983] = {
					"Firemaw", -- [1]
					"Blackwing Lair", -- [2]
				},
				[153091] = {
					"Serena Scarscale", -- [1]
					"The Eternal Palace", -- [2]
				},
				[132877] = {
					"Dankscale", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[133389] = {
					"Galvazzt", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[134157] = {
					"Shadow-Borne Warrior", -- [1]
					"Kings' Rest", -- [2]
				},
				[137484] = {
					"King A'akul", -- [1]
					"Kings' Rest", -- [2]
				},
				[145928] = {
					"Skavis Nightstalker", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[134158] = {
					"Shadow-Borne Champion", -- [1]
					"Kings' Rest", -- [2]
				},
				[14302] = {
					"Chromatic Drakonid", -- [1]
					"Blackwing Lair", -- [2]
				},
				[132879] = {
					"Crystalline Giant", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[137485] = {
					"Bloodsworn Agent", -- [1]
					"Kings' Rest", -- [2]
				},
				[146185] = {
					"Firesting Drone", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[148488] = {
					"Unliving Augur", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138509] = {
					"Spellbinder Ulura", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[137486] = {
					"Queen Patlaa", -- [1]
					"Kings' Rest", -- [2]
				},
				[12463] = {
					"Death Talon Flamescale", -- [1]
					"Blackwing Lair", -- [2]
				},
				[146186] = {
					"Firesting Warrior", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138254] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				[137487] = {
					"Skeletal Hunting Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[146187] = {
					"Firesting Dominator", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138255] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[134417] = {
					"Deepsea Ritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[129802] = {
					"Earthrager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136976] = {
					"T'zala", -- [1]
					"Kings' Rest", -- [2]
				},
				[126092] = {
					"Slitherblade Gladiator", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[145932] = {
					"Celestra Brightmoon", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[134418] = {
					"Drowned Depthbringer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[137233] = {
					"Plague Toad", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[139536] = {
					"Zara'thik Drone", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[78116] = {
					"Water Elemental", -- [1]
					"Crucible of Storms", -- [2]
				},
				[129547] = {
					"Blacktooth Knuckleduster", -- [1]
					"Freehold", -- [2]
				},
				[139537] = {
					"Zara'thik Kunchong", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[145934] = {
					"Ivan the Mad", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[128652] = {
					"Viq'Goth", -- [1]
					"Siege of Boralus", -- [2]
				},
				[134932] = {
					"Vileweb Broodqueen", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[129548] = {
					"Blacktooth Brute", -- [1]
					"Freehold", -- [2]
				},
				[140562] = {
					"Brimstone Hound", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[127757] = {
					"Reanimated Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[139539] = {
					"Tavok, Hammer of the Empress", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[131863] = {
					"Raal the Gluttonous", -- [1]
					"Waycrest Manor", -- [2]
				},
				[140563] = {
					"Brimstone Tracker", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[139284] = {
					"Plague Doctor", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[131864] = {
					"Gorak Tul", -- [1]
					"Waycrest Manor", -- [2]
				},
				[136214] = {
					"Windspeaker Heldis", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[136470] = {
					"Refreshment Vendor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134935] = {
					"Mother Vishis", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[155917] = {
					"Azsh'ari Stormcaller", -- [1]
					"The Eternal Palace", -- [2]
				},
				[133912] = {
					"Bloodsworn Defiler", -- [1]
					"The Underrot", -- [2]
				},
				[151056] = {
					"Varanq'ul the Mighty", -- [1]
					"Crucible of Storms", -- [2]
				},
				[147218] = {
					"Spirit of Gold", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135192] = {
					"Honored Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[127119] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[127503] = {
					"Overseer Korgus", -- [1]
					"Tol Dagor", -- [2]
				},
				[136984] = {
					"Reban", -- [1]
					"Kings' Rest", -- [2]
				},
				[131099] = {
					"Giggling Nettlevine", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[155919] = {
					"Stormling", -- [1]
					"The Eternal Palace", -- [2]
				},
				[139799] = {
					"Ironhull Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[148243] = {
					"Fallen Disciple", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[151058] = {
					"Bubbling Blood", -- [1]
					"Crucible of Storms", -- [2]
				},
				[139032] = {
					"Razorfin Waveguard", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[155920] = {
					"Azsh'ari Galeblade", -- [1]
					"The Eternal Palace", -- [2]
				},
				[139800] = {
					"Galecaller Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[150547] = {
					"Scrapbone Grunter", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[151059] = {
					"Eternal Guardian", -- [1]
					"Crucible of Storms", -- [2]
				},
				[134939] = {
					"Bristlethorn Maneater", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[133660] = {
					"BomBot 9000", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[150292] = {
					"Mechagon Cavalry", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[130575] = {
					"Wandering Axebeak", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134940] = {
					"Bristlethorn Piercer", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[135452] = {
					"MOTHER", -- [1]
					"Uldir", -- [2]
				},
				[150293] = {
					"Mechagon Prowler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[132126] = {
					"Gilded Priestess", -- [1]
					"Atal'Dazar", -- [2]
				},
				[152852] = {
					"Pashmar the Fanatical", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134941] = {
					"Bristlethorn Spider", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[61146] = {
					"Black Ox Statue", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134174] = {
					"Shadow-Borne Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[152853] = {
					"Silivaz the Zealous", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134686] = {
					"Mature Krolusk", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[139036] = {
					"Razorfin Javelineer", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[133663] = {
					"Fanatical Headhunter", -- [1]
					"The Underrot", -- [2]
				},
				[150295] = {
					"Tank Buster MK1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[129553] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				[12416] = {
					"Blackwing Legionnaire", -- [1]
					"Blackwing Lair", -- [2]
				},
				[126099] = {
					"Duskcoat Den-Mother", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[12464] = {
					"Death Talon Seether", -- [1]
					"Blackwing Lair", -- [2]
				},
				[136735] = {
					"Ashvane Marine", -- [1]
					"Tol Dagor", -- [2]
				},
				[139806] = {
					"Venture Demolitions Expert", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[123285] = {
					"Southsea Swabbie", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[139039] = {
					"Eso the Fathom-Hunter", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[126100] = {
					"Duskcoat Prowler", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[133666] = {
					"Dizzy's Decoy", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[134946] = {
					"Great Huntsman", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[127124] = {
					"Freehold Barhand", -- [1]
					"Freehold", -- [2]
				},
				[139808] = {
					"Venture Oaf", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[123286] = {
					"Southsea Gambler", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[134691] = {
					"Static-charged Dervish", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[134947] = {
					"Bristlethorn Broodqueen", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[151579] = {
					"Shield Generator", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[122263] = {
					"Spineshell Snapjaw", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138530] = {
					"Volatile Droplet", -- [1]
					"Uldir", -- [2]
				},
				[151068] = {
					"Tentacled Voidpriest", -- [1]
					"Crucible of Storms", -- [2]
				},
				[139042] = {
					"Spearmaster Kashai", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[135204] = {
					"Spectral Hex Priest", -- [1]
					"Kings' Rest", -- [2]
				},
				[151836] = {
					"Void Horror", -- [1]
					"Emerald Dream - HoA Scenario", -- [2]
				},
				[138019] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[140322] = {
					"Stonehusk Broodwatcher", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[134437] = {
					"Medic Bot", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[151325] = {
					"Alarm-o-Bot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[151581] = {
					"Horrific Vision", -- [1]
					"The Eternal Palace", -- [2]
				},
				[139811] = {
					"Venture Sub-Lead", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140067] = {
					"Rustpelt Alpha", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140835] = {
					"Scheming Flame", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[145185] = {
					"Gnomercy 4.U.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[131112] = {
					"Cutwater Striker", -- [1]
					"Tol Dagor", -- [2]
				},
				[140068] = {
					"Rustpelt Snarler", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[140324] = {
					"Stonehusk Harvester", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140836] = {
					"Brightfire", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[132904] = {
					"Sandscalp Villager", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[147745] = {
					"The Indomitable", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[130325] = {
					"Deepsea Viseclaw", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140069] = {
					"Rustpelt Wolf", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[140325] = {
					"Stonehusk Scarab", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[137511] = {
					"Bilge Rat Cutthroat", -- [1]
					"Siege of Boralus", -- [2]
				},
				[139814] = {
					"Merger Specialist Huzzle", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[123289] = {
					"Sparkleshell Deathclaw", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140326] = {
					"Stonehusk Swarmer", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[140838] = {
					"Mischievous Flood", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[151841] = {
					"Burgthok the Herald", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[122266] = {
					"Spineshell Turtle", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[130582] = {
					"Despondent Scallywag", -- [1]
					"Tol Dagor", -- [2]
				},
				[150818] = {
					"Disturbed Blood Globule", -- [1]
					"Uldir Scenario", -- [2]
				},
				[140839] = {
					"Water Spirit", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[153377] = {
					"Goop", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[123290] = {
					"Sparkleshell Clacker", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[138281] = {
					"Faceless Corruptor", -- [1]
					"The Underrot", -- [2]
				},
				[19644] = {
					"Image of Archmage Vargoth", -- [1]
					"Crucible of Storms", -- [2]
				},
				[125977] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[140073] = {
					"Rabidmaw", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[12017] = {
					"Broodlord Lashlayer", -- [1]
					"Blackwing Lair", -- [2]
				},
				[78001] = {
					"Cloudburst Totem", -- [1]
					"Crucible of Storms", -- [2]
				},
				[123291] = {
					"Sparkleshell Crab", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[144680] = {
					"Frida Ironbellows", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134701] = {
					"Blood Effigy", -- [1]
					"The Underrot", -- [2]
				},
				[147495] = {
					"Rastari Enforcer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137516] = {
					"Ashvane Invader", -- [1]
					"Siege of Boralus", -- [2]
				},
				[140075] = {
					"Canus", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[136493] = {
					"Corrupted Watcher", -- [1]
					"Uldir", -- [2]
				},
				[132911] = {
					"Pebblestone Trogg", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[137517] = {
					"Ashvane Destroyer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[129305] = {
					"Rapacious Fathomjaw", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140076] = {
					"Knucklebump Silverback", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140332] = {
					"Chitterbore", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[12465] = {
					"Death Talon Wyrmkin", -- [1]
					"Blackwing Lair", -- [2]
				},
				[140077] = {
					"Knucklebump Stomper", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[136495] = {
					"Nazmani Reaver", -- [1]
					"Uldir", -- [2]
				},
				[140845] = {
					"Playful Gust", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[132913] = {
					"Island Ettin", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[155686] = {
					"Azsh'ari Venomwatcher", -- [1]
					"The Eternal Palace", -- [2]
				},
				[135472] = {
					"Zanazal the Wise", -- [1]
					"Kings' Rest", -- [2]
				},
				[69943] = {
					"Ralph", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[123293] = {
					"Royal Sand Crab", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[148522] = {
					"Ice Block", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146731] = {
					"Zombie Dust Totem", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140846] = {
					"Impish Breeze", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[118176] = {
					"Thundershock", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[140335] = {
					"Nightscale Screecher", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140847] = {
					"Earth Spirit", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[155432] = {
					"Enchanted Emissary", -- [1]
					"Siege of Boralus", -- [2]
				},
				[155688] = {
					"Azsh'ari Frostbinder", -- [1]
					"The Eternal Palace", -- [2]
				},
				[137521] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				[140336] = {
					"Nightscale Wind Serpent", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[144942] = {
					"Spark Bot", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[155433] = {
					"Void-Touched Emissary", -- [1]
					"Siege of Boralus", -- [2]
				},
				[155689] = {
					"Zanj'ir Gladiator", -- [1]
					"The Eternal Palace", -- [2]
				},
				[135475] = {
					"Kula the Butcher", -- [1]
					"Kings' Rest", -- [2]
				},
				[140337] = {
					"Nightscale Hatchling", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[136499] = {
					"Nazmani Ascendant", -- [1]
					"Uldir", -- [2]
				},
				[140849] = {
					"Pernicious Stonekin", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[155434] = {
					"Emissary of the Tides", -- [1]
					"Siege of Boralus", -- [2]
				},
				[133685] = {
					"Befouled Spirit", -- [1]
					"The Underrot", -- [2]
				},
				[152364] = {
					"Radiance of Azshara", -- [1]
					"The Eternal Palace", -- [2]
				},
				[140850] = {
					"Frolicsome Soilkin", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[132918] = {
					"Spitefin Raider", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[155691] = {
					"Zanj'ir Wrangler", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131383] = {
					"Sporecaller Zancha", -- [1]
					"The Underrot", -- [2]
				},
				[135989] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[133943] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[144690] = {
					"Mestrah", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[155693] = {
					"Subdued Brute", -- [1]
					"The Eternal Palace", -- [2]
				},
				[133432] = {
					"Venture Co. Alchemist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130333] = {
					"Gritplate Basilisk", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[140085] = {
					"Pinegraze Greatstag", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140341] = {
					"Cloudscraper", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[135736] = {
					"Gore", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140086] = {
					"Pinegraze Courser", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140854] = {
					"Flow", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[132922] = {
					"Enslaved Murloc", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[130334] = {
					"Gritplate Gazer", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140087] = {
					"Pinegraze Doe", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[136249] = {
					"Guardian Elemental", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[144693] = {
					"Manceroy Flamefist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140855] = {
					"Trickle", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[146485] = {
					"Nevara Nightshade", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[149556] = {
					"Eternal Enforcer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[133436] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130335] = {
					"Gritplate Crystaleye", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[136507] = {
					"Coagulated Blood", -- [1]
					"Uldir", -- [2]
				},
				[145975] = {
					"Stonehide Buck", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140858] = {
					"Pyrekin", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[149558] = {
					"Jaina's Tide Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145976] = {
					"Stonehide Bull", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[136509] = {
					"Animated Rot", -- [1]
					"Uldir", -- [2]
				},
				[145977] = {
					"Mammoth Stonehide", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[14401] = {
					"Master Elemental Shaper Krixix", -- [1]
					"Blackwing Lair", -- [2]
				},
				[136510] = {
					"Faceless Devourer", -- [1]
					"Uldir", -- [2]
				},
				[135231] = {
					"Spectral Brute", -- [1]
					"Kings' Rest", -- [2]
				},
				[140093] = {
					"Pinegraze Fawnmother", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140094] = {
					"Mudsnout Thornback", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146491] = {
					"Phantom of Retribution", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140095] = {
					"Mudsnout Gorer", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146492] = {
					"Phantom of Rage", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[124581] = {
					"Spineshell Snapper", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[151098] = {
					"Shadowy Appendage", -- [1]
					"Crucible of Storms", -- [2]
				},
				[135234] = {
					"Diseased Mastiff", -- [1]
					"Waycrest Manor", -- [2]
				},
				[140096] = {
					"Mudsnout Boar", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[146493] = {
					"Phantom of Slaughter", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129699] = {
					"Ludwig Von Tortollan", -- [1]
					"Freehold", -- [2]
				},
				[135235] = {
					"Spectral Beastmaster", -- [1]
					"Kings' Rest", -- [2]
				},
				[140097] = {
					"Great Dirtbelly", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[140353] = {
					"Brightscale Coilfang", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140609] = {
					"Ravenous Mako", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140354] = {
					"Brightscale Wind Serpent", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[138819] = {
					"Bloodwake Marauder", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[151613] = {
					"Anti-Personnel Squirrel", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[136005] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140355] = {
					"Brightscale Screecher", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[124583] = {
					"Garnetback Worm", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[138820] = {
					"Bloodwake Vrykul", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[149311] = {
					"Shandris Feathermoon", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[136006] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140356] = {
					"Brightscale Hatchling", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146753] = {
					"Kul Tiran Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138821] = {
					"Bloodwake Warmaiden", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[149312] = {
					"Ferocious Swiftclaw", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[135239] = {
					"Spectral Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[154174] = {
					"Horrific Summoner", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134216] = {
					"Shadeweaver Zarra", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[144963] = {
					"Kimbul's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149569] = {
					"Dazari Worshipper", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[131402] = {
					"Underrot Tick", -- [1]
					"The Underrot", -- [2]
				},
				[129318] = {
					"Sandskitter Crab", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[142149] = {
					"Unworthy Vessel", -- [1]
					"Uldir", -- [2]
				},
				[136264] = {
					"Half-Finished Mummy", -- [1]
					"Kings' Rest", -- [2]
				},
				[138823] = {
					"Bloodwake Wayfinder", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[135241] = {
					"Bilge Rat Pillager", -- [1]
					"Siege of Boralus", -- [2]
				},
				[142150] = {
					"Nazmani Defiler", -- [1]
					"Uldir", -- [2]
				},
				[128551] = {
					"Irontide Mastiff", -- [1]
					"Freehold", -- [2]
				},
				[146756] = {
					"Energized Storm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[133963] = {
					"Test Subject", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140360] = {
					"Sunback", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[140616] = {
					"Rot-Fused Nazmani", -- [1]
					"Uldir", -- [2]
				},
				[119724] = {
					"Tidal Surger", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[130087] = {
					"Irontide Raider", -- [1]
					"Tol Dagor", -- [2]
				},
				[140361] = {
					"Darkshadow the Omen", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[138826] = {
					"Leikneir the Brave", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[151876] = {
					"Wandering Spirit", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[135245] = {
					"Bilge Rat Demolisher", -- [1]
					"Siege of Boralus", -- [2]
				},
				[131407] = {
					"Venture Goon", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140107] = {
					"Deathsting Lasher", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[140619] = {
					"Coastal Fathomjaw", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[134990] = {
					"Charged Dust Devil", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[135246] = {
					"\"Stabby\" Lottie", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140108] = {
					"Deathsting Scorpid", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[140620] = {
					"South Sea Stinger", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[144970] = {
					"Kaldorei Archer", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[134991] = {
					"Sandfury Stonefist", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[12435] = {
					"Razorgore the Untamed", -- [1]
					"Blackwing Lair", -- [2]
				},
				[135759] = {
					"Earthwall Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[144971] = {
					"Druid of the Branch", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[135248] = {
					"Briona the Bloodthirsty", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[131410] = {
					"Gargantuan Venomscale", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[131666] = {
					"Coven Thornshaper", -- [1]
					"Waycrest Manor", -- [2]
				},
				[146251] = {
					"Sister Katherine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[142413] = {
					"Wisp", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[144972] = {
					"Kaldorei Huntress", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[134993] = {
					"Mchimba the Embalmer", -- [1]
					"Kings' Rest", -- [2]
				},
				[139343] = {
					"Icetusk Drudge", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[147787] = {
					"7th Legion Battlemage", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[131667] = {
					"Soulbound Goliath", -- [1]
					"Waycrest Manor", -- [2]
				},
				[138064] = {
					"Posh Vacationer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[144973] = {
					"Kaldorei Sentinel", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[134994] = {
					"Spectral Headhunter", -- [1]
					"Kings' Rest", -- [2]
				},
				[146253] = {
					"Brother Joseph", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[150859] = {
					"Za'qul", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134739] = {
					"Purification Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[131669] = {
					"Jagged Hound", -- [1]
					"Waycrest Manor", -- [2]
				},
				[133972] = {
					"Heavy Cannon", -- [1]
					"Tol Dagor", -- [2]
				},
				[146766] = {
					"Greater Serpent Totem", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[131670] = {
					"Heartsbane Vinetwister", -- [1]
					"Waycrest Manor", -- [2]
				},
				[135765] = {
					"Torrent Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[146256] = {
					"Laminaria", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138836] = {
					"Zara'thik Swarmguard", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[151630] = {
					"Void Ichor", -- [1]
					"Crucible of Storms", -- [2]
				},
				[133463] = {
					"Venture Co. War Machine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146769] = {
					"Druid of the Claw", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[138837] = {
					"Zara'thik Ambershaper", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[134232] = {
					"Hired Assassin", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146770] = {
					"Druid of the Claw", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[138838] = {
					"Zara'thik Mantid", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[140630] = {
					"Ornate Puffer", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138839] = {
					"Zara'thik Deathsinger", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[139351] = {
					"Shadowspeaker Angolo", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140631] = {
					"South Sea Ray", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138840] = {
					"Zara'thik Impaler", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[149331] = {
					"Luminous Azerite", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[135258] = {
					"Irontide Marauder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[140632] = {
					"Scaleback Snapper", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138841] = {
					"Zara'thik Battlesinger", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[139097] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[131677] = {
					"Heartsbane Runeweaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				[138842] = {
					"Ta'kil the Resonator", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[138843] = {
					"Wingleader Srak'ik", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[136541] = {
					"Bile Oozeling", -- [1]
					"Waycrest Manor", -- [2]
				},
				[136797] = {
					"Pebblestone Skullthumper", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[149591] = {
					"Rastari Marksman", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136798] = {
					"Pebblestone Bonesnapper", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[12420] = {
					"Blackwing Mage", -- [1]
					"Blackwing Lair", -- [2]
				},
				[135263] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[12468] = {
					"Death Talon Hatcher", -- [1]
					"Blackwing Lair", -- [2]
				},
				[128434] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[148569] = {
					"Breakwater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140382] = {
					"Jeweled Harvester", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[138847] = {
					"Battle-Mender Ka'vaz", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[17252] = {
					"Rivinzugul", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[128435] = {
					"Toxic Saurid", -- [1]
					"Atal'Dazar", -- [2]
				},
				[140383] = {
					"Jeweled Scarab", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[140384] = {
					"Jeweled Broodwatcher", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[138849] = {
					"Hivelord Vix'ick", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[137058] = {
					"Hexxer Magoda", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[131685] = {
					"Runic Disciple", -- [1]
					"Waycrest Manor", -- [2]
				},
				[138338] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[137059] = {
					"Headshrinker Gaha", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[155738] = {
					"Rallying Banner", -- [1]
					"The Eternal Palace", -- [2]
				},
				[151900] = {
					"Horrific Summoner", -- [1]
					"The Eternal Palace", -- [2]
				},
				[151133] = {
					"Hati", -- [1]
					"Crucible of Storms", -- [2]
				},
				[131431] = {
					"Safety Inspection Bot", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[136549] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144993] = {
					"Crazed Thistlebear", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[137061] = {
					"Suluz Wind-Tamer", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[151902] = {
					"Vile Spirit", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[137062] = {
					"Blood-Hunter Akal", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[137830] = {
					"Pallid Gorger", -- [1]
					"Waycrest Manor", -- [2]
				},
				[130485] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136295] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[132713] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[139110] = {
					"Spark Channeler", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[136552] = {
					"Kao-Tien Marauder", -- [1]
					"Atal'Dazar", -- [2]
				},
				[136808] = {
					"Dusthide", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[151649] = {
					"Defense Bot Mk I", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[133482] = {
					"Crawler Mine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136297] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[131436] = {
					"Chosen Blood Matron", -- [1]
					"The Underrot", -- [2]
				},
				[134251] = {
					"Seneschal M'bara", -- [1]
					"Kings' Rest", -- [2]
				},
				[136810] = {
					"Pebblestone Earthrager", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[144231] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140393] = {
					"Tendril of Gore", -- [1]
					"Uldir", -- [2]
				},
				[130743] = {
					"Adolescent Direhorn", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136811] = {
					"Pebblestone Flinger", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[139626] = {
					"Dredged Sailor", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[144232] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[148582] = {
					"Stormbound Guardian", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136812] = {
					"Pebblestone Geomancer", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[151653] = {
					"Void Tentacle", -- [1]
					"Uldir Scenario", -- [2]
				},
				[130488] = {
					"Mech Jockey", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134766] = {
					"Wavespitter", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[148584] = {
					"Archmage Mordent Evenshade", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[134767] = {
					"Deathclaw Egg-Mother", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[130489] = {
					"Dazarian Stalker", -- [1]
					"Freehold", -- [2]
				},
				[144747] = {
					"Pa'ku's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149098] = {
					"Maiev Shadowsong", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[151657] = {
					"Bomb Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[134514] = {
					"Abyssal Cultist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[145261] = {
					"Opulence", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149611] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[141935] = {
					"Thrashing Crawg", -- [1]
					"Uldir", -- [2]
				},
				[153194] = {
					"Briny Bubble", -- [1]
					"The Eternal Palace", -- [2]
				},
				[151659] = {
					"Rocket Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[131445] = {
					"Block Warden", -- [1]
					"Tol Dagor", -- [2]
				},
				[140657] = {
					"Craghorn Behemoth", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134005] = {
					"Shalebiter", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[151149] = {
					"Hati", -- [1]
					"Crucible of Storms", -- [2]
				},
				[151917] = {
					"Tar'al Bonespitter", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[141938] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[130620] = {
					"Frostfencer Seraphi", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[87761] = {
					"Dungeoneer's Training Dummy", -- [1]
					"FW Horde Garrison Level 3", -- [2]
				},
				[141939] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[129469] = {
					"Deepsea Crawler", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[144754] = {
					"Fa'thuul the Feared", -- [1]
					"Crucible of Storms", -- [2]
				},
				[147825] = {
					"7th Legion Medic", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[130621] = {
					"Squallshaper Bryson", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[144755] = {
					"Zaxasj the Speaker", -- [1]
					"Crucible of Storms", -- [2]
				},
				[137591] = {
					"Healing Tide Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[129470] = {
					"Deepsea Crab", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[129598] = {
					"Freehold Pack Mule", -- [1]
					"Freehold", -- [2]
				},
				[147827] = {
					"7th Legion Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144245] = {
					"South Sea Glider", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[130622] = {
					"Squallshaper Auran", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[144757] = {
					"Edgard Shadeclaw", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[147828] = {
					"7th Legion Cavalier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129471] = {
					"Deepsea Sandcrawler", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[129599] = {
					"Cutwater Knife Juggler", -- [1]
					"Freehold", -- [2]
				},
				[134012] = {
					"Taskmaster Askari", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[144759] = {
					"Keeper Dagda", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[144248] = {
					"Head Machinist Sparkflux", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[129600] = {
					"Bilge Rat Brinescale", -- [1]
					"Freehold", -- [2]
				},
				[136828] = {
					"Witherbranch Warrior", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[155763] = {
					"Darkweaver Kar'dress", -- [1]
					"The Eternal Palace", -- [2]
				},
				[14261] = {
					"Blue Drakonid", -- [1]
					"Blackwing Lair", -- [2]
				},
				[144249] = {
					"Omega Buster", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[146552] = {
					"Kul Tiran Tideweaver", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136829] = {
					"Witherbranch Axe Thrower", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[145273] = {
					"The Hand of In'zashi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[155764] = {
					"Rak'sha the Swift", -- [1]
					"The Eternal Palace", -- [2]
				},
				[100943] = {
					"Earthen Wall Totem", -- [1]
					"Crucible of Storms", -- [2]
				},
				[136830] = {
					"Witherbranch Headhunter", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[12422] = {
					"Death Talon Dragonspawn", -- [1]
					"Blackwing Lair", -- [2]
				},
				[139389] = {
					"Steelscale Volshasis", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[140669] = {
					"Rockmane Howler", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[136831] = {
					"Witherbranch Witch Doctor", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[131009] = {
					"Spirit of Gold", -- [1]
					"Atal'Dazar", -- [2]
				},
				[135552] = {
					"Deathtouched Slaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				[129602] = {
					"Irontide Enforcer", -- [1]
					"Freehold", -- [2]
				},
				[138623] = {
					"Amathet Archer", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[155767] = {
					"Grul'taj", -- [1]
					"The Eternal Palace", -- [2]
				},
				[58959] = {
					"Piple", -- [1]
					"The Eternal Palace", -- [2]
				},
				[135975] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[155156] = {
					"Jaina Proudmoore", -- [1]
					"The Eternal Palace", -- [2]
				},
				[154744] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[144765] = {
					"Asithra Diresong", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[134786] = {
					"Spineclaw Sandsnapper", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[153064] = {
					"Overzealous Hulk", -- [1]
					"The Eternal Palace", -- [2]
				},
				[139392] = {
					"Mirelurk Saurok", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[129529] = {
					"Blacktooth Scrapper", -- [1]
					"Freehold", -- [2]
				},
				[150139] = {
					"K'thxx the Void Hunter", -- [1]
					"Uldir Scenario", -- [2]
				},
				[142207] = {
					"Speaker Obara", -- [1]
					"Uldir", -- [2]
				},
				[138369] = {
					"Footbomb Hooligan", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146813] = {
					"Gunther the Gray", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[134787] = {
					"Spineclaw Crab", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[136805] = {
					"Cragreaver", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[139393] = {
					"Mirelurk Clutchguard", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[146245] = {
					"Skitterwing", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[135247] = {
					"Varigg", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[150396] = {
					"Aerial Unit R-21/X", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[140092] = {
					"Longstrider", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[144767] = {
					"Gonk's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134788] = {
					"Spineclaw Rockshell", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[135044] = {
					"Shredmaw the Voracious", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[139394] = {
					"Mirelurk Bog Priest", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[135002] = {
					"Demonic Tyrant", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[152910] = {
					"Queen Azshara", -- [1]
					"The Eternal Palace", -- [2]
				},
				[150397] = {
					"King Mechagon", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[150653] = {
					"Blackwater Behemoth", -- [1]
					"The Eternal Palace", -- [2]
				},
				[138627] = {
					"Amathet Hierophant", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[134789] = {
					"Monstrous Spineclaw", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[153335] = {
					"Potent Spark", -- [1]
					"The Eternal Palace", -- [2]
				},
				[139395] = {
					"Mirelurk Bogtender", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[155768] = {
					"Squallbinder Mal'ur", -- [1]
					"The Eternal Palace", -- [2]
				},
				[150142] = {
					"Scrapbone Trashtosser", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[126642] = {
					"Sandyback Crab", -- [1]
					"Siege of Boralus", -- [2]
				},
				[148607] = {
					"Kal'ia Pa'kuaya", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146816] = {
					"Sir Barton Brigham", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[132743] = {
					"Flamescale Wavebreaker", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[126918] = {
					"Irontide Crackshot", -- [1]
					"Freehold", -- [2]
				},
				[139396] = {
					"Mirelurk Guardian", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[140060] = {
					"Grizzlefur Bear", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[150143] = {
					"Scrapbone Grinder", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[140062] = {
					"Diremaul", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139341] = {
					"Icetusk Shadowcaster", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138629] = {
					"Vicar Djosa", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[145026] = {
					"Swifttail Scavenger", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[12461] = {
					"Death Talon Overseer", -- [1]
					"Blackwing Lair", -- [2]
				},
				[139397] = {
					"Mirelurk Lurker", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[139340] = {
					"Icetusk Necromancer", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[122264] = {
					"Elder Spineshell", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[134024] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				[134280] = {
					"Vindicator Baatul", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[138630] = {
					"Cleric Izzad", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[132745] = {
					"Frostscale Wanderer", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[135048] = {
					"Gorestained Piglet", -- [1]
					"Waycrest Manor", -- [2]
				},
				[139398] = {
					"Mirelurk Assassin", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[139037] = {
					"Razorfin Jinyu", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[151676] = {
					"Stinkfur Hooligan", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[100820] = {
					"Elemental Raptor", -- [1]
					"Crucible of Storms", -- [2]
				},
				[148610] = {
					"Druid of the Branch", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[144772] = {
					"Lady Tamakeen", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138887] = {
					"Bloodwake Mystic", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[135049] = {
					"Dreadwing Raven", -- [1]
					"Waycrest Manor", -- [2]
				},
				[139399] = {
					"Mirelurk Basher", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[155612] = {
					"Azsh'ari Channeler", -- [1]
					"The Eternal Palace", -- [2]
				},
				[135817] = {
					"Zephyr", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[128455] = {
					"T'lonja", -- [1]
					"Atal'Dazar", -- [2]
				},
				[148611] = {
					"Yoru'cha", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[132491] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[138888] = {
					"Bloodwake Soothsayer", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[128967] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[139400] = {
					"Mirelurk Rivercaller", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[135562] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[135818] = {
					"Gust Soldier", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[138484] = {
					"Obsidian Prophet", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140424] = {
					"Scythehorn", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[138472] = {
					"Obsidian Captain", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135474] = {
					"Thistle Acolyte", -- [1]
					"Waycrest Manor", -- [2]
				},
				[135642] = {
					"Duskcoat Tiger Cub", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[155161] = {
					"Shandris Feathermoon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[151679] = {
					"Stinkfur Thumper", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[135819] = {
					"Living Tornado", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[14022] = {
					"Corrupted Red Whelp", -- [1]
					"Blackwing Lair", -- [2]
				},
				[148613] = {
					"Commander Broadside", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138634] = {
					"Prophet Lapisa", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[138890] = {
					"Dargulf the Spirit-Seeker", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[135052] = {
					"Blight Toad", -- [1]
					"Waycrest Manor", -- [2]
				},
				[138968] = {
					"Zian-Ti Ironmaw", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[151872] = {
					"Grip of Horror", -- [1]
					"Emerald Dream - HoA Scenario", -- [2]
				},
				[131726] = {
					"Gunnolf the Ferocious", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[136076] = {
					"Agitated Nimbus", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[148614] = {
					"Kul Tiran Cannoneer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144776] = {
					"Airyn Swiftfeet", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[136844] = {
					"Sandscalp Warrior", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[144246] = {
					"K.U.-J.0.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[151685] = {
					"Stinkfur Denmother", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[143753] = {
					"Vazun Starspeaker", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[131727] = {
					"Fenrae the Cunning", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[140171] = {
					"Mistfur", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[148615] = {
					"Div'yane", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138636] = {
					"Prince Abari", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[136845] = {
					"Sandscalp Axe Thrower", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[133007] = {
					"Unbound Abomination", -- [1]
					"The Underrot", -- [2]
				},
				[140381] = {
					"Jeweled Swarmer", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[143754] = {
					"Forgus Anvilrage", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[136840] = {
					"Zoga", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[151812] = {
					"Detect-o-Bot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[139486] = {
					"Skycrack", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134799] = {
					"Fathomclaw", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[136846] = {
					"Sandscalp Blood Drinker", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[137614] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[151687] = {
					"Shrieker", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[143755] = {
					"Fitzi Gearwobble", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[140683] = {
					"Darkfur the Smasher", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[154758] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[148617] = {
					"Akunda the Devout", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139406] = {
					"Hassan the Bloody Scale", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[145035] = {
					"Swifttail Courser", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[137103] = {
					"Blood Visage", -- [1]
					"The Underrot", -- [2]
				},
				[151688] = {
					"Melonsmasher", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[138624] = {
					"Amathet Champion", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[140359] = {
					"Thunderhawk Devourer", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[134801] = {
					"Cracked-Shell", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[148618] = {
					"Archdruid Andrenius", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[146827] = {
					"Feral Dog", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[155271] = {
					"Abyssal Spearhunter", -- [1]
					"The Eternal Palace", -- [2]
				},
				[128921] = {
					"Duskcoat Tiger", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[151689] = {
					"Clawfoot the Leaper", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[132742] = {
					"Flamescale Strider", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[150154] = {
					"Saurolisk Bonenipper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[155272] = {
					"Blackwater Oracle", -- [1]
					"The Eternal Palace", -- [2]
				},
				[148619] = {
					"Echo of Akunda", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146828] = {
					"Feral Pup", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[132755] = {
					"Breakbeak Scavenger", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[134769] = {
					"Jagged Claw", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[155628] = {
					"Azsh'ari Oracle", -- [1]
					"The Eternal Palace", -- [2]
				},
				[129227] = {
					"Azerokk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[150251] = {
					"Pistonhead Mechanic", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[151901] = {
					"Restless Spirit", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[140432] = {
					"Craghoof Leaper", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[144782] = {
					"Brother Bruen", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[155273] = {
					"Garval the Vanquisher", -- [1]
					"The Eternal Palace", -- [2]
				},
				[151839] = {
					"Restless Soul", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[132741] = {
					"Flamescale Hydra", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[153196] = {
					"Scrapbone Grunter", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[148621] = {
					"Jek'kwa", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136083] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[130635] = {
					"Stonefury", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140689] = {
					"Dreadfang Slitherer", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[151027] = {
					"Thornguard Burton", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[132056] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[88288] = {
					"Dungeoneer's Training Dummy", -- [1]
					"FW Horde Garrison Level 3", -- [2]
				},
				[143760] = {
					"Bump-On-A-Log", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[154663] = {
					"Gnome-Eating Droplet", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[134805] = {
					"Wandering Behemoth", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140434] = {
					"Craghoof Rockhorn", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140690] = {
					"Dreadfang Viper", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[155275] = {
					"Tideshaper Korvess", -- [1]
					"The Eternal Palace", -- [2]
				},
				[135240] = {
					"Soul Essence", -- [1]
					"Waycrest Manor", -- [2]
				},
				[151639] = {
					"Crazed Gyreworm", -- [1]
					"Neltharion's Lair - HoA Scenario", -- [2]
				},
				[155158] = {
					"First Arcanist Thalyssra", -- [1]
					"The Eternal Palace", -- [2]
				},
				[155276] = {
					"Bursting Cragfish", -- [1]
					"The Eternal Palace", -- [2]
				},
				[146320] = {
					"Prelate Za'lan", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140435] = {
					"Greyfur", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140691] = {
					"Giant Dreadfang", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[134806] = {
					"Bloodsnapper", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[142454] = {
					"Ashtail Bandicoon", -- [1]
					"Freehold", -- [2]
				},
				[139412] = {
					"Gashasz", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[137940] = {
					"Safety Shark", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[150159] = {
					"King Gobbamak", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[140436] = {
					"Snorthoof", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[148624] = {
					"Echo of Pa'ku", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146833] = {
					"Necromancer Conjurer", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[155277] = {
					"Gorjesh the Smasher", -- [1]
					"The Eternal Palace", -- [2]
				},
				[145298] = {
					"Feral Hungerer", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[126845] = {
					"Captain Jolly", -- [1]
					"Freehold", -- [2]
				},
				[139034] = {
					"Razorfin Impaler", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[150160] = {
					"Scrapbone Bully", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[146322] = {
					"Siegebreaker Roka", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148625] = {
					"Echo of Krag'wa", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146834] = {
					"Necromancer Master", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[155278] = {
					"Shimmerskin Pufferfish", -- [1]
					"The Eternal Palace", -- [2]
				},
				[150297] = {
					"Mechagon Renormalizer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[139414] = {
					"Mire Priest Vassz", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[139670] = {
					"Morgok", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[131574] = {
					"Shimmerfin", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134041] = {
					"Infected Peasant", -- [1]
					"Waycrest Manor", -- [2]
				},
				[156133] = {
					"Dreadcoil Hulk", -- [1]
					"The Eternal Palace", -- [2]
				},
				[146835] = {
					"Ghoul", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[126023] = {
					"Harbor Saurid", -- [1]
					"The Underrot", -- [2]
				},
				[134442] = {
					"Vectis", -- [1]
					"Uldir", -- [2]
				},
				[155791] = {
					"Horrific Shrieker", -- [1]
					"The Eternal Palace", -- [2]
				},
				[151638] = {
					"Crazed Earth Rager", -- [1]
					"Neltharion's Lair - HoA Scenario", -- [2]
				},
				[129526] = {
					"Bilge Rat Swabby", -- [1]
					"Freehold", -- [2]
				},
				[1860] = {
					"Graz'krast", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[130638] = {
					"Vicejaw Crocolisk", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140695] = {
					"Albino Dreadfang", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[151658] = {
					"Strider Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[126928] = {
					"Irontide Corsair", -- [1]
					"Freehold", -- [2]
				},
				[135322] = {
					"The Golden Serpent", -- [1]
					"Kings' Rest", -- [2]
				},
				[129231] = {
					"Rixxa Fluxflame", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[135834] = {
					"Vile Cloud", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[146894] = {
					"Fleshrot Cabalist", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[127479] = {
					"The Sand Queen", -- [1]
					"Tol Dagor", -- [2]
				},
				[136160] = {
					"King Dazar", -- [1]
					"Kings' Rest", -- [2]
				},
				[136858] = {
					"Jan'li", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[131818] = {
					"Marked Sister", -- [1]
					"Waycrest Manor", -- [2]
				},
				[139417] = {
					"Rotwood the Cursed", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[137626] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[139418] = {
					"Stagnant One", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[14023] = {
					"Corrupted Green Whelp", -- [1]
					"Blackwing Lair", -- [2]
				},
				[140441] = {
					"Muskflank Calf", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146838] = {
					"Brittle Skeleton", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[136859] = {
					"Bloodscalp", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[145303] = {
					"Kaldorei Glaive Thrower", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[122963] = {
					"Rezan", -- [1]
					"Atal'Dazar", -- [2]
				},
				[129232] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[150165] = {
					"Slime Elemental", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[151755] = {
					"Shadehound", -- [1]
					"Emerald Dream - HoA Scenario", -- [2]
				},
				[140442] = {
					"Muskflank Yak", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140540] = {
					"Kindleweb Clutchkeeper", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[136860] = {
					"Tracker Vu'ka", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[145304] = {
					"Feral Strangler", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[139419] = {
					"High Oracle Asayza", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[147439] = {
					"Molten Hound", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135837] = {
					"Cyclonic Lieutenant", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146893] = {
					"Fleshrot Mystic", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[130640] = {
					"Vicejaw Sawtooth", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146840] = {
					"Skeleton Guardian", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[130896] = {
					"Blackout Barrel", -- [1]
					"Freehold", -- [2]
				},
				[145305] = {
					"Feral Hulk", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[138465] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[136186] = {
					"Tidesage Spiritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[148120] = {
					"Kul Tiran Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135699] = {
					"Ashvane Jailer", -- [1]
					"Tol Dagor", -- [2]
				},
				[140444] = {
					"Muskflank Bull", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[138653] = {
					"Hosvir of the Rotting Hull", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[149144] = {
					"Jaina's Tide Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140643] = {
					"Ferocious Craghorn", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[136496] = {
					"Nazmani Chosen", -- [1]
					"Uldir", -- [2]
				},
				[132170] = {
					"Striped Pacu", -- [1]
					"The Eternal Palace", -- [2]
				},
				[150168] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[136190] = {
					"Shadowy Rift", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140425] = {
					"Surefoot", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[136863] = {
					"Great Mota", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[147098] = {
					"Spirit of Xuen", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135763] = {
					"Voidling", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[139422] = {
					"Scaled Krolusk Tamer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[150169] = {
					"Toxic Lurker", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[127315] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[127799] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[152703] = {
					"Walkie Shockie X1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[146843] = {
					"Spiked Ghoul", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[136864] = {
					"Uguu the Feared", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[138469] = {
					"Obsidian Scalebane", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[135329] = {
					"Matron Bryndle", -- [1]
					"Waycrest Manor", -- [2]
				},
				[135893] = {
					"Burning Emberguard", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[5913] = {
					"Tremor Totem", -- [1]
					"Crucible of Storms", -- [2]
				},
				[145053] = {
					"Eldritch Abomination", -- [1]
					"Crucible of Storms", -- [2]
				},
				[140447] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[146844] = {
					"Olfkrig the Indentured", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[136865] = {
					"Uzan the Sandreaver", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139033] = {
					"Razorfin Watershaper", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[138830] = {
					"Thorvast, Guided by the Stars", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[131492] = {
					"Devout Blood Priest", -- [1]
					"The Underrot", -- [2]
				},
				[148970] = {
					"7th Legion Medic", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144286] = {
					"Asset Manager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130437] = {
					"Mine Rat", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[141565] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[136866] = {
					"Oomgut Tribesman", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134796] = {
					"King Spineclaw", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[139425] = {
					"Crazed Incubator", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[120651] = {
					"Explosives", -- [1]
					"Kings' Rest", -- [2]
				},
				[135761] = {
					"Thundering Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[137029] = {
					"Ordnance Specialist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146553] = {
					"Kul Tiran Strongarm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148893] = {
					"Tormented Soul", -- [1]
					"Tol Dagor", -- [2]
				},
				[136867] = {
					"Oomgut Shooter", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[153755] = {
					"Naeno Megacrash", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[147614] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138516] = {
					"Twilight Evolutionist", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[133870] = {
					"Diseased Lasher", -- [1]
					"The Underrot", -- [2]
				},
				[136100] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[134821] = {
					"Vilegaze Petrifier", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[148894] = {
					"Lost Soul", -- [1]
					"Tol Dagor", -- [2]
				},
				[136868] = {
					"Oomgut Scrapper", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[32517] = {
					"Loque", -- [1]
					"Crucible of Storms", -- [2]
				},
				[146889] = {
					"Fleshrot Deathwalker", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[138628] = {
					"Amathet Priest", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[142242] = {
					"Warmother Ye'du", -- [1]
					"Uldir", -- [2]
				},
				[126422] = {
					"Coralback Scuttler", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[138660] = {
					"Mist Hound", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146848] = {
					"Eerie Conglomeration", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[136869] = {
					"Oomgut Ambusher", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140430] = {
					"Craghoof Bounder", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[122968] = {
					"Yazma", -- [1]
					"Atal'Dazar", -- [2]
				},
				[140268] = {
					"Ano Forest-Keeper", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[135846] = {
					"Sand-Crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[129601] = {
					"Cutwater Harpooner", -- [1]
					"Freehold", -- [2]
				},
				[135764] = {
					"Explosive Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[143011] = {
					"Sandy Perch", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[145058] = {
					"Shadefeather Raven", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[122965] = {
					"Vol'kaal", -- [1]
					"Atal'Dazar", -- [2]
				},
				[139429] = {
					"Stonebound Warrior", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[131850] = {
					"Maddened Survivalist", -- [1]
					"Waycrest Manor", -- [2]
				},
				[126423] = {
					"Coralback Crab", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[134056] = {
					"Aqu'sirr", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[138822] = {
					"Bloodwake Harpooner", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146850] = {
					"Grand Master Ulrich", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[136871] = {
					"Oomgut Shaman", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[136250] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[122969] = {
					"Zanchuli Witch-Doctor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[139211] = {
					"Everbloom", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[129366] = {
					"Bilge Rat Buccaneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[138493] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[140454] = {
					"Many-Braids the Elder", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[144840] = {
					"Mottled Fawn", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[145060] = {
					"Monstrous Shadefeather", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[129640] = {
					"Snarling Dockhound", -- [1]
					"Siege of Boralus", -- [2]
				},
				[138831] = {
					"Horvuld Oceanscythe", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[148483] = {
					"Ancestral Avenger", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144293] = {
					"Waste Processing Unit", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[134058] = {
					"Galecaller Faye", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[140455] = {
					"Bramblefur Calf", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[146852] = {
					"Konrad the Enslaver", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[145061] = {
					"Screeching Nightwing", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[135470] = {
					"Aka'ali the Conqueror", -- [1]
					"Kings' Rest", -- [2]
				},
				[139432] = {
					"Lu'si", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[148623] = {
					"Echo of Gonk", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129367] = {
					"Bilge Rat Tempest", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144294] = {
					"Mechagon Tinkerer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[140456] = {
					"Bramblefur Musken", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[146596] = {
					"Darkscale Myrmidon", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[140968] = {
					"Garnetback Striker", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[139433] = {
					"Sister of Anguish", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[147621] = {
					"Dark Iron Vanguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135254] = {
					"Irontide Raider", -- [1]
					"Tol Dagor", -- [2]
				},
				[14024] = {
					"Corrupted Blue Whelp", -- [1]
					"Blackwing Lair", -- [2]
				},
				[144295] = {
					"Mechagon Mechanic", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[140457] = {
					"Bramblefur Grazer", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[144807] = {
					"Ravenous Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134828] = {
					"Aqualing", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[144071] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[155810] = {
					"Frozen Sentry", -- [1]
					"The Eternal Palace", -- [2]
				},
				[122971] = {
					"Dazar'ai Juggernaut", -- [1]
					"Atal'Dazar", -- [2]
				},
				[139946] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[144296] = {
					"Spider Tank", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[140458] = {
					"Bramblefur Bull", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[135706] = {
					"Bilge Rat Looter", -- [1]
					"Tol Dagor", -- [2]
				},
				[145064] = {
					"Blaze", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[144941] = {
					"Akunda's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[131858] = {
					"Thornguard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[122076] = {
					"Snow Orb", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[14264] = {
					"Red Drakonid", -- [1]
					"Blackwing Lair", -- [2]
				},
				[127497] = {
					"Ashvane Warden", -- [1]
					"Tol Dagor", -- [2]
				},
				[134793] = {
					"Glowspine", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[124582] = {
					"Chasm-Hunter", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[145065] = {
					"Fledgling Nightwing", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[129214] = {
					"Coin-Operated Crowd Pummeler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[122972] = {
					"Dazar'ai Augur", -- [1]
					"Atal'Dazar", -- [2]
				},
				[126424] = {
					"Coralback Surfcrawler", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[129369] = {
					"Irontide Raider", -- [1]
					"Siege of Boralus", -- [2]
				},
				[134063] = {
					"Brother Ironhull", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[12467] = {
					"Death Talon Captain", -- [1]
					"Blackwing Lair", -- [2]
				},
				[142199] = {
					"Alpine Hawk", -- [1]
					"Freehold", -- [2]
				},
				[14456] = {
					"Blackwing Guardsman", -- [1]
					"Blackwing Lair", -- [2]
				},
				[145067] = {
					"Shadefeather Hatchling", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[155813] = {
					"Court Attendant", -- [1]
					"The Eternal Palace", -- [2]
				},
				[12457] = {
					"Blackwing Spellbinder", -- [1]
					"Blackwing Lair", -- [2]
				},
				[139949] = {
					"Plague Doctor", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[130521] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[146884] = {
					"Warlord Hjelskard", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[139438] = {
					"Soul-Bringer Togan", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140973] = {
					"Bore Tunneler", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[147370] = {
					"Bladeguard Kaja", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[122973] = {
					"Dazar'ai Confessor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134215] = {
					"Duskrunner Lorinas", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[129370] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144300] = {
					"Mechagon Citizen", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[140974] = {
					"Eldercraw", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146859] = {
					"Enslaved Rock Elemental", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[136880] = {
					"Bristlemane Quilboar", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138063] = {
					"Posh Vacationer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134286] = {
					"Archmage Tamuura", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[126093] = {
					"Slitherblade Saurok", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[144301] = {
					"Living Waste", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[130522] = {
					"Freehold Shipmate", -- [1]
					"Freehold", -- [2]
				},
				[146860] = {
					"Mistscorn Marauder", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[148907] = {
					"Prismatic Image", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136848] = {
					"Sandscalp Soothsayer", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[152512] = {
					"Stormwraith", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134214] = {
					"Riftblade Kelain", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[151978] = {
					"Waterstrider", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[129371] = {
					"Riptide Shredder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[140295] = {
					"Snowfur Pup", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140976] = {
					"Bore Worm", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[132532] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[136882] = {
					"Bristlemane Defender", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[130011] = {
					"Irontide Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[126429] = {
					"Encrusted Coralback", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[133556] = {
					"Razak Ironsides", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[136883] = {
					"Bristlemane Thorncaller", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[144303] = {
					"G.U.A.R.D.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[146882] = {
					"Gargantuan Blighthound", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[146862] = {
					"Mistscorn Subjugator", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140977] = {
					"Jadescale Gnasher", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[148673] = {
					"Vessel of Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[152236] = {
					"Lady Ashvane", -- [1]
					"The Eternal Palace", -- [2]
				},
				[133557] = {
					"Razak Ironsides", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[129372] = {
					"Blacktar Bomber", -- [1]
					"Siege of Boralus", -- [2]
				},
				[134069] = {
					"Vol'zith the Whisperer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[144299] = {
					"Workshop Defender", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[146863] = {
					"Mistscorn Ravager", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140978] = {
					"Doomtunnel", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[130012] = {
					"Irontide Ravager", -- [1]
					"Freehold", -- [2]
				},
				[139443] = {
					"Spinebender Kuntai", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[136862] = {
					"Orgo", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[150190] = {
					"HK-8 Aerial Oppression Unit", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[132481] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[132893] = {
					"Fire Spirit", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[146864] = {
					"Mistscorn Earthbinder", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140979] = {
					"Greatfangs", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[147376] = {
					"Barrier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139444] = {
					"Necrolord Zian", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[14020] = {
					"Chromaggus", -- [1]
					"Blackwing Lair", -- [2]
				},
				[129373] = {
					"Dockhound Packmaster", -- [1]
					"Siege of Boralus", -- [2]
				},
				[134599] = {
					"Imbued Stormcaller", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[129559] = {
					"Cutwater Duelist", -- [1]
					"Freehold", -- [2]
				},
				[127019] = {
					"Training Dummy", -- [1]
					"Freehold", -- [2]
				},
				[140980] = {
					"Jadescale Worm", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140264] = {
					"Runehoof Calf", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[130639] = {
					"Vicejaw Chomper", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[139460] = {
					"Stonebound Earthweaver", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[135366] = {
					"Blacktooth Arsonist", -- [1]
					"Tol Dagor", -- [2]
				},
				[140995] = {
					"Ruinstalker", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[130653] = {
					"Wanton Sapper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146866] = {
					"Enslaved Frost Elemental", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[130909] = {
					"Fetid Maggot", -- [1]
					"The Underrot", -- [2]
				},
				[130581] = {
					"Sand-Eye", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[139759] = {
					"Mutineer Jalia", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[146831] = {
					"Kul Tiran Stormbringer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[130404] = {
					"Vermin Trapper", -- [1]
					"Freehold", -- [2]
				},
				[131527] = {
					"Lord Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				[135365] = {
					"Matron Alma", -- [1]
					"Waycrest Manor", -- [2]
				},
				[146867] = {
					"Mistscorn Sharphorn", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140982] = {
					"Icecracker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140490] = {
					"Blood-Engorged Larva", -- [1]
					"Uldir", -- [2]
				},
				[135971] = {
					"Faithless Conscript", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[130319] = {
					"Slitherblade Phalanx", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[148631] = {
					"Unexploded Ordnance", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[118244] = {
					"kitsune", -- [1]
					"Crucible of Storms", -- [2]
				},
				[140181] = {
					"Cragtusk", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[149535] = {
					"Icebound Image", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140983] = {
					"Frostbore Burster", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[132530] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[141495] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[123292] = {
					"Sparkleshell Pincher", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[150195] = {
					"Gnome-Eating Slime", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[134423] = {
					"Abyss Dweller", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[134331] = {
					"King Rahu'ai", -- [1]
					"Kings' Rest", -- [2]
				},
				[144822] = {
					"Golden Flametongue", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140984] = {
					"Frostbore Worm", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[136884] = {
					"Bristlethorn Battleguard", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[136643] = {
					"Azerite Extractor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[144311] = {
					"Orb Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[146102] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[14025] = {
					"Corrupted Bronze Whelp", -- [1]
					"Blackwing Lair", -- [2]
				},
				[130655] = {
					"Bobby Howlis", -- [1]
					"Tol Dagor", -- [2]
				},
				[132797] = {
					"Pinegraze Calf", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140985] = {
					"Acidic Worm", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[151476] = {
					"Blastatron X-80", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[133430] = {
					"Venture Co. Mastermind", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[121571] = {
					"Darf", -- [1]
					"Crucible of Storms", -- [2]
				},
				[146103] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[151739] = {
					"Ma'haat the Indomitable", -- [1]
					"Neltharion's Lair - HoA Scenario", -- [2]
				},
				[138427] = {
					"Spitefin Harpooner", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[144824] = {
					"Slimeskin Toad", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140986] = {
					"Acidic Burrower", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[146871] = {
					"Matriarch Nas'naya", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[144160] = {
					"Chopper Redhook", -- [1]
					"Siege of Boralus", -- [2]
				},
				[146326] = {
					"Headhunter Gal'wana", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146104] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144637] = {
					"Grong", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138428] = {
					"Spitefin Myrmidon", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[146872] = {
					"Kachota the Exiled", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140987] = {
					"Fleshmelter the Insatiable", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[145337] = {
					"Sandclaw Crab", -- [1]
					"The Eternal Palace", -- [2]
				},
				[137405] = {
					"Gripping Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[130400] = {
					"Irontide Crusher", -- [1]
					"Freehold", -- [2]
				},
				[123236] = {
					"Scuttlestep Crab", -- [1]
					"Freehold", -- [2]
				},
				[140841] = {
					"Snickering Ripple", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[138429] = {
					"Spitefin Tidebinder", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[146873] = {
					"Murderous Tempest", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[132885] = {
					"Air Elemental", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[139197] = {
					"Verdant Lasher", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[146869] = {
					"Gyrum the Virulent", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[145850] = {
					"Gilnean Defuser", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[144837] = {
					"Darkshore Stag", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[150712] = {
					"Trixie Tazer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[148665] = {
					"Rastari Royal Guard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148921] = {
					"Kaldorei Glaive Thrower", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[89] = {
					"Infernal", -- [1]
					"Crucible of Storms", -- [2]
				},
				[14601] = {
					"Ebonroc", -- [1]
					"Blackwing Lair", -- [2]
				},
				[134338] = {
					"Tidesage Enforcer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[145851] = {
					"Kaldorei Hippogryph Rider", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[140334] = {
					"Nightscale Coilfang", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[133935] = {
					"Animated Guardian", -- [1]
					"Kings' Rest", -- [2]
				},
				[130318] = {
					"Slitherblade Prophet", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[146875] = {
					"Valimok the Vicious", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[136847] = {
					"Sandscalp Shadow Hunter", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[139199] = {
					"Verdant Spitter", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[148254] = {
					"Frost Shard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[122086] = {
					"Slitherblade Ironscale", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[140443] = {
					"Muskflank Charger", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[129552] = {
					"Monzumi", -- [1]
					"Atal'Dazar", -- [2]
				},
				[148667] = {
					"Rastari Punisher", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146876] = {
					"Machitu the Brutal", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[132803] = {
					"Rockmane Wendigo", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[139200] = {
					"Verdant Flytrap", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[12458] = {
					"Blackwing Taskmaster", -- [1]
					"Blackwing Lair", -- [2]
				},
				[136391] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[146109] = {
					"Midnight Charger", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[146365] = {
					"Blazing Fireguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134060] = {
					"Lord Stormsong", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[144830] = {
					"Yaz'za the Devourer", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[144796] = {
					"High Tinker Mekkatorque", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134173] = {
					"Animated Droplet", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[139457] = {
					"Stonebound Quilen", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[133944] = {
					"Aspix", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[146110] = {
					"Waxing Moon", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146366] = {
					"Molten Hound", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138434] = {
					"Spitefin Tempest Witch", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[98035] = {
					"Dreadstalker", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[140993] = {
					"Darktunnel Ambusher", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[139202] = {
					"Verdant Tender", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[146401] = {
					"Darkscale Dig-Slave", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[127381] = {
					"Silt Crab", -- [1]
					"Tol Dagor", -- [2]
				},
				[136807] = {
					"Pebblestone Scout", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[146367] = {
					"Char'golm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[122967] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
				},
				[140344] = {
					"Sky Viper", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[129550] = {
					"Bilge Rat Padfoot", -- [1]
					"Freehold", -- [2]
				},
				[136330] = {
					"Soul Thorns", -- [1]
					"Waycrest Manor", -- [2]
				},
				[139459] = {
					"Stonebound Soldier", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[122088] = {
					"Slitherblade Skulker", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[146112] = {
					"Inkfur Behemoth", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[129758] = {
					"Irontide Grenadier", -- [1]
					"Freehold", -- [2]
				},
				[136483] = {
					"Ashvane Deckhand", -- [1]
					"Siege of Boralus", -- [2]
				},
				[130788] = {
					"Taghira", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[132807] = {
					"Zian-Ti Quilen", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140981] = {
					"Gnashing Horror", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[122984] = {
					"Dazar'ai Colossus", -- [1]
					"Atal'Dazar", -- [2]
				},
				[127482] = {
					"Sewer Vicejaw", -- [1]
					"Tol Dagor", -- [2]
				},
				[135838] = {
					"Grimebreeze", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[133836] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[138437] = {
					"Szerris the Invader", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[146881] = {
					"Soothsayer Brinvulf", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140996] = {
					"Deepbore", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[145274] = {
					"Yalat's Bulwark", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139461] = {
					"Stonebound Rockmaw", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[122089] = {
					"Slitherblade Oracle", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[131785] = {
					"Buzzing Drone", -- [1]
					"Tol Dagor", -- [2]
				},
				[146370] = {
					"Dark Iron Vanguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[130661] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134600] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[138438] = {
					"Tidereaver Steelfang", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[149441] = {
					"Frozen Ballista", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139462] = {
					"Stonebound Shale-Speaker", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[138048] = {
					"Training Dummy", -- [1]
					"Waycrest Manor", -- [2]
				},
				[144298] = {
					"Defense Bot Mk III", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[146371] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146829] = {
					"Undying Guardian", -- [1]
					"Crucible of Storms", -- [2]
				},
				[146883] = {
					"Houndmaster Angvold", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[147225] = {
					"Azerite Extractor", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[139207] = {
					"Ancient Forest-Walker", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[139463] = {
					"Stonebound Annihilator", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[148262] = {
					"Tidewater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146116] = {
					"Needleback Forager", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[128969] = {
					"Ashvane Commander", -- [1]
					"Siege of Boralus", -- [2]
				},
				[155814] = {
					"Eldritch Understudy", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134602] = {
					"Shrouded Fang", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[137478] = {
					"Queen Wasi", -- [1]
					"Kings' Rest", -- [2]
				},
				[148622] = {
					"Echo of Kimbul", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[122986] = {
					"Wild Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[129208] = {
					"Dread Captain Lockwood", -- [1]
					"Siege of Boralus", -- [2]
				},
				[133835] = {
					"Feral Bloodswarmer", -- [1]
					"The Underrot", -- [2]
				},
				[133379] = {
					"Adderis", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[138441] = {
					"Songstress of the Deep", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[137625] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[138626] = {
					"Amathet Zealot", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[138061] = {
					"Venture Co. Longshoreman", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[132744] = {
					"Frostscale Hydra", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[126185] = {
					"Zian-Ti Shadowcaster", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146118] = {
					"Territorial Needleback", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[136139] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[132746] = {
					"Frostscale Broodmother", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[144839] = {
					"Whitetail Doe", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[134284] = {
					"Fallen Deathspeaker", -- [1]
					"The Underrot", -- [2]
				},
				[129000] = {
					"Southsea Brawler", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[122970] = {
					"Shadowblade Stalker", -- [1]
					"Atal'Dazar", -- [2]
				},
				[69792] = {
					"Cidwow", -- [1]
					"Crucible of Storms", -- [2]
				},
				[146119] = {
					"Needleback Brute", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[138187] = {
					"Grotesque Horror", -- [1]
					"The Underrot", -- [2]
				},
				[138443] = {
					"Scaleguard Buleth", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[146887] = {
					"Ghern the Rancid", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[136849] = {
					"Sandscalp Berserker", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[130024] = {
					"Soggy Shiprat", -- [1]
					"Freehold", -- [2]
				},
				[139467] = {
					"Qinsu the Granite Fist", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[145059] = {
					"Cunning Nightwing", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[140671] = {
					"Feralclaw the Rager", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[136592] = {
					"Flynn Fairwind", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138444] = {
					"General Vesparak", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[134823] = {
					"Unbreakable Crystalspine", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[139805] = {
					"Mechanical Guardhound", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[138998] = {
					"Thick-Hide", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[132740] = {
					"Venomscale Hydra", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[145865] = {
					"Worgen Musketeer", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[134283] = {
					"Anchorite Lanna", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[154565] = {
					"Loyal Myrmidon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134798] = {
					"Abyss Crawler", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[144842] = {
					"Tide Crawler", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[146847] = {
					"Summoner Laniella", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[130025] = {
					"Irontide Thug", -- [1]
					"Tol Dagor", -- [2]
				},
				[155845] = {
					"Crushing Depths", -- [1]
					"The Eternal Palace", -- [2]
				},
				[12459] = {
					"Blackwing Warlock", -- [1]
					"Blackwing Lair", -- [2]
				},
				[126919] = {
					"Irontide Stormcaller", -- [1]
					"Freehold", -- [2]
				},
				[128651] = {
					"Hadal Darkfathom", -- [1]
					"Siege of Boralus", -- [2]
				},
				[135016] = {
					"Plague Amalgam", -- [1]
					"Uldir", -- [2]
				},
				[146890] = {
					"Fleshrot Runeweaver", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[153059] = {
					"Aethanel", -- [1]
					"The Eternal Palace", -- [2]
				},
				[139035] = {
					"Razorfin Aqualyte", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[151752] = {
					"Voidswarm", -- [1]
					"Emerald Dream - HoA Scenario", -- [2]
				},
				[133585] = {
					"Dizzy Dina", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[130436] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[128649] = {
					"Sergeant Bainbridge", -- [1]
					"Siege of Boralus", -- [2]
				},
				[136353] = {
					"Colossal Tentacle", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[134899] = {
					"Venomfang Lurker", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138959] = {
					"Coalesced Blood", -- [1]
					"Uldir", -- [2]
				},
				[130026] = {
					"Bilge Rat Seaspeaker", -- [1]
					"Tol Dagor", -- [2]
				},
				[139471] = {
					"Bugan the Flesh-Crusher", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[152009] = {
					"Malfunctioning Scrapbot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[143985] = {
					"Absorb-o-Tron", -- [1]
					"Crucible of Storms", -- [2]
				},
				[132051] = {
					"Blood Tick", -- [1]
					"The Underrot", -- [2]
				},
				[123287] = {
					"Southsea Swashbuckler", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[146892] = {
					"Fleshrot Marauder", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[132819] = {
					"Rustpelt Pup", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[145402] = {
					"Frenzied Wildheart", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[151754] = {
					"Void Haunt", -- [1]
					"Emerald Dream - HoA Scenario", -- [2]
				},
				[147440] = {
					"Blazing Fireguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136841] = {
					"Thu'zun the Vile", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[155618] = {
					"Zanj'ir Huntress", -- [1]
					"The Eternal Palace", -- [2]
				},
				[151881] = {
					"Abyssal Commander Sivara", -- [1]
					"The Eternal Palace", -- [2]
				},
				[148940] = {
					"Kaldorei Chimaera", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[132820] = {
					"Mudsnout Piglet", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[130027] = {
					"Ashvane Marine", -- [1]
					"Tol Dagor", -- [2]
				},
				[139473] = {
					"Stone Machinist Nu-Xin", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[133588] = {
					"Automatic Explosive Ejector", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[136347] = {
					"Tidesage Initiate", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[149635] = {
					"Blooming Protector", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[138644] = {
					"Kvaldir Cursewalker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134612] = {
					"Grasping Tentacles", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[139804] = {
					"Venture Inspector", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138648] = {
					"Sigrid the Shroud-Weaver", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[151886] = {
					"Detached Thought", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[138631] = {
					"Pathfinder Qadim", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[135892] = {
					"Unleashed Inferno", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[151840] = {
					"Vile Soul", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[144611] = {
					"Coralback Scuttler", -- [1]
					"The Eternal Palace", -- [2]
				},
				[146895] = {
					"Fleshrot Vandal", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[152159] = {
					"Zoatroid", -- [1]
					"The Eternal Palace", -- [2]
				},
				[130028] = {
					"Ashvane Priest", -- [1]
					"Tol Dagor", -- [2]
				},
				[145616] = {
					"King Rastakhan", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[126190] = {
					"Zian-Ti Brutalizer", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[150222] = {
					"Gunker", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[150146] = {
					"Scrapbone Shaman", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[146832] = {
					"Necromancer Disciple", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[144849] = {
					"Darkscale Scout", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[126205] = {
					"Profit-O-Matic", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[129527] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[137713] = {
					"Big Money Crab", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[147965] = {
					"Volatile Azerite", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[135894] = {
					"Fire Elemental", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[129517] = {
					"Reanimated Raptor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134139] = {
					"Shrine Templar", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[144850] = {
					"Darkscale Siren", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[126847] = {
					"Captain Raoul", -- [1]
					"Freehold", -- [2]
				},
				[144996] = {
					"Visage from Beyond", -- [1]
					"Crucible of Storms", -- [2]
				},
				[140678] = {
					"Frostbeard Howler", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[131545] = {
					"Lady Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				[135895] = {
					"Blazing Spark", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[140070] = {
					"Bloodscent the Tracker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[131411] = {
					"Venomscale Monitor", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[134616] = {
					"Krolusk Pup", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[154240] = {
					"Azshara's Devoted", -- [1]
					"The Eternal Palace", -- [2]
				},
				[140677] = {
					"Hulking Frostbeard", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[136502] = {
					"Nazmani Warmother", -- [1]
					"Uldir", -- [2]
				},
				[133593] = {
					"Expert Technician", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[155162] = {
					"Lor'themar Theron", -- [1]
					"The Eternal Palace", -- [2]
				},
				[126094] = {
					"Slitherblade Wavecaller", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[136838] = {
					"Zgordo the Brutalizer", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[134617] = {
					"Krolusk Hatchling", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[139405] = {
					"Wavebringer Sezzes'an", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[139223] = {
					"Verdant Dryad", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[155634] = {
					"Bound Storm", -- [1]
					"The Eternal Palace", -- [2]
				},
				[136833] = {
					"Witherbranch Venom Priest", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[152128] = {
					"Orgozoa", -- [1]
					"The Eternal Palace", -- [2]
				},
				[139660] = {
					"Dampscale Murloc", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[151674] = {
					"Stinkfur Hopling", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[136665] = {
					"Ashvane Spotter", -- [1]
					"Tol Dagor", -- [2]
				},
				[126832] = {
					"Skycap'n Kragg", -- [1]
					"Freehold", -- [2]
				},
				[139224] = {
					"Dryad Grove-Tender", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[139480] = {
					"Stonebound Protector", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[147924] = {
					"Geoshard", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[144244] = {
					"The Platinum Pummeler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[140248] = {
					"Moonchaser the Swift", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[151680] = {
					"Orangetooth", -- [1]
					"Snowblossom Village (Islands 3)", -- [2]
				},
				[140760] = {
					"Earthliving Giant", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[138969] = {
					"Zian-Ti Spirit", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[138495] = {
					"Twilight Commander", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[140099] = {
					"Thundersnort the Loud", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[140078] = {
					"Knucklebump Gorilla", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[133852] = {
					"Living Rot", -- [1]
					"The Underrot", -- [2]
				},
				[139342] = {
					"Icetusk Warrior", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134364] = {
					"Faithless Tender", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[155090] = {
					"Anodized Coilbearer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[138970] = {
					"Vengeful Spirit", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[138625] = {
					"Amathet Enforcer", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[134629] = {
					"Scaled Krolusk Rider", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[135007] = {
					"Orb Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[139005] = {
					"Wildlands Tracker", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140250] = {
					"Pinegraze Stag", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[55659] = {
					"Wild Imp", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[154175] = {
					"Horrific Summoner", -- [1]
					"The Eternal Palace", -- [2]
				},
				[138971] = {
					"Zian-Ti Serpent", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139227] = {
					"Keeper Undarius", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[155859] = {
					"Vizja'ra", -- [1]
					"The Eternal Palace", -- [2]
				},
				[140154] = {
					"Rotclaw Patriarch", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[140152] = {
					"Rotclaw Mauler", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[140083] = {
					"Kula the Thunderer", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
			},
			["spell_animation_list"] = {
				[2098] = {
					{
						["scale_upY"] = 1.19999992847443,
						["scale_upX"] = 1.10000002384186,
						["scale_downY"] = 0.899999976158142,
						["scale_downX"] = 0.899999976158142,
					}, -- [1]
				},
				[245388] = {
					{
						["scale_upX"] = 1.10000002384186,
						["scale_upY"] = 1.10000002384186,
					}, -- [1]
				},
				[280720] = {
					{
						["fade_out"] = 0.0899999961256981,
						["duration"] = 0.199999988079071,
						["amplitude"] = 0.899999976158142,
					}, -- [1]
				},
				[197834] = {
					{
						["fade_out"] = 0.0199999995529652,
						["duration"] = 0.120000004768372,
					}, -- [1]
				},
				[196819] = {
					{
						["scale_upY"] = 1.29999995231628,
						["scale_upX"] = 1.19999992847443,
						["scale_downY"] = 0.899999976158142,
						["scale_downX"] = 0.899999976158142,
					}, -- [1]
				},
				[199804] = {
					{
						["fade_out"] = 0.0899999961256981,
						["duration"] = 0.199999988079071,
						["amplitude"] = 1.16999995708466,
						["fade_in"] = 0.00999999977648258,
						["scaleY"] = 0.889999389648438,
						["frequency"] = 23.5299987792969,
					}, -- [1]
				},
				[185763] = {
					{
						["fade_out"] = 0.259999990463257,
						["duration"] = 0.159999996423721,
						["scaleX"] = 0.0999984741210938,
						["amplitude"] = 3.65999984741211,
					}, -- [1]
				},
			},
			["cast_statusbar_spark_offset"] = -13,
			["npc_colors"] = {
				[136005] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				[122972] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				[134284] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[133870] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[134157] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[136006] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				[132532] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				[144071] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[134158] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[122973] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[134701] = {
					true, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				[136295] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[136934] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[134990] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[128967] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				[138465] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[134417] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[129366] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				[139422] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[136139] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[134418] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				[133685] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[131677] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[134514] = {
					true, -- [1]
					false, -- [2]
					"lightgreen", -- [3]
				},
				[136076] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[127757] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[137511] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[137830] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[129367] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[130435] = {
					false, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[133432] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[128969] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				[139425] = {
					false, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[132126] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[130404] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[133593] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[131585] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[133912] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				[135474] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				[131586] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[134232] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				[129369] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				[127106] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[131587] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[137484] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[137516] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				[130485] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[131492] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[129529] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				[137517] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[129370] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[130661] = {
					true, -- [1]
					false, -- [2]
					"lightgreen", -- [3]
				},
				[138187] = {
					true, -- [1]
					false, -- [2]
					"paleturquoise", -- [3]
				},
				[134139] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[137486] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[131685] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[129227] = {
					false, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				[134331] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[138061] = {
					false, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[127315] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[134364] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[133345] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				[129547] = {
					true, -- [1]
					false, -- [2]
					"olivedrab", -- [3]
				},
				[134174] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[137521] = {
					true, -- [1]
					false, -- [2]
					"cornflowerblue", -- [3]
				},
				[135258] = {
					false, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[137713] = {
					true, -- [1]
					false, -- [2]
					"paleturquoise", -- [3]
				},
				[138255] = {
					true, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				[126918] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[131817] = {
					false, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[134144] = {
					true, -- [1]
					false, -- [2]
					"lightgreen", -- [3]
				},
				[131818] = {
					false, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[141285] = {
					true, -- [1]
					false, -- [2]
					"lightgreen", -- [3]
				},
				[136249] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[126919] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				[129788] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[137716] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				[135007] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[134338] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[127111] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[135167] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[128434] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				[135263] = {
					true, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				[139949] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[132491] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				[128435] = {
					false, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[135329] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[134150] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[122969] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[134629] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[125977] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[133430] = {
					true, -- [1]
					false, -- [2]
					"cornflowerblue", -- [3]
				},
				[135235] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				[133482] = {
					true, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				[135241] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[137103] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				[131436] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[137478] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[130488] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				[135204] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[131666] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[129600] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[138064] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				[129602] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[134599] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[138063] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				[131858] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				[141284] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[133852] = {
					true, -- [1]
					false, -- [2]
					"olivedrab", -- [3]
				},
				[130436] = {
					false, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[141283] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[136353] = {
					true, -- [1]
					false, -- [2]
					"royalblue", -- [3]
				},
				[135365] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[134600] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[133835] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				[136186] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[134137] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				[122971] = {
					false, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[134012] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				[129559] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[136470] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[122984] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[136549] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[126928] = {
					false, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[135239] = {
					true, -- [1]
					false, -- [2]
					"paleturquoise", -- [3]
				},
				[134251] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[133436] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[136214] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[131670] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
			},
			["minor_height_scale"] = 0.999999940395355,
			["cast_statusbar_spark_half"] = true,
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 120,
					["HooksTemp"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)\n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)    \n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.4 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\nend\n\n\n\n\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the transparency of nameplates that isn't your target. You might want to disable 'Use Range Check' in the General Settings tab when using this hook.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)\n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)    \n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.4 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1551825353,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 132177,
					["Name"] = "No Target Alpha [Plater]",
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 274,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Change the color if a unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1551825291,
					["PlaterCore"] = 1,
					["Name"] = "Attacking Specific Unit [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["LastHookEdited"] = "Constructor",
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 88,
					["HooksTemp"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1551825341,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 1990989,
					["Name"] = "Hide Neutral Units [Plater]",
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 185,
					["HooksTemp"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Time"] = 1551825362,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 1966587,
					["Name"] = "Players Targeting a Target [Plater]",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1552354619,
					["PlaterCore"] = 1,
					["Name"] = "Current Target Color [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 878211,
					["LastHookEdited"] = "",
				}, -- [5]
				{
					["Enabled"] = false,
					["Revision"] = 190,
					["HooksTemp"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1551825317,
					["PlaterCore"] = 1,
					["Name"] = "Combo Points [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
							[103] = true,
							["Enabled"] = true,
						},
					},
					["Icon"] = 135426,
					["LastHookEdited"] = "Constructor",
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 192,
					["HooksTemp"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled and unitFrame.ActorType == \"enemyplayer\") then\n        \n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n        \n    else\n        envTable.BorderFrame:Hide() \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Author"] = "Tecno-Azralon",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled and unitFrame.ActorType == \"enemyplayer\") then\n        \n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n        \n    else\n        envTable.BorderFrame:Hide() \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Time"] = 1551825335,
					["PlaterCore"] = 1,
					["Name"] = "Extra Border [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 133689,
					["LastHookEdited"] = "Constructor",
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 90,
					["HooksTemp"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["Time"] = 1551825364,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Nameplate Added",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 574574,
					["Name"] = "Reorder Nameplate [Plater]",
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 107,
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1551825317,
					["PlaterCore"] = 1,
					["Name"] = "Color Automation [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["LastHookEdited"] = "Constructor",
				}, -- [9]
				{
					["Enabled"] = false,
					["Revision"] = 139,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        local percent = healthBar.CurrentHealth / healthBar.CurrentHealthMax\n        \n        if (percent <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame, envTable.ExecutePercent)\n            envTable.InExecuteRange = true\n            \n        elseif (percent < envTable.SecondRangeStart and percent >= envTable.SecondRangeEnd) then\n            envTable.UnitInExecuteRange (unitFrame, envTable.SecondRangeEnd)\n            envTable.InExecuteRange = true\n            \n        else\n            if (envTable.InExecuteRange) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                Plater.RefreshNameplateColor (unitFrame)\n                Plater.SetBorderColor (unitFrame)\n                envTable.InExecuteRange = false\n            end\n        end\n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame, 0)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = true\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --second execute range (UseCustomExecutePercent must be enabled)\n    envTable.SecondRangeStart = 0.999\n    envTable.SecondRangeEnd = 0.8\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame, divisorPercent)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame, divisorPercent)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame, divisorPercent)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * divisorPercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
					},
					["Author"] = "Ahwa-Azralon",
					["Desc"] = "Adds extra effects to execute range and allow to setup two execute ranges for classes with execute when the unit has almost full healh. See the constructor script for options.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = true\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --second execute range (UseCustomExecutePercent must be enabled)\n    envTable.SecondRangeStart = 0.999\n    envTable.SecondRangeEnd = 0.8\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame, divisorPercent)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame, divisorPercent)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame, divisorPercent)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * divisorPercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        local percent = healthBar.CurrentHealth / healthBar.CurrentHealthMax\n        \n        if (percent <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame, envTable.ExecutePercent)\n            envTable.InExecuteRange = true\n            \n        elseif (percent < envTable.SecondRangeStart and percent >= envTable.SecondRangeEnd) then\n            envTable.UnitInExecuteRange (unitFrame, envTable.SecondRangeEnd)\n            envTable.InExecuteRange = true\n            \n        else\n            if (envTable.InExecuteRange) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                Plater.RefreshNameplateColor (unitFrame)\n                Plater.SetBorderColor (unitFrame)\n                envTable.InExecuteRange = false\n            end\n        end\n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame, 0)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1551825289,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 135358,
					["Name"] = "Advanced Execute Range",
				}, -- [10]
				{
					["Enabled"] = true,
					["Revision"] = 256,
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 2\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 2\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
					},
					["Time"] = 1551894781,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Name"] = "Aura Reorder [Plater]",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 236,
					["HooksTemp"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for the Jaina encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
					},
					["Time"] = 1551894760,
					["PlaterCore"] = 1,
					["Name"] = "Jaina Encounter [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2281, -- [1]
							["Enabled"] = true,
						},
						["race"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["LastHookEdited"] = "Constructor",
				}, -- [12]
				{
					["Enabled"] = true,
					["Revision"] = 81,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Time"] = 1551887545,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2280, -- [1]
							["Enabled"] = true,
						},
						["race"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["Name"] = "Stormwall Encounter [Plater]",
				}, -- [13]
				{
					["Enabled"] = true,
					["Revision"] = 57,
					["HooksTemp"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateBorder (unitFrame, unitId)\nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateBorder (unitFrame, unitId)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.BorderThickness = 3\n    envTable.BorderColor = \"black\"\n    \n    --private\n    function envTable.UpdateBorder (unitFrame, unit)\n        local plateFrame = unitFrame:GetParent()\n        \n        if (UnitIsUnit (\"focus\", unit)) then\n            Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            local borderSize = envTable.BorderThickness\n            unitFrame.healthBar.border:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n            unitFrame.healthBar.border:UpdateSizes()        \n            \n        else\n            Plater.SetBorderColor (unitFrame)\n            Plater.UpdatePlateBorderThickness (unitFrame.PlateFrame)\n            unitFrame.healthBar.border:UpdateSizes()\n        end\n    end\nend\n\n\n\n",
					},
					["Author"] = "Herith�gue-Proudmoore",
					["Desc"] = "Change the border of the focus target.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateBorder (unitFrame, unitId)\nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateBorder (unitFrame, unitId)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.BorderThickness = 3\n    envTable.BorderColor = \"black\"\n    \n    --private\n    function envTable.UpdateBorder (unitFrame, unit)\n        local plateFrame = unitFrame:GetParent()\n        \n        if (UnitIsUnit (\"focus\", unit)) then\n            Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            local borderSize = envTable.BorderThickness\n            unitFrame.healthBar.border:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n            unitFrame.healthBar.border:UpdateSizes()        \n            \n        else\n            Plater.SetBorderColor (unitFrame)\n            Plater.UpdatePlateBorderThickness (unitFrame.PlateFrame)\n            unitFrame.healthBar.border:UpdateSizes()\n        end\n    end\nend\n\n\n\n",
					},
					["Name"] = "Focus Target Border",
					["PlaterCore"] = 1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Time"] = 1551894761,
					["Icon"] = 133006,
					["LastHookEdited"] = "Constructor",
				}, -- [14]
				{
					["Enabled"] = false,
					["Revision"] = 47,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1551825334,
					["PlaterCore"] = 1,
					["Name"] = "Don't Have Aura [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 136207,
					["LastHookEdited"] = "Constructor",
				}, -- [15]
				{
					["Enabled"] = true,
					["Revision"] = 54,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["Time"] = 1551894760,
					["PlaterCore"] = 1,
					["Name"] = "M+ Bwonsamdi Reaping",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
							["Enabled"] = true,
							["party"] = true,
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
							[117] = true,
							["Enabled"] = true,
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 2446016,
					["LastHookEdited"] = "Constructor",
				}, -- [16]
				{
					["Enabled"] = false,
					["Revision"] = 33,
					["HooksTemp"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateSpellNameText (unitFrame)\n    \nend\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateSpellNameText (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --max length of the text\n    envTable.TextMaxLength = 100\n    \n    --update the spell name text\n    function envTable.UpdateSpellNameText (unitFrame)\n        \n        local castBar = unitFrame.castBar\n        local textString = castBar.Text\n        local spellName = castBar.SpellName\n        \n        if (unitFrame.targetUnitID) then\n            local targetName = UnitName (unitFrame.targetUnitID)\n            \n            if (targetName) then\n                textString:SetText (spellName .. \" > \" .. targetName) \n                \n                if (envTable.TextMaxLength) then\n                    Plater.LimitTextSize (textString, envTable.TextMaxLength)\n                end\n                \n            else\n                textString:SetText (spellName)\n            end\n        else\n            textString:SetText (spellName)\n        end\n    end\nend",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Show the name of the unit current target ",
					["Hooks"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateSpellNameText (unitFrame)\n    \nend\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateSpellNameText (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --max length of the text\n    envTable.TextMaxLength = 100\n    \n    --update the spell name text\n    function envTable.UpdateSpellNameText (unitFrame)\n        \n        local castBar = unitFrame.castBar\n        local textString = castBar.Text\n        local spellName = castBar.SpellName\n        \n        if (unitFrame.targetUnitID) then\n            local targetName = UnitName (unitFrame.targetUnitID)\n            \n            if (targetName) then\n                textString:SetText (spellName .. \" > \" .. targetName) \n                \n                if (envTable.TextMaxLength) then\n                    Plater.LimitTextSize (textString, envTable.TextMaxLength)\n                end\n                \n            else\n                textString:SetText (spellName)\n            end\n        else\n            textString:SetText (spellName)\n        end\n    end\nend",
					},
					["Time"] = 1551825314,
					["PlaterCore"] = 1,
					["Name"] = "Cast Target",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 413580,
					["LastHookEdited"] = "Constructor",
				}, -- [17]
				{
					["Enabled"] = false,
					["Revision"] = 43,
					["HooksTemp"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.CheckIfCanShowNameplate (unitFrame)\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.CheckIfCanShowNameplate (unitFrame)\n    \nend\n\n\n",
						["Zone Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.CheckIfCanShowNameplate (unitFrame)\n    \nend\n\n\n",
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.CheckIfCanShowNameplate (unitFrame)\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.CheckIfCanShowNameplate (unitFrame)\n    \nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.CheckIfCanShowNameplate (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    function envTable.CheckIfCanShowNameplate (unitFrame)\n        if (Plater.IsInCombat()) then\n            \n            if (not unitFrame.healthBar:IsShown()) then\n                Plater.ShowHealthBar (unitFrame)\n                Plater.EnableHighlight (unitFrame)\n            end\n            \n        else\n            \n            if (unitFrame.healthBar:IsShown()) then\n                Plater.HideHealthBar (unitFrame)\n                Plater.DisableHighlight (unitFrame)\n            end\n            \n        end        \n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Only show nameplates while in combat, see the constructor for more options.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.CheckIfCanShowNameplate (unitFrame)\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.CheckIfCanShowNameplate (unitFrame)\n    \nend\n\n\n",
						["Zone Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.CheckIfCanShowNameplate (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    function envTable.CheckIfCanShowNameplate (unitFrame)\n        if (Plater.IsInCombat()) then\n            \n            if (not unitFrame.healthBar:IsShown()) then\n                Plater.ShowHealthBar (unitFrame)\n                Plater.EnableHighlight (unitFrame)\n            end\n            \n        else\n            \n            if (unitFrame.healthBar:IsShown()) then\n                Plater.HideHealthBar (unitFrame)\n                Plater.DisableHighlight (unitFrame)\n            end\n            \n        end        \n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					},
					["Name"] = "Only in Combat",
					["PlaterCore"] = 1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Time"] = 1551825361,
					["Icon"] = 135473,
					["LastHookEdited"] = "Constructor",
				}, -- [18]
				{
					["Enabled"] = false,
					["Revision"] = 31,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local npcColor = Plater.GetNpcColor (unitFrame)\n    if (npcColor) then\n        unitFrame.NpcColorCodeTexture:SetVertexColor (DetailsFramework:ParseColors (npcColor))\n        unitFrame.NpcColorCodeTexture:SetAlpha (envTable.Alpha)        \n        unitFrame.NpcColorCodeTexture:Show()\n        \n    else\n        unitFrame.NpcColorCodeTexture:Hide()\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    unitFrame.NpcColorCodeTexture:SetSize (unitFrame.healthBar:GetHeight(), unitFrame.healthBar:GetHeight())\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.IconTexture = [[Interface\\AddOns\\Plater\\media\\exclamation_64]]\n    envTable.Alpha = 0.8\n    \n    --private\n    if (not unitFrame.NpcColorCodeTexture) then\n        unitFrame.NpcColorCodeTexture = unitFrame.healthBar:CreateTexture (nil, \"overlay\")\n        unitFrame.NpcColorCodeTexture:SetTexture (envTable.IconTexture)\n        \n        --texture side | anchor to which frame | frame side | x offset | y offset\n        unitFrame.NpcColorCodeTexture:SetPoint (\"right\", unitFrame.healthBar, \"right\", -2, 0)\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Add an exclamation icon on units with color set in the Npc Colors tab with the \"Only Script\" box selected.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local npcColor = Plater.GetNpcColor (unitFrame)\n    if (npcColor) then\n        unitFrame.NpcColorCodeTexture:SetVertexColor (DetailsFramework:ParseColors (npcColor))\n        unitFrame.NpcColorCodeTexture:SetAlpha (envTable.Alpha)        \n        unitFrame.NpcColorCodeTexture:Show()\n        \n    else\n        unitFrame.NpcColorCodeTexture:Hide()\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    unitFrame.NpcColorCodeTexture:SetSize (unitFrame.healthBar:GetHeight(), unitFrame.healthBar:GetHeight())\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.IconTexture = [[Interface\\AddOns\\Plater\\media\\exclamation_64]]\n    envTable.Alpha = 0.8\n    \n    --private\n    if (not unitFrame.NpcColorCodeTexture) then\n        unitFrame.NpcColorCodeTexture = unitFrame.healthBar:CreateTexture (nil, \"overlay\")\n        unitFrame.NpcColorCodeTexture:SetTexture (envTable.IconTexture)\n        \n        --texture side | anchor to which frame | frame side | x offset | y offset\n        unitFrame.NpcColorCodeTexture:SetPoint (\"right\", unitFrame.healthBar, \"right\", -2, 0)\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Name"] = "Npc Colors Icon",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\media\\exclamation_64",
					["Time"] = 1551825358,
				}, -- [19]
				{
					["Enabled"] = false,
					["Revision"] = 65,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateColorTag (unitFrame)   \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateTexture (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.Alpha = 0.75\n    \n    envTable.Anchor = {\n        side = 11, --right side inside the nameplate\n        x = -3,\n        y = 0\n    }\n    \n    --private\n    if (not unitFrame.NpcColorCodeTexture) then\n        unitFrame.NpcColorCodeTexture = unitFrame.healthBar:CreateTexture (nil, \"overlay\")\n        unitFrame.NpcColorCodeTexture:SetColorTexture (1, 1, 1, 1)\n        \n    end\n    \n    function  envTable.UpdateColorTag (unitFrame)\n        local npcColor = Plater.GetNpcColor (unitFrame)\n        if (npcColor) then\n            unitFrame.NpcColorCodeTexture:SetVertexColor (DetailsFramework:ParseColors (npcColor))\n            unitFrame.NpcColorCodeTexture:SetAlpha (envTable.Alpha)           \n            unitFrame.NpcColorCodeTexture:Show()        \n        end\n    end\n    \n    function  envTable.UpdateTexture (unitFrame)\n        Plater.SetAnchor (unitFrame.NpcColorCodeTexture, envTable.Anchor)\n        unitFrame.NpcColorCodeTexture:SetSize (unitFrame.healthBar:GetHeight() - 4, unitFrame.healthBar:GetHeight() - 4)\n        unitFrame.NpcColorCodeTexture:Hide()\n        \n        envTable.UpdateColorTag (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Add a color tag on units with color set in the Npc Colors tab with the \"Only Script\" box selected.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateColorTag (unitFrame)   \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateTexture (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.Alpha = 0.75\n    \n    envTable.Anchor = {\n        side = 11, --right side inside the nameplate\n        x = -3,\n        y = 0\n    }\n    \n    --private\n    if (not unitFrame.NpcColorCodeTexture) then\n        unitFrame.NpcColorCodeTexture = unitFrame.healthBar:CreateTexture (nil, \"overlay\")\n        unitFrame.NpcColorCodeTexture:SetColorTexture (1, 1, 1, 1)\n        \n    end\n    \n    function  envTable.UpdateColorTag (unitFrame)\n        local npcColor = Plater.GetNpcColor (unitFrame)\n        if (npcColor) then\n            unitFrame.NpcColorCodeTexture:SetVertexColor (DetailsFramework:ParseColors (npcColor))\n            unitFrame.NpcColorCodeTexture:SetAlpha (envTable.Alpha)           \n            unitFrame.NpcColorCodeTexture:Show()        \n        end\n    end\n    \n    function  envTable.UpdateTexture (unitFrame)\n        Plater.SetAnchor (unitFrame.NpcColorCodeTexture, envTable.Anchor)\n        unitFrame.NpcColorCodeTexture:SetSize (unitFrame.healthBar:GetHeight() - 4, unitFrame.healthBar:GetHeight() - 4)\n        unitFrame.NpcColorCodeTexture:Hide()\n        \n        envTable.UpdateColorTag (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Name"] = "Npc Colors Tag",
					["PlaterCore"] = 1,
					["Time"] = 1551825358,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\media\\radio_64",
					["LastHookEdited"] = "Constructor",
				}, -- [20]
				{
					["Enabled"] = true,
					["Revision"] = 40,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auras = unitFrame.BuffFrame.PlaterBuffList\n    \n    for _, auraIcon in ipairs (auras) do\n        if (auraIcon:IsVisible()) then\n            if (auraIcon.RemainingTime < envTable.Timers.critical) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.critical)\n                \n            elseif (auraIcon.RemainingTime < envTable.Timers.warning) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.warning)\n                \n            else\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.okay)\n            end \n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --colors for each time bracket\n    envTable.Colors = {\n        critical = \"red\",\n        warning = \"yellow\",\n        okay = \"white\",\n    }\n    \n    --time amount to enter in warning or critical state\n    envTable.Timers = {\n        critical = 4.9,\n        warning = 8,\n    }\n    \nend\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Change the color of the aura timer by it's time left",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --colors for each time bracket\n    envTable.Colors = {\n        critical = \"red\",\n        warning = \"yellow\",\n        okay = \"white\",\n    }\n    \n    --time amount to enter in warning or critical state\n    envTable.Timers = {\n        critical = 4.9,\n        warning = 8,\n    }\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auras = unitFrame.BuffFrame.PlaterBuffList\n    \n    for _, auraIcon in ipairs (auras) do\n        if (auraIcon:IsVisible()) then\n            if (auraIcon.RemainingTime < envTable.Timers.critical) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.critical)\n                \n            elseif (auraIcon.RemainingTime < envTable.Timers.warning) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.warning)\n                \n            else\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.okay)\n            end \n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1551894759,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = "Interface\\Timer\\Challenges-Logo",
					["Name"] = "Paint Aura Timers",
				}, -- [21]
				{
					["Enabled"] = true,
					["Revision"] = 124,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border thickness\n    local size = 1 \n    \n    for index, auraIcon in ipairs (unitFrame.BuffFrame.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            \n            if (not auraIcon.PixelPerfectBorder) then\n                auraIcon.PixelPerfectBorder = CreateFrame (\"frame\", nil, auraIcon, \"NamePlateFullBorderTemplate\")\n            end\n            \n            local r, g, b = auraIcon:GetBackdropBorderColor()\n            auraIcon:SetBackdropBorderColor (0, 0, 0, 0)\n            \n            auraIcon.PixelPerfectBorder:SetVertexColor (r, g, b)\n            auraIcon.PixelPerfectBorder:SetBorderSizes (size, size, size, size)\n            auraIcon.PixelPerfectBorder:UpdateSizes()\n            \n            auraIcon.Icon:ClearAllPoints()\n            auraIcon.Icon:SetAllPoints()\n            \n            auraIcon.Border:Hide() --hide plater default border\n        end\n    end\n    \n    for index, auraIcon in ipairs (unitFrame.BuffFrame2.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            \n            if (not auraIcon.PixelPerfectBorder) then\n                auraIcon.PixelPerfectBorder = CreateFrame (\"frame\", nil, auraIcon, \"NamePlateFullBorderTemplate\")\n            end\n            \n            local r, g, b = auraIcon:GetBackdropBorderColor()\n            auraIcon:SetBackdropBorderColor (0, 0, 0, 0)\n            \n            auraIcon.PixelPerfectBorder:SetVertexColor (r, g, b)\n            auraIcon.PixelPerfectBorder:SetBorderSizes (size, size, size, size)\n            auraIcon.PixelPerfectBorder:UpdateSizes()            \n            \n            auraIcon.Icon:ClearAllPoints()\n            auraIcon.Icon:SetAllPoints()\n            \n            auraIcon.Border:Hide() --hide plater default border\n        end\n    end    \nend",
					},
					["Author"] = "????????-Illidan",
					["Desc"] = "Config aura borders",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border thickness\n    local size = 1 \n    \n    for index, auraIcon in ipairs (unitFrame.BuffFrame.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            \n            if (not auraIcon.PixelPerfectBorder) then\n                auraIcon.PixelPerfectBorder = CreateFrame (\"frame\", nil, auraIcon, \"NamePlateFullBorderTemplate\")\n            end\n            \n            local r, g, b = auraIcon:GetBackdropBorderColor()\n            auraIcon:SetBackdropBorderColor (0, 0, 0, 0)\n            \n            auraIcon.PixelPerfectBorder:SetVertexColor (r, g, b)\n            auraIcon.PixelPerfectBorder:SetBorderSizes (size, size, size, size)\n            auraIcon.PixelPerfectBorder:UpdateSizes()\n            \n            auraIcon.Icon:ClearAllPoints()\n            auraIcon.Icon:SetAllPoints()\n            \n            auraIcon.Border:Hide() --hide plater default border\n        end\n    end\n    \n    for index, auraIcon in ipairs (unitFrame.BuffFrame2.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            \n            if (not auraIcon.PixelPerfectBorder) then\n                auraIcon.PixelPerfectBorder = CreateFrame (\"frame\", nil, auraIcon, \"NamePlateFullBorderTemplate\")\n            end\n            \n            local r, g, b = auraIcon:GetBackdropBorderColor()\n            auraIcon:SetBackdropBorderColor (0, 0, 0, 0)\n            \n            auraIcon.PixelPerfectBorder:SetVertexColor (r, g, b)\n            auraIcon.PixelPerfectBorder:SetBorderSizes (size, size, size, size)\n            auraIcon.PixelPerfectBorder:UpdateSizes()            \n            \n            auraIcon.Icon:ClearAllPoints()\n            auraIcon.Icon:SetAllPoints()\n            \n            auraIcon.Border:Hide() --hide plater default border\n        end\n    end    \nend",
					},
					["Name"] = "Advanced Debuff Border",
					["PlaterCore"] = 1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["LastHookEdited"] = "Nameplate Updated",
					["Icon"] = 133006,
					["Time"] = 1551894741,
				}, -- [22]
				{
					["Enabled"] = false,
					["Revision"] = 35,
					["HooksTemp"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIndicator (unitFrame, unitId)\n    \nend\n\n\n\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIndicator (unitFrame, unitId)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    function envTable.UpdateIndicator (unitFrame, unitId)\n        local unitClassification = UnitClassification (unitId)\n        local unitName = UnitName (unitId)\n        unitName = unitName or UNKNOWN\n        \n        if (unitClassification == \"rareelite\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\AddOns\\\\Plater\\\\media\\\\star_full_64:12:12:0:0:64:64:0:64:0:64|t\" .. \"|TInterface\\\\GLUES\\\\CharacterSelect\\\\Glues-AddOn-Icons:12:12:0:0:64:16:48:64:0:16|t \" .. unitName)\n            \n        elseif (unitClassification == \"rare\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\AddOns\\\\Plater\\\\media\\\\star_full_64:12:12:0:0:64:64:0:64:0:64|t\" .. unitName)\n            \n        elseif (unitClassification == \"elite\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\GLUES\\\\CharacterSelect\\\\Glues-AddOn-Icons:12:12:0:0:64:16:48:64:0:16|t\" .. unitName)\n            \n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Author"] = "�r��ne-Kel'thuzad",
					["Desc"] = "Show yellow star for elite; Silver star for rares",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIndicator (unitFrame, unitId)\n    \nend\n\n\n\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIndicator (unitFrame, unitId)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    function envTable.UpdateIndicator (unitFrame, unitId)\n        local unitClassification = UnitClassification (unitId)\n        local unitName = UnitName (unitId)\n        unitName = unitName or UNKNOWN\n        \n        if (unitClassification == \"rareelite\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\AddOns\\\\Plater\\\\media\\\\star_full_64:12:12:0:0:64:64:0:64:0:64|t\" .. \"|TInterface\\\\GLUES\\\\CharacterSelect\\\\Glues-AddOn-Icons:12:12:0:0:64:16:48:64:0:16|t \" .. unitName)\n            \n        elseif (unitClassification == \"rare\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\AddOns\\\\Plater\\\\media\\\\star_full_64:12:12:0:0:64:64:0:64:0:64|t\" .. unitName)\n            \n        elseif (unitClassification == \"elite\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\GLUES\\\\CharacterSelect\\\\Glues-AddOn-Icons:12:12:0:0:64:16:48:64:0:16|t\" .. unitName)\n            \n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Name"] = "Rarity in the Name",
					["PlaterCore"] = 1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["LastHookEdited"] = "Constructor",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\star_full_64",
					["Time"] = 1551825364,
				}, -- [23]
				{
					["Enabled"] = true,
					["Revision"] = 62,
					["HooksTemp"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.ThreatIcon) then\n        unitFrame.ThreatIcon:Hide()\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIndicator (unitFrame)\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateThreatState (unitFrame, unitId)\n    \nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.ThreatIcon) then\n        unitFrame.ThreatIcon:Hide()\n    end\nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.ThreatIcon) then\n        unitFrame.ThreatIcon:Hide()\n    end    \nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdatePlayerRole (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.Anchor = {side = 11, x = -2, y = 0}\n    envTable.Texture = \"Interface\\\\AddOns\\\\Plater\\\\media\\\\exclamation2_64\"\n    \n    --it'll only use the icon if the nameplate has a color from the Npc Colors tab and \"Only Scripts\" disabled.\n    envTable.OnlyWhenUsingNpcColor = true --if false, it'll always use the icon\n    \n    --private\n    envTable.PlayerRole = \"NONE\" --automatically changed by the script\n    \n    function envTable.CreateIndicator (unitFrame)\n        if (not unitFrame.ThreatIcon) then\n            unitFrame.ThreatIcon = unitFrame.healthBar:CreateTexture (nil, \"overlay\")\n        end\n    end\n    \n    function envTable.UpdateIndicator (unitFrame)\n        envTable.CreateIndicator (unitFrame)\n        \n        unitFrame.ThreatIcon:SetTexture (envTable.Texture)\n        Plater.SetAnchor (unitFrame.ThreatIcon, envTable.Anchor)\n        unitFrame.ThreatIcon:SetSize (unitFrame.healthBar:GetHeight(), unitFrame.healthBar:GetHeight())\n    end\n    \n    function envTable.UpdateThreatState (unitFrame, unitId)\n        if (not unitFrame.ThreatIcon) then --if there's no icon created yet\n            return\n            \n        elseif (not Plater.IsInCombat()) then --not in combat\n            unitFrame.ThreatIcon:Hide()\n            return\n            \n        elseif (unitFrame.IsSelf) then --personal bar\n            unitFrame.ThreatIcon:Hide()\n            return\n            \n        elseif (envTable.OnlyWhenUsingNpcColor) then --must be using a npc color?\n            if (not unitFrame.UsingCustomColor) then\n                unitFrame.ThreatIcon:Hide()\n                return\n            end\n        end\n        \n        local isTanking, threatStatus, threatpct = UnitDetailedThreatSituation (\"player\", unitId)\n        \n        if (isTanking) then\n            if (envTable.PlayerRole == \"TANK\") then\n                unitFrame.ThreatIcon:Hide()\n            else\n                unitFrame.ThreatIcon:Show()\n                unitFrame.ThreatIcon:SetVertexColor (unpack (envTable.NameplateAggroColor))\n            end\n        else\n            if (envTable.PlayerRole == \"TANK\") then\n                unitFrame.ThreatIcon:Show()\n                unitFrame.ThreatIcon:SetVertexColor (unpack (envTable.NameplateNoAggroColor))                \n            else\n                unitFrame.ThreatIcon:Hide()                \n            end\n        end\n    end\n    \n    function envTable.UpdatePlayerRole (unitFrame)\n        local profile = Plater.db.profile\n        local role = Plater:GetPlayerRole()\n        \n        if (role == \"TANK\") then\n            envTable.PlayerRole = \"TANK\"\n            envTable.NameplateAggroColor = profile.tank.colors.aggro\n            envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            \n        else\n            envTable.PlayerRole = \"DAMAGER\"\n            envTable.NameplateAggroColor = profile.dps.colors.aggro\n            envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            \n        end        \n    end\n    \n    envTable.UpdatePlayerRole (unitFrame)\n    \nend",
					},
					["Author"] = "Cyclopes-Turalyon",
					["Desc"] = "Add an icon to indicate an unit has Aggro on you. By default only show for units using a custom color from Npc Colors.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.ThreatIcon) then\n        unitFrame.ThreatIcon:Hide()\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIndicator (unitFrame)\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateThreatState (unitFrame, unitId)\n    \nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.ThreatIcon) then\n        unitFrame.ThreatIcon:Hide()\n    end\nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.ThreatIcon) then\n        unitFrame.ThreatIcon:Hide()\n    end    \nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdatePlayerRole (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.Anchor = {side = 11, x = -2, y = 0}\n    envTable.Texture = \"Interface\\\\AddOns\\\\Plater\\\\media\\\\exclamation2_64\"\n    \n    --it'll only use the icon if the nameplate has a color from the Npc Colors tab and \"Only Scripts\" disabled.\n    envTable.OnlyWhenUsingNpcColor = true --if false, it'll always use the icon\n    \n    --private\n    envTable.PlayerRole = \"NONE\" --automatically changed by the script\n    \n    function envTable.CreateIndicator (unitFrame)\n        if (not unitFrame.ThreatIcon) then\n            unitFrame.ThreatIcon = unitFrame.healthBar:CreateTexture (nil, \"overlay\")\n        end\n    end\n    \n    function envTable.UpdateIndicator (unitFrame)\n        envTable.CreateIndicator (unitFrame)\n        \n        unitFrame.ThreatIcon:SetTexture (envTable.Texture)\n        Plater.SetAnchor (unitFrame.ThreatIcon, envTable.Anchor)\n        unitFrame.ThreatIcon:SetSize (unitFrame.healthBar:GetHeight(), unitFrame.healthBar:GetHeight())\n    end\n    \n    function envTable.UpdateThreatState (unitFrame, unitId)\n        if (not unitFrame.ThreatIcon) then --if there's no icon created yet\n            return\n            \n        elseif (not Plater.IsInCombat()) then --not in combat\n            unitFrame.ThreatIcon:Hide()\n            return\n            \n        elseif (unitFrame.IsSelf) then --personal bar\n            unitFrame.ThreatIcon:Hide()\n            return\n            \n        elseif (envTable.OnlyWhenUsingNpcColor) then --must be using a npc color?\n            if (not unitFrame.UsingCustomColor) then\n                unitFrame.ThreatIcon:Hide()\n                return\n            end\n        end\n        \n        local isTanking, threatStatus, threatpct = UnitDetailedThreatSituation (\"player\", unitId)\n        \n        if (isTanking) then\n            if (envTable.PlayerRole == \"TANK\") then\n                unitFrame.ThreatIcon:Hide()\n            else\n                unitFrame.ThreatIcon:Show()\n                unitFrame.ThreatIcon:SetVertexColor (unpack (envTable.NameplateAggroColor))\n            end\n        else\n            if (envTable.PlayerRole == \"TANK\") then\n                unitFrame.ThreatIcon:Show()\n                unitFrame.ThreatIcon:SetVertexColor (unpack (envTable.NameplateNoAggroColor))                \n            else\n                unitFrame.ThreatIcon:Hide()                \n            end\n        end\n    end\n    \n    function envTable.UpdatePlayerRole (unitFrame)\n        local profile = Plater.db.profile\n        local role = Plater:GetPlayerRole()\n        \n        if (role == \"TANK\") then\n            envTable.PlayerRole = \"TANK\"\n            envTable.NameplateAggroColor = profile.tank.colors.aggro\n            envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            \n        else\n            envTable.PlayerRole = \"DAMAGER\"\n            envTable.NameplateAggroColor = profile.dps.colors.aggro\n            envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            \n        end        \n    end\n    \n    envTable.UpdatePlayerRole (unitFrame)\n    \nend",
					},
					["Name"] = "Aggro Indicator",
					["PlaterCore"] = 1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["LastHookEdited"] = "Constructor",
					["Icon"] = 132344,
					["Time"] = 1551894746,
				}, -- [24]
				{
					["Enabled"] = false,
					["Revision"] = 20,
					["HooksTemp"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --added this event just to run the constructor script\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --insert here the font you want to change then /reeload\n    --after the reload, check if the font has changed and disable this script\n    \n    local FONT = \"Accidental Presidency\"\n    \n    local profile = Plater.db.profile\n    local actorTables = profile.plate_config\n    \n    for plateType, plateTable in pairs (actorTables) do\n        \n        plateTable.actorname_text_font = FONT\n        plateTable.spellname_text_font = FONT\n        plateTable.spellpercent_text_font = FONT\n        plateTable.level_text_font = FONT\n        plateTable.percent_text_font = FONT\n        plateTable.big_actortitle_text_font = FONT\n        plateTable.big_actorname_text_font = FONT\n        plateTable.power_percent_text_font = FONT\n        \n    end\n    \n    profile.castbar_target_font = FONT\n    profile.aura_timer_text_font = FONT    \n    profile.aura_stack_font = FONT    \n    \nend\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Edit the Constructor script setting the font you want in the FONT = \"\", then /reload.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --added this event just to run the constructor script\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --insert here the font you want to change then /reeload\n    --after the reload, check if the font has changed and disable this script\n    \n    local FONT = \"Accidental Presidency\"\n    \n    local profile = Plater.db.profile\n    local actorTables = profile.plate_config\n    \n    for plateType, plateTable in pairs (actorTables) do\n        \n        plateTable.actorname_text_font = FONT\n        plateTable.spellname_text_font = FONT\n        plateTable.spellpercent_text_font = FONT\n        plateTable.level_text_font = FONT\n        plateTable.percent_text_font = FONT\n        plateTable.big_actortitle_text_font = FONT\n        plateTable.big_actorname_text_font = FONT\n        plateTable.power_percent_text_font = FONT\n        \n    end\n    \n    profile.castbar_target_font = FONT\n    profile.aura_timer_text_font = FONT    \n    profile.aura_stack_font = FONT    \n    \nend\n\n\n",
					},
					["Time"] = 1551825316,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 134331,
					["Name"] = "Change All Fonts",
				}, -- [25]
				{
					["Enabled"] = false,
					["Revision"] = 49,
					["HooksTemp"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (Plater.ZoneInstanceType == \"arena\") then\n        \n        local arenaEnemies = GetNumArenaOpponentSpecs()\n        local found = false\n        for i = 1, arenaEnemies do\n            local guid = UnitGUID (\"arena\" .. i)\n            print (guid)\n            if (guid == unitFrame.namePlateUnitGUID) then\n                \n                local spec = GetArenaOpponentSpec (i)\n                print (spec)\n                if (spec) then\n                    local id, name, description, icon, role, class = GetSpecializationInfoByID (spec)\n                    print (name)\n                    if (role == \"HEALER\") then\n                        envTable.UpdatePowerBar (unitFrame)\n                    end\n                    print (role)\n                end\n                \n                break\n            end\n        end\n        \n        return\n    end\n    \n    --show for enemy players\n    if (unitFrame.ActorType == \"enemyplayer\") then\n        envTable.UpdatePowerBar (unitFrame)\n        return\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.PowerBarAnchor = {side = 4, x = 0, y = -10}\n    \n    function envTable.UpdatePowerBar (unitFrame)\n        unitFrame.powerBar:SetUnit (unitFrame.unit)\n        Plater.SetAnchor (unitFrame.powerBar, envTable.PowerBarAnchor)\n        \n    end\n    \nend\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show the power bar for specific units",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (Plater.ZoneInstanceType == \"arena\") then\n        \n        local arenaEnemies = GetNumArenaOpponentSpecs()\n        local found = false\n        for i = 1, arenaEnemies do\n            local guid = UnitGUID (\"arena\" .. i)\n            print (guid)\n            if (guid == unitFrame.namePlateUnitGUID) then\n                \n                local spec = GetArenaOpponentSpec (i)\n                print (spec)\n                if (spec) then\n                    local id, name, description, icon, role, class = GetSpecializationInfoByID (spec)\n                    print (name)\n                    if (role == \"HEALER\") then\n                        envTable.UpdatePowerBar (unitFrame)\n                    end\n                    print (role)\n                end\n                \n                break\n            end\n        end\n        \n        return\n    end\n    \n    --show for enemy players\n    if (unitFrame.ActorType == \"enemyplayer\") then\n        envTable.UpdatePowerBar (unitFrame)\n        return\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.PowerBarAnchor = {side = 4, x = 0, y = -10}\n    \n    function envTable.UpdatePowerBar (unitFrame)\n        unitFrame.powerBar:SetUnit (unitFrame.unit)\n        Plater.SetAnchor (unitFrame.powerBar, envTable.PowerBarAnchor)\n        \n    end\n    \nend\n\n\n",
					},
					["Name"] = "Power Bar",
					["PlaterCore"] = 1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Time"] = 1551825374,
					["Icon"] = 1375677,
					["LastHookEdited"] = "Constructor",
				}, -- [26]
				{
					["Enabled"] = true,
					["Revision"] = 129,
					["HooksTemp"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    --show cast icon\n    envTable.ShowIcon = true\n    --anchor icon on what side\n    envTable.IconAnchor = \"left\" --accep 'left' 'right'\n    --fine tune the size of the icon\n    envTable.IconSizeOffset = 1\n    \n    --shield for non interruptible casts\n    envTable.ShowShield = false\n    envTable.ShieldTexture = [[Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON]]\n    envTable.ShieldDesaturated = true\n    envTable.ShieldColor = {1, 1, 1 ,1}\n    envTable.ShieldSize = {10, 12}\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local shield = castBar.BorderShield\n        \n        if (envTable.ShowIcon) then\n            icon:ClearAllPoints()\n            \n            if (envTable.IconAnchor == \"left\") then\n                icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -1, 0)    \n                \n            elseif (envTable.IconAnchor == \"right\") then\n                icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", 1, 0)\n                \n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n            \n        else\n            icon:Hide()\n            \n        end\n        \n        if (envTable.ShowShield and not castBar.canInterrupt) then\n            shield:Show()\n            shield:SetAlpha (1)\n            shield:SetTexCoord (0, 1, 0, 1)\n            shield:SetVertexColor (1, 1, 1, 1)\n            \n            shield:SetTexture (envTable.ShieldTexture)\n            shield:SetDesaturated (envTable.ShieldDesaturated)\n            \n            if (not envTable.ShieldDesaturated) then\n                shield:SetVertexColor (DetailsFramework:ParseColors (envTable.ShieldColor))\n            end\n            \n            shield:SetSize (unpack (envTable.ShieldSize))\n            \n            shield:ClearAllPoints()\n            shield:SetPoint (\"center\", castBar, \"left\", 0, 0)\n            \n        else\n            shield:Hide()\n            \n        end\n        \n    end\nend",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Move the icon of the spell cast to the left or right side of the nameplate.",
					["Hooks"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    --show cast icon\n    envTable.ShowIcon = true\n    --anchor icon on what side\n    envTable.IconAnchor = \"left\" --accep 'left' 'right'\n    --fine tune the size of the icon\n    envTable.IconSizeOffset = 1\n    \n    --shield for non interruptible casts\n    envTable.ShowShield = false\n    envTable.ShieldTexture = [[Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON]]\n    envTable.ShieldDesaturated = true\n    envTable.ShieldColor = {1, 1, 1 ,1}\n    envTable.ShieldSize = {10, 12}\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local shield = castBar.BorderShield\n        \n        if (envTable.ShowIcon) then\n            icon:ClearAllPoints()\n            \n            if (envTable.IconAnchor == \"left\") then\n                icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -1, 0)    \n                \n            elseif (envTable.IconAnchor == \"right\") then\n                icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", 1, 0)\n                \n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n            \n        else\n            icon:Hide()\n            \n        end\n        \n        if (envTable.ShowShield and not castBar.canInterrupt) then\n            shield:Show()\n            shield:SetAlpha (1)\n            shield:SetTexCoord (0, 1, 0, 1)\n            shield:SetVertexColor (1, 1, 1, 1)\n            \n            shield:SetTexture (envTable.ShieldTexture)\n            shield:SetDesaturated (envTable.ShieldDesaturated)\n            \n            if (not envTable.ShieldDesaturated) then\n                shield:SetVertexColor (DetailsFramework:ParseColors (envTable.ShieldColor))\n            end\n            \n            shield:SetSize (unpack (envTable.ShieldSize))\n            \n            shield:ClearAllPoints()\n            shield:SetPoint (\"center\", castBar, \"left\", 0, 0)\n            \n        else\n            shield:Hide()\n            \n        end\n        \n    end\nend",
					},
					["Time"] = 1551894763,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\Buttons\\UI-Quickslot2",
					["Name"] = "Cast Icon Anchor",
				}, -- [27]
				{
					["Enabled"] = true,
					["Revision"] = 60,
					["HooksTemp"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BuildFrames (unitFrame)\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.castBar.IconOverlayFrame) then\n        unitFrame.castBar.IconOverlayFrame:Hide()\n    end\n    \nend\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BuildFrames (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.AnchorSide = \"left\"\n    envTable.BorderThickness = 1\n    envTable.BorderColor = \"black\"\n    \n    --private\n    function envTable.BuildFrames (unitFrame)\n        local castBar = unitFrame.castBar\n        \n        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\n        castBar.IconBorder:SetVertexColor (r, g, b, a)\n        \n        local size = envTable.BorderThickness\n        castBar.IconBorder:SetBorderSizes (size, size, size, size)\n        castBar.IconBorder:UpdateSizes()\n        \n        local icon = castBar.Icon\n        if (envTable.AnchorSide == \"left\") then\n            icon:ClearAllPoints()\n            icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, 0)\n            icon:SetPoint (\"bottomright\", castBar, \"bottomleft\", -1, 0)\n            icon:SetWidth (icon:GetHeight())\n            \n        elseif (envTable.AnchorSide == \"right\") then\n            icon:ClearAllPoints()\n            icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, 0)\n            icon:SetPoint (\"bottomleft\", castBar, \"bottomright\", 1, 0)\n            icon:SetWidth (icon:GetHeight())\n            \n        end\n        \n        icon:Show()\n        castBar.IconOverlayFrame:Show()\n    end\n    \n    if (not unitFrame.castBar.IconOverlayFrame) then\n        --icon support frame\n        unitFrame.castBar.IconOverlayFrame = CreateFrame (\"frame\", nil, unitFrame.castBar)\n        unitFrame.castBar.IconOverlayFrame:SetPoint (\"topleft\", unitFrame.castBar.Icon, \"topleft\")\n        unitFrame.castBar.IconOverlayFrame:SetPoint (\"bottomright\", unitFrame.castBar.Icon, \"bottomright\")\n        \n        unitFrame.castBar.IconBorder = CreateFrame (\"frame\", nil,  unitFrame.castBar.IconOverlayFrame, \"NamePlateFullBorderTemplate\")\n    end    \n    \nend\n\n\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Adds a pixels perfect border around the cast bar spell icon.",
					["Hooks"] = {
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BuildFrames (unitFrame)\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.castBar.IconOverlayFrame) then\n        unitFrame.castBar.IconOverlayFrame:Hide()\n    end\n    \nend\n\n\n\n\n",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BuildFrames (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.AnchorSide = \"left\"\n    envTable.BorderThickness = 1\n    envTable.BorderColor = \"black\"\n    \n    --private\n    function envTable.BuildFrames (unitFrame)\n        local castBar = unitFrame.castBar\n        \n        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\n        castBar.IconBorder:SetVertexColor (r, g, b, a)\n        \n        local size = envTable.BorderThickness\n        castBar.IconBorder:SetBorderSizes (size, size, size, size)\n        castBar.IconBorder:UpdateSizes()\n        \n        local icon = castBar.Icon\n        if (envTable.AnchorSide == \"left\") then\n            icon:ClearAllPoints()\n            icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, 0)\n            icon:SetPoint (\"bottomright\", castBar, \"bottomleft\", -1, 0)\n            icon:SetWidth (icon:GetHeight())\n            \n        elseif (envTable.AnchorSide == \"right\") then\n            icon:ClearAllPoints()\n            icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, 0)\n            icon:SetPoint (\"bottomleft\", castBar, \"bottomright\", 1, 0)\n            icon:SetWidth (icon:GetHeight())\n            \n        end\n        \n        icon:Show()\n        castBar.IconOverlayFrame:Show()\n    end\n    \n    if (not unitFrame.castBar.IconOverlayFrame) then\n        --icon support frame\n        unitFrame.castBar.IconOverlayFrame = CreateFrame (\"frame\", nil, unitFrame.castBar)\n        unitFrame.castBar.IconOverlayFrame:SetPoint (\"topleft\", unitFrame.castBar.Icon, \"topleft\")\n        unitFrame.castBar.IconOverlayFrame:SetPoint (\"bottomright\", unitFrame.castBar.Icon, \"bottomright\")\n        \n        unitFrame.castBar.IconBorder = CreateFrame (\"frame\", nil,  unitFrame.castBar.IconOverlayFrame, \"NamePlateFullBorderTemplate\")\n    end    \n    \nend\n\n\n\n\n",
					},
					["Time"] = 1551894761,
					["PlaterCore"] = 1,
					["Name"] = "Cast Icon Border",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 133004,
					["LastHookEdited"] = "Constructor",
				}, -- [28]
				{
					["Enabled"] = true,
					["Revision"] = 73,
					["HooksTemp"] = {
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder:Hide()\n    end    \nend",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    \n    --hide the icon of the spell, may require /reload after changing\n    envTable.HideIcon = false\n    \n    --border settings\n    envTable.BorderThickness = 1\n    envTable.BorderColor = \"black\"\n    \n    --private\n    --update the border\n    function envTable.UpdateBorder (unitFrame)\n        local castBar = unitFrame.castBar\n        \n        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\n        castBar.CastBarBorder:SetVertexColor (r, g, b, a)\n        \n        local size = envTable.BorderThickness\n        castBar.CastBarBorder:SetBorderSizes (size, size, size, size)\n        castBar.CastBarBorder:UpdateSizes()        \n        \n        if (envTable.HideIcon) then\n            castBar.Icon:Hide()\n        end\n        \n        castBar.CastBarBorder:Show()\n    end\n    \n    --create thee border\n    if (not unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder = CreateFrame (\"frame\", nil, unitFrame.castBar, \"NamePlateFullBorderTemplate\")\n    end\n    \nend\n\n\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Adds a pixels perfect border around the cast bar.",
					["Hooks"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder:Hide()\n    end    \nend",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    \n    --hide the icon of the spell, may require /reload after changing\n    envTable.HideIcon = false\n    \n    --border settings\n    envTable.BorderThickness = 1\n    envTable.BorderColor = \"black\"\n    \n    --private\n    --update the border\n    function envTable.UpdateBorder (unitFrame)\n        local castBar = unitFrame.castBar\n        \n        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\n        castBar.CastBarBorder:SetVertexColor (r, g, b, a)\n        \n        local size = envTable.BorderThickness\n        castBar.CastBarBorder:SetBorderSizes (size, size, size, size)\n        castBar.CastBarBorder:UpdateSizes()        \n        \n        if (envTable.HideIcon) then\n            castBar.Icon:Hide()\n        end\n        \n        castBar.CastBarBorder:Show()\n    end\n    \n    --create thee border\n    if (not unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder = CreateFrame (\"frame\", nil, unitFrame.castBar, \"NamePlateFullBorderTemplate\")\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1551887567,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 133004,
					["Name"] = "Cast Bar Border",
				}, -- [29]
				{
					["Enabled"] = true,
					["Revision"] = 42,
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --minimum time left to take effect\n    envTable.MinTime = 9.999\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    for index, auraIcon in ipairs (unitFrame.BuffFrame.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            if (auraIcon.RemainingTime < envTable.MinTime) then\n                auraIcon.TimerText:SetText (format (\"%.1f\", auraIcon.RemainingTime))\n            end\n        end\n    end\n    \n    for index, auraIcon in ipairs (unitFrame.BuffFrame2.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            if (auraIcon.RemainingTime < envTable.MinTime) then            \n                auraIcon.TimerText:SetText (format (\"%.1f\", auraIcon.RemainingTime))\n            end\n        end        \n    end    \nend",
					},
					["Author"] = "????????-Illidan",
					["Desc"] = "Debuff timer show decimal values",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    for index, auraIcon in ipairs (unitFrame.BuffFrame.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            if (auraIcon.RemainingTime < envTable.MinTime) then\n                auraIcon.TimerText:SetText (format (\"%.1f\", auraIcon.RemainingTime))\n            end\n        end\n    end\n    \n    for index, auraIcon in ipairs (unitFrame.BuffFrame2.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            if (auraIcon.RemainingTime < envTable.MinTime) then            \n                auraIcon.TimerText:SetText (format (\"%.1f\", auraIcon.RemainingTime))\n            end\n        end        \n    end    \nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --minimum time left to take effect\n    envTable.MinTime = 9.999\n    \nend",
					},
					["Time"] = 1551894761,
					["PlaterCore"] = 1,
					["Name"] = "Decimal Debuff Timer",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 609811,
					["LastHookEdited"] = "Constructor",
				}, -- [30]
				{
					["Enabled"] = true,
					["Revision"] = 80,
					["HooksTemp"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --    if false then return end\n    \n    for _, iconFrame in ipairs (unitFrame.ExtraIconFrame.IconPool) do\n        \n        unitFrame.ExtraIconFrame.options.show_text = true\n        \n        local profile = Plater.db.profile\n        \n        Plater.SetAnchor (iconFrame.CountdownText, profile.aura_timer_text_anchor)\n        Plater:SetFontSize (iconFrame.CountdownText, profile.aura_timer_text_size)\n        Plater:SetFontFace (iconFrame.CountdownText, profile.aura_timer_text_font)\n        \n        Plater.SetFontOutlineAndShadow (iconFrame.CountdownText, profile.aura_timer_text_outline, profile.aura_timer_text_shadow_color, profile.aura_timer_text_shadow_color_offset[1], profile.aura_timer_text_shadow_color_offset[2])\n        \n        iconFrame.Cooldown:SetEdgeTexture (profile.aura_cooldown_edge_texture)\n        iconFrame.Cooldown:SetReverse (profile.aura_cooldown_reverse)\n        iconFrame.Cooldown:SetDrawSwipe (profile.aura_cooldown_show_swipe)        \n        \n    end\n    \nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    \nend\n\n\n",
					},
					["Author"] = "?????-Illidan",
					["Desc"] = "Format Buff Special icons like the regular aura icons.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --    if false then return end\n    \n    for _, iconFrame in ipairs (unitFrame.ExtraIconFrame.IconPool) do\n        \n        unitFrame.ExtraIconFrame.options.show_text = true\n        \n        local profile = Plater.db.profile\n        \n        Plater.SetAnchor (iconFrame.CountdownText, profile.aura_timer_text_anchor)\n        Plater:SetFontSize (iconFrame.CountdownText, profile.aura_timer_text_size)\n        Plater:SetFontFace (iconFrame.CountdownText, profile.aura_timer_text_font)\n        \n        Plater.SetFontOutlineAndShadow (iconFrame.CountdownText, profile.aura_timer_text_outline, profile.aura_timer_text_shadow_color, profile.aura_timer_text_shadow_color_offset[1], profile.aura_timer_text_shadow_color_offset[2])\n        \n        iconFrame.Cooldown:SetEdgeTexture (profile.aura_cooldown_edge_texture)\n        iconFrame.Cooldown:SetReverse (profile.aura_cooldown_reverse)\n        iconFrame.Cooldown:SetDrawSwipe (profile.aura_cooldown_show_swipe)        \n        \n    end\n    \nend",
					},
					["Name"] = "Buff Special Mod",
					["PlaterCore"] = 1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["LastHookEdited"] = "Nameplate Updated",
					["Icon"] = 136139,
					["Time"] = 1551887570,
				}, -- [31]
				{
					["Enabled"] = false,
					["Revision"] = 29,
					["HooksTemp"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --after editing this script, save it and /reload\n    \n    --adds two target indicators in arrow format\n    --to change the texture you may replace the path with another texture path\n    --or you can copy and paste more options here\n    \n    Plater.TargetIndicators    [\"SmallArrow\"] = {\n        path = [[Interface\\MONEYFRAME\\Arrow-Right-Up]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 12,\n        height = 12,\n        x = 8,\n        y = 0,\n        blend = \"ADD\",\n    }\n    \n    Plater.TargetIndicators    [\"BigArrow\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\arrow_right_64]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 18,\n        height = 16,\n        x = 24,\n        y = 0,\n        blend = \"ADD\",\n        color = \"yellow\",\n    }\n    \n    \n    \nend\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --after editing this script, save it and /reload\n    \n    --adds two target indicators in arrow format\n    --to change the texture you may replace the path with another texture path\n    --or you can copy and paste more options here\n    \n    Plater.TargetIndicators    [\"SmallArrow\"] = {\n        path = [[Interface\\MONEYFRAME\\Arrow-Right-Up]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 12,\n        height = 12,\n        x = 8,\n        y = 0,\n        blend = \"ADD\",\n    }\n    \n    Plater.TargetIndicators    [\"BigArrow\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\arrow_right_64]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 18,\n        height = 16,\n        x = 24,\n        y = 0,\n        blend = \"ADD\",\n        color = \"yellow\",\n    }\n    \n    \n    \nend\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Adds two arrows into the target indicators options.",
					["Hooks"] = {
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --after editing this script, save it and /reload\n    \n    --adds two target indicators in arrow format\n    --to change the texture you may replace the path with another texture path\n    --or you can copy and paste more options here\n    \n    Plater.TargetIndicators    [\"SmallArrow\"] = {\n        path = [[Interface\\MONEYFRAME\\Arrow-Right-Up]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 12,\n        height = 12,\n        x = 8,\n        y = 0,\n        blend = \"ADD\",\n    }\n    \n    Plater.TargetIndicators    [\"BigArrow\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\arrow_right_64]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 18,\n        height = 16,\n        x = 24,\n        y = 0,\n        blend = \"ADD\",\n        color = \"yellow\",\n    }\n    \n    \n    \nend\n\n\n",
					},
					["Time"] = 1551887544,
					["PlaterCore"] = 1,
					["Name"] = "Arrow Target Indicators",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\media\\arrow_right_64",
					["LastHookEdited"] = "Player Talent Update",
				}, -- [32]
				{
					["Enabled"] = true,
					["Revision"] = 11,
					["HooksTemp"] = {
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.unitName:SetDrawLayer (\"overlay\", 7)\nend\n\n\n\n\n\n\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Set the unit name to be above the target shading texture.",
					["Hooks"] = {
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.unitName:SetDrawLayer (\"overlay\", 7)\nend\n\n\n\n\n\n\n\n\n",
					},
					["Name"] = "Unit Name Over Target Shading",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Target Changed",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 237377,
					["Time"] = 1551894756,
				}, -- [33]
				{
					["Enabled"] = true,
					["Revision"] = 16,
					["HooksTemp"] = {
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    self.Spark:SetHeight (self:GetHeight())\n    \nend\n\n\n",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    self.Spark:SetHeight (self:GetHeight())\n    \nend\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Set the spark height to the same size of the cast bar.",
					["Hooks"] = {
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    self.Spark:SetHeight (self:GetHeight())\n    \nend\n\n\n",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    self.Spark:SetHeight (self:GetHeight())\n    \nend\n\n\n",
					},
					["Name"] = "Adjust Spark Size",
					["PlaterCore"] = 1,
					["Time"] = 1551894790,
					["LastHookEdited"] = "Cast Update",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\spark6",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
				}, -- [34]
				{
					["Enabled"] = true,
					["Revision"] = 101,
					["HooksTemp"] = {
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateMobPercentage(unitFrame, true)\nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateMobPercentage(unitFrame)\nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    -- text settings:\n    local textColor = \"orange\";\n    local textSize = 10;\n    \n    -- text to show\n    envTable.showPercent = true\n    envTable.showCount = false\n    envTable.showTotal = false\n    \n    -- positioning\n    local anchor = {\n        side = 1, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 0, --x offset\n        y = 2, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    --frames:\n    \n    --create the text frame that will show the %\n    if (not  unitFrame.healthBar.mobPercentageTextFrame) then\n        envTable.mobPercentageTextFrame = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.mobPercentageTextFrame, anchor);\n        unitFrame.healthBar.mobPercentageTextFrame = envTable.mobPercentageTextFrame\n        envTable.mobPercentageTextFrame:SetText(\"\")\n    end\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    --update the target percentage\n    function envTable.UpdateMobPercentage(unitFrame, clearText)\n        if (not unitFrame or not unitFrame.healthBar or not unitFrame.healthBar.mobPercentageTextFrame) then return end\n        \n        -- update the anchor for better configuration\n        Plater.SetAnchor (unitFrame.healthBar.mobPercentageTextFrame, anchor);\n        \n        if (clearText) then\n            unitFrame.healthBar.mobPercentageTextFrame:SetText(\"\")\n            return\n        end\n        \n        local _, _, difficultyID= GetInstanceInfo()\n        local _, _, _, isChallengeMode = GetDifficultyInfo(difficultyID)\n        \n        --isChallengeMode = true\n        if (not isChallengeMode) then\n            unitFrame.healthBar.mobPercentageTextFrame:SetText(\"\")\n            return\n        end\n        \n        if MethodDungeonTools ~= nil and MethodDungeonTools.GetEnemyForces ~= nil then\n            local mobPercentageString = \"\"\n            local weight = nil;\n            local preset = MethodDungeonTools:GetCurrentPreset()\n            local isTeeming = MethodDungeonTools:IsPresetTeeming(preset)\n            local npcId = unitFrame.namePlateNpcId\n            local count, max, maxTeeming = MethodDungeonTools:GetEnemyForces(npcId)\n            if (count ~= nil and max ~= nil and maxTeeming ~= nil) then\n                if (isTeeming) then\n                    weight = count / maxTeeming\n                else\n                    weight = count / max\n                end\n                weight = weight * 100\n            end\n            \n            if (weight and weight > 0) then\n                if envTable.showPercent then\n                    mobPercentageString = string.format(\"%.2f%%\", weight)\n                end\n                if envTable.showCount then\n                    if  mobPercentageString ~= \"\"  then\n                        mobPercentageString = mobPercentageString .. \" | \"\n                    end\n                    mobPercentageString = mobPercentageString .. count\n                    if envTable.showTotal then\n                        if (isTeeming) then\n                            mobPercentageString = mobPercentageString .. \"/\" ..  maxTeeming\n                        else\n                            mobPercentageString = mobPercentageString .. \"/\" ..  max\n                        end\n                    end\n                end\n                \n                unitFrame.healthBar.mobPercentageTextFrame:SetText(\"(\"..mobPercentageString..\")\")\n            end\n        end\n    end\nend\n\n\n\n",
					},
					["Author"] = "Viashi-Antonidas",
					["Desc"] = "Shows the m+ mob percentage on the nameplate. REQUIRES MDT \"Method Dungeon Tools\" TO WORK!",
					["Hooks"] = {
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateMobPercentage(unitFrame, true)\nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateMobPercentage(unitFrame)\nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    -- text settings:\n    local textColor = \"orange\";\n    local textSize = 10;\n    \n    -- text to show\n    envTable.showPercent = true\n    envTable.showCount = false\n    envTable.showTotal = false\n    \n    -- positioning\n    local anchor = {\n        side = 1, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 0, --x offset\n        y = 2, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    --frames:\n    \n    --create the text frame that will show the %\n    if (not  unitFrame.healthBar.mobPercentageTextFrame) then\n        envTable.mobPercentageTextFrame = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.mobPercentageTextFrame, anchor);\n        unitFrame.healthBar.mobPercentageTextFrame = envTable.mobPercentageTextFrame\n        envTable.mobPercentageTextFrame:SetText(\"\")\n    end\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    --update the target percentage\n    function envTable.UpdateMobPercentage(unitFrame, clearText)\n        if (not unitFrame or not unitFrame.healthBar or not unitFrame.healthBar.mobPercentageTextFrame) then return end\n        \n        -- update the anchor for better configuration\n        Plater.SetAnchor (unitFrame.healthBar.mobPercentageTextFrame, anchor);\n        \n        if (clearText) then\n            unitFrame.healthBar.mobPercentageTextFrame:SetText(\"\")\n            return\n        end\n        \n        local _, _, difficultyID= GetInstanceInfo()\n        local _, _, _, isChallengeMode = GetDifficultyInfo(difficultyID)\n        \n        --isChallengeMode = true\n        if (not isChallengeMode) then\n            unitFrame.healthBar.mobPercentageTextFrame:SetText(\"\")\n            return\n        end\n        \n        if MethodDungeonTools ~= nil and MethodDungeonTools.GetEnemyForces ~= nil then\n            local mobPercentageString = \"\"\n            local weight = nil;\n            local preset = MethodDungeonTools:GetCurrentPreset()\n            local isTeeming = MethodDungeonTools:IsPresetTeeming(preset)\n            local npcId = unitFrame.namePlateNpcId\n            local count, max, maxTeeming = MethodDungeonTools:GetEnemyForces(npcId)\n            if (count ~= nil and max ~= nil and maxTeeming ~= nil) then\n                if (isTeeming) then\n                    weight = count / maxTeeming\n                else\n                    weight = count / max\n                end\n                weight = weight * 100\n            end\n            \n            if (weight and weight > 0) then\n                if envTable.showPercent then\n                    mobPercentageString = string.format(\"%.2f%%\", weight)\n                end\n                if envTable.showCount then\n                    if  mobPercentageString ~= \"\"  then\n                        mobPercentageString = mobPercentageString .. \" | \"\n                    end\n                    mobPercentageString = mobPercentageString .. count\n                    if envTable.showTotal then\n                        if (isTeeming) then\n                            mobPercentageString = mobPercentageString .. \"/\" ..  maxTeeming\n                        else\n                            mobPercentageString = mobPercentageString .. \"/\" ..  max\n                        end\n                    end\n                end\n                \n                unitFrame.healthBar.mobPercentageTextFrame:SetText(\"(\"..mobPercentageString..\")\")\n            end\n        end\n    end\nend\n\n\n\n",
					},
					["Time"] = 1552795667,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 254292,
					["Name"] = "M+ MDT MobPercentage",
				}, -- [35]
				{
					["Enabled"] = false,
					["Revision"] = 779,
					["HooksTemp"] = {
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.healthBarSlices) then\n        for _, sliceSegment in ipairs (unitFrame.healthBarSlices) do\n            sliceSegment:Hide()\n        end\n        \n        unitFrame.healthBar.background:SetAlpha (1)\n        unitFrame.healthBar.barTexture:SetAlpha (1) \n    end\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --override the update frequency to run every tick\n    local tickFrame = unitFrame:GetParent().OnTickFrame\n    tickFrame.ThrottleUpdate = -1\n    \n    --update the nameplate color with delay\n    envTable.UpdateNameplateColor (unitFrame)\n    \n    --check if the max value has changed\n    local minHealth, maxHealth = unitFrame.healthBar:GetMinMaxValues()\n    if (maxHealth ~= envTable.MaxValue) then\n        envTable.UpdateAllSegments (unitFrame)\n        return\n    end\n    \n    --check if the nameplate is already animating and update the animation position\n    if (envTable.RunningAnimation) then\n        envTable.UpdateAnimation (unitFrame)\n        return\n    end\n    \n    if (envTable.CurrentValue ~= unitFrame.healthBar:GetValue()) then\n        envTable.StartAnimation (unitFrame, unitFrame.healthBar:GetValue())\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --refresh all the segment parts\n    envTable.UpdateAllSegments (unitFrame)\n    \n    --update the nameplate color with delay\n    envTable.UpdateNameplateColor (unitFrame)\n    \n    \nend\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --lines which starts with a double dash -- are comments and aren't part of the script\n    \n    --you also might want to:\n    --adjust the black nameplate border (General Settings > Border Color)\n    --adjust the background color to zero (General Settings > Health Bar Background Color and Alpha)\n    --disable the target shading at the Target tab\n    --adjust the target overlay at the Target tab to zero\n    \n    --settings:\n    \n    --which texture it should use\n    envTable.Texture = [[Interface\\AddOns\\Plater\\images\\segment_texture_3]]\n    \n    --shear amount (how much the animation texture leans)\n    envTable.Shearing = 0.20\n    \n    --amount of segments the healthbar will have\n    --modifying this value require a /reload\n    envTable.SegmentsAmount = 10\n    \n    --animation speed (movement left <> right)\n    envTable.AnimationSpeed = 0.75\n    \n    --depleted segment animation settings (when a block reaches zero health)\n    --modifying this value require a /reload\n    envTable.AnimationSettings = {\n        speed = 0.4,\n        rotation = 0, \n        x = 7,\n        y = 1,\n        scaleX = 1,\n        scaleY = 1.6\n    }\n    \n    --end of settings\n    \n    envTable.OnStartDepletedAnimation = function (self)\n        local texture = self:GetParent():GetCapsule()\n        local segmentBar = texture:GetParent():GetCapsule()\n        texture:Show()\n        texture.vertexcolor = {segmentBar:GetVertexColor()}\n        texture.texture = envTable.Texture\n    end\n    \n    envTable.OnEndDepletedAnimation = function (self)\n        self:GetParent():Hide()\n    end\n    \n    --declaring a default value for the max value\n    envTable.MaxValue = 0        \n    \n    --cooldown to update the nameplate color\n    envTable.LastColorUpdate = 0        \n    \n    --this function creates the segments part\n    function envTable.InitializeBars()\n        if (not unitFrame.healthBarSlices) then\n            unitFrame.healthBarSlices = {}\n            \n            for i = 1, envTable.SegmentsAmount do\n                local statusBar = Plater:CreateBar (unitFrame)\n                statusBar:EnableMouse (false)\n                tinsert (unitFrame.healthBarSlices, statusBar)\n                \n                statusBar.segmentTexture = statusBar:CreateTexture (nil, \"artwork\")\n                statusBar.segmentTexture:SetTexture (envTable.Texture)\n                statusBar.segmentTexture:SetPoint (\"center\")\n                \n                local textureAnimation = Plater:CreateImage (statusBar)\n                textureAnimation:SetAllPoints()\n                textureAnimation:Hide()\n                textureAnimation:SetTexture (envTable.Texture)\n                statusBar.textureAnimation = textureAnimation\n                \n                statusBar.depletedAnimation = Plater:CreateAnimationHub (textureAnimation, envTable.OnStartDepletedAnimation, envTable.OnEndDepletedAnimation)\n                \n                local speed = envTable.AnimationSettings.speed\n                local rotation = envTable.AnimationSettings.rotation\n                local x = envTable.AnimationSettings.x\n                local y = envTable.AnimationSettings.y\n                local scaleX =envTable.AnimationSettings.scaleX\n                local scaleY = envTable.AnimationSettings.scaleY\n                \n                Plater:CreateAnimation (statusBar.depletedAnimation, \"rotation\", 1, speed, rotation)\n                Plater:CreateAnimation (statusBar.depletedAnimation, \"translation\", 1, speed, x, y)\n                Plater:CreateAnimation (statusBar.depletedAnimation, \"alpha\", 1, speed, 1, 0)\n                Plater:CreateAnimation (statusBar.depletedAnimation, \"scale\", 1, speed, 1, 1, scaleX, scaleY)\n                \n                local textureBackground = Plater:CreateImage (statusBar)\n                textureBackground:SetAllPoints()\n                textureBackground:SetDrawLayer (\"background\")                \n                statusBar.textureBackground = textureBackground\n            end\n        end\n    end\n    \n    envTable.InitializeBars()\n    \n    function envTable.SetSegmentPercent (segmentSlice, currentValue)\n        \n        segmentSlice:SetValue (currentValue)\n        \n        local percent = DetailsFramework:GetRangePercent (segmentSlice.minValue, segmentSlice.maxValue, currentValue) \n        percent = DetailsFramework:Clamp (0, 1, percent)\n        \n        local texture = segmentSlice.segmentTexture\n        local width = segmentSlice:GetWidth()\n        local shear\n        if (percent > 0.98) then\n            shear = 0\n        else\n            shear = envTable.Shearing\n        end\n        \n        local shearingPercent = DetailsFramework:Clamp (0, 1, percent - shear)\n        \n        texture:SetVertexOffset (UPPER_LEFT_VERTEX, 0, 0);\n        texture:SetVertexOffset (LOWER_LEFT_VERTEX, 0, 0);\n        texture:SetVertexOffset (UPPER_RIGHT_VERTEX, -width * (1 - percent), 0);\n        texture:SetVertexOffset (LOWER_RIGHT_VERTEX, -width * (1 - shearingPercent), 0);\n        \n        texture:SetTexCoord (\n            0, 0, --topleft\n            0, 1, --bottomleft\n            percent, 0, --topright\n            shearingPercent, 1 --bottomright\n        )\n    end\n    \n    function envTable.UpdateAllSegments (unitFrame)\n        \n        local sliceWidth = unitFrame.healthBar:GetWidth() / envTable.SegmentsAmount\n        local sliceHeight = unitFrame.healthBar:GetHeight()\n        local minHealth, maxHealth = unitFrame.healthBar:GetMinMaxValues()\n        local healthPerSlice = maxHealth / envTable.SegmentsAmount\n        local currentValue = unitFrame.healthBar:GetValue()        \n        \n        envTable.MaxValue = maxHealth\n        \n        for i = 1, envTable.SegmentsAmount do\n            \n            local slice = unitFrame.healthBarSlices [i]\n            slice.texture = \"\"\n            slice.textureBackground.texture = envTable.Texture\n            slice.textureBackground.vertexcolor = {.1, .1, .1, .5}\n            slice:Show()\n            \n            slice.segmentTexture:SetSize (sliceWidth, sliceHeight)\n            slice.segmentTexture:SetTexture (envTable.Texture)\n            \n            slice:SetSize (sliceWidth, sliceHeight)\n            slice:SetPoint (\"left\", unitFrame.healthBar, \"left\", (i - 1) * sliceWidth, 0)            \n            slice:SetFrameLevel (unitFrame.healthBar:GetFrameLevel() - 1)\n            \n            slice.minValue = (healthPerSlice * (i - 1)) + 0.1\n            slice.maxValue = healthPerSlice * i\n            slice:SetMinMaxValues (slice.minValue, slice.maxValue)\n            \n            slice.animationCooldown = -1\n            \n            --set and save the current value\n            slice.currentValue = currentValue\n            \n            envTable.SetSegmentPercent (slice, currentValue)\n            \n            slice.IsAnimating = false\n        end    \n        \n        --reset the animation\n        envTable.RunningAnimation = false\n        --reset which segment is currently being animated\n        envTable.SegmentBeingAnimated = 0\n        \n        --what is the current value and how much value has each segment\n        envTable.CurrentValue = currentValue\n        envTable.ValuePerSegment = healthPerSlice\n        \n        --cooldown to update the nameplate color\n        envTable.LastColorUpdate = 0\n        \n        \n    end\n    \n    function envTable.StartAnimation (unitFrame, endValue)\n        envTable.RunningAnimation = true\n        \n        --in which segment the value is currently in\n        --        local currentSegment = max (min (ceil (envTable.CurrentValue / envTable.ValuePerSegment), envTable.SegmentsAmount), 1)\n        \n        local currentSegment\n        \n        for i = 1, envTable.SegmentsAmount do\n            local segment = unitFrame.healthBarSlices [i]\n            if (envTable.CurrentValue > segment.minValue and envTable.CurrentValue <= segment.maxValue) then\n                currentSegment = i\n                break\n            end \n        end\n        \n        if (not currentSegment) then\n            currentSegment = max (min (ceil (envTable.CurrentValue / envTable.ValuePerSegment), envTable.SegmentsAmount), 1)\n        end\n        \n        envTable.SegmentBeingAnimated = currentSegment\n        \n        --true with the animation goes down (decreasing) false if goes up (increasing)\n        envTable.AnimationDirection = envTable.CurrentValue > endValue\n        \n        --save the value where the animation ends\n        envTable.EndValue = endValue\n        \n        envTable.UpdateAnimation (unitFrame)\n        \n        unitFrame.healthBar.background:SetAlpha (0)\n        unitFrame.healthBar.barTexture:SetAlpha (0)\n    end\n    \n    function envTable.UpdateAnimation (unitFrame)\n        local deltaSeconds = GetWorldDeltaSeconds()\n        local currentSegment = unitFrame.healthBarSlices [envTable.SegmentBeingAnimated]\n        local currentValue = envTable.CurrentValue\n        local amountToMove = envTable.MaxValue * deltaSeconds * envTable.AnimationSpeed\n        \n        --check if the endValue has been updated\n        if (envTable.EndValue ~= unitFrame.healthBar:GetValue()) then\n            --the end value got changed\n            envTable.EndValue = unitFrame.healthBar:GetValue()\n        end\n        \n        if (envTable.AnimationDirection) then --moving right to left\n            amountToMove = -amountToMove\n        end\n        \n        local newValue = Clamp (currentValue + amountToMove, 0, envTable.MaxValue)\n        --currentSegment:SetValue (newValue)\n        envTable.SetSegmentPercent (currentSegment, newValue)\n        \n        envTable.CurrentValue = newValue\n        \n        --moving right to left        \n        if (envTable.AnimationDirection) then \n            \n            --check if needs to jump to the next segment\n            if (newValue < currentSegment.minValue) then\n                --segment is depleted, jump to the next segment\n                if (currentSegment.animationCooldown < GetTime()) then\n                    currentSegment.depletedAnimation:Play()\n                end\n                \n                currentSegment.animationCooldown = GetTime() + 5\n                envTable.SegmentBeingAnimated = max (envTable.SegmentBeingAnimated - 1, 1)\n            end\n            \n            --check if the animation is over\n            if (newValue <= envTable.EndValue) then\n                envTable.RunningAnimation = false\n                envTable.CurrentValue = unitFrame.healthBar:GetValue()\n                return\n            end\n            \n        else\n            \n            --the animation is growing (left to right)\n            --check if the animation is over\n            \n            --check if needs to jump to the next segment\n            if (newValue > currentSegment.maxValue) then\n                --segment got full, jump to the next segment\n                --currentSegment.depletedAnimation:Play()\n                envTable.SegmentBeingAnimated = min (envTable.SegmentBeingAnimated + 1, envTable.SegmentsAmount)\n                \n            end\n            \n            if (newValue >= envTable.EndValue) then\n                envTable.RunningAnimation = false\n                envTable.CurrentValue = unitFrame.healthBar:GetValue()\n                return\n            end\n            \n        end\n    end\n    \n    function envTable.UpdateNameplateColor (unitFrame)\n        \n        envTable.LastColorUpdate = envTable.LastColorUpdate - GetWorldDeltaSeconds()\n        \n        if (envTable.LastColorUpdate < 0) then\n            envTable.LastColorUpdate = 0.3\n            \n            local r, g, b =unitFrame.healthBar:GetColor()\n            for i = 1, envTable.SegmentsAmount do\n                local slice = unitFrame.healthBarSlices [i]            \n                slice.statusbar:SetStatusBarColor (r ,g ,b, 0)\n                slice.segmentTexture:SetVertexColor (r, g, b, 1)\n            end\n            \n            unitFrame.healthBar.background:SetAlpha (0)\n            unitFrame.healthBar.barTexture:SetAlpha (0) \n        end\n        \n    end\n    \nend",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --override the update frequency to run every tick\n    local tickFrame = unitFrame:GetParent().OnTickFrame\n    tickFrame.ThrottleUpdate = -1\n    \n    --update the nameplate color with delay\n    envTable.UpdateNameplateColor (unitFrame)\n    \n    --check if the max value has changed\n    local minHealth, maxHealth = unitFrame.healthBar:GetMinMaxValues()\n    if (maxHealth ~= envTable.MaxValue) then\n        envTable.UpdateAllSegments (unitFrame)\n        return\n    end\n    \n    --check if the nameplate is already animating and update the animation position\n    if (envTable.RunningAnimation) then\n        envTable.UpdateAnimation (unitFrame)\n        return\n    end\n    \n    if (envTable.CurrentValue ~= unitFrame.healthBar:GetValue()) then\n        envTable.StartAnimation (unitFrame, unitFrame.healthBar:GetValue())\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.healthBarSlices) then\n        for _, sliceSegment in ipairs (unitFrame.healthBarSlices) do\n            sliceSegment:Hide()\n        end\n        \n        unitFrame.healthBar.background:SetAlpha (1)\n        unitFrame.healthBar.barTexture:SetAlpha (1) \n    end\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --refresh all the segment parts\n    envTable.UpdateAllSegments (unitFrame)\n    \n    --update the nameplate color with delay\n    envTable.UpdateNameplateColor (unitFrame)\n    \n    \nend\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --lines which starts with a double dash -- are comments and aren't part of the script\n    \n    --you also might want to:\n    --adjust the black nameplate border (General Settings > Border Color)\n    --adjust the background color to zero (General Settings > Health Bar Background Color and Alpha)\n    --disable the target shading at the Target tab\n    --adjust the target overlay at the Target tab to zero\n    \n    --settings:\n    \n    --which texture it should use\n    envTable.Texture = [[Interface\\AddOns\\Plater\\images\\segment_texture_3]]\n    \n    --shear amount (how much the animation texture leans)\n    envTable.Shearing = 0.20\n    \n    --amount of segments the healthbar will have\n    --modifying this value require a /reload\n    envTable.SegmentsAmount = 10\n    \n    --animation speed (movement left <> right)\n    envTable.AnimationSpeed = 0.75\n    \n    --depleted segment animation settings (when a block reaches zero health)\n    --modifying this value require a /reload\n    envTable.AnimationSettings = {\n        speed = 0.4,\n        rotation = 0, \n        x = 7,\n        y = 1,\n        scaleX = 1,\n        scaleY = 1.6\n    }\n    \n    --end of settings\n    \n    envTable.OnStartDepletedAnimation = function (self)\n        local texture = self:GetParent():GetCapsule()\n        local segmentBar = texture:GetParent():GetCapsule()\n        texture:Show()\n        texture.vertexcolor = {segmentBar:GetVertexColor()}\n        texture.texture = envTable.Texture\n    end\n    \n    envTable.OnEndDepletedAnimation = function (self)\n        self:GetParent():Hide()\n    end\n    \n    --declaring a default value for the max value\n    envTable.MaxValue = 0        \n    \n    --cooldown to update the nameplate color\n    envTable.LastColorUpdate = 0        \n    \n    --this function creates the segments part\n    function envTable.InitializeBars()\n        if (not unitFrame.healthBarSlices) then\n            unitFrame.healthBarSlices = {}\n            \n            for i = 1, envTable.SegmentsAmount do\n                local statusBar = Plater:CreateBar (unitFrame)\n                statusBar:EnableMouse (false)\n                tinsert (unitFrame.healthBarSlices, statusBar)\n                \n                statusBar.segmentTexture = statusBar:CreateTexture (nil, \"artwork\")\n                statusBar.segmentTexture:SetTexture (envTable.Texture)\n                statusBar.segmentTexture:SetPoint (\"center\")\n                \n                local textureAnimation = Plater:CreateImage (statusBar)\n                textureAnimation:SetAllPoints()\n                textureAnimation:Hide()\n                textureAnimation:SetTexture (envTable.Texture)\n                statusBar.textureAnimation = textureAnimation\n                \n                statusBar.depletedAnimation = Plater:CreateAnimationHub (textureAnimation, envTable.OnStartDepletedAnimation, envTable.OnEndDepletedAnimation)\n                \n                local speed = envTable.AnimationSettings.speed\n                local rotation = envTable.AnimationSettings.rotation\n                local x = envTable.AnimationSettings.x\n                local y = envTable.AnimationSettings.y\n                local scaleX =envTable.AnimationSettings.scaleX\n                local scaleY = envTable.AnimationSettings.scaleY\n                \n                Plater:CreateAnimation (statusBar.depletedAnimation, \"rotation\", 1, speed, rotation)\n                Plater:CreateAnimation (statusBar.depletedAnimation, \"translation\", 1, speed, x, y)\n                Plater:CreateAnimation (statusBar.depletedAnimation, \"alpha\", 1, speed, 1, 0)\n                Plater:CreateAnimation (statusBar.depletedAnimation, \"scale\", 1, speed, 1, 1, scaleX, scaleY)\n                \n                local textureBackground = Plater:CreateImage (statusBar)\n                textureBackground:SetAllPoints()\n                textureBackground:SetDrawLayer (\"background\")                \n                statusBar.textureBackground = textureBackground\n            end\n        end\n    end\n    \n    envTable.InitializeBars()\n    \n    function envTable.SetSegmentPercent (segmentSlice, currentValue)\n        \n        segmentSlice:SetValue (currentValue)\n        \n        local percent = DetailsFramework:GetRangePercent (segmentSlice.minValue, segmentSlice.maxValue, currentValue) \n        percent = DetailsFramework:Clamp (0, 1, percent)\n        \n        local texture = segmentSlice.segmentTexture\n        local width = segmentSlice:GetWidth()\n        local shear\n        if (percent > 0.98) then\n            shear = 0\n        else\n            shear = envTable.Shearing\n        end\n        \n        local shearingPercent = DetailsFramework:Clamp (0, 1, percent - shear)\n        \n        texture:SetVertexOffset (UPPER_LEFT_VERTEX, 0, 0);\n        texture:SetVertexOffset (LOWER_LEFT_VERTEX, 0, 0);\n        texture:SetVertexOffset (UPPER_RIGHT_VERTEX, -width * (1 - percent), 0);\n        texture:SetVertexOffset (LOWER_RIGHT_VERTEX, -width * (1 - shearingPercent), 0);\n        \n        texture:SetTexCoord (\n            0, 0, --topleft\n            0, 1, --bottomleft\n            percent, 0, --topright\n            shearingPercent, 1 --bottomright\n        )\n    end\n    \n    function envTable.UpdateAllSegments (unitFrame)\n        \n        local sliceWidth = unitFrame.healthBar:GetWidth() / envTable.SegmentsAmount\n        local sliceHeight = unitFrame.healthBar:GetHeight()\n        local minHealth, maxHealth = unitFrame.healthBar:GetMinMaxValues()\n        local healthPerSlice = maxHealth / envTable.SegmentsAmount\n        local currentValue = unitFrame.healthBar:GetValue()        \n        \n        envTable.MaxValue = maxHealth\n        \n        for i = 1, envTable.SegmentsAmount do\n            \n            local slice = unitFrame.healthBarSlices [i]\n            slice.texture = \"\"\n            slice.textureBackground.texture = envTable.Texture\n            slice.textureBackground.vertexcolor = {.1, .1, .1, .5}\n            slice:Show()\n            \n            slice.segmentTexture:SetSize (sliceWidth, sliceHeight)\n            slice.segmentTexture:SetTexture (envTable.Texture)\n            \n            slice:SetSize (sliceWidth, sliceHeight)\n            slice:SetPoint (\"left\", unitFrame.healthBar, \"left\", (i - 1) * sliceWidth, 0)            \n            slice:SetFrameLevel (unitFrame.healthBar:GetFrameLevel() - 1)\n            \n            slice.minValue = (healthPerSlice * (i - 1)) + 0.1\n            slice.maxValue = healthPerSlice * i\n            slice:SetMinMaxValues (slice.minValue, slice.maxValue)\n            \n            slice.animationCooldown = -1\n            \n            --set and save the current value\n            slice.currentValue = currentValue\n            \n            envTable.SetSegmentPercent (slice, currentValue)\n            \n            slice.IsAnimating = false\n        end    \n        \n        --reset the animation\n        envTable.RunningAnimation = false\n        --reset which segment is currently being animated\n        envTable.SegmentBeingAnimated = 0\n        \n        --what is the current value and how much value has each segment\n        envTable.CurrentValue = currentValue\n        envTable.ValuePerSegment = healthPerSlice\n        \n        --cooldown to update the nameplate color\n        envTable.LastColorUpdate = 0\n        \n        \n    end\n    \n    function envTable.StartAnimation (unitFrame, endValue)\n        envTable.RunningAnimation = true\n        \n        --in which segment the value is currently in\n        --        local currentSegment = max (min (ceil (envTable.CurrentValue / envTable.ValuePerSegment), envTable.SegmentsAmount), 1)\n        \n        local currentSegment\n        \n        for i = 1, envTable.SegmentsAmount do\n            local segment = unitFrame.healthBarSlices [i]\n            if (envTable.CurrentValue > segment.minValue and envTable.CurrentValue <= segment.maxValue) then\n                currentSegment = i\n                break\n            end \n        end\n        \n        if (not currentSegment) then\n            currentSegment = max (min (ceil (envTable.CurrentValue / envTable.ValuePerSegment), envTable.SegmentsAmount), 1)\n        end\n        \n        envTable.SegmentBeingAnimated = currentSegment\n        \n        --true with the animation goes down (decreasing) false if goes up (increasing)\n        envTable.AnimationDirection = envTable.CurrentValue > endValue\n        \n        --save the value where the animation ends\n        envTable.EndValue = endValue\n        \n        envTable.UpdateAnimation (unitFrame)\n        \n        unitFrame.healthBar.background:SetAlpha (0)\n        unitFrame.healthBar.barTexture:SetAlpha (0)\n    end\n    \n    function envTable.UpdateAnimation (unitFrame)\n        local deltaSeconds = GetWorldDeltaSeconds()\n        local currentSegment = unitFrame.healthBarSlices [envTable.SegmentBeingAnimated]\n        local currentValue = envTable.CurrentValue\n        local amountToMove = envTable.MaxValue * deltaSeconds * envTable.AnimationSpeed\n        \n        --check if the endValue has been updated\n        if (envTable.EndValue ~= unitFrame.healthBar:GetValue()) then\n            --the end value got changed\n            envTable.EndValue = unitFrame.healthBar:GetValue()\n        end\n        \n        if (envTable.AnimationDirection) then --moving right to left\n            amountToMove = -amountToMove\n        end\n        \n        local newValue = Clamp (currentValue + amountToMove, 0, envTable.MaxValue)\n        --currentSegment:SetValue (newValue)\n        envTable.SetSegmentPercent (currentSegment, newValue)\n        \n        envTable.CurrentValue = newValue\n        \n        --moving right to left        \n        if (envTable.AnimationDirection) then \n            \n            --check if needs to jump to the next segment\n            if (newValue < currentSegment.minValue) then\n                --segment is depleted, jump to the next segment\n                if (currentSegment.animationCooldown < GetTime()) then\n                    currentSegment.depletedAnimation:Play()\n                end\n                \n                currentSegment.animationCooldown = GetTime() + 5\n                envTable.SegmentBeingAnimated = max (envTable.SegmentBeingAnimated - 1, 1)\n            end\n            \n            --check if the animation is over\n            if (newValue <= envTable.EndValue) then\n                envTable.RunningAnimation = false\n                envTable.CurrentValue = unitFrame.healthBar:GetValue()\n                return\n            end\n            \n        else\n            \n            --the animation is growing (left to right)\n            --check if the animation is over\n            \n            --check if needs to jump to the next segment\n            if (newValue > currentSegment.maxValue) then\n                --segment got full, jump to the next segment\n                --currentSegment.depletedAnimation:Play()\n                envTable.SegmentBeingAnimated = min (envTable.SegmentBeingAnimated + 1, envTable.SegmentsAmount)\n                \n            end\n            \n            if (newValue >= envTable.EndValue) then\n                envTable.RunningAnimation = false\n                envTable.CurrentValue = unitFrame.healthBar:GetValue()\n                return\n            end\n            \n        end\n    end\n    \n    function envTable.UpdateNameplateColor (unitFrame)\n        \n        envTable.LastColorUpdate = envTable.LastColorUpdate - GetWorldDeltaSeconds()\n        \n        if (envTable.LastColorUpdate < 0) then\n            envTable.LastColorUpdate = 0.3\n            \n            local r, g, b =unitFrame.healthBar:GetColor()\n            for i = 1, envTable.SegmentsAmount do\n                local slice = unitFrame.healthBarSlices [i]            \n                slice.statusbar:SetStatusBarColor (r ,g ,b, 0)\n                slice.segmentTexture:SetVertexColor (r, g, b, 1)\n            end\n            \n            unitFrame.healthBar.background:SetAlpha (0)\n            unitFrame.healthBar.barTexture:SetAlpha (0) \n        end\n        \n    end\n    \nend",
					},
					["Time"] = 1556146704,
					["PlaterCore"] = 1,
					["Name"] = "Overwatch Nameplate",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\FriendsFrame\\Battlenet-Overwatchicon",
					["LastHookEdited"] = "Constructor",
				}, -- [36]
				{
					["Enabled"] = true,
					["Revision"] = 70,
					["HooksTemp"] = {
					},
					["Author"] = "�r��ne-Kel'thuzad",
					["Desc"] = "Adds double arrow as a target indicators option",
					["Hooks"] = {
						["Player Logon"] = "function ()\n    \n    -- /RELOAD AFTER IMPORTING OR CHANGING THE SCRIPT\n    -- SELECT THE INDICATOR AT THE TARGET TAB\n    \n    Plater.TargetIndicators    [\"Double Arrows\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\arrow_double_right_64]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 20,\n        height = 16,\n        x = 28,\n        y = 0,\n        blend = \"ADD\",\n        color = \"white\",\n    }    \n    \nend\n\n\n",
					},
					["Time"] = 1556071189,
					["PlaterCore"] = 1,
					["Name"] = "Double Arrow Target",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\media\\arrow_double_right_64",
					["LastHookEdited"] = "",
				}, -- [37]
			},
			["last_news_time"] = 1551553489,
			["cast_statusbar_fadeout_time"] = 0.489999979734421,
			["aura_width"] = 22,
			["pet_width_scale"] = 0.999999940395355,
			["ui_parent_cast_strata"] = "DIALOG",
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Buff Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Color Change"] = 1,
				["Aura - Blink Time Left"] = 1,
				["Explosion Affix M+"] = 3,
				["Cast - Very Important"] = 2,
				["Aura Border Color"] = 1,
				["Unit - Important"] = 5,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Unit Power"] = 1,
				["Blink by Time Left"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["extra_icon_anchor"] = {
				["y"] = 0,
				["x"] = 4,
			},
			["use_playerclass_color"] = false,
			["resources"] = {
				["y_offset"] = 1,
				["y_offset_target"] = 9,
				["scale"] = 0.799999952316284,
			},
			["click_space"] = {
				115, -- [1]
			},
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["aura2_grow_direction"] = 1,
			["castbar_target_outline"] = "NONE",
			["aura_alpha"] = 0.849999964237213,
			["cast_statusbar_texture"] = "ElvUI Norm",
			["cast_statusbar_spark_color"] = {
				0.988235294117647, -- [1]
				[3] = 0.941176470588235,
			},
			["aura_grow_direction"] = 3,
			["aura_cooldown_edge_texture"] = "Interface\\GLUES\\loadingOld",
			["aura_timer_text_font"] = "Expressway",
			["aura_tracker"] = {
				["debuff"] = {
					224991, -- [1]
					277950, -- [2]
				},
				["buff_tracked"] = {
					[209859] = true,
				},
			},
			["pet_height_scale"] = 0.999999940395355,
			["aura_x_offset"] = -49,
			["first_run3"] = true,
			["healthbar_framelevel"] = 0,
			["indicator_raidmark_anchor"] = {
				["x"] = -40,
			},
			["extra_icon_width"] = 22,
			["tank"] = {
				["colors"] = {
					["pulling"] = {
						nil, -- [1]
						0.913725490196078, -- [2]
						0.996078431372549, -- [3]
						1, -- [4]
					},
				},
			},
			["health_statusbar_texture"] = "ElvUI Norm",
			["hook_auto_imported"] = {
				["Players Targetting Amount"] = 4,
				["Targetting Alpha"] = 3,
				["Dont Have Aura"] = 1,
				["Monk Statue"] = 2,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Aura Reorder"] = 1,
				["Blockade Encounter"] = 1,
				["Jaina Encounter"] = 6,
				["Reorder Nameplate"] = 3,
				["Extra Border"] = 2,
				["Combo Points"] = 3,
				["Hide Neutral Units"] = 1,
				["Target Color"] = 3,
				["Attacking Specific Unit"] = 1,
				["Execute Range"] = 1,
			},
			["castbar_target_show"] = true,
			["cast_statusbar_color"] = {
				nil, -- [1]
				0.858823529411765, -- [2]
				nil, -- [3]
				0.96000000089407, -- [4]
			},
			["update_throttle"] = 0.0999999940395355,
			["minor_width_scale"] = 0.999999940395355,
			["castbar_target_text_size"] = 8,
			["captured_spells"] = {
				[296750] = {
					["source"] = "Stmdashz-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195776] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295727] = {
					["source"] = "Squailmarr-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306474] = {
					["source"] = "Hornstachee-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53390] = {
					["source"] = "Logekimz-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115192] = {
					["type"] = "BUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214968] = {
					["source"] = "Tassan-CenarionCircle",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268607] = {
					["source"] = "Voltijj-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193475] = {
					["source"] = "Ronhardt-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281402] = {
					["source"] = "Arnbjørn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[29166] = {
					["encounterID"] = 2304,
					["source"] = "Haxpaxy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270657] = {
					["source"] = "Rockharrd-Proudmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281404] = {
					["source"] = "Cyroburn-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255654] = {
					["source"] = "Beefzerker-Bladefist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85256] = {
					["source"] = "Hagoop-KulTiras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[168657] = {
					["source"] = "Vestramortem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153561] = {
					["encounterID"] = 2304,
					["source"] = "Arnbjørn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31821] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123254] = {
					["type"] = "BUFF",
					["source"] = "Quivna",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[403] = {
					["source"] = "Xeràth-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270661] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275779] = {
					["encounterID"] = 2304,
					["source"] = "Abernathii",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288573] = {
					["source"] = "Getit-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301367] = {
					["source"] = "Xeo-Stonemaul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302392] = {
					["source"] = "Aeste-Ner'zhul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300857] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192968] = {
					["source"] = "Vestramortem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[162264] = {
					["type"] = "BUFF",
					["source"] = "Andruww",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296254] = {
					["source"] = "Savage Snapdragon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153959,
				},
				[194249] = {
					["type"] = "BUFF",
					["source"] = "Sinmon",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["encounterID"] = 2304,
					["source"] = "Aédan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[301886] = {
					["source"] = "Hornstachee-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57934] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295746] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118779] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221886] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205766] = {
					["source"] = "Coupedegrace-Dragonmaw",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203975] = {
					["source"] = "Sugababie-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273232] = {
					["type"] = "BUFF",
					["source"] = "Andruww",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279885] = {
					["source"] = "Cadaceus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1715] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Magarus-MoonGuard",
					["npcID"] = 0,
				},
				[270674] = {
					["source"] = "Solisha-Mug'thol",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1719] = {
					["type"] = "BUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288074] = {
					["source"] = "Ickybud-Daggerspine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["source"] = "Jellohello-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194509] = {
					["encounterID"] = 2304,
					["source"] = "Tehkz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[293705] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaldorei Conjurer",
					["npcID"] = 151557,
				},
				[298823] = {
					["source"] = "Shípoopí-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23922] = {
					["encounterID"] = 2304,
					["source"] = "Goredamm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Dotgrik-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228287] = {
					["source"] = "Ymirrmonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202188] = {
					["source"] = "Drips-Rivendare",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267611] = {
					["source"] = "Hagoop-KulTiras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290640] = {
					["source"] = "Shípoopí-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267612] = {
					["source"] = "Hornstachee-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286547] = {
					["source"] = "Aeste-Ner'zhul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[296271] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fraked",
					["npcID"] = 0,
				},
				[295248] = {
					["type"] = "BUFF",
					["source"] = "Quivna",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[219589] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45334] = {
					["source"] = "Solisha-Mug'thol",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278873] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skanky-Runetotem",
					["npcID"] = 0,
				},
				[298832] = {
					["type"] = "BUFF",
					["source"] = "Notsci",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287062] = {
					["source"] = "Alphaholic-Boulderfist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5225] = {
					["source"] = "Shípoopí-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287063] = {
					["source"] = "Shenenéh-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198097] = {
					["source"] = "Gnf",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296276] = {
					["source"] = "Savage Snapdragon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153959,
				},
				[280412] = {
					["source"] = "Joeispriest-Akama",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155111] = {
					["source"] = "Rednecro",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298836] = {
					["source"] = "Hyperr",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Byseven-Tichondrius",
					["npcID"] = 0,
				},
				[279902] = {
					["type"] = "BUFF",
					["source"] = "Andruww",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298837] = {
					["source"] = "Arnbjørn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[226757] = {
					["type"] = "DEBUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288091] = {
					["type"] = "DEBUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192982] = {
					["source"] = "Gnf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[213708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solisha-Mug'thol",
					["npcID"] = 0,
				},
				[298839] = {
					["source"] = "Dizztruction",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210126] = {
					["source"] = "Jilliciouz-Dunemaul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295258] = {
					["source"] = "Twoot-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256696] = {
					["source"] = "Cassandraa-Cenarius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298841] = {
					["source"] = "Aédan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201939] = {
					["source"] = "Solisha-Mug'thol",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204242] = {
					["source"] = "Toshpal",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294236] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pearl Bunny",
					["npcID"] = 151789,
				},
				[214222] = {
					["type"] = "DEBUFF",
					["source"] = "Notsci",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24275] = {
					["source"] = "Hagoop-KulTiras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251836] = {
					["source"] = "Peace",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205523] = {
					["encounterID"] = 2304,
					["source"] = "Peace",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193753] = {
					["source"] = "Breezenation-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300893] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127230] = {
					["source"] = "Negativefive-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[243138] = {
					["source"] = "Saphiron",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288613] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1943] = {
					["encounterID"] = 2304,
					["source"] = "Hyperr",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185311] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195802] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Maski-Thrall",
					["npcID"] = 0,
				},
				[1953] = {
					["source"] = "Blïñkèd-Maiev",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251839] = {
					["source"] = "Dooganitis-EarthenRing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295269] = {
					["source"] = "Ágélicá-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304482] = {
					["type"] = "DEBUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254400] = {
					["source"] = "Felburst Micro-Artillery",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 128236,
				},
				[82326] = {
					["encounterID"] = 2304,
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278897] = {
					["source"] = "Cryoboom",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280433] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210391] = {
					["source"] = "Ironstãr-Tortheldrin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255937] = {
					["source"] = "Hagoop-KulTiras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[254402] = {
					["source"] = "Felburst Micro-Artillery",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 128236,
				},
				[298347] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Living Water",
					["npcID"] = 152676,
				},
				[298859] = {
					["source"] = "Goredamm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192225] = {
					["source"] = "Stmdashz-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deeptide Frenzy",
					["npcID"] = 144647,
				},
				[294255] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ryzaia-Daggerspine",
					["npcID"] = 0,
				},
				[286581] = {
					["type"] = "DEBUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6201] = {
					["source"] = "Gdot-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147193] = {
					["encounterID"] = 2304,
					["source"] = "Quivna",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188389] = {
					["encounterID"] = 2304,
					["source"] = "Voidamental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2098] = {
					["encounterID"] = 2304,
					["source"] = "Snareiat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195810] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solisha-Mug'thol",
					["npcID"] = 0,
				},
				[299889] = {
					["source"] = "Bloodfin Murloc",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152274,
				},
				[202719] = {
					["encounterID"] = 2304,
					["source"] = "Andruww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274814] = {
					["type"] = "BUFF",
					["source"] = "Pluie",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256453] = {
					["source"] = "Weemane-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12654] = {
					["type"] = "DEBUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297333] = {
					["type"] = "DEBUFF",
					["source"] = "Lady Ashvane",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152236,
				},
				[298357] = {
					["type"] = "BUFF",
					["source"] = "Quivna",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273794] = {
					["source"] = "Rednecro",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[546] = {
					["source"] = "Logekimz-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256455] = {
					["source"] = "Antmanschex-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272260] = {
					["type"] = "BUFF",
					["source"] = "Tehkz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300919] = {
					["type"] = "BUFF",
					["source"] = "Sonaris",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205025] = {
					["source"] = "Jilliciouz-Dunemaul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256456] = {
					["source"] = "Logekimz-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124294] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solisha-Mug'thol",
					["npcID"] = 0,
				},
				[89751] = {
					["source"] = "Shaathun",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[273286] = {
					["source"] = "Kodiax-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102417] = {
					["source"] = "Bigbrownbear-Ner'zhul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195816] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solisha-Mug'thol",
					["npcID"] = 0,
				},
				[200166] = {
					["encounterID"] = 2304,
					["source"] = "Andruww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210657] = {
					["source"] = "Drips-Rivendare",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6673] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256459] = {
					["source"] = "Felsßadman-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11327] = {
					["type"] = "BUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[585] = {
					["encounterID"] = 2304,
					["source"] = "Tehkz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[586] = {
					["type"] = "BUFF",
					["source"] = "Sonaris",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[182512] = {
					["source"] = "Gnf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256460] = {
					["source"] = "Cassandraa-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[589] = {
					["encounterID"] = 2304,
					["source"] = "Sonaris",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[236502] = {
					["source"] = "Chakchel-Eitrigg",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89753] = {
					["source"] = "Shaathun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[204262] = {
					["source"] = "Marnlok-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300417] = {
					["source"] = "Iron Zoko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153300,
				},
				[169464] = {
					["source"] = "Vestramortem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210660] = {
					["source"] = "Drips-Rivendare",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77472] = {
					["source"] = "Xeràth-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273298] = {
					["source"] = "Ymirrmonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277904] = {
					["source"] = "Morigord-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34914] = {
					["encounterID"] = 2304,
					["source"] = "Sinmon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273299] = {
					["source"] = "Ymirrmonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272276] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300423] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Iron Zoko",
					["npcID"] = 153300,
				},
				[224992] = {
					["source"] = "Rednecro",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279956] = {
					["source"] = "Deathphantom-Zul'jin",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210152] = {
					["type"] = "BUFF",
					["source"] = "Andruww",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[169468] = {
					["source"] = "Xeràth-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275863] = {
					["type"] = "BUFF",
					["source"] = "Nawtyrogue",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231390] = {
					["source"] = "Akarion-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[143625] = {
					["source"] = "Skylla-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288146] = {
					["source"] = "Sappedyah",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270235] = {
					["source"] = "Espä-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232670] = {
					["encounterID"] = 2304,
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[642] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[129417] = {
					["source"] = "Rednecro",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269214] = {
					["source"] = "Flopie-Nazgrel",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[25046] = {
					["encounterID"] = 2304,
					["source"] = "Hyperr",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303504] = {
					["source"] = "Herald of the Queen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154950,
				},
				[273312] = {
					["source"] = "Quivna",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131347] = {
					["encounterID"] = 2304,
					["source"] = "Andruww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[222695] = {
					["source"] = "Pluie",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53595] = {
					["encounterID"] = 2304,
					["source"] = "Abernathii",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155145] = {
					["encounterID"] = 2304,
					["source"] = "Notsci",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190456] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79140] = {
					["encounterID"] = 2304,
					["source"] = "Hyperr",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288158] = {
					["source"] = "Sappedyah",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[686] = {
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204018] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[691] = {
					["source"] = "Gdot-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272296] = {
					["source"] = "Rockharrd-Proudmoore",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295838] = {
					["type"] = "DEBUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[703] = {
					["encounterID"] = 2304,
					["source"] = "Hyperr",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20473] = {
					["encounterID"] = 2304,
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260057] = {
					["source"] = "Priest of Gonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131809,
				},
				[49246] = {
					["source"] = "Blackøp-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295840] = {
					["type"] = "BUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184575] = {
					["source"] = "Hagoop-KulTiras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295842] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16827] = {
					["source"] = "MeatStick",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 38453,
				},
				[303520] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304544] = {
					["source"] = "Quivna",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[95007] = {
					["source"] = "Rednecro",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304545] = {
					["source"] = "Quivna",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281517] = {
					["type"] = "BUFF",
					["source"] = "Quivna",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lost Algan",
					["npcID"] = 152549,
				},
				[303011] = {
					["type"] = "BUFF",
					["source"] = "Silverpala",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275378] = {
					["type"] = "BUFF",
					["source"] = "Cadaceus",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256735] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thadz-Tichondrius",
					["npcID"] = 0,
				},
				[304037] = {
					["source"] = "Moosecadets-Blackhand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269239] = {
					["type"] = "BUFF",
					["source"] = "Andruww",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[139546] = {
					["encounterID"] = 2304,
					["source"] = "Nawtyrogue",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303017] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279989] = {
					["source"] = "Xeràth-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195072] = {
					["encounterID"] = 2304,
					["source"] = "Andruww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277943] = {
					["source"] = "Maski-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295855] = {
					["type"] = "BUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196608] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49248] = {
					["source"] = "Blackøp-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295856] = {
					["encounterID"] = 2304,
					["source"] = "Guardian of Azeroth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152396,
				},
				[256739] = {
					["source"] = "Xarari-Shu'halo",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[774] = {
					["source"] = "Babyslurp-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47585] = {
					["type"] = "BUFF",
					["source"] = "Quivna",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3110] = {
					["encounterID"] = 2304,
					["source"] = "Piple",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 58959,
				},
				[213241] = {
					["encounterID"] = 2304,
					["source"] = "Andruww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[252390] = {
					["source"] = "Sajura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[781] = {
					["encounterID"] = 2304,
					["source"] = "Thunderrz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Shípoopí-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261602] = {
					["source"] = "Oraga-Spirestone",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[62618] = {
					["encounterID"] = 2304,
					["source"] = "Tehkz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193796] = {
					["source"] = "Maski-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297397] = {
					["type"] = "DEBUFF",
					["source"] = "Lady Ashvane",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152236,
				},
				[85288] = {
					["encounterID"] = 2304,
					["source"] = "Aédan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297398] = {
					["encounterID"] = 2304,
					["source"] = "Lady Ashvane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152236,
				},
				[8690] = {
					["source"] = "Nawtyrogue",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260069] = {
					["source"] = "Priest of Gonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131809,
				},
				[21562] = {
					["source"] = "Sonaris",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194310] = {
					["source"] = "Bondye-Ragnaros",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260070] = {
					["source"] = "Pa'kura Priest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131834,
				},
				[190984] = {
					["encounterID"] = 2304,
					["source"] = "Pluie",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277955] = {
					["source"] = "Xeràth-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118297] = {
					["encounterID"] = 2304,
					["source"] = "Primal Fire Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61029,
				},
				[108446] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[304056] = {
					["source"] = "Walt-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288193] = {
					["type"] = "DEBUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260072] = {
					["source"] = "Pa'kura Priest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131834,
				},
				[217597] = {
					["source"] = "Tweaked",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288194] = {
					["type"] = "DEBUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50977] = {
					["source"] = "Suzié-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277960] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300989] = {
					["source"] = "Gertak-AlteracMountains",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15407] = {
					["type"] = "BUFF",
					["source"] = "Sinmon",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298431] = {
					["type"] = "BUFF",
					["source"] = "Tehkz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185358] = {
					["encounterID"] = 2304,
					["source"] = "Thunderrz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53600] = {
					["encounterID"] = 2304,
					["source"] = "Abernathii",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[177938] = {
					["source"] = "Xeràth-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[128150] = {
					["source"] = "Vestramortem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83244] = {
					["source"] = "Coronita-Dragonmaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294852] = {
					["source"] = "Voice in the Deeps",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151719,
				},
				[305599] = {
					["source"] = "Cadaceus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297923] = {
					["source"] = "Zanj'ir Scaleguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154312,
				},
				[853] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303041] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Pluie",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295367] = {
					["type"] = "DEBUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279503] = {
					["source"] = "Woohoo-Gurubashi",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298950] = {
					["source"] = "Xarari-Shu'halo",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295368] = {
					["type"] = "DEBUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[871] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298440] = {
					["source"] = "Pykes",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[176151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thundacats-Tichondrius",
					["npcID"] = 0,
				},
				[77489] = {
					["source"] = "Theshift-Kilrogg",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[4987] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[224001] = {
					["source"] = "Bubbleshar-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295373] = {
					["encounterID"] = 2304,
					["source"] = "Goredamm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[127769] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 65298,
				},
				[30455] = {
					["source"] = "Coupedegrace-Dragonmaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303563] = {
					["source"] = "Lesser Zoatroid",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152067,
				},
				[261616] = {
					["source"] = "Katy Stampwhistle",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132969,
				},
				[303564] = {
					["encounterID"] = 2304,
					["source"] = "Aédan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203277] = {
					["source"] = "Bodybildër-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250870] = {
					["encounterID"] = 2304,
					["source"] = "Tehkz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[119582] = {
					["encounterID"] = 2304,
					["source"] = "Peace",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[107428] = {
					["source"] = "Ymirrmonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[24858] = {
					["type"] = "BUFF",
					["source"] = "Pluie",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295378] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269279] = {
					["type"] = "BUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203534] = {
					["source"] = "Rednecro",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216328] = {
					["source"] = "Adénosíne-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303056] = {
					["source"] = "Wildhorns-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303568] = {
					["type"] = "DEBUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265187] = {
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[127771] = {
					["source"] = "Tweaked",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290264] = {
					["source"] = "Xauron-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303570] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297941] = {
					["source"] = "Andruww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213771] = {
					["source"] = "Solisha-Mug'thol",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[132403] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271843] = {
					["source"] = "Mightyadam-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280544] = {
					["source"] = "Babyslurp-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132404] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101545] = {
					["source"] = "Alphaholic-Boulderfist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203538] = {
					["source"] = "Bubbleshar-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268776] = {
					["type"] = "BUFF",
					["source"] = "Amani Battle Bear",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130257,
				},
				[275429] = {
					["source"] = "Darkbeanis-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[178207] = {
					["source"] = "Byseven-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203539] = {
					["source"] = "Flopie-Nazgrel",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188443] = {
					["encounterID"] = 2304,
					["source"] = "Voidamental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[217613] = {
					["source"] = "Cptmactavish",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303579] = {
					["source"] = "Ne-Lightbringer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304603] = {
					["source"] = "Xeo-Stonemaul",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303580] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250878] = {
					["source"] = "Rednecro",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304605] = {
					["source"] = "Onlysevens-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22812] = {
					["type"] = "BUFF",
					["source"] = "Pluie",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264689] = {
					["source"] = "Scatterbrain-Boulderfist",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304606] = {
					["source"] = "Xeo-Stonemaul",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264178] = {
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304095] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31224] = {
					["type"] = "BUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303584] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[980] = {
					["encounterID"] = 2304,
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[100780] = {
					["encounterID"] = 2304,
					["source"] = "Peace",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[146739] = {
					["type"] = "DEBUFF",
					["source"] = "Cadaceus",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287722] = {
					["source"] = "Tarawen-Boulderfist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304611] = {
					["source"] = "Xeo-Stonemaul",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186401] = {
					["source"] = "Hyperr",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302565] = {
					["type"] = "DEBUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185123] = {
					["encounterID"] = 2304,
					["source"] = "Andruww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8042] = {
					["encounterID"] = 2304,
					["source"] = "Voidamental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32216] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296939] = {
					["encounterID"] = 2304,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279028] = {
					["source"] = "Maski-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296940] = {
					["encounterID"] = 2304,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303593] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shirakess Subjugator",
					["npcID"] = 152724,
				},
				[296941] = {
					["encounterID"] = 2304,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296942] = {
					["encounterID"] = 2304,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197919] = {
					["source"] = "Walt-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188196] = {
					["encounterID"] = 2304,
					["source"] = "Voidamental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8212] = {
					["source"] = "Soprofosho",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108843] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121253] = {
					["encounterID"] = 2304,
					["source"] = "Peace",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Olebwonsamdi-Mal'Ganis",
					["npcID"] = 0,
				},
				[279033] = {
					["source"] = "Maski-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49576] = {
					["source"] = "Woohoo-Gurubashi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304621] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["npcID"] = 0,
				},
				[1044] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272893] = {
					["type"] = "BUFF",
					["source"] = "Cadaceus",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193315] = {
					["encounterID"] = 2304,
					["source"] = "Nawtyrogue",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1064] = {
					["source"] = "Xeràth-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[100784] = {
					["source"] = "Ymirrmonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194084] = {
					["source"] = "Maski-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8676] = {
					["encounterID"] = 2304,
					["source"] = "Nawtyrogue",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304627] = {
					["source"] = "Hagoop-KulTiras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233490] = {
					["type"] = "DEBUFF",
					["source"] = "Cadaceus",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254472] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Andruww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271877] = {
					["encounterID"] = 2304,
					["source"] = "Snareiat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289277] = {
					["source"] = "Dankheáls-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203554] = {
					["source"] = "Babyslurp-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184364] = {
					["type"] = "BUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272903] = {
					["source"] = "Hagoop-KulTiras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254474] = {
					["type"] = "BUFF",
					["source"] = "Notsci",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116011] = {
					["encounterID"] = 2304,
					["source"] = "Arnbjørn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[93622] = {
					["source"] = "Solisha-Mug'thol",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77758] = {
					["source"] = "Solisha-Mug'thol",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[170293] = {
					["source"] = "Negativefive-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1160] = {
					["encounterID"] = 2304,
					["source"] = "Goredamm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184367] = {
					["encounterID"] = 2304,
					["source"] = "Aédan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203814] = {
					["source"] = "Awkagor-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48107] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233496] = {
					["type"] = "DEBUFF",
					["source"] = "Cadaceus",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Hyperr",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274447] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292359] = {
					["source"] = "Drainno-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233497] = {
					["type"] = "DEBUFF",
					["source"] = "Cadaceus",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[97462] = {
					["encounterID"] = 2304,
					["source"] = "Goredamm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[178740] = {
					["source"] = "Wheresdouble",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292360] = {
					["source"] = "Zmonti-Perenolde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292361] = {
					["source"] = "Haxpaxy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233498] = {
					["type"] = "DEBUFF",
					["source"] = "Cadaceus",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277009] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moon Priestess Liara",
					["npcID"] = 152729,
				},
				[185394] = {
					["source"] = "Dankheáls-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303621] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233499] = {
					["type"] = "DEBUFF",
					["source"] = "Cadaceus",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[97463] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116014] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292364] = {
					["source"] = "Cällie-Stormreaver",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195630] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48108] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296971] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119085] = {
					["source"] = "Alphaholic-Boulderfist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271896] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[134477] = {
					["source"] = "Shaathun",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[236060] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246807] = {
					["source"] = "Hagoop-KulTiras",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108211] = {
					["source"] = "Skylla-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77762] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260881] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298512] = {
					["source"] = "Glasmandible-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304654] = {
					["source"] = "Quivna",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[148553] = {
					["source"] = "Vestramortem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197937] = {
					["type"] = "BUFF",
					["source"] = "Quivna",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48045] = {
					["encounterID"] = 2304,
					["source"] = "Quivna",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204335] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61031] = {
					["source"] = "Vestramortem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193333] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solisha-Mug'thol",
					["npcID"] = 0,
				},
				[294935] = {
					["source"] = "Tothemoon-Hydraxis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287771] = {
					["source"] = "Derpsap-Malorne",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77764] = {
					["source"] = "Doxology",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279584] = {
					["type"] = "BUFF",
					["source"] = "Andruww",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107574] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298009] = {
					["source"] = "Snareiat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30108] = {
					["encounterID"] = 2304,
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272934] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304663] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225832] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jukeboxz-Tichondrius",
					["npcID"] = 0,
				},
				[304664] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288800] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299036] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Havartiparty",
					["npcID"] = 0,
				},
				[128301] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 65409,
				},
				[290337] = {
					["source"] = "Cryoboom",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187708] = {
					["source"] = "Scatterbrain-Boulderfist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288803] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289315] = {
					["source"] = "Solisha-Mug'thol",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18562] = {
					["encounterID"] = 2304,
					["source"] = "Pluie",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272940] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33206] = {
					["encounterID"] = 2304,
					["source"] = "Tehkz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273453] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199736] = {
					["source"] = "Bloodrinker-Kilrogg",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289318] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Taookamoto-Hyjal",
					["npcID"] = 0,
				},
				[192060] = {
					["source"] = "Tweaked",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[165961] = {
					["source"] = "Shípoopí-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197690] = {
					["source"] = "Atrilla-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268852] = {
					["source"] = "Doxology",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195901] = {
					["source"] = "Amnesiac-Akama",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47536] = {
					["type"] = "BUFF",
					["source"] = "Tehkz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1490] = {
					["type"] = "DEBUFF",
					["source"] = "Andruww",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2983] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190784] = {
					["encounterID"] = 2304,
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265273] = {
					["source"] = "Cadaceus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[169291] = {
					["source"] = "Negativefive-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287280] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272440] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Havartiparty",
					["npcID"] = 0,
				},
				[264764] = {
					["source"] = "Twixzdru-Malorne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288305] = {
					["type"] = "BUFF",
					["source"] = "Notsci",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115767] = {
					["type"] = "DEBUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260384] = {
					["source"] = "Saxicolous-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[69070] = {
					["encounterID"] = 2304,
					["source"] = "Quivna",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267325] = {
					["source"] = "Maski-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18499] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280634] = {
					["source"] = "Bubbleshar-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267329] = {
					["source"] = "Maski-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275006] = {
					["source"] = "Florã-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267331] = {
					["source"] = "Maski-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[182346] = {
					["source"] = "Vaelor-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101568] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Azugruk-Bladefist",
					["npcID"] = 0,
				},
				[187464] = {
					["type"] = "DEBUFF",
					["source"] = "Tehkz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100] = {
					["encounterID"] = 2304,
					["source"] = "Aédan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[235313] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1604] = {
					["source"] = "Chitterspine Clicker",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152460,
				},
				[118968] = {
					["source"] = "Chitterspine Ambusher",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152462,
				},
				[59628] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293946] = {
					["source"] = "Pallypowar-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273988] = {
					["source"] = "Rednecro",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303158] = {
					["source"] = "Zanj'ir Myrmidon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152883,
				},
				[128180] = {
					["source"] = "Tweaked",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[126389] = {
					["source"] = "Scatterbrain-Boulderfist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301624] = {
					["type"] = "DEBUFF",
					["source"] = "Quivna",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225080] = {
					["type"] = "DEBUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6572] = {
					["encounterID"] = 2304,
					["source"] = "Goredamm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287809] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Adeithy",
					["npcID"] = 0,
				},
				[212799] = {
					["source"] = "Oraga-Spirestone",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114108] = {
					["source"] = "Babyslurp-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212800] = {
					["type"] = "BUFF",
					["source"] = "Andruww",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298047] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
				},
				[51505] = {
					["encounterID"] = 2304,
					["source"] = "Voidamental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298048] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
				},
				[290372] = {
					["source"] = "Derpsap-Malorne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[128182] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 65387,
				},
				[303167] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zanj'ir Brute",
					["npcID"] = 153332,
				},
				[6788] = {
					["type"] = "DEBUFF",
					["source"] = "Sinmon",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193356] = {
					["type"] = "BUFF",
					["source"] = "Nawtyrogue",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119611] = {
					["source"] = "Walt-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19236] = {
					["type"] = "BUFF",
					["source"] = "Tehkz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[133994] = {
					["source"] = "Nnasty-Draka",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280654] = {
					["type"] = "BUFF",
					["source"] = "Pluie",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306242] = {
					["source"] = "Coupedegrace-Dragonmaw",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6940] = {
					["type"] = "BUFF",
					["source"] = "Notsci",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193358] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298056] = {
					["encounterID"] = 2304,
					["source"] = "Lady Ashvane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152236,
				},
				[288333] = {
					["type"] = "DEBUFF",
					["source"] = "Nawtyrogue",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268887] = {
					["type"] = "BUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205385] = {
					["encounterID"] = 2304,
					["source"] = "Quivna",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193359] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297034] = {
					["source"] = "Goredamm",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[145255] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solisha-Mug'thol",
					["npcID"] = 0,
				},
				[297035] = {
					["source"] = "Bigñbeefy-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217668] = {
					["source"] = "Vaelor-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127801] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 65310,
				},
				[194384] = {
					["type"] = "BUFF",
					["source"] = "Tehkz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297037] = {
					["source"] = "Peace",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1784] = {
					["source"] = "Hookerspitxo-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203852] = {
					["source"] = "Twoot-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289362] = {
					["source"] = "Walt-Blackrock",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20484] = {
					["encounterID"] = 2304,
					["source"] = "Pluie",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297039] = {
					["source"] = "Chakchel-Eitrigg",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268893] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104773] = {
					["type"] = "BUFF",
					["source"] = "Cadaceus",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200015] = {
					["source"] = "Saphiron",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78674] = {
					["encounterID"] = 2304,
					["source"] = "Haxpaxy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[125883] = {
					["source"] = "Malakhem-Fenris",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260402] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162402] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solisha-Mug'thol",
					["npcID"] = 0,
				},
				[73685] = {
					["source"] = "Xeràth-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48181] = {
					["encounterID"] = 2304,
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268898] = {
					["type"] = "BUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127803] = {
					["source"] = "Tweaked",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34428] = {
					["encounterID"] = 2304,
					["source"] = "Goredamm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1850] = {
					["type"] = "BUFF",
					["source"] = "Pluie",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116] = {
					["source"] = "Coupedegrace-Dragonmaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1856] = {
					["encounterID"] = 2304,
					["source"] = "Hyperr",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[301653] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Guardian Tannin",
					["npcID"] = 152736,
				},
				[279648] = {
					["source"] = "Glasmandible-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31935] = {
					["encounterID"] = 2304,
					["source"] = "Abernathii",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268904] = {
					["type"] = "BUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303192] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zanj'ir Brute",
					["npcID"] = 153332,
				},
				[33917] = {
					["source"] = "Solisha-Mug'thol",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48438] = {
					["source"] = "Axeandpalm-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121536] = {
					["encounterID"] = 2304,
					["source"] = "Tehkz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280165] = {
					["type"] = "BUFF",
					["source"] = "Pluie",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113860] = {
					["type"] = "BUFF",
					["source"] = "Cadaceus",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192090] = {
					["source"] = "Solisha-Mug'thol",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209746] = {
					["source"] = "Limpshifty-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[129597] = {
					["source"] = "Ymirrmonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11366] = {
					["encounterID"] = 2304,
					["source"] = "Arnbjørn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268911] = {
					["source"] = "Ink-Vek'nilash",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[152175] = {
					["source"] = "Ymirrmonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273006] = {
					["source"] = "Maski-Thrall",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296547] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281195] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109128] = {
					["type"] = "BUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1966] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298598] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297063] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Budzhunter-Hyjal",
					["npcID"] = 0,
				},
				[281711] = {
					["type"] = "DEBUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275571] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Guardian Tannin",
					["npcID"] = 152736,
				},
				[8004] = {
					["source"] = "Xeràth-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19750] = {
					["encounterID"] = 2304,
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299624] = {
					["type"] = "BUFF",
					["source"] = "Tehkz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273525] = {
					["type"] = "BUFF",
					["source"] = "Cadaceus",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264314] = {
					["source"] = "Jinrah",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[222801] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Solisha-Mug'thol",
					["npcID"] = 0,
				},
				[205146] = {
					["source"] = "Cadaceus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197214] = {
					["source"] = "Maski-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292463] = {
					["type"] = "BUFF",
					["source"] = "Pluie",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303211] = {
					["source"] = "Tarawen-Boulderfist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301676] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shadowcaster Vixtris",
					["npcID"] = 154548,
				},
				[284277] = {
					["source"] = "Styth-Uther",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45242] = {
					["source"] = "Onlysevens-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191587] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Azugruk-Bladefist",
					["npcID"] = 0,
				},
				[130] = {
					["source"] = "Yiun-Vek'nilash",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231504] = {
					["source"] = "Brewcoaster-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281209] = {
					["source"] = "Telly-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281721] = {
					["type"] = "DEBUFF",
					["source"] = "Nawtyrogue",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258883] = {
					["type"] = "DEBUFF",
					["source"] = "Andruww",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301168] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shirakess Apprentice",
					["npcID"] = 145333,
				},
				[133] = {
					["encounterID"] = 2304,
					["source"] = "Arnbjørn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[109132] = {
					["encounterID"] = 2304,
					["source"] = "Peace",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[114250] = {
					["source"] = "Hagoop-KulTiras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278145] = {
					["type"] = "DEBUFF",
					["source"] = "Notsci",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281216] = {
					["source"] = "Rattaktix-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300663] = {
					["source"] = "Coral Slitherer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149707,
				},
				[139] = {
					["source"] = "Kristiè-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278147] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8936] = {
					["source"] = "Babyslurp-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108366] = {
					["type"] = "BUFF",
					["source"] = "Cadaceus",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[229206] = {
					["source"] = "Hagoop-KulTiras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216413] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280709] = {
					["source"] = "Solisha-Mug'thol",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34433] = {
					["encounterID"] = 2304,
					["source"] = "Sonaris",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193641] = {
					["type"] = "BUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194153] = {
					["encounterID"] = 2304,
					["source"] = "Haxpaxy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268429] = {
					["source"] = "Maski-Thrall",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90328] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151096,
				},
				[61684] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 3632,
				},
				[286342] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Olebwonsamdi-Mal'Ganis",
					["npcID"] = 0,
				},
				[280713] = {
					["source"] = "Rebeldemon-Cairne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105809] = {
					["type"] = "BUFF",
					["source"] = "Notsci",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73313] = {
					["source"] = "Damgerpirest-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280204] = {
					["type"] = "BUFF",
					["source"] = "Tehkz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270481] = {
					["source"] = "Demonic Tyrant",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135002,
				},
				[280205] = {
					["source"] = "Zipldasham-Akama",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13750] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195692] = {
					["source"] = "Rudianos-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[126664] = {
					["encounterID"] = 2304,
					["source"] = "Aédan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190319] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[182387] = {
					["type"] = "DEBUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190831] = {
					["source"] = "Bubbleshar-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296072] = {
					["type"] = "BUFF",
					["source"] = "Tehkz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257103] = {
					["source"] = "Xeo-Stonemaul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202090] = {
					["source"] = "Walt-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281744] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155777] = {
					["source"] = "Babyslurp-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294027] = {
					["type"] = "BUFF",
					["source"] = "Notsci",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291981] = {
					["source"] = "Alpines-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196718] = {
					["encounterID"] = 2304,
					["source"] = "Andruww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268953] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[93402] = {
					["encounterID"] = 2304,
					["source"] = "Pluie",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287379] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45182] = {
					["type"] = "BUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Cassandraa-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264352] = {
					["source"] = "Junimo-Daggerspine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299663] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35395] = {
					["encounterID"] = 2304,
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279194] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257620] = {
					["encounterID"] = 2304,
					["source"] = "Thunderrz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102359] = {
					["source"] = "Vaelor-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[131474] = {
					["source"] = "Wrathia-Dunemaul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80354] = {
					["source"] = "Capttwitch-Uther",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105174] = {
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279709] = {
					["type"] = "BUFF",
					["source"] = "Haxpaxy",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89054] = {
					["source"] = "Rednecro",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113746] = {
					["type"] = "DEBUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257622] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300693] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[84193] = {
					["source"] = "Stmdashz-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[224871] = {
					["source"] = "Darkquinox",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[293019] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207472] = {
					["source"] = "Yurippe",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138130] = {
					["source"] = "Ymirrmonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69791,
				},
				[8921] = {
					["encounterID"] = 2304,
					["source"] = "Pluie",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[172] = {
					["encounterID"] = 2304,
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279715] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274598] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279204] = {
					["source"] = "Vikings-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259416] = {
					["source"] = "Spankem-Spirestone",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15286] = {
					["type"] = "BUFF",
					["source"] = "Sinmon",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259161] = {
					["source"] = "Arnbjørn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290467] = {
					["source"] = "Sorvats-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236645] = {
					["source"] = "Negativefive-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22888] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290469] = {
					["source"] = "Lohr-Shu'halo",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280746] = {
					["source"] = "Emphasis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204150] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199545] = {
					["source"] = "Shadowflux-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2908] = {
					["source"] = "Vaelor-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117588] = {
					["encounterID"] = 2304,
					["source"] = "Primal Fire Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61029,
				},
				[19434] = {
					["encounterID"] = 2304,
					["source"] = "Thunderrz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2948] = {
					["encounterID"] = 2304,
					["source"] = "Arnbjørn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287916] = {
					["source"] = "Saltednuts-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210294] = {
					["source"] = "Kaliformùla",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123986] = {
					["source"] = "Alphaholic-Boulderfist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199804] = {
					["encounterID"] = 2304,
					["source"] = "Snareiat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198013] = {
					["type"] = "BUFF",
					["source"] = "Andruww",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30213] = {
					["source"] = "Shaathun",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[300714] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119381] = {
					["source"] = "Roosell",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85222] = {
					["encounterID"] = 2304,
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205180] = {
					["type"] = "BUFF",
					["source"] = "Cadaceus",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195457] = {
					["encounterID"] = 2304,
					["source"] = "Nawtyrogue",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57724] = {
					["source"] = "Alphaholic-Boulderfist",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61882] = {
					["encounterID"] = 2304,
					["source"] = "Voidamental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53822] = {
					["source"] = "Suzié-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73325] = {
					["source"] = "Tarawen-Boulderfist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6262] = {
					["encounterID"] = 2304,
					["source"] = "Sonaris",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302768] = {
					["source"] = "Voltscale Guardian",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153654,
				},
				[277181] = {
					["source"] = "Shenenéh-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302769] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255078] = {
					["source"] = "Caboclark-DarkIron",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185736] = {
					["source"] = "Derpsap-Malorne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[65081] = {
					["type"] = "BUFF",
					["source"] = "Sonaris",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267972] = {
					["source"] = "Demonic Tyrant",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135002,
				},
				[301748] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ulmath",
					["npcID"] = 152697,
				},
				[289467] = {
					["type"] = "BUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[88423] = {
					["source"] = "Mìlkbags-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115546] = {
					["encounterID"] = 2304,
					["source"] = "Peace",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196741] = {
					["source"] = "Alphaholic-Boulderfist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23881] = {
					["encounterID"] = 2304,
					["source"] = "Aédan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302775] = {
					["type"] = "DEBUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271559] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272071] = {
					["source"] = "Xeràth-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196742] = {
					["source"] = "Ymirrmonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127829] = {
					["source"] = "Tweaked",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32645] = {
					["type"] = "BUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124503] = {
					["encounterID"] = 2304,
					["source"] = "Peace",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302912] = {
					["source"] = "Zanj'ir Trapper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152884,
				},
				[47776] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Solisha-Mug'thol",
					["npcID"] = 0,
				},
				[278874] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302651] = {
					["source"] = "Kartiro-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201350] = {
					["source"] = "Pogchamp-Daggerspine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131490] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yajerk",
					["npcID"] = 0,
				},
				[280776] = {
					["type"] = "BUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[167898] = {
					["source"] = "Peace",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294365] = {
					["source"] = "Walt-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231724] = {
					["source"] = "Vestramortem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115804] = {
					["source"] = "Ymirrmonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69792,
				},
				[205351] = {
					["encounterID"] = 2304,
					["source"] = "Quivna",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[246287] = {
					["encounterID"] = 2304,
					["source"] = "Tehkz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207289] = {
					["source"] = "Fåron",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34026] = {
					["source"] = "Chemotis-Kilrogg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85739] = {
					["type"] = "BUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198589] = {
					["encounterID"] = 2304,
					["source"] = "Andruww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[208772] = {
					["type"] = "DEBUFF",
					["source"] = "Tehkz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198793] = {
					["source"] = "Drchakwass",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[137639] = {
					["source"] = "Ymirrmonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3408] = {
					["source"] = "Spookygrampa-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275765] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155158] = {
					["type"] = "DEBUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32379] = {
					["source"] = "Onlysevens-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279397] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23920] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216411] = {
					["type"] = "BUFF",
					["source"] = "Notsci",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197003] = {
					["source"] = "Unbelief-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2096] = {
					["source"] = "Tarawen-Boulderfist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116189] = {
					["type"] = "DEBUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303299] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azsh'ari Invoker",
					["npcID"] = 145326,
				},
				[298988] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gøldy-Hyjal",
					["npcID"] = 0,
				},
				[34477] = {
					["encounterID"] = 2304,
					["source"] = "Thunderrz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[186257] = {
					["source"] = "Thunderrz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278736] = {
					["type"] = "BUFF",
					["source"] = "Andruww",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156064] = {
					["source"] = "Laguna-KulTiras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205448] = {
					["encounterID"] = 2304,
					["source"] = "Quivna",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[224127] = {
					["source"] = "Spirit Wolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100820,
				},
				[303301] = {
					["source"] = "Herald of the Queen",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154950,
				},
				[285720] = {
					["type"] = "BUFF",
					["source"] = "Pluie",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298657] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
				},
				[51714] = {
					["source"] = "Neosword-MoonGuard",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Pluie",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251838] = {
					["source"] = "Jilliciouz-Dunemaul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296138] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242551] = {
					["source"] = "Armordude-Spirestone",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124506] = {
					["encounterID"] = 2304,
					["source"] = "Peace",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30151] = {
					["source"] = "Shaathun",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[116768] = {
					["source"] = "Ymirrmonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302792] = {
					["source"] = "Voltscale Guardian",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153654,
				},
				[274738] = {
					["encounterID"] = 2304,
					["source"] = "Thunderrz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274373] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Azugruk-Bladefist",
					["npcID"] = 0,
				},
				[35079] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296938] = {
					["encounterID"] = 2304,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304612] = {
					["source"] = "Xeo-Stonemaul",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232893] = {
					["encounterID"] = 2304,
					["source"] = "Andruww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[124273] = {
					["type"] = "DEBUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298700] = {
					["source"] = "Walt-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264173] = {
					["source"] = "Cadaceus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188370] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36554] = {
					["type"] = "BUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272090] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191634] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300927] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
				},
				[303439] = {
					["source"] = "Mind-Shackled Kelfin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153963,
				},
				[300421] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Qalina, Spear of Ice",
					["npcID"] = 153310,
				},
				[162794] = {
					["encounterID"] = 2304,
					["source"] = "Andruww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281303] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Maski-Thrall",
					["npcID"] = 0,
				},
				[203233] = {
					["source"] = "Thorazyn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298703] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147833] = {
					["source"] = "Lacecho",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47540] = {
					["encounterID"] = 2304,
					["source"] = "Tehkz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302286] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
				},
				[302798] = {
					["source"] = "Voltscale Guardian",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153654,
				},
				[288981] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57984] = {
					["encounterID"] = 2304,
					["source"] = "Primal Fire Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61029,
				},
				[193357] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298705] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260364] = {
					["source"] = "Rednecro",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113942] = {
					["source"] = "Varedis-Spirestone",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195627] = {
					["type"] = "BUFF",
					["source"] = "Nawtyrogue",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186263] = {
					["encounterID"] = 2304,
					["source"] = "Tehkz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185562] = {
					["source"] = "Infinte",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117952] = {
					["source"] = "Alphaholic-Boulderfist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203407] = {
					["source"] = "Swapsawce-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36107] = {
					["encounterID"] = 2304,
					["source"] = "Peace",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[56641] = {
					["encounterID"] = 2304,
					["source"] = "Thunderrz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108853] = {
					["encounterID"] = 2304,
					["source"] = "Arnbjørn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[138927] = {
					["source"] = "Alpines-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87023] = {
					["type"] = "DEBUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2823] = {
					["source"] = "Hyperr",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195949] = {
					["source"] = "Blïñkèd-Maiev",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297897] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deeptide Frenzy",
					["npcID"] = 144647,
				},
				[296662] = {
					["encounterID"] = 2304,
					["source"] = "Lady Ashvane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152236,
				},
				[300691] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193316] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281843] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298710] = {
					["source"] = "Iceyou-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232698] = {
					["type"] = "BUFF",
					["source"] = "Quivna",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33763] = {
					["source"] = "Babyslurp-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272916] = {
					["source"] = "Amnesiac-Akama",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51460] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Azugruk-Bladefist",
					["npcID"] = 0,
				},
				[288988] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16739] = {
					["source"] = "Vestramortem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266779] = {
					["source"] = "Getit-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87024] = {
					["type"] = "DEBUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288989] = {
					["type"] = "DEBUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264057] = {
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302295] = {
					["source"] = "Chitterspine Crab",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152461,
				},
				[293664] = {
					["source"] = "Bnewrise-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5487] = {
					["type"] = "BUFF",
					["source"] = "Pluie",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275773] = {
					["encounterID"] = 2304,
					["source"] = "Notsci",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[29893] = {
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300761] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43198] = {
					["source"] = "Loaruun",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303161] = {
					["source"] = "Zanj'ir Scaleguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154312,
				},
				[279572] = {
					["type"] = "BUFF",
					["source"] = "Quivna",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300762] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164815] = {
					["type"] = "DEBUFF",
					["source"] = "Pluie",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210320] = {
					["type"] = "BUFF",
					["source"] = "Notsci",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264106] = {
					["encounterID"] = 2304,
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270058] = {
					["source"] = "Trashbagx",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281240] = {
					["source"] = "Lilgumzz-Aegwynn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6343] = {
					["encounterID"] = 2304,
					["source"] = "Goredamm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[26297] = {
					["type"] = "BUFF",
					["source"] = "Cadaceus",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["type"] = "BUFF",
					["source"] = "Sinmon",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299765] = {
					["source"] = "Kelfin Scout",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151300,
				},
				[259449] = {
					["source"] = "Imadrooid-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131493] = {
					["source"] = "Tarawen-Boulderfist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297993] = {
					["source"] = "Ymirrmonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[241835] = {
					["source"] = "Bigtutwat",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285472] = {
					["source"] = "Hagoop-KulTiras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121557] = {
					["type"] = "BUFF",
					["source"] = "Tehkz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[498] = {
					["type"] = "BUFF",
					["source"] = "Notsci",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295137] = {
					["source"] = "Rockharrd-Proudmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275857] = {
					["source"] = "Machopunch",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302302] = {
					["source"] = "Chitterspine Clicker",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152460,
				},
				[201427] = {
					["encounterID"] = 2304,
					["source"] = "Andruww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262652] = {
					["source"] = "Maski-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280653] = {
					["type"] = "BUFF",
					["source"] = "Pluie",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199412] = {
					["source"] = "Onlysevens-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276204] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solisha-Mug'thol",
					["npcID"] = 0,
				},
				[268899] = {
					["type"] = "BUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293491] = {
					["encounterID"] = 2304,
					["source"] = "Andruww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31707] = {
					["source"] = "Water Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 78116,
				},
				[276205] = {
					["source"] = "Solisha-Mug'thol",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270576] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Abernathii",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267558] = {
					["source"] = "Warthrill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3567] = {
					["source"] = "Jilliciouz-Dunemaul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[148540] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257044] = {
					["encounterID"] = 2304,
					["source"] = "Thunderrz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8679] = {
					["source"] = "Sappedyah",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276207] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solisha-Mug'thol",
					["npcID"] = 0,
				},
				[279169] = {
					["source"] = "Holidaye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297162] = {
					["source"] = "Chemotis-Kilrogg",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73920] = {
					["source"] = "Xeràth-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276208] = {
					["source"] = "Solisha-Mug'thol",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278767] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285979] = {
					["source"] = "Tehkz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81782] = {
					["encounterID"] = 2304,
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276209] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solisha-Mug'thol",
					["npcID"] = 0,
				},
				[118000] = {
					["encounterID"] = 2304,
					["source"] = "Aédan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259455] = {
					["source"] = "Chikotto",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213652] = {
					["encounterID"] = 2304,
					["source"] = "Abernathii",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276210] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solisha-Mug'thol",
					["npcID"] = 0,
				},
				[25771] = {
					["type"] = "DEBUFF",
					["source"] = "Notsci",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186258] = {
					["source"] = "Thunderrz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279793] = {
					["source"] = "Babyslurp-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solisha-Mug'thol",
					["npcID"] = 0,
				},
				[1329] = {
					["encounterID"] = 2304,
					["source"] = "Hyperr",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205708] = {
					["source"] = "Coupedegrace-Dragonmaw",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260734] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2649] = {
					["source"] = "MeatStick",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 38453,
				},
				[262395] = {
					["source"] = "Vimd-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185763] = {
					["type"] = "BUFF",
					["source"] = "Nawtyrogue",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298343] = {
					["type"] = "BUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[248473] = {
					["source"] = "Ronhardt-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289324] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6807] = {
					["source"] = "Solisha-Mug'thol",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[84342] = {
					["source"] = "Byseven-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287790] = {
					["type"] = "BUFF",
					["source"] = "Haxpaxy",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296211] = {
					["source"] = "Walt-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259456] = {
					["source"] = "Candwee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281844] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299757] = {
					["source"] = "Kelfin Scout",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151300,
				},
				[262398] = {
					["source"] = "Vimd-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45181] = {
					["type"] = "DEBUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280177] = {
					["source"] = "Saxicolous-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272122] = {
					["source"] = "Iceyou-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[60103] = {
					["source"] = "Maski-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257410] = {
					["source"] = "Busybeaver-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11426] = {
					["source"] = "Bottomparts-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79865] = {
					["source"] = "Liz Work",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155761,
				},
				[8220] = {
					["source"] = "Grimrpr-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289523] = {
					["type"] = "BUFF",
					["source"] = "Sinmon",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51399] = {
					["source"] = "Woohoo-Gurubashi",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115176] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262401] = {
					["source"] = "Vimd-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289524] = {
					["type"] = "BUFF",
					["source"] = "Sinmon",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198304] = {
					["encounterID"] = 2304,
					["source"] = "Goredamm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193538] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297201] = {
					["type"] = "DEBUFF",
					["source"] = "Lady Ashvane",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152236,
				},
				[164273] = {
					["source"] = "Thunderrz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188838] = {
					["source"] = "Xeràth-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272126] = {
					["source"] = "Zmonti-Perenolde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278124] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[177936] = {
					["source"] = "Vestramortem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278070] = {
					["source"] = "Solisha-Mug'thol",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102383] = {
					["encounterID"] = 2304,
					["source"] = "Pluie",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[296752] = {
					["encounterID"] = 2304,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[129250] = {
					["encounterID"] = 2304,
					["source"] = "Tehkz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299782] = {
					["source"] = "Kelfin Scout",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151309,
				},
				[261764] = {
					["source"] = "Hitmonkchan-AzjolNerub",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280385] = {
					["source"] = "Maski-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257413] = {
					["source"] = "Scatterbrain-Boulderfist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[633] = {
					["encounterID"] = 2304,
					["source"] = "Notsci",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[296693] = {
					["type"] = "DEBUFF",
					["source"] = "Lady Ashvane",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152236,
				},
				[294966] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[63106] = {
					["encounterID"] = 2304,
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304370] = {
					["source"] = "Mairu-Nathrezim",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299789] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114282] = {
					["source"] = "Ngow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271107] = {
					["source"] = "Machopunch",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245388] = {
					["encounterID"] = 2304,
					["source"] = "Hyperr",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195181] = {
					["source"] = "Woohoo-Gurubashi",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116841] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299766] = {
					["source"] = "Kelfin Scout",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151300,
				},
				[6795] = {
					["source"] = "Solisha-Mug'thol",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[556] = {
					["source"] = "Vimd-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268856] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299767] = {
					["source"] = "Kelfin Scout",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151300,
				},
				[245389] = {
					["type"] = "DEBUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288509] = {
					["source"] = "Mahsiron-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214621] = {
					["encounterID"] = 2304,
					["source"] = "Tehkz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299768] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kelfin Scout",
					["npcID"] = 151300,
				},
				[205473] = {
					["source"] = "Coupedegrace-Dragonmaw",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2818] = {
					["type"] = "DEBUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49821] = {
					["encounterID"] = 2304,
					["source"] = "Quivna",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299769] = {
					["source"] = "Neri Sharpfin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151300,
				},
				[269576] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197277] = {
					["source"] = "Hagoop-KulTiras",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202347] = {
					["encounterID"] = 2304,
					["source"] = "Pluie",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299770] = {
					["source"] = "Kelfin Scout",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151300,
				},
				[268905] = {
					["type"] = "BUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264760] = {
					["source"] = "Twixzdru-Malorne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257161] = {
					["source"] = "Scout Marlin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153364,
				},
				[299771] = {
					["source"] = "Neri Sharpfin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151300,
				},
				[304851] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[244808] = {
					["source"] = "Sandclaw Crab",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145337,
				},
				[20271] = {
					["source"] = "Hagoop-KulTiras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295045] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295029] = {
					["source"] = "Lesser Zoatroid",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152067,
				},
				[192999] = {
					["source"] = "Tweaked",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301308] = {
					["encounterID"] = 2304,
					["source"] = "Quivna",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108271] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212640] = {
					["source"] = "Scatterbrain-Boulderfist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290121] = {
					["source"] = "Nawtyrogue",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275544] = {
					["type"] = "BUFF",
					["source"] = "Tehkz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[63619] = {
					["encounterID"] = 2304,
					["source"] = "Shadowfiend",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 19668,
				},
				[61295] = {
					["source"] = "Logekimz-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303044] = {
					["source"] = "Unpaladin-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251837] = {
					["source"] = "Voidamental",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204197] = {
					["encounterID"] = 2304,
					["source"] = "Tehkz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212641] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48265] = {
					["source"] = "Kraphog-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270606] = {
					["source"] = "Bloodfin Tidecaller",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152273,
				},
				[299776] = {
					["source"] = "Kelfin Scout",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151310,
				},
				[104318] = {
					["source"] = "Wild Imp",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 55659,
				},
				[287825] = {
					["source"] = "Krissxd-Skywall",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301312] = {
					["source"] = "Machopunch",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299777] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kelfin Scout",
					["npcID"] = 151310,
				},
				[267537] = {
					["source"] = "Voltijj-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300801] = {
					["type"] = "BUFF",
					["source"] = "Hyperr",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192166] = {
					["source"] = "Vestramortem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299778] = {
					["source"] = "Kelfin Scout",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151310,
				},
				[300802] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115181] = {
					["encounterID"] = 2304,
					["source"] = "Peace",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195182] = {
					["source"] = "Woohoo-Gurubashi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299779] = {
					["source"] = "Kelfin Scout",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151310,
				},
				[192106] = {
					["source"] = "Vimd-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286031] = {
					["source"] = "Birmilla-Kilrogg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290512] = {
					["source"] = "Pand-Thrall",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299780] = {
					["source"] = "Kelfin Scout",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151310,
				},
				[272733] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183218] = {
					["source"] = "Hagoop-KulTiras",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299781] = {
					["source"] = "Kelfin Scout",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151310,
				},
				[257422] = {
					["source"] = "Astraga-Kalecgos",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15487] = {
					["encounterID"] = 2304,
					["source"] = "Sonaris",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[13877] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212056] = {
					["source"] = "Notsci",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53385] = {
					["source"] = "Hagoop-KulTiras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31850] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197548] = {
					["source"] = "Quivna",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303365] = {
					["type"] = "BUFF",
					["source"] = "Haxpaxy",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299783] = {
					["source"] = "Kelfin Scout",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151309,
				},
				[257420] = {
					["source"] = "Ymirrmonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262419] = {
					["source"] = "Vimd-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118922] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205179] = {
					["encounterID"] = 2304,
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267171] = {
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299775] = {
					["source"] = "Kelfin Scout",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151310,
				},
				[77761] = {
					["source"] = "Imadrooid-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cakeonfire-Crushridge",
					["npcID"] = 0,
				},
				[194223] = {
					["type"] = "BUFF",
					["source"] = "Haxpaxy",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300809] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196782] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Azugruk-Bladefist",
					["npcID"] = 0,
				},
				[38033] = {
					["source"] = "Lady Naz'jess",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152879,
				},
				[186265] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195503] = {
					["source"] = "Tweaked",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115008] = {
					["source"] = "Alphaholic-Boulderfist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[301834] = {
					["encounterID"] = 2304,
					["source"] = "Haxpaxy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264777] = {
					["source"] = "Imsober",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[247677] = {
					["source"] = "Voidaz-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210643] = {
					["encounterID"] = 2304,
					["source"] = "Voidamental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[176569] = {
					["source"] = "Gnf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213405] = {
					["source"] = "Byseven-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[189363] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solisha-Mug'thol",
					["npcID"] = 0,
				},
				[257415] = {
					["source"] = "Yourdeaddad-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26573] = {
					["encounterID"] = 2304,
					["source"] = "Abernathii",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[27576] = {
					["encounterID"] = 2304,
					["source"] = "Hyperr",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2565] = {
					["encounterID"] = 2304,
					["source"] = "Goredamm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116847] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299790] = {
					["source"] = "Onlysevens-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296534] = {
					["encounterID"] = 2304,
					["source"] = "Lady Ashvane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152236,
				},
				[40120] = {
					["source"] = "Tiktoc-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303698] = {
					["type"] = "BUFF",
					["source"] = "Tehkz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5176] = {
					["source"] = "Vaelor-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302350] = {
					["source"] = "Caverndark Terror",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152464,
				},
				[51723] = {
					["encounterID"] = 2304,
					["source"] = "Hyperr",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260242] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299792] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164545] = {
					["type"] = "BUFF",
					["source"] = "Haxpaxy",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199600] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57723] = {
					["source"] = "Chickéñ-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198065] = {
					["source"] = "Xauron-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285976] = {
					["source"] = "Tiktoc-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104316] = {
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[768] = {
					["type"] = "BUFF",
					["source"] = "Pluie",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162243] = {
					["source"] = "Vestramortem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288024] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2645] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293142] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296962] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285978] = {
					["source"] = "Andruww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296725] = {
					["encounterID"] = 2304,
					["source"] = "Lady Ashvane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152236,
				},
				[303378] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["npcID"] = 0,
				},
				[205231] = {
					["encounterID"] = 2304,
					["source"] = "Darkglare",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 103673,
				},
				[164547] = {
					["type"] = "BUFF",
					["source"] = "Haxpaxy",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228260] = {
					["encounterID"] = 2304,
					["source"] = "Sinmon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270070] = {
					["source"] = "Nnasty-Draka",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198067] = {
					["encounterID"] = 2304,
					["source"] = "Voidamental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[213243] = {
					["encounterID"] = 2304,
					["source"] = "Andruww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223143] = {
					["source"] = "Blïñkèd-Maiev",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303380] = {
					["type"] = "BUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5308] = {
					["encounterID"] = 2304,
					["source"] = "Aédan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285981] = {
					["source"] = "Spookygrampa-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199603] = {
					["type"] = "BUFF",
					["source"] = "Snareiat",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297240] = {
					["encounterID"] = 2304,
					["source"] = "Lady Ashvane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152236,
				},
				[296059] = {
					["type"] = "BUFF",
					["source"] = "Notsci",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212653] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296650] = {
					["type"] = "BUFF",
					["source"] = "Lady Ashvane",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152236,
				},
				[123725] = {
					["type"] = "DEBUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54149] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267560] = {
					["source"] = "Rxscript-Bloodscalp",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288330] = {
					["type"] = "DEBUFF",
					["source"] = "Nawtyrogue",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202636] = {
					["source"] = "Ghost-Darrowmere",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198069] = {
					["type"] = "BUFF",
					["source"] = "Tehkz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304619] = {
					["source"] = "Spankem-Spirestone",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296943] = {
					["encounterID"] = 2304,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198837] = {
					["source"] = "Risen Skulker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 99541,
				},
				[264761] = {
					["source"] = "Stavy-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33697] = {
					["source"] = "Machopunch",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187878] = {
					["source"] = "Maski-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268955] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202164] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[253595] = {
					["source"] = "Sarveris-Aegwynn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184362] = {
					["type"] = "BUFF",
					["source"] = "Aédan",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299662] = {
					["source"] = "Andruww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[72968] = {
					["source"] = "Sarveris-Aegwynn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259388] = {
					["source"] = "Getit-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299664] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300110] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frenzied Elemental",
					["npcID"] = 152164,
				},
				[299805] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183998] = {
					["encounterID"] = 2304,
					["source"] = "Notsci",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273323] = {
					["source"] = "Maski-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12975] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101643] = {
					["type"] = "BUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213680] = {
					["source"] = "Solisha-Mug'thol",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[355] = {
					["encounterID"] = 2304,
					["source"] = "Goredamm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[95826] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Horde Vanguard",
					["npcID"] = 154459,
				},
				[204213] = {
					["type"] = "DEBUFF",
					["source"] = "Tehkz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247456] = {
					["source"] = "Rebeldemon-Cairne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303390] = {
					["type"] = "BUFF",
					["source"] = "Pluie",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5302] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303438] = {
					["type"] = "DEBUFF",
					["source"] = "Pluie",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197561] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49998] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azugruk-Bladefist",
					["npcID"] = 0,
				},
				[77575] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azugruk-Bladefist",
					["npcID"] = 0,
				},
				[199721] = {
					["source"] = "Fåron",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252216] = {
					["source"] = "Zegal-Anub'arak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184662] = {
					["source"] = "Hagoop-KulTiras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280409] = {
					["source"] = "Hagoop-KulTiras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268854] = {
					["type"] = "BUFF",
					["source"] = "Nawtyrogue",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[179057] = {
					["source"] = "Byseven-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[974] = {
					["source"] = "Stigmas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109304] = {
					["encounterID"] = 2304,
					["source"] = "Thunderrz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[301064] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Qalina, Spear of Ice",
					["npcID"] = 153310,
				},
				[1459] = {
					["encounterID"] = 2304,
					["source"] = "Arnbjørn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188499] = {
					["type"] = "BUFF",
					["source"] = "Andruww",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293671] = {
					["source"] = "Shibze",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[234153] = {
					["encounterID"] = 2304,
					["source"] = "Cadaceus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47541] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azugruk-Bladefist",
					["npcID"] = 0,
				},
				[275931] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Azugruk-Bladefist",
					["npcID"] = 0,
				},
				[212423] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Risen Skulker",
					["npcID"] = 99541,
				},
				[85948] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azugruk-Bladefist",
					["npcID"] = 0,
				},
				[304931] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fallen Priestess",
					["npcID"] = 153947,
				},
				[190655] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Maski-Thrall",
					["npcID"] = 0,
				},
				[214202] = {
					["type"] = "BUFF",
					["source"] = "Notsci",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298565] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
				},
				[31884] = {
					["type"] = "BUFF",
					["source"] = "Notsci",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274739] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277055] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Moon Priestess Liara",
					["npcID"] = 152729,
				},
				[173930] = {
					["source"] = "Malakhem-Fenris",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304933] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fallen Priestess",
					["npcID"] = 153947,
				},
				[274740] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300610] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Coral Slitherer",
					["npcID"] = 149707,
				},
				[124274] = {
					["type"] = "DEBUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275936] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Seenoevil-Stonemaul",
					["npcID"] = 0,
				},
				[196980] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kiratta-Tichondrius",
					["npcID"] = 0,
				},
				[3714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Goldencalf-Ner'zhul",
					["npcID"] = 0,
				},
				[52174] = {
					["encounterID"] = 2304,
					["source"] = "Goredamm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292653] = {
					["source"] = "Soprofosho",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81340] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Azugruk-Bladefist",
					["npcID"] = 0,
				},
				[33943] = {
					["source"] = "Loaruun",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124430] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Olebwonsamdi-Mal'Ganis",
					["npcID"] = 0,
				},
				[115191] = {
					["source"] = "Sedatives-Mug'thol",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195775] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 99555,
				},
				[131476] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gowaibatin-Nordrassil",
					["npcID"] = 0,
				},
				[113858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sivea-Tichondrius",
					["npcID"] = 0,
				},
				[113656] = {
					["source"] = "Ymirrmonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54861] = {
					["source"] = "Ædidias-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268956] = {
					["type"] = "BUFF",
					["source"] = "Abernathii",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124275] = {
					["type"] = "DEBUFF",
					["source"] = "Peace",
					["encounterID"] = 2304,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176890] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Solisha-Mug'thol",
					["npcID"] = 0,
				},
			},
			["castbar_target_font"] = "Accidental Presidency",
			["aura_cooldown_reverse"] = false,
			["indicator_rare"] = false,
			["aura_height"] = 14,
			["use_health_animation"] = true,
			["target_highlight_alpha"] = 1,
			["aura2_x_offset"] = 48,
			["target_indicator"] = "Double Arrows",
			["target_shady_alpha"] = 0.599999964237213,
			["target_highlight_height"] = 18,
			["show_health_prediction"] = true,
			["aura_cooldown_show_swipe"] = false,
			["extra_icon_auras_mine"] = {
				[224991] = true,
			},
			["castbar_target_anchor"] = {
				["side"] = 11,
			},
			["aura_stack_font"] = "Accidental Presidency",
			["patch_version"] = 7,
			["no_spellname_length_limit"] = true,
			["extra_icon_height"] = 16,
			["aura_timer_text_size"] = 12,
			["extra_icon_show_timer"] = false,
			["cast_statusbar_color_nointerrupt"] = {
				0.494117647058824, -- [1]
				0.498039215686275, -- [2]
				0.501960784313726, -- [3]
				0.96000000089407, -- [4]
			},
			["number_region_first_run"] = true,
			["health_selection_overlay_alpha"] = 0.299999982118607,
			["hover_highlight_alpha"] = 0.299999982118607,
			["indicator_raidmark_scale"] = 0.699999988079071,
			["cast_statusbar_spark_alpha"] = 0.719999969005585,
			["extra_icon_caster_name"] = false,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["first_run2"] = true,
			["color_override_colors"] = {
				[5] = {
					0.290196078431373, -- [1]
					1, -- [2]
					0.196078431372549, -- [3]
				},
				[4] = {
					1, -- [1]
					0.83921568627451, -- [2]
					0, -- [3]
				},
			},
			["health_animation_time_dilatation"] = 2.86999988555908,
			["dps"] = {
				["colors"] = {
					["aggro"] = {
						nil, -- [1]
						0.0470588235294118, -- [2]
						nil, -- [3]
						1, -- [4]
					},
					["pulling"] = {
						nil, -- [1]
						0.96078431372549, -- [2]
						0.952941176470588, -- [3]
						1, -- [4]
					},
				},
			},
			["border_color"] = {
				nil, -- [1]
				nil, -- [2]
				nil, -- [3]
				0, -- [4]
			},
			["cast_statusbar_bgtexture"] = "PlaterBackground",
			["news_frame"] = {
				["PlaterNewsFrame"] = {
					["scale"] = 1,
				},
			},
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.1",
				["nameplateShowSelf"] = "0",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateGlobalScale"] = "1.0",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "0",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateSelfAlpha"] = "0.75",
				["nameplateMinScale"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateOtherTopInset"] = "-1",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["NamePlateHorizontalScale"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowAll"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateSelfTopInset"] = "0.5",
				["NamePlateVerticalScale"] = "1",
			},
			["cast_statusbar_spark_width"] = 25,
		},
	},
}
