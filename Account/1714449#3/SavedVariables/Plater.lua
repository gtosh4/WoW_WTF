
PlaterDB = {
	["profileKeys"] = {
		["Toshpal - Kil'jaeden"] = "PixelPerfect",
		["Toshaman - Dreadmaul"] = "Default",
		["Daggny - Frostwolf"] = "Default",
		["Toshpal - Area 52"] = "PixelPerfect",
		["Toshpriest - Area 52"] = "PixelPerfect",
		["Toshweaver - Area 52"] = "Default",
		["Tosh - Kil'jaeden"] = "PixelPerfect",
		["Toshaman - Area 52"] = "PixelPerfect",
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
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["Icon"] = 135996,
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1537884697,
					["PlaterCore"] = 1,
					["Name"] = "Unit - Important [Plater]",
					["ScriptType"] = 3,
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
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
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
					["Name"] = "Aura - Buff Alert [Plater]",
					["Desc"] = "Add the buff name in the trigger box.",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 388,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Bombad�o-Azralon",
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
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
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1538066775,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Very Important [Plater]",
					["ScriptType"] = 2,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 324,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = 2175503,
					["Author"] = "Bombad�o-Azralon",
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["Time"] = 1540663131,
					["PlaterCore"] = 1,
					["Name"] = "Explosion Affix M+ [Plater]",
					["ScriptType"] = 2,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 232,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the debuff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1538429739,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Debuff Alert [Plater]",
					["ScriptType"] = 1,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 567,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --https://www.wowhead.com/spell=253583/fiery-enchant\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
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
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1538237586,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Big Alert [Plater]",
					["ScriptType"] = 2,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 376,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
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
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1539201768,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Small Alert [Plater]",
					["ScriptType"] = 2,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 106,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Time"] = 1538256464,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["ScriptType"] = 1,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
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
					["Name"] = "Color Change [Plater]",
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
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
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
					["Icon"] = 133006,
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Time"] = 1543680853,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Border Color [Plater]",
					["ScriptType"] = 1,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 131,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
					["Icon"] = 136048,
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show the energy amount above the nameplate",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Time"] = 1539015649,
					["PlaterCore"] = 1,
					["Name"] = "UnitPower [Plater]",
					["ScriptType"] = 3,
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
				}, -- [12]
				{
					["Enabled"] = true,
					["Revision"] = 171,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
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
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Time"] = 1539201849,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Frontal Cone [Plater]",
					["ScriptType"] = 2,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
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
					["Name"] = "Fixate [Plater]",
					["Desc"] = "Show above the nameplate who is the player fixated",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
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
					["Name"] = "Fixate On You [Plater]",
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    if envTable.FixateTarget then\n        envTable.FixateTarget:SetText (\"\")\n        envTable.FixateTarget:Hide()\n    end\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n\n\n",
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
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1547392935,
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
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["LastHookEdited"] = "",
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
					["Name"] = "Stormwall Encounter [Plater]",
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
							2280, -- [1]
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["LastHookEdited"] = "Nameplate Updated",
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
					["Name"] = "Hide Neutral Units [Plater]",
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
					["Icon"] = 1990989,
					["LastHookEdited"] = "Constructor",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 223,
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
					["Time"] = 1557431240,
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
						["race"] = {
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
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["LastHookEdited"] = "Constructor",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1547406548,
					["PlaterCore"] = 1,
					["Name"] = "Execute Range [Plater]",
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
					["LastHookEdited"] = "",
				}, -- [5]
				{
					["Enabled"] = false,
					["Revision"] = 224,
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
					},
					["Time"] = 1548811389,
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
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["LastHookEdited"] = "Constructor",
				}, -- [6]
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
					["Name"] = "Reorder Nameplate [Plater]",
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
					["Icon"] = 574574,
					["LastHookEdited"] = "Nameplate Added",
				}, -- [7]
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
					["Icon"] = 133689,
					["LastHookEdited"] = "Constructor",
				}, -- [8]
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
							[103] = true,
							["Enabled"] = true,
						},
					},
					["Icon"] = 135426,
					["LastHookEdited"] = "",
				}, -- [9]
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
					["Name"] = "Players Targeting a Target [Plater]",
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
					["Icon"] = 1966587,
					["LastHookEdited"] = "Constructor",
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1552354619,
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
					["Icon"] = 878211,
					["Name"] = "Current Target Color [Plater]",
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 239,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 1\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["Time"] = 1548004596,
					["PlaterCore"] = 1,
					["Name"] = "Aura Reorder [Plater]",
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
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["LastHookEdited"] = "",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend\n\n\n",
					},
					["Time"] = 1549937733,
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
					["Icon"] = 136207,
					["Name"] = "Don't Have Aura [Plater]",
				}, -- [13]
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
					["LastHookEdited"] = "",
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
						["race"] = {
						},
						["affix"] = {
							[117] = true,
							["Enabled"] = true,
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 2446016,
					["Name"] = "M+ Bwonsamdi Reaping",
				}, -- [14]
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
			["indicator_raidmark_scale"] = 0.9999999403953552,
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.1000000238419",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateSelfTopInset"] = "0.5",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "0",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "1",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateShowSelf"] = "0",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["NamePlateHorizontalScale"] = "1",
				["nameplateMinScale"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateOtherTopInset"] = "0.085",
				["nameplateSelfScale"] = "1",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateSelfAlpha"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowAll"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateGlobalScale"] = "1",
				["NamePlateVerticalScale"] = "1",
			},
			["login_counter"] = 166,
			["pet_width_scale"] = 0.949999988079071,
			["plate_config"] = {
				["player"] = {
					["click_through"] = true,
					["castbar_enabled"] = false,
					["spellpercent_text_enabled"] = false,
				},
				["friendlyplayer"] = {
					["actorname_use_friends_color"] = false,
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["level_text_size"] = 8,
					["actorname_use_class_color"] = true,
					["big_actortitle_text_font"] = "Friz Quadrata TT",
					["cast"] = {
						140, -- [1]
						10, -- [2]
					},
					["spellpercent_text_size"] = 8,
					["big_actortitle_text_size"] = 10,
					["percent_text_alpha"] = 0.7999999523162842,
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
					["actorname_use_guild_color"] = false,
					["all_names"] = true,
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["percent_show_health"] = true,
					["actorname_text_anchor"] = {
						["side"] = 1,
					},
					["big_actortitle_text_outline"] = "OUTLINE",
					["spellpercent_text_enabled"] = true,
					["actorname_text_spacing"] = 7,
					["percent_text_font"] = "Friz Quadrata TT",
					["buff_frame_y_offset"] = 0,
					["actorname_text_size"] = 8,
					["quest_enabled"] = true,
					["percent_text_show_decimals"] = false,
					["percent_text_enabled"] = true,
					["health_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["spellname_text_size"] = 12,
					["health"] = {
						140, -- [1]
						10, -- [2]
					},
					["percent_text_size"] = 8,
					["percent_text_ooc"] = true,
					["big_actorname_text_size"] = 10,
					["mana"] = {
						nil, -- [1]
						4, -- [2]
					},
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
					["percent_text_alpha"] = 0.7999999523162842,
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
					["big_actorname_text_font"] = "Friz Quadrata TT",
					["percent_text_show_decimals"] = false,
					["percent_text_anchor"] = {
						["side"] = 11,
					},
					["level_text_font"] = "Friz Quadrata TT",
					["actorname_text_spacing"] = 7,
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
					["big_actorname_text_font"] = "Friz Quadrata TT",
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
					["quest_enabled"] = true,
					["spellname_text_size"] = 12,
					["health_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["health"] = {
						140, -- [1]
						10, -- [2]
					},
					["big_actorname_text_size"] = 10,
					["actorname_text_size"] = 8,
					["percent_text_anchor"] = {
						["side"] = 11,
					},
					["level_text_font"] = "Friz Quadrata TT",
					["percent_text_alpha"] = 0.7999999523162842,
				},
				["friendlynpc"] = {
					["big_actortitle_text_size"] = 9,
					["actorname_text_spacing"] = 9,
				},
			},
			["health_statusbar_texture"] = "ElvUI Norm",
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Unit - Important"] = 5,
				["Explosion Affix M+"] = 3,
				["Cast - Very Important"] = 2,
				["Aura Border Color"] = 1,
				["Color Change"] = 1,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Blink Time Left"] = 1,
				["Unit Power"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["target_highlight_height"] = 16,
			["cast_statusbar_spark_alpha"] = 0.8299999833106995,
			["aura_timer_text_size"] = 12,
			["first_run2"] = true,
			["number_region_first_run"] = true,
			["use_playerclass_color"] = false,
			["cast_statusbar_spark_texture"] = "Interface\\AddOns\\Plater\\images\\spark8",
			["aura_stack_font"] = "Friz Quadrata TT",
			["health_selection_overlay_alpha"] = 0.09999999403953552,
			["castbar_target_font"] = "Friz Quadrata TT",
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["captured_spells"] = {
				[269279] = {
					["type"] = "BUFF",
					["source"] = "Rivalry",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[268769] = {
					["type"] = "BUFF",
					["source"] = "Bluearruwu",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[228537] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rivalry",
					["encounterID"] = 2281,
				},
				[272986] = {
					["type"] = "DEBUFF",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[633] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["encounterID"] = 2281,
				},
				[278736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Asmødeüs",
					["npcID"] = 0,
				},
				[295855] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[280398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Déstelline-BleedingHollow",
					["npcID"] = 0,
				},
				[295856] = {
					["npcID"] = 152396,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Guardian of Azeroth",
					["encounterID"] = 2281,
				},
				[285253] = {
					["type"] = "DEBUFF",
					["source"] = "Lady Jaina Proudmoore",
					["npcID"] = 146409,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[266091] = {
					["type"] = "BUFF",
					["source"] = "Sploshey",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[186254] = {
					["type"] = "BUFF",
					["source"] = "Bluearruwu",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[285254] = {
					["type"] = "DEBUFF",
					["source"] = "Lady Jaina Proudmoore",
					["npcID"] = 146409,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[54149] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[254473] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[225921] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2281,
				},
				[317065] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjorn",
					["encounterID"] = 2281,
				},
				[319237] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
				},
				[124682] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[287811] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[300714] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[318216] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[53271] = {
					["npcID"] = 83746,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unknown",
					["encounterID"] = 2281,
				},
				[290878] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Jaina Proudmoore",
					["npcID"] = 146409,
				},
				[768] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[116858] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sploshey",
					["encounterID"] = 2281,
				},
				[312725] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[118455] = {
					["type"] = "BUFF",
					["source"] = "Thunderzhunt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[319241] = {
					["type"] = "DEBUFF",
					["source"] = "Rivalry",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[235313] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[642] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[190984] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxclamation",
					["encounterID"] = 2281,
				},
				[80354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Lykros",
					["npcID"] = 0,
				},
				[196414] = {
					["type"] = "DEBUFF",
					["source"] = "Sploshey",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[186258] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[316944] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[184662] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[190411] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Brothgargle",
					["npcID"] = 0,
				},
				[774] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[2580] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lykros",
					["npcID"] = 0,
				},
				[287565] = {
					["npcID"] = 146409,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
				},
				[198013] = {
					["type"] = "BUFF",
					["source"] = "Rivalry",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[226757] = {
					["type"] = "DEBUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[290121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Volkrun",
					["npcID"] = 0,
				},
				[113858] = {
					["type"] = "BUFF",
					["source"] = "Soulrip-Stormreaver",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[204018] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Royalty",
					["encounterID"] = 2281,
				},
				[318227] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[49376] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxclamation",
					["encounterID"] = 2281,
				},
				[115008] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[11366] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjorn",
					["encounterID"] = 2281,
				},
				[1044] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[204019] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Royalty",
					["encounterID"] = 2281,
				},
				[147362] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Turkeyxd",
					["encounterID"] = 2281,
				},
				[216411] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[188370] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[164545] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[210152] = {
					["type"] = "BUFF",
					["source"] = "Rivalry",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[111400] = {
					["type"] = "BUFF",
					["source"] = "Sploshey",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[22812] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[289488] = {
					["npcID"] = 146409,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
				},
				[188499] = {
					["type"] = "BUFF",
					["source"] = "Rivalry",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[288211] = {
					["npcID"] = 146409,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
				},
				[171253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ogv",
					["npcID"] = 0,
				},
				[204021] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2281,
				},
				[279397] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[216413] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[290001] = {
					["type"] = "BUFF",
					["source"] = "Lady Jaina Proudmoore",
					["npcID"] = 146409,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[53385] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Numberz",
					["encounterID"] = 2281,
				},
				[164547] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[185562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mametosan",
					["npcID"] = 0,
				},
				[133] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjorn",
					["encounterID"] = 2281,
				},
				[6262] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjorn",
					["encounterID"] = 2281,
				},
				[292686] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[304056] = {
					["type"] = "BUFF",
					["source"] = "Sploshey",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[96231] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Numberz",
					["encounterID"] = 2281,
				},
				[204598] = {
					["type"] = "DEBUFF",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[26573] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Royalty",
					["encounterID"] = 2281,
				},
				[301886] = {
					["type"] = "BUFF",
					["source"] = "Shallow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[20473] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["encounterID"] = 2281,
				},
				[288345] = {
					["type"] = "BUFF",
					["source"] = "Lady Jaina Proudmoore",
					["npcID"] = 146409,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[296138] = {
					["type"] = "BUFF",
					["source"] = "Kahnoro-Sargeras",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[312107] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[19483] = {
					["type"] = "BUFF",
					["source"] = "Infernal",
					["npcID"] = 89,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[287835] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[2643] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thunderzhunt",
					["encounterID"] = 2281,
				},
				[287836] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[2645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Walf",
					["npcID"] = 0,
				},
				[297035] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gravechillz",
					["npcID"] = 0,
				},
				[315176] = {
					["type"] = "DEBUFF",
					["source"] = "Royalty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[317859] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[295248] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[198533] = {
					["npcID"] = 60849,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jade Serpent Statue",
					["encounterID"] = 2281,
				},
				[119611] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[269571] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[295378] = {
					["type"] = "BUFF",
					["source"] = "Thunderzsan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[297039] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zakkiee",
					["npcID"] = 0,
				},
				[280177] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[297168] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[280433] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[279028] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Brotherbilo",
					["npcID"] = 0,
				},
				[288099] = {
					["npcID"] = 146409,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
				},
				[279029] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Brotherbilo",
					["npcID"] = 0,
				},
				[204157] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2281,
				},
				[274395] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[209693] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rivalry",
					["encounterID"] = 2281,
				},
				[318378] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[212653] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[24450] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 88579,
				},
				[197561] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[288221] = {
					["npcID"] = 148631,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unexploded Ordnance",
					["encounterID"] = 2281,
				},
				[290621] = {
					["npcID"] = 146409,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
				},
				[186401] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mogfind",
					["npcID"] = 0,
				},
				[264689] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Stalku",
					["npcID"] = 0,
				},
				[279033] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Brotherbilo",
					["npcID"] = 0,
				},
				[268898] = {
					["type"] = "BUFF",
					["source"] = "Shallow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[270058] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lykros",
					["npcID"] = 0,
				},
				[295258] = {
					["type"] = "BUFF",
					["source"] = "Rivalry",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[279673] = {
					["type"] = "BUFF",
					["source"] = "Soulrip-Stormreaver",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[54216] = {
					["npcID"] = 83746,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unknown",
					["encounterID"] = 2281,
				},
				[295373] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thunderzsan",
					["encounterID"] = 2281,
				},
				[272903] = {
					["type"] = "BUFF",
					["source"] = "Shallow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[303564] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
				},
				[132403] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[298837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spruicelee",
					["npcID"] = 0,
				},
				[260881] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Walf",
					["npcID"] = 0,
				},
				[185245] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2281,
				},
				[314040] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[297162] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[306474] = {
					["type"] = "DEBUFF",
					["source"] = "Shallow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[281209] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lykros",
					["npcID"] = 0,
				},
				[115175] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[288619] = {
					["npcID"] = 146409,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
				},
				[288747] = {
					["npcID"] = 146409,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
				},
				[281721] = {
					["type"] = "DEBUFF",
					["source"] = "Delpix-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[195072] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
				},
				[313148] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Soulrip-Stormreaver",
					["encounterID"] = 2281,
				},
				[319919] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[289387] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[164815] = {
					["type"] = "DEBUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[298841] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lykros",
					["npcID"] = 0,
				},
				[303568] = {
					["type"] = "DEBUFF",
					["source"] = "Delpix-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[31884] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[178740] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[190784] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["encounterID"] = 2281,
				},
				[296003] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kahnoro-Sargeras",
					["npcID"] = 0,
				},
				[48438] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kahnoro-Sargeras",
					["encounterID"] = 2281,
				},
				[232698] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tixz",
					["npcID"] = 0,
				},
				[129597] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[274443] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[313918] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[257946] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[313663] = {
					["type"] = "DEBUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[300761] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[287925] = {
					["type"] = "BUFF",
					["source"] = "Lady Jaina Proudmoore",
					["npcID"] = 146409,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[279810] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[24858] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[108853] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjorn",
					["encounterID"] = 2281,
				},
				[304722] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[288719] = {
					["type"] = "BUFF",
					["source"] = "Lady Jaina Proudmoore",
					["npcID"] = 146409,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[176890] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Royalty",
					["encounterID"] = 2281,
				},
				[285177] = {
					["npcID"] = 146409,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
				},
				[268953] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[268904] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[191837] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[295367] = {
					["type"] = "DEBUFF",
					["source"] = "Delpix-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[227723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crittapilla",
					["npcID"] = 0,
				},
				[20271] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Numberz",
					["encounterID"] = 2281,
				},
				[4987] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["encounterID"] = 2281,
				},
				[268955] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[62124] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Royalty",
					["encounterID"] = 2281,
				},
				[300893] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Brotherbilo",
					["npcID"] = 0,
				},
				[1122] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sploshey",
					["encounterID"] = 2281,
				},
				[152108] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sploshey",
					["encounterID"] = 2281,
				},
				[266018] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[297412] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Druilyent",
					["npcID"] = 0,
				},
				[105809] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[108366] = {
					["type"] = "BUFF",
					["source"] = "Lotsohdots-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[288199] = {
					["type"] = "BUFF",
					["source"] = "Lady Jaina Proudmoore",
					["npcID"] = 146409,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[272790] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Turkeyxd",
					["encounterID"] = 2281,
				},
				[207744] = {
					["type"] = "DEBUFF",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[198793] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rivalry",
					["encounterID"] = 2281,
				},
				[287993] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[295842] = {
					["type"] = "BUFF",
					["source"] = "Thunderzsan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[57724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gufey",
					["npcID"] = 0,
				},
				[191840] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[197908] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[78674] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxclamation",
					["encounterID"] = 2281,
				},
				[24275] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Numberz",
					["encounterID"] = 2281,
				},
				[1850] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[165961] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[298343] = {
					["type"] = "BUFF",
					["source"] = "Shallow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[258883] = {
					["type"] = "DEBUFF",
					["source"] = "Rivalry",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[348] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sploshey",
					["encounterID"] = 2281,
				},
				[116680] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[288212] = {
					["type"] = "DEBUFF",
					["source"] = "Lady Jaina Proudmoore",
					["npcID"] = 146409,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[289324] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[289963] = {
					["npcID"] = 149508,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ice Blocked Nathanos",
					["encounterID"] = 2281,
				},
				[308742] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
				},
				[267685] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[147193] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ogv",
					["encounterID"] = 2281,
				},
				[287825] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gufey",
					["npcID"] = 0,
				},
				[310530] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[300693] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[80240] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Soulrip-Stormreaver",
					["encounterID"] = 2281,
				},
				[287790] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[3110] = {
					["npcID"] = 416,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Abagup",
					["encounterID"] = 2281,
				},
				[22703] = {
					["type"] = "DEBUFF",
					["source"] = "Lotsohdots-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[272987] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[116670] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[267560] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mametosan",
					["npcID"] = 0,
				},
				[316744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Minipack",
					["npcID"] = 0,
				},
				[288882] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[203981] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[294133] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[278931] = {
					["type"] = "BUFF",
					["source"] = "Sploshey",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[290087] = {
					["npcID"] = 149144,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jaina's Tide Elemental",
					["encounterID"] = 2281,
				},
				[277185] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[287365] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[152262] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[116011] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjorn",
					["encounterID"] = 2281,
				},
				[223143] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[266030] = {
					["type"] = "BUFF",
					["source"] = "Soulrip-Stormreaver",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[293664] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crittapilla",
					["npcID"] = 0,
				},
				[308188] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Khaelle",
					["npcID"] = 0,
				},
				[312915] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[288219] = {
					["type"] = "BUFF",
					["source"] = "Unexploded Ordnance",
					["npcID"] = 148631,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[85222] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["encounterID"] = 2281,
				},
				[204301] = {
					["type"] = "DEBUFF",
					["source"] = "Royalty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[157736] = {
					["type"] = "DEBUFF",
					["source"] = "Sploshey",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[231895] = {
					["type"] = "BUFF",
					["source"] = "Shallow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[214202] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[300142] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjorn",
					["encounterID"] = 2281,
				},
				[201427] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rivalry",
					["encounterID"] = 2281,
				},
				[259161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gurthäng",
					["npcID"] = 0,
				},
				[288169] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[219788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Irastian",
					["npcID"] = 0,
				},
				[316814] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bwonzaboo",
					["npcID"] = 0,
				},
				[117828] = {
					["type"] = "BUFF",
					["source"] = "Lotsohdots-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[16827] = {
					["npcID"] = 113694,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unknown",
					["encounterID"] = 2281,
				},
				[186257] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[290053] = {
					["type"] = "BUFF",
					["source"] = "Icebound Image",
					["npcID"] = 149535,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[277181] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[8690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Delpix-Tichondrius",
					["npcID"] = 0,
				},
				[298357] = {
					["type"] = "BUFF",
					["source"] = "Sploshey",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[35395] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shallow",
					["encounterID"] = 2281,
				},
				[115310] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[287626] = {
					["npcID"] = 146409,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
				},
				[197277] = {
					["type"] = "DEBUFF",
					["source"] = "Shallow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[299664] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Margaeré",
					["npcID"] = 0,
				},
				[279709] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[317265] = {
					["type"] = "DEBUFF",
					["source"] = "Delpix-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[314585] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[288394] = {
					["type"] = "DEBUFF",
					["source"] = "Unexploded Ordnance",
					["npcID"] = 148631,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[29722] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sploshey",
					["encounterID"] = 2281,
				},
				[288038] = {
					["npcID"] = 146753,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kul Tiran Marine",
					["encounterID"] = 2281,
				},
				[21562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tixz",
					["npcID"] = 0,
				},
				[274598] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[203538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aastartes",
					["npcID"] = 0,
				},
				[101546] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshweaver",
					["encounterID"] = 2281,
				},
				[204242] = {
					["type"] = "DEBUFF",
					["source"] = "Royalty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[192999] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[116844] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[19574] = {
					["type"] = "BUFF",
					["source"] = "Bluearruwu",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[93402] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxclamation",
					["encounterID"] = 2281,
				},
				[292359] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spruicelee",
					["npcID"] = 0,
				},
				[303344] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[187827] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[116014] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[313948] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[303345] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[274346] = {
					["type"] = "BUFF",
					["source"] = "Rivalry",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[279584] = {
					["type"] = "BUFF",
					["source"] = "Rivalry",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[26297] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[268854] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[167898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Khaelle",
					["npcID"] = 0,
				},
				[53600] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Royalty",
					["encounterID"] = 2281,
				},
				[258920] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[231390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Redic",
					["npcID"] = 0,
				},
				[292361] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kahnoro-Sargeras",
					["npcID"] = 0,
				},
				[589] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ogv",
					["encounterID"] = 2281,
				},
				[190319] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[48107] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[269239] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[104773] = {
					["type"] = "BUFF",
					["source"] = "Soulrip-Stormreaver",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[19750] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["encounterID"] = 2281,
				},
				[783] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxclamation",
					["encounterID"] = 2281,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 58965,
				},
				[296962] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[315787] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[296211] = {
					["type"] = "BUFF",
					["source"] = "Kahnoro-Sargeras",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[118922] = {
					["type"] = "BUFF",
					["source"] = "Thunderzhunt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[202137] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2281,
				},
				[210320] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[313571] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[194153] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxclamation",
					["encounterID"] = 2281,
				},
				[280787] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bearklaw",
					["npcID"] = 0,
				},
				[8921] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxclamation",
					["encounterID"] = 2281,
				},
				[285978] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Redic",
					["npcID"] = 0,
				},
				[201754] = {
					["npcID"] = 113694,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unknown",
					["encounterID"] = 2281,
				},
				[202138] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2281,
				},
				[294027] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[285979] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pumkinwiz",
					["npcID"] = 0,
				},
				[194223] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[246851] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[289940] = {
					["npcID"] = 146409,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
				},
				[109132] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshweaver",
					["encounterID"] = 2281,
				},
				[228477] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2281,
				},
				[285725] = {
					["npcID"] = 146753,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kul Tiran Marine",
					["encounterID"] = 2281,
				},
				[225919] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2281,
				},
				[285981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gravechillz",
					["npcID"] = 0,
				},
				[82326] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["encounterID"] = 2281,
				},
				[246852] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[131347] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
				},
				[853] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Numberz",
					["encounterID"] = 2281,
				},
				[2383] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crittapilla",
					["npcID"] = 0,
				},
				[48108] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[17962] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lotsohdots-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[300802] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Brotherbilo",
					["npcID"] = 0,
				},
				[143625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gurthäng",
					["npcID"] = 0,
				},
				[246853] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[184575] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shallow",
					["encounterID"] = 2281,
				},
				[296971] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[295310] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[162794] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rivalry",
					["encounterID"] = 2281,
				},
				[231843] = {
					["type"] = "BUFF",
					["source"] = "Shallow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[312734] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[25771] = {
					["type"] = "DEBUFF",
					["source"] = "Royalty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[279715] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[203795] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2281,
				},
				[155145] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shallow",
					["encounterID"] = 2281,
				},
				[203539] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aastartes",
					["npcID"] = 0,
				},
				[193455] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Turkeyxd",
					["encounterID"] = 2281,
				},
				[246152] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[251837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jsleez",
					["npcID"] = 0,
				},
				[1459] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjorn",
					["encounterID"] = 2281,
				},
				[100784] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[12654] = {
					["type"] = "DEBUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[43308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lykros",
					["npcID"] = 0,
				},
				[31935] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Royalty",
					["encounterID"] = 2281,
				},
				[193456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Felbier",
					["npcID"] = 0,
				},
				[62305] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 83746,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[116849] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[195181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Irastian",
					["npcID"] = 0,
				},
				[288800] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[316522] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[301308] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxclamation",
					["encounterID"] = 2281,
				},
				[217200] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Turkeyxd",
					["encounterID"] = 2281,
				},
				[119085] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[115313] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[270661] = {
					["type"] = "BUFF",
					["source"] = "Kahnoro-Sargeras",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[107428] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[2948] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjorn",
					["encounterID"] = 2281,
				},
				[268856] = {
					["type"] = "BUFF",
					["source"] = "Rivalry",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[122] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjorn",
					["encounterID"] = 2281,
				},
				[280412] = {
					["type"] = "BUFF",
					["source"] = "Shallow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[288803] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[299662] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lykros",
					["npcID"] = 0,
				},
				[275773] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["encounterID"] = 2281,
				},
				[100780] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[72968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skuldy",
					["npcID"] = 0,
				},
				[113746] = {
					["type"] = "DEBUFF",
					["source"] = "Thunderzsan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[318187] = {
					["type"] = "DEBUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[115151] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[185123] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
				},
				[200166] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
				},
				[335149] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mogfind",
					["npcID"] = 0,
				},
				[273348] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[268877] = {
					["type"] = "BUFF",
					["source"] = "Thunderzhunt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[102383] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxclamation",
					["encounterID"] = 2281,
				},
				[162243] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rivalry",
					["encounterID"] = 2281,
				},
				[36107] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Royalty",
					["encounterID"] = 2281,
				},
				[280413] = {
					["type"] = "BUFF",
					["source"] = "Shallow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[204255] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2281,
				},
				[57723] = {
					["type"] = "DEBUFF",
					["source"] = "Delpix-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[315763] = {
					["type"] = "BUFF",
					["source"] = "Thunderzhunt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[288297] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[85256] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shallow",
					["encounterID"] = 2281,
				},
				[242551] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Druilyent",
					["npcID"] = 0,
				},
				[263642] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2281,
				},
				[183752] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rivalry",
					["encounterID"] = 2281,
				},
				[287490] = {
					["type"] = "DEBUFF",
					["source"] = "Ice Block",
					["npcID"] = 148522,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[275779] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Royalty",
					["encounterID"] = 2281,
				},
				[287660] = {
					["type"] = "BUFF",
					["source"] = "Soulrip-Stormreaver",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[281744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chemdawgg",
					["npcID"] = 0,
				},
				[221886] = {
					["type"] = "BUFF",
					["source"] = "Shallow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[80353] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjorn",
					["encounterID"] = 2281,
				},
				[270576] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[255654] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[281402] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
				},
				[295838] = {
					["type"] = "DEBUFF",
					["source"] = "Delpix-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[18562] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxclamation",
					["encounterID"] = 2281,
				},
				[214222] = {
					["type"] = "DEBUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[34026] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Turkeyxd",
					["encounterID"] = 2281,
				},
				[268756] = {
					["type"] = "DEBUFF",
					["source"] = "Bluearruwu",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[287280] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[1490] = {
					["type"] = "DEBUFF",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[61684] = {
					["type"] = "BUFF",
					["source"] = "Deepglider",
					["npcID"] = 152291,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[295840] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[288374] = {
					["npcID"] = 146409,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
				},
				[204079] = {
					["type"] = "DEBUFF",
					["source"] = "Royalty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[102417] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxclamation",
					["encounterID"] = 2281,
				},
				[263648] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[326419] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Irastian",
					["npcID"] = 0,
				},
				[219589] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[313088] = {
					["type"] = "BUFF",
					["source"] = "Rivalry",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[183436] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[268887] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[268905] = {
					["type"] = "BUFF",
					["source"] = "Ogv",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[303380] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[2139] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjorn",
					["encounterID"] = 2281,
				},
				[289220] = {
					["npcID"] = 149144,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jaina's Tide Elemental",
					["encounterID"] = 2281,
				},
				[288434] = {
					["type"] = "DEBUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[273232] = {
					["type"] = "BUFF",
					["source"] = "Rivalry",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[268956] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[162264] = {
					["type"] = "BUFF",
					["source"] = "Rivalry",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[297034] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tixz",
					["npcID"] = 0,
				},
				[267612] = {
					["type"] = "BUFF",
					["source"] = "Thunderzhunt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[315161] = {
					["type"] = "DEBUFF",
					["source"] = "Thunderzhunt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[153561] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjorn",
					["encounterID"] = 2281,
				},
				[193530] = {
					["type"] = "BUFF",
					["source"] = "Turkeyxd",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[781] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thunderzhunt",
					["encounterID"] = 2281,
				},
				[303570] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[6673] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bwonzaboo",
					["npcID"] = 0,
				},
				[277706] = {
					["type"] = "BUFF",
					["source"] = "Soulrip-Stormreaver",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[296230] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[202090] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[155158] = {
					["type"] = "DEBUFF",
					["source"] = "Arnbjorn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[204843] = {
					["type"] = "DEBUFF",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[255937] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Numberz",
					["encounterID"] = 2281,
				},
				[271843] = {
					["type"] = "BUFF",
					["source"] = "Kahnoro-Sargeras",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[268893] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[279902] = {
					["type"] = "BUFF",
					["source"] = "Lotsohdots-Kil'jaeden",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[268899] = {
					["type"] = "BUFF",
					["source"] = "Shallow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[202602] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bwonzaboo",
					["npcID"] = 0,
				},
				[295368] = {
					["type"] = "DEBUFF",
					["source"] = "Thunderzsan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Sploshey",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[273238] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[316801] = {
					["type"] = "BUFF",
					["source"] = "Shallow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[275429] = {
					["type"] = "BUFF",
					["source"] = "Sploshey",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2281,
				},
				[288441] = {
					["npcID"] = 146409,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
				},
				[115450] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2281,
				},
				[204596] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2281,
				},
			},
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["cast_statusbar_bgtexture"] = "ElvUI Norm",
			["aura_timer_text_font"] = "Friz Quadrata TT",
			["minor_width_scale"] = 0.8999999761581421,
			["update_throttle"] = 0.2499999850988388,
			["hook_auto_imported"] = {
				["Targetting Alpha"] = 3,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Blockade Encounter"] = 1,
				["Jaina Encounter"] = 6,
				["Execute Range"] = 1,
				["Reorder Nameplate"] = 3,
				["Extra Border"] = 2,
				["Combo Points"] = 3,
				["Hide Neutral Units"] = 1,
				["Target Color"] = 3,
				["Attacking Specific Unit"] = 1,
				["Aura Reorder"] = 1,
			},
			["aura_tracker"] = {
				["buff_tracked"] = {
					[209859] = true,
				},
			},
			["health_statusbar_bgtexture"] = "ElvUI Norm",
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
				[46963] = {
					"Lord Walden", -- [1]
					"Shadowfang Keep", -- [2]
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
				[75641] = {
					"Blindlight Bilefin", -- [1]
					"Blackfathom Deeps", -- [2]
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
				[75522] = {
					"Bloodtail Grouper", -- [1]
					"Blackfathom Deeps", -- [2]
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
				[75396] = {
					"Deep Terror", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[33670] = {
					"Aerial Command Unit", -- [1]
					"Ulduar", -- [2]
				},
				[146828] = {
					"Feral Pup", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[74565] = {
					"Subjugator Kor'ul", -- [1]
					"Blackfathom Deeps", -- [2]
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
				[130896] = {
					"Blackout Barrel", -- [1]
					"Freehold", -- [2]
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
				[76038] = {
					"Twilight Shadowmage", -- [1]
					"Blackfathom Deeps", -- [2]
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
				[76039] = {
					"Twilight Aquamancer", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[123289] = {
					"Sparkleshell Deathclaw", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[74505] = {
					"Thruk", -- [1]
					"Blackfathom Deeps", -- [2]
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
				[47131] = {
					"Frantic Geist", -- [1]
					"Shadowfang Keep", -- [2]
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
				[75658] = {
					"Blindlight Murloc", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[47132] = {
					"Dark Creeper", -- [1]
					"Shadowfang Keep", -- [2]
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
				[74380] = {
					"Twilight Storm Mender", -- [1]
					"Blackfathom Deeps", -- [2]
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
				[75852] = {
					"Corrupted Healing Totem", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[32875] = {
					"Iron Honor Guard", -- [1]
					"Ulduar", -- [2]
				},
				[75980] = {
					"Blindlight Razorjaw", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[140835] = {
					"Scheming Flame", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[74382] = {
					"Twilight Shadowmage", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[74446] = {
					"Ghamoo-Ra", -- [1]
					"Blackfathom Deeps", -- [2]
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
				[47134] = {
					"Corpse Eater", -- [1]
					"Shadowfang Keep", -- [2]
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
				[3873] = {
					"Tormented Officer", -- [1]
					"Shadowfang Keep", -- [2]
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
				[75090] = {
					"Deep Terror", -- [1]
					"Blackfathom Deeps", -- [2]
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
				[75410] = {
					"Guardian of the Deep", -- [1]
					"Blackfathom Deeps", -- [2]
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
				[47136] = {
					"Unstable Ravager", -- [1]
					"Shadowfang Keep", -- [2]
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
				[75157] = {
					"Aku'mai the Venomous", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[75285] = {
					"Twilight Storm Mender", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[34190] = {
					"Hardened Iron Golem", -- [1]
					"Ulduar", -- [2]
				},
				[74518] = {
					"Executioner Gore", -- [1]
					"Blackfathom Deeps", -- [2]
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
				[75286] = {
					"Twilight Disciple", -- [1]
					"Blackfathom Deeps", -- [2]
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
				[155433] = {
					"Void-Touched Emissary", -- [1]
					"Freehold", -- [2]
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
				[4278] = {
					"Commander Springvale", -- [1]
					"Shadowfang Keep", -- [2]
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
				[47140] = {
					"Sorcerous Skeleton", -- [1]
					"Shadowfang Keep", -- [2]
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
				[74719] = {
					"Blindlight Rotmouth", -- [1]
					"Blackfathom Deeps", -- [2]
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
				[74720] = {
					"Blindlight Murloc", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[146371] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148673] = {
					"Vessel of Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149441] = {
					"Frozen Ballista", -- [1]
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
				[47143] = {
					"Spitebone Skeleton", -- [1]
					"Shadowfang Keep", -- [2]
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
				[47145] = {
					"Spitebone Guardian", -- [1]
					"Shadowfang Keep", -- [2]
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
				[47146] = {
					"Spitebone Flayer", -- [1]
					"Shadowfang Keep", -- [2]
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
				[155434] = {
					"Emissary of the Tides", -- [1]
					"Freehold", -- [2]
				},
				[140632] = {
					"Scaleback Snapper", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[75155] = {
					"Aku'mai the Devourer", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[126023] = {
					"Harbor Saurid", -- [1]
					"Crucible of Storms", -- [2]
				},
				[145903] = {
					"Darkforged Crusader", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[74728] = {
					"Twilight Lord Bathiel", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[76037] = {
					"Twilight Storm Mender", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[140377] = {
					"Duneshell Harvester", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[74716] = {
					"Aqua Guardian", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[33432] = {
					"Leviathan Mk II", -- [1]
					"Ulduar", -- [2]
				},
				[149611] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[151630] = {
					"Void Ichor", -- [1]
					"Crucible of Storms", -- [2]
				},
				[33528] = {
					"Guardian of Life", -- [1]
					"Ulduar", -- [2]
				},
				[151068] = {
					"Tentacled Voidpriest", -- [1]
					"Crucible of Storms", -- [2]
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
				[53006] = {
					"Spirit Link Totem", -- [1]
					"Crucible of Storms", -- [2]
				},
				[74747] = {
					"Deep Terror", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[122963] = {
					"Rezan", -- [1]
					"Atal'Dazar", -- [2]
				},
				[74721] = {
					"Blindlight Bilefin", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[74729] = {
					"Voidwalker Minion", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[76954] = {
					"Pahboo-Ra", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[32857] = {
					"Stormcaller Brundir", -- [1]
					"Ulduar", -- [2]
				},
				[32872] = {
					"Runic Colossus", -- [1]
					"Ulduar", -- [2]
				},
				[130575] = {
					"Wandering Axebeak", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[74983] = {
					"Twilight Disciple", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[138845] = {
					"Commander Jo'vak", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[146829] = {
					"Undying Guardian", -- [1]
					"Crucible of Storms", -- [2]
				},
				[138369] = {
					"Footbomb Hooligan", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136160] = {
					"King Dazar", -- [1]
					"Kings' Rest", -- [2]
				},
				[33113] = {
					"Flame Leviathan", -- [1]
					"Ulduar", -- [2]
				},
				[417] = {
					"크리툰", -- [1]
					"Crucible of Storms", -- [2]
				},
				[133463] = {
					"Venture Co. War Machine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140355] = {
					"Brightscale Screecher", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[148623] = {
					"Echo of Gonk", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[126429] = {
					"Encrusted Coralback", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[145261] = {
					"Opulence", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[32906] = {
					"Freya", -- [1]
					"Ulduar", -- [2]
				},
				[3875] = {
					"Haunted Servitor", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[33453] = {
					"Dark Rune Watcher", -- [1]
					"Ulduar", -- [2]
				},
				[148262] = {
					"Tidewater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[78001] = {
					"Cloudburst Totem", -- [1]
					"Crucible of Storms", -- [2]
				},
				[130653] = {
					"Wanton Sapper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[34198] = {
					"Iron Mender", -- [1]
					"Ulduar", -- [2]
				},
				[129232] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[76036] = {
					"Twilight Shadow", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[150137] = {
					"Faceless Subduer", -- [1]
					"Uldir Scenario", -- [2]
				},
				[144876] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34199] = {
					"Lightning Charged Iron Dwarf", -- [1]
					"Ulduar", -- [2]
				},
				[33836] = {
					"Bomb Bot", -- [1]
					"Ulduar", -- [2]
				},
				[127799] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[129598] = {
					"Freehold Pack Mule", -- [1]
					"Freehold", -- [2]
				},
				[62005] = {
					"Beast", -- [1]
					"Crucible of Storms", -- [2]
				},
				[129553] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				[151041] = {
					"Etruvis the Vassal", -- [1]
					"Crucible of Storms", -- [2]
				},
				[131727] = {
					"Fenrae the Cunning", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[122972] = {
					"Dazar'ai Augur", -- [1]
					"Atal'Dazar", -- [2]
				},
				[32926] = {
					"Flash Freeze", -- [1]
					"Ulduar", -- [2]
				},
				[140353] = {
					"Brightscale Coilfang", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[34137] = {
					"Winter Jormungar", -- [1]
					"Ulduar", -- [2]
				},
				[130485] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129526] = {
					"Bilge Rat Swabby", -- [1]
					"Freehold", -- [2]
				},
				[149591] = {
					"Rastari Marksman", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[143011] = {
					"Sandy Perch", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[126424] = {
					"Coralback Surfcrawler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134900] = {
					"Venomfang Spider", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[148617] = {
					"Akunda the Devout", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33855] = {
					"Junk Bot", -- [1]
					"Ulduar", -- [2]
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
				[133432] = {
					"Venture Co. Alchemist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[33966] = {
					"Crusher Tentacle", -- [1]
					"Ulduar", -- [2]
				},
				[3887] = {
					"Baron Silverlaine", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[132713] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[34196] = {
					"Rune Etched Sentry", -- [1]
					"Ulduar", -- [2]
				},
				[134899] = {
					"Venomfang Lurker", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[129527] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[135834] = {
					"Vile Cloud", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[144747] = {
					"Pa'ku's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135817] = {
					"Zephyr", -- [1]
					"Havenswood (Islands 2)", -- [2]
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
				[33699] = {
					"Storm Tempered Keeper", -- [1]
					"Ulduar", -- [2]
				},
				[139698] = {
					"Clattercraw the Oracle", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[133482] = {
					"Crawler Mine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[147932] = {
					"Agitated Azershard", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[140354] = {
					"Brightscale Wind Serpent", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[132893] = {
					"Fire Spirit", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[32916] = {
					"Snaplasher", -- [1]
					"Ulduar", -- [2]
				},
				[34271] = {
					"XD-175 Compactobot", -- [1]
					"Ulduar", -- [2]
				},
				[148243] = {
					"Fallen Disciple", -- [1]
					"Battle of Dazar'alor", -- [2]
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
				[131729] = {
					"Lyco", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[122967] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
				},
				[132797] = {
					"Pinegraze Calf", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[135322] = {
					"The Golden Serpent", -- [1]
					"Kings' Rest", -- [2]
				},
				[134251] = {
					"Seneschal M'bara", -- [1]
					"Kings' Rest", -- [2]
				},
				[151653] = {
					"Void Tentacle", -- [1]
					"Uldir Scenario", -- [2]
				},
				[140690] = {
					"Dreadfang Viper", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[144690] = {
					"Mestrah", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[130404] = {
					"Vermin Trapper", -- [1]
					"Freehold", -- [2]
				},
				[135204] = {
					"Spectral Hex Priest", -- [1]
					"Kings' Rest", -- [2]
				},
				[130488] = {
					"Mech Jockey", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129529] = {
					"Blacktooth Scrapper", -- [1]
					"Freehold", -- [2]
				},
				[130024] = {
					"Soggy Shiprat", -- [1]
					"Freehold", -- [2]
				},
				[131311] = {
					"Unleashed Azerite", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134994] = {
					"Spectral Headhunter", -- [1]
					"Kings' Rest", -- [2]
				},
				[147935] = {
					"Azergem Crawler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33755] = {
					"Dark Rune Ravager", -- [1]
					"Ulduar", -- [2]
				},
				[144231] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[33819] = {
					"Twilight Frost Mage", -- [1]
					"Ulduar", -- [2]
				},
				[34288] = {
					"Salvagebot Sawblade", -- [1]
					"Ulduar", -- [2]
				},
				[33186] = {
					"Razorscale", -- [1]
					"Ulduar", -- [2]
				},
				[34191] = {
					"Trash", -- [1]
					"Ulduar", -- [2]
				},
				[142324] = {
					"Bluefin Dolphin", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[147936] = {
					"Azergem Shardback", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[122970] = {
					"Shadowblade Stalker", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134893] = {
					"Ironweb Spider", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[130489] = {
					"Dazarian Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33526] = {
					"Ironroot Lasher", -- [1]
					"Ulduar", -- [2]
				},
				[32930] = {
					"Kologarn", -- [1]
					"Ulduar", -- [2]
				},
				[3870] = {
					"Stone Sleeper", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[122969] = {
					"Zanchuli Witch-Doctor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[148194] = {
					"Icy Barrier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34267] = {
					"Parts Recovery Technician", -- [1]
					"Ulduar", -- [2]
				},
				[134894] = {
					"Ironweb Spinner", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[132868] = {
					"Congealed Azerite", -- [1]
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
				[135406] = {
					"Animated Gold", -- [1]
					"Kings' Rest", -- [2]
				},
				[136264] = {
					"Half-Finished Mummy", -- [1]
					"Kings' Rest", -- [2]
				},
				[130298] = {
					"Water Elemental", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[126845] = {
					"Captain Jolly", -- [1]
					"Freehold", -- [2]
				},
				[134895] = {
					"Ironweb Weaver", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[136828] = {
					"Witherbranch Warrior", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[134157] = {
					"Shadow-Borne Warrior", -- [1]
					"Kings' Rest", -- [2]
				},
				[74353] = {
					"Twilight Aquamancer", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[135239] = {
					"Spectral Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[129550] = {
					"Bilge Rat Padfoot", -- [1]
					"Freehold", -- [2]
				},
				[148962] = {
					"Ravenous Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137969] = {
					"Interment Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[33237] = {
					"Ulduar Colossus", -- [1]
					"Ulduar", -- [2]
				},
				[33820] = {
					"Twilight Pyromancer", -- [1]
					"Ulduar", -- [2]
				},
				[144680] = {
					"Frida Ironbellows", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33216] = {
					"Mechagnome Pilot", -- [1]
					"Ulduar", -- [2]
				},
				[145371] = {
					"Uu'nat", -- [1]
					"Crucible of Storms", -- [2]
				},
				[133943] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[140691] = {
					"Giant Dreadfang", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[34133] = {
					"Champion of Hodir", -- [1]
					"Ulduar", -- [2]
				},
				[149144] = {
					"Jaina's Tide Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144232] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130435] = {
					"Addled Thug", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140334] = {
					"Nightscale Coilfang", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[137029] = {
					"Ordnance Specialist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146945] = {
					"Swarming Voidspawn", -- [1]
					"Crucible of Storms", -- [2]
				},
				[129788] = {
					"Irontide Bonesaw", -- [1]
					"Freehold", -- [2]
				},
				[146436] = {
					"Tempting Siren", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[126847] = {
					"Captain Raoul", -- [1]
					"Freehold", -- [2]
				},
				[147614] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[130400] = {
					"Irontide Crusher", -- [1]
					"Freehold", -- [2]
				},
				[3877] = {
					"Wailing Guardsman", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[136470] = {
					"Refreshment Vendor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130661] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[75058] = {
					"Twilight Aquamancer", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[148442] = {
					"Gnomish Commando", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[77232] = {
					"Twilight Disciple", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[129469] = {
					"Deepsea Crawler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[126918] = {
					"Irontide Crackshot", -- [1]
					"Freehold", -- [2]
				},
				[148582] = {
					"Stormbound Guardian", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[131726] = {
					"Gunnolf the Ferocious", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[148441] = {
					"Gnomish Gyro-Engineer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137713] = {
					"Big Money Crab", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[147218] = {
					"Spirit of Gold", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[126848] = {
					"Captain Eudora", -- [1]
					"Freehold", -- [2]
				},
				[134005] = {
					"Shalebiter", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146409] = {
					"Lady Jaina Proudmoore", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148631] = {
					"Unexploded Ordnance", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33488] = {
					"Saronite Vapors", -- [1]
					"Ulduar", -- [2]
				},
				[129214] = {
					"Coin-Operated Crowd Pummeler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[145898] = {
					"Anointed Disciple", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[50159] = {
					"Uzi", -- [1]
					"Crucible of Storms", -- [2]
				},
				[138993] = {
					"Gurlack", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[129470] = {
					"Deepsea Crab", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33293] = {
					"XT-002 Deconstructor", -- [1]
					"Ulduar", -- [2]
				},
				[33118] = {
					"Ignis the Furnace Master", -- [1]
					"Ulduar", -- [2]
				},
				[74363] = {
					"Twilight Shadow", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[93349] = {
					"FelBane", -- [1]
					"Crucible of Storms", -- [2]
				},
				[33214] = {
					"Mechanolift 304-A", -- [1]
					"Ulduar", -- [2]
				},
				[34269] = {
					"XR-949 Salvagebot", -- [1]
					"Ulduar", -- [2]
				},
				[138994] = {
					"Timberfist", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[155432] = {
					"Enchanted Emissary", -- [1]
					"Freehold", -- [2]
				},
				[129231] = {
					"Rixxa Fluxflame", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[47137] = {
					"Mindless Horror", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[145644] = {
					"Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[47135] = {
					"Fetid Ghoul", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[137716] = {
					"Bottom Feeder", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[4958] = {
					"Haunting Spirit", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[47231] = {
					"Shadowy Attendant", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[129471] = {
					"Deepsea Sandcrawler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[50869] = {
					"Razorclaw the Butcher", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[129599] = {
					"Cutwater Knife Juggler", -- [1]
					"Freehold", -- [2]
				},
				[47141] = {
					"Dread Scryer", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[47138] = {
					"Pustulant Monstrosity", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[46964] = {
					"Lord Godfrey", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[50561] = {
					"Bloodthirsty Ghoul", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[74984] = {
					"Blindlight Murloc", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[33822] = {
					"Twilight Guardian", -- [1]
					"Ulduar", -- [2]
				},
				[74980] = {
					"Twilight Storm Mender", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[74722] = {
					"Razorshell Snapjaw", -- [1]
					"Blackfathom Deeps", -- [2]
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
				[75643] = {
					"Blindlight Murloc", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[75642] = {
					"Blindlight Bilefin", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[75640] = {
					"Blindlight Murloc", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[129600] = {
					"Bilge Rat Brinescale", -- [1]
					"Freehold", -- [2]
				},
				[148716] = {
					"Risen Soul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[137591] = {
					"Healing Tide Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[133627] = {
					"Tally Zapnabber", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[74569] = {
					"Restorative Waters", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[125828] = {
					"Pluie", -- [1]
					"Atal'Dazar", -- [2]
				},
				[75172] = {
					"Deep Terror", -- [1]
					"Blackfathom Deeps", -- [2]
				},
			},
			["cast_statusbar_texture"] = "ElvUI Norm",
			["health_animation_time_dilatation"] = 2.619999885559082,
			["minor_height_scale"] = 0.949999988079071,
			["pet_height_scale"] = 0.949999988079071,
			["patch_version"] = 9,
			["cast_statusbar_fadeout_time"] = 0.4999999701976776,
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
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["Name"] = "Aura - Invalidate Unit [Plater]",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["NpcNames"] = {
					},
					["Desc"] = "Add the buff name in the trigger box.",
					["Name"] = "Aura - Buff Alert [Plater]",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Very Important [Plater]",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Desc"] = "Add the debuff name in the trigger box.",
					["Name"] = "Aura - Debuff Alert [Plater]",
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
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Desc"] = "Show above the nameplate who is the player fixated",
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
					},
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Desc"] = "Show the energy amount above the nameplate",
					["Name"] = "UnitPower [Plater]",
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
					["Name"] = "Unit - Important [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["Icon"] = 135996,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
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
					["Name"] = "Cast - Big Alert [Plater]",
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["Icon"] = 841383,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Fixate On You [Plater]",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "NameplaterColor with Special Buff ID",
					["NpcNames"] = {
					},
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["Icon"] = 2175503,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["Name"] = "Explosion Affix M+ [Plater]",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["Icon"] = 135024,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["Name"] = "Color Change [Plater]",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["Name"] = "Aura - Border Color [Plater]",
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
					["NpcNames"] = {
					},
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
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
					["Name"] = "New Script",
					["Temp_OnHideCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["OnShowCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetWidth (envTable.OriginalWidth)\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n        envTable.OriginalWidth = nil\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    Plater.SetCastBarBorderColor (self, 1, 0, 0, 0.4)\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetWidth (envTable.OriginalWidth)\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    \n    --increase the cast bar size\n    envTable.OriginalHeight = self:GetHeight()\n    envTable.OriginalWidth = self:GetWidth()\n    local width = Plater.db.profile.plate_config.enemynpc.cast_incombat[1]\n    local height = Plater.db.profile.plate_config.enemynpc.cast_incombat[2]\n    \n    self:SetWidth (width)\n    self:SetHeight (height * envTable.CastBarHeightAdd)\n    \n    print (envTable.glowEffect:GetAlpha())\n    \nend",
					["Name"] = "M+ Important Spells [Plater]",
					["NpcNames"] = {
					},
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
					["Icon"] = 132221,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:Show() \nend\n\n\n",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:Hide() \nend\n\n\n",
					["Name"] = "Jadefire [BOD] - Fire Shield",
				}, -- [19]
			},
			["hover_highlight_alpha"] = 0.299999982118607,
			["cast_statusbar_fadein_time"] = 0.0208119247108698,
			["indicator_raidmark_scale"] = 0.699999988079071,
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
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["level_text_font"] = "Friz Quadrata TT",
					["actorname_text_font"] = "Friz Quadrata TT",
					["big_actortitle_text_font"] = "Friz Quadrata TT",
					["spellname_text_font"] = "Friz Quadrata TT",
					["click_through"] = true,
					["power_percent_text_font"] = "Friz Quadrata TT",
					["power_percent_text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
					["percent_text_font"] = "Friz Quadrata TT",
					["big_actorname_text_font"] = "Friz Quadrata TT",
				},
				["friendlyplayer"] = {
					["big_actorname_text_size"] = 10,
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["level_text_size"] = 8,
					["actorname_use_class_color"] = true,
					["cast"] = {
						120, -- [1]
					},
					["spellpercent_text_anchor"] = {
						["x"] = 1,
						["side"] = 5,
					},
					["click_through"] = false,
					["big_actorname_text_shadow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["spellpercent_text_outline"] = "NONE",
					["level_text_font"] = "Friz Quadrata TT",
					["spellname_text_color"] = {
						0.952941176470588, -- [1]
						[3] = 0.992156862745098,
					},
					["big_actorname_text_shadow_color_offset"] = {
						1, -- [1]
						-1, -- [2]
					},
					["mana_incombat"] = {
						nil, -- [1]
						4, -- [2]
					},
					["actorname_use_guild_color"] = false,
					["all_names"] = true,
					["big_actortitle_text_outline"] = "OUTLINE",
					["only_damaged"] = false,
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["big_actortitle_text_font"] = "Friz Quadrata TT",
					["spellpercent_text_size"] = 9,
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
					["level_text_alpha"] = 0.299999982118607,
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
					["mana"] = {
						nil, -- [1]
						4, -- [2]
					},
					["spellname_text_font"] = "Friz Quadrata TT",
					["big_actorname_text_outline"] = "OUTLINE",
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["actorname_text_size"] = 11,
					["percent_text_enabled"] = true,
					["actorname_use_friends_color"] = false,
					["percent_text_ooc"] = true,
					["big_actortitle_text_size"] = 10,
					["actorname_text_anchor"] = {
						["x"] = -1,
						["side"] = 1,
					},
					["spellpercent_text_enabled"] = true,
					["actorname_text_font"] = "Friz Quadrata TT",
					["percent_text_font"] = "Friz Quadrata TT",
					["buff_frame_y_offset"] = 0,
					["quest_enabled"] = true,
					["percent_text_size"] = 8,
					["power_percent_text_font"] = "Friz Quadrata TT",
					["spellname_text_size"] = 9,
					["health"] = {
						120, -- [1]
						6, -- [2]
					},
					["health_incombat"] = {
						120, -- [1]
						6, -- [2]
					},
					["percent_show_health"] = true,
					["big_actorname_text_font"] = "Friz Quadrata TT",
					["percent_text_outline"] = "NONE",
					["level_text_enabled"] = true,
				},
				["friendlynpc"] = {
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["level_text_size"] = 8,
					["cast"] = {
						120, -- [1]
						12, -- [2]
					},
					["spellpercent_text_anchor"] = {
						["x"] = 1,
						["side"] = 5,
					},
					["spellpercent_text_outline"] = "NONE",
					["level_text_font"] = "Friz Quadrata TT",
					["actorname_text_font"] = "Friz Quadrata TT",
					["quest_color"] = {
						0.5019607843137255, -- [1]
						nil, -- [2]
						nil, -- [3]
						1, -- [4]
					},
					["actorname_text_outline"] = "OUTLINE",
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["big_actortitle_text_font"] = "Friz Quadrata TT",
					["percent_text_ooc"] = true,
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
					["power_percent_text_font"] = "Friz Quadrata TT",
					["spellname_text_font"] = "Friz Quadrata TT",
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["actorname_text_size"] = 11,
					["percent_text_enabled"] = true,
					["spellpercent_text_size"] = 9,
					["big_actorname_text_size"] = 10,
					["level_text_alpha"] = 0.299999982118607,
					["percent_text_size"] = 8,
					["big_actortitle_text_size"] = 10,
					["percent_text_font"] = "Friz Quadrata TT",
					["percent_text_outline"] = "NONE",
					["big_actorname_text_font"] = "Friz Quadrata TT",
					["spellname_text_color"] = {
						0.952941176470588, -- [1]
						[3] = 0.992156862745098,
					},
					["spellname_text_size"] = 9,
					["health"] = {
						120, -- [1]
					},
					["percent_show_health"] = true,
					["spellpercent_text_enabled"] = true,
					["health_incombat"] = {
						nil, -- [1]
						12, -- [2]
					},
					["actorname_text_anchor"] = {
						["x"] = -1,
						["side"] = 1,
					},
					["level_text_enabled"] = true,
				},
				["enemyplayer"] = {
					["big_actorname_text_size"] = 10,
					["spellpercent_text_font"] = "Friz Quadrata TT",
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
					["level_text_font"] = "Friz Quadrata TT",
					["actorname_text_font"] = "Friz Quadrata TT",
					["mana_incombat"] = {
						120, -- [1]
						1, -- [2]
					},
					["all_names"] = true,
					["actorname_text_outline"] = "OUTLINE",
					["actorname_text_spacing"] = 10,
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["big_actortitle_text_font"] = "Friz Quadrata TT",
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
					["spellname_text_font"] = "Friz Quadrata TT",
					["spellname_text_color"] = {
						0.952941176470588, -- [1]
						[3] = 0.992156862745098,
					},
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["mana"] = {
						120, -- [1]
						1, -- [2]
					},
					["power_percent_text_font"] = "Friz Quadrata TT",
					["actorname_text_anchor"] = {
						["y"] = -3,
						["x"] = -1,
						["side"] = 1,
					},
					["percent_text_size"] = 8,
					["big_actortitle_text_size"] = 10,
					["percent_text_font"] = "Friz Quadrata TT",
					["quest_enabled"] = true,
					["spellname_text_size"] = 9,
					["health"] = {
						120, -- [1]
					},
					["big_actorname_text_font"] = "Friz Quadrata TT",
					["level_text_alpha"] = 0.299999982118607,
					["percent_text_outline"] = "NONE",
					["actorname_text_size"] = 11,
				},
				["enemynpc"] = {
					["spellpercent_text_font"] = "Friz Quadrata TT",
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
					["level_text_font"] = "Friz Quadrata TT",
					["actorname_text_font"] = "Friz Quadrata TT",
					["actorname_text_outline"] = "OUTLINE",
					["big_actortitle_text_font"] = "Friz Quadrata TT",
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
					["spellname_text_font"] = "Friz Quadrata TT",
					["big_actorname_text_font"] = "Friz Quadrata TT",
					["power_percent_text_font"] = "Friz Quadrata TT",
					["spellpercent_text_size"] = 9,
					["actorname_text_anchor"] = {
						["y"] = -3,
						["x"] = -1,
						["side"] = 1,
					},
					["percent_text_size"] = 8,
					["percent_text_font"] = "Friz Quadrata TT",
					["percent_text_outline"] = "NONE",
					["health_incombat"] = {
						nil, -- [1]
						14, -- [2]
					},
					["health"] = {
						120, -- [1]
						14, -- [2]
					},
					["level_text_alpha"] = 0.299999982118607,
					["spellname_text_color"] = {
						0.952941176470588, -- [1]
						[3] = 0.992156862745098,
					},
				},
			},
			["aura_y_offset"] = 3,
			["use_ui_parent"] = true,
			["ui_parent_cast_strata"] = "DIALOG",
			["first_run2"] = true,
			["aura_timer_text_font"] = "Expressway",
			["npc_cache"] = {
				[163678] = {
					"Clotted Corruption", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134139] = {
					"Shrine Templar", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[151658] = {
					"Strider Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[152809] = {
					"Alx'kov the Infested", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[153065] = {
					"Voidbound Ravager", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[151147] = {
					"Hati", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134012] = {
					"Taskmaster Askari", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136186] = {
					"Tidesage Spiritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[151659] = {
					"Rocket Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[157158] = {
					"Cultist Slavedriver", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[153194] = {
					"Briny Bubble", -- [1]
					"The Eternal Palace", -- [2]
				},
				[158437] = {
					"Fallen Taskmaster", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[158565] = {
					"Naros", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[147440] = {
					"Blazing Fireguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138489] = {
					"Shadow of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[152939] = {
					"Boundless Corruption", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[161251] = {
					"Cultist Sycophant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[151149] = {
					"Hati", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150254] = {
					"Scraphound", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[144244] = {
					"The Platinum Pummeler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[142454] = {
					"Ashtail Bandicoon", -- [1]
					"Freehold", -- [2]
				},
				[161124] = {
					"Urg'roth, Breaker of Heroes", -- [1]
					"Siege of Boralus", -- [2]
				},
				[131585] = {
					"Enthralled Guard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[120651] = {
					"Explosives", -- [1]
					"Siege of Boralus", -- [2]
				},
				[154347] = {
					"Void-Twisted Corruptor", -- [1]
					"Eastern Kingdoms - Vermillion Redoubt - HoA Scenario", -- [2]
				},
				[131009] = {
					"Spirit of Gold", -- [1]
					"Atal'Dazar", -- [2]
				},
				[132481] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[131586] = {
					"Banquet Steward", -- [1]
					"Waycrest Manor", -- [2]
				},
				[144246] = {
					"K.U.-J.0.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[156650] = {
					"Dark Manifestation", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[147827] = {
					"7th Legion Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[131587] = {
					"Bewitched Captain", -- [1]
					"Waycrest Manor", -- [2]
				},
				[161510] = {
					"Mindrend Tentacle", -- [1]
					"Kings' Rest", -- [2]
				},
				[156523] = {
					"Maut", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155628] = {
					"Azsh'ari Oracle", -- [1]
					"The Eternal Palace", -- [2]
				},
				[126023] = {
					"Harbor Saurid", -- [1]
					"The Underrot", -- [2]
				},
				[138493] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[144759] = {
					"Keeper Dagda", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[130435] = {
					"Addled Thug", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[144248] = {
					"Head Machinist Sparkflux", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[135169] = {
					"Spirit Drain Totem", -- [1]
					"The Underrot", -- [2]
				},
				[161895] = {
					"Thing From Beyond", -- [1]
					"Freehold", -- [2]
				},
				[133379] = {
					"Adderis", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[158315] = {
					"Eye of Chaos", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[144249] = {
					"Omega Buster", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[126983] = {
					"Harlan Sweete", -- [1]
					"Freehold", -- [2]
				},
				[142587] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				[130436] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[162664] = {
					"Aqir Swarmer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146552] = {
					"Kul Tiran Tideweaver", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[141565] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[156143] = {
					"Voidcrazed Hulk", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131847] = {
					"Waycrest Reveler", -- [1]
					"Waycrest Manor", -- [2]
				},
				[145274] = {
					"Yalat's Bulwark", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138369] = {
					"Footbomb Hooligan", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[137474] = {
					"King Timalji", -- [1]
					"Kings' Rest", -- [2]
				},
				[130437] = {
					"Mine Rat", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[128455] = {
					"T'lonja", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134150] = {
					"Runecarver Sorn", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[156145] = {
					"Burrowing Appendage", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131849] = {
					"Crazed Marksman", -- [1]
					"Waycrest Manor", -- [2]
				},
				[163690] = {
					"Shath'Yar Scribe", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155634] = {
					"Bound Storm", -- [1]
					"The Eternal Palace", -- [2]
				},
				[133384] = {
					"Merektha", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[144765] = {
					"Asithra Diresong", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[156146] = {
					"Voidbound Shieldbearer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131850] = {
					"Maddened Survivalist", -- [1]
					"Waycrest Manor", -- [2]
				},
				[134024] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				[155763] = {
					"Darkweaver Kar'dress", -- [1]
					"The Eternal Palace", -- [2]
				},
				[137989] = {
					"Embalming Fluid", -- [1]
					"Kings' Rest", -- [2]
				},
				[135048] = {
					"Gorestained Piglet", -- [1]
					"Waycrest Manor", -- [2]
				},
				[155764] = {
					"Rak'sha the Swift", -- [1]
					"The Eternal Palace", -- [2]
				},
				[137478] = {
					"Queen Wasi", -- [1]
					"Kings' Rest", -- [2]
				},
				[132491] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[152312] = {
					"Azsh'ari Witch", -- [1]
					"The Eternal Palace", -- [2]
				},
				[135049] = {
					"Dreadwing Raven", -- [1]
					"Waycrest Manor", -- [2]
				},
				[139269] = {
					"Gloom Horror", -- [1]
					"Waycrest Manor", -- [2]
				},
				[157811] = {
					"Lilliam Sparkspindle", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[128649] = {
					"Sergeant Bainbridge", -- [1]
					"Siege of Boralus", -- [2]
				},
				[152313] = {
					"Dreadcoil Hulk", -- [1]
					"The Eternal Palace", -- [2]
				},
				[128969] = {
					"Ashvane Commander", -- [1]
					"Siege of Boralus", -- [2]
				},
				[138247] = {
					"Irontide Marauder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[157812] = {
					"Billibub Cogspinner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135562] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[159219] = {
					"Umbral Seer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[158452] = {
					"Mindtwist Tendril", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[150396] = {
					"Aerial Unit R-21/X", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[136330] = {
					"Soul Thorns", -- [1]
					"Waycrest Manor", -- [2]
				},
				[133389] = {
					"Galvazzt", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[147967] = {
					"7th Legion Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[162417] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150397] = {
					"King Mechagon", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[134157] = {
					"Shadow-Borne Warrior", -- [1]
					"Kings' Rest", -- [2]
				},
				[152699] = {
					"Voidbound Berserker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[150142] = {
					"Scrapbone Trashtosser", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[136076] = {
					"Agitated Nimbus", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[134158] = {
					"Shadow-Borne Champion", -- [1]
					"Kings' Rest", -- [2]
				},
				[128651] = {
					"Hadal Darkfathom", -- [1]
					"Siege of Boralus", -- [2]
				},
				[161140] = {
					"Bwemba", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[129802] = {
					"Earthrager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[158327] = {
					"Crackling Shard", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137484] = {
					"King A'akul", -- [1]
					"Kings' Rest", -- [2]
				},
				[129227] = {
					"Azerokk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[158328] = {
					"Il'gynoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131858] = {
					"Thornguard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[129547] = {
					"Blacktooth Knuckleduster", -- [1]
					"Freehold", -- [2]
				},
				[148610] = {
					"Druid of the Branch", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[137485] = {
					"Bloodsworn Agent", -- [1]
					"Kings' Rest", -- [2]
				},
				[127757] = {
					"Reanimated Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[54320] = {
					"Birdie", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[162933] = {
					"Thought Harvester", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137486] = {
					"Queen Patlaa", -- [1]
					"Kings' Rest", -- [2]
				},
				[137614] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[150146] = {
					"Scrapbone Shaman", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[137103] = {
					"Blood Visage", -- [1]
					"The Underrot", -- [2]
				},
				[138254] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				[152704] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[137487] = {
					"Skeletal Hunting Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[160249] = {
					"Spike Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[136976] = {
					"T'zala", -- [1]
					"Kings' Rest", -- [2]
				},
				[138255] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[122963] = {
					"Rezan", -- [1]
					"Atal'Dazar", -- [2]
				},
				[127119] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[154240] = {
					"Azshara's Devoted", -- [1]
					"The Eternal Palace", -- [2]
				},
				[150276] = {
					"Heavy Scrapbot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[158588] = {
					"Gamon", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[137233] = {
					"Plague Toad", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[148614] = {
					"Kul Tiran Cannoneer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[153090] = {
					"Lady Venomtongue", -- [1]
					"The Eternal Palace", -- [2]
				},
				[123731] = {
					"Horse", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131863] = {
					"Raal the Gluttonous", -- [1]
					"Waycrest Manor", -- [2]
				},
				[136083] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[148615] = {
					"Div'yane", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[151812] = {
					"Detect-o-Bot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[153091] = {
					"Serena Scarscale", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157439] = {
					"Fury of N'Zoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[129550] = {
					"Bilge Rat Padfoot", -- [1]
					"Freehold", -- [2]
				},
				[156161] = {
					"Inquisitor Gnshal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[122965] = {
					"Vol'kaal", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134423] = {
					"Abyss Dweller", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[129231] = {
					"Rixxa Fluxflame", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133912] = {
					"Bloodsworn Defiler", -- [1]
					"The Underrot", -- [2]
				},
				[136214] = {
					"Windspeaker Heldis", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[148618] = {
					"Archdruid Andrenius", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[136470] = {
					"Refreshment Vendor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157442] = {
					"Gaze of Madness", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134041] = {
					"Infected Peasant", -- [1]
					"Waycrest Manor", -- [2]
				},
				[135192] = {
					"Honored Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[148619] = {
					"Echo of Akunda", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129232] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[150154] = {
					"Saurolisk Bonenipper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[130575] = {
					"Wandering Axebeak", -- [1]
					"Atal'Dazar", -- [2]
				},
				[154758] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[162303] = {
					"Aqir Swarmkeeper", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[161408] = {
					"Malicious Growth", -- [1]
					"Siege of Boralus", -- [2]
				},
				[136984] = {
					"Reban", -- [1]
					"Kings' Rest", -- [2]
				},
				[157700] = {
					"Agustus Moulaine", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135322] = {
					"The Golden Serpent", -- [1]
					"Kings' Rest", -- [2]
				},
				[146831] = {
					"Kul Tiran Stormbringer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[153097] = {
					"Voidbound Shaman", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[127315] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[146320] = {
					"Prelate Za'lan", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129553] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				[148622] = {
					"Echo of Kimbul", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137625] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[139799] = {
					"Ironhull Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[130896] = {
					"Blackout Barrel", -- [1]
					"Freehold", -- [2]
				},
				[163712] = {
					"Dying Voidspawn", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134173] = {
					"Animated Droplet", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[136347] = {
					"Tidesage Initiate", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[127124] = {
					"Freehold Barhand", -- [1]
					"Freehold", -- [2]
				},
				[137626] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[139800] = {
					"Galecaller Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[155273] = {
					"Garval the Vanquisher", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157447] = {
					"Fanatical Cultist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
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
				[134686] = {
					"Mature Krolusk", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[158343] = {
					"Organ of Corruption", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[147218] = {
					"Spirit of Gold", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[122969] = {
					"Zanchuli Witch-Doctor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[155275] = {
					"Tideshaper Korvess", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157449] = {
					"Sinister Soulcarver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157705] = {
					"Stormwind Orphan", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[152718] = {
					"Alleria Windrunner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[161286] = {
					"Dark Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155276] = {
					"Bursting Cragfish", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157450] = {
					"Spellbound Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157706] = {
					"Stormwind Orphan", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[122970] = {
					"Shadowblade Stalker", -- [1]
					"Atal'Dazar", -- [2]
				},
				[131492] = {
					"Devout Blood Priest", -- [1]
					"The Underrot", -- [2]
				},
				[157451] = {
					"Iron-Willed Enforcer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[145303] = {
					"Kaldorei Glaive Thrower", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[135329] = {
					"Matron Bryndle", -- [1]
					"Waycrest Manor", -- [2]
				},
				[155917] = {
					"Azsh'ari Stormcaller", -- [1]
					"The Eternal Palace", -- [2]
				},
				[98035] = {
					"Dreadstalker", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[161416] = {
					"Aqir Shadowcrafter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157452] = {
					"Nightmare Antigen", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150547] = {
					"Scrapbone Grunter", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[136353] = {
					"Colossal Tentacle", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[158092] = {
					"Fallen Heartpiercer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134691] = {
					"Static-charged Dervish", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[150292] = {
					"Mechagon Cavalry", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[152722] = {
					"Fallen Voidspeaker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[155919] = {
					"Stormling", -- [1]
					"The Eternal Palace", -- [2]
				},
				[150165] = {
					"Slime Elemental", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[135971] = {
					"Faithless Conscript", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[135204] = {
					"Spectral Hex Priest", -- [1]
					"Kings' Rest", -- [2]
				},
				[140447] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[136483] = {
					"Ashvane Deckhand", -- [1]
					"Siege of Boralus", -- [2]
				},
				[129366] = {
					"Bilge Rat Buccaneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[158478] = {
					"Corruption Tumor", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[139425] = {
					"Crazed Incubator", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[152852] = {
					"Pashmar the Fanatical", -- [1]
					"The Eternal Palace", -- [2]
				},
				[144796] = {
					"High Tinker Mekkatorque", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147098] = {
					"Spirit of Xuen", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138019] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[122973] = {
					"Dazar'ai Confessor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[152853] = {
					"Silivaz the Zealous", -- [1]
					"The Eternal Palace", -- [2]
				},
				[135846] = {
					"Sand-Crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[134056] = {
					"Aqu'sirr", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[129559] = {
					"Cutwater Duelist", -- [1]
					"Freehold", -- [2]
				},
				[156818] = {
					"Wrathion", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[158056] = {
					"Rat", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[155156] = {
					"Jaina Proudmoore", -- [1]
					"The Eternal Palace", -- [2]
				},
				[150169] = {
					"Toxic Lurker", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[135975] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[159632] = {
					"Cultist Shadowblade", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[125828] = {
					"Zetapally", -- [1]
					"Atal'Dazar", -- [2]
				},
				[155791] = {
					"Horrific Shrieker", -- [1]
					"The Eternal Palace", -- [2]
				},
				[153064] = {
					"Overzealous Hulk", -- [1]
					"The Eternal Palace", -- [2]
				},
				[164189] = {
					"Horrific Figment", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[139284] = {
					"Plague Doctor", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[149611] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[122968] = {
					"Yazma", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134058] = {
					"Galecaller Faye", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[160904] = {
					"Image of Absolution", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[156820] = {
					"Dod", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[137511] = {
					"Bilge Rat Cutthroat", -- [1]
					"Siege of Boralus", -- [2]
				},
				[155158] = {
					"First Arcanist Thalyssra", -- [1]
					"The Eternal Palace", -- [2]
				},
				[152089] = {
					"Thrall", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[162432] = {
					"Awakened Terror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[69946] = {
					"FakeRalph", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[163947] = {
					"Psychophage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153196] = {
					"Scrapbone Grunter", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[147614] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[156949] = {
					"Armsmaster Terenson", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129601] = {
					"Cutwater Harpooner", -- [1]
					"Freehold", -- [2]
				},
				[148243] = {
					"Fallen Disciple", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129369] = {
					"Irontide Raider", -- [1]
					"Siege of Boralus", -- [2]
				},
				[145185] = {
					"Gnomercy 4.U.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[134060] = {
					"Lord Stormsong", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[151579] = {
					"Shield Generator", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[150159] = {
					"King Gobbamak", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[161502] = {
					"Ravenous Fleshfiend", -- [1]
					"Siege of Boralus", -- [2]
				},
				[148488] = {
					"Unliving Augur", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[156131] = {
					"Zanj'ir Myrmidon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134828] = {
					"Aqualing", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[146436] = {
					"Tempting Siren", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149144] = {
					"Jaina's Tide Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[159764] = {
					"Jesh'ra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[149535] = {
					"Icebound Image", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[155619] = {
					"Zanj'ir Honor Guard", -- [1]
					"The Eternal Palace", -- [2]
				},
				[152987] = {
					"Faceless Willbreaker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134701] = {
					"Blood Effigy", -- [1]
					"The Underrot", -- [2]
				},
				[129370] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[151325] = {
					"Alarm-o-Bot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[130521] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[151581] = {
					"Horrific Vision", -- [1]
					"The Eternal Palace", -- [2]
				},
				[153755] = {
					"Naeno Megacrash", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[147745] = {
					"The Indomitable", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[152988] = {
					"Faceless Shadowcaller", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[155162] = {
					"Lor'themar Theron", -- [1]
					"The Eternal Palace", -- [2]
				},
				[153244] = {
					"Oblivion Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[133935] = {
					"Animated Guardian", -- [1]
					"Kings' Rest", -- [2]
				},
				[134063] = {
					"Brother Ironhull", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[148621] = {
					"Jek'kwa", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[150143] = {
					"Scrapbone Grinder", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[135470] = {
					"Aka'ali the Conqueror", -- [1]
					"Kings' Rest", -- [2]
				},
				[161173] = {
					"Abyssal Watcher", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[154744] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[129371] = {
					"Riptide Shredder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[156130] = {
					"Lesser Zoatroid", -- [1]
					"The Eternal Palace", -- [2]
				},
				[130522] = {
					"Freehold Shipmate", -- [1]
					"Freehold", -- [2]
				},
				[159767] = {
					"Sanguimar", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146596] = {
					"Darkscale Myrmidon", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[137517] = {
					"Ashvane Destroyer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[132530] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[150293] = {
					"Mechagon Prowler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[145644] = {
					"Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[26125] = {
					"Plaguerobber", -- [1]
					"The Eternal Palace", -- [2]
				},
				[160663] = {
					"Essence of Nightmare", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[159768] = {
					"Deresh of the Nothingness", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150168] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[135472] = {
					"Zanazal the Wise", -- [1]
					"Kings' Rest", -- [2]
				},
				[144807] = {
					"Ravenous Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[153119] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[129372] = {
					"Blacktar Bomber", -- [1]
					"Siege of Boralus", -- [2]
				},
				[157467] = {
					"Void Ascendant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144296] = {
					"Spider Tank", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[155618] = {
					"Zanj'ir Huntress", -- [1]
					"The Eternal Palace", -- [2]
				},
				[88708] = {
					"Gara", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144680] = {
					"Frida Ironbellows", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[132532] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[138281] = {
					"Faceless Corruptor", -- [1]
					"The Underrot", -- [2]
				},
				[139949] = {
					"Plague Doctor", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[159514] = {
					"Blood of Ny'alotha", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[130012] = {
					"Irontide Ravager", -- [1]
					"Freehold", -- [2]
				},
				[55659] = {
					"Wild Imp", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153760] = {
					"Enthralled Footman", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135474] = {
					"Thistle Acolyte", -- [1]
					"Waycrest Manor", -- [2]
				},
				[153377] = {
					"Goop", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[144876] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129373] = {
					"Dockhound Packmaster", -- [1]
					"Siege of Boralus", -- [2]
				},
				[148262] = {
					"Tidewater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144298] = {
					"Defense Bot Mk III", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[147495] = {
					"Rastari Enforcer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[150297] = {
					"Mechagon Renormalizer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[137521] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				[134390] = {
					"Sand-crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[133685] = {
					"Befouled Spirit", -- [1]
					"The Underrot", -- [2]
				},
				[129598] = {
					"Freehold Pack Mule", -- [1]
					"Freehold", -- [2]
				},
				[148631] = {
					"Unexploded Ordnance", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144299] = {
					"Workshop Defender", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[157813] = {
					"Sprite Jumpsprocket", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[146326] = {
					"Headhunter Gal'wana", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[133430] = {
					"Venture Co. Mastermind", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[147439] = {
					"Molten Hound", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145898] = {
					"Anointed Disciple", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144747] = {
					"Pa'ku's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134389] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[144300] = {
					"Mechagon Citizen", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[162715] = {
					"Fanatical Cultist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[130653] = {
					"Wanton Sapper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[59764] = {
					"Healing Tide Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[129758] = {
					"Irontide Grenadier", -- [1]
					"Freehold", -- [2]
				},
				[162331] = {
					"Corrupted Neuron", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[158367] = {
					"Basher Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133943] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[147370] = {
					"Bladeguard Kaja", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146409] = {
					"Lady Jaina Proudmoore", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[76946] = {
					"弗特莱", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146731] = {
					"Zombie Dust Totem", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144767] = {
					"Gonk's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144941] = {
					"Akunda's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[161437] = {
					"Explosive Scarab", -- [1]
					"Siege of Boralus", -- [2]
				},
				[133944] = {
					"Aspix", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[162716] = {
					"Spellbound Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[148522] = {
					"Ice Block", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[126848] = {
					"Captain Eudora", -- [1]
					"Freehold", -- [2]
				},
				[89] = {
					"Infernal", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[148611] = {
					"Yoru'cha", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144942] = {
					"Spark Bot", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148625] = {
					"Echo of Krag'wa", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[163612] = {
					"Voidspawn Annihilator", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[162717] = {
					"Sinister Soulcarver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134388] = {
					"A Knot of Snakes", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[133432] = {
					"Venture Co. Alchemist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[162305] = {
					"Aqir Heartpiercer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[103673] = {
					"Darkglare", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144637] = {
					"Grong", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[159224] = {
					"Gryth'ax the Executioner", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157475] = {
					"Synthesis Growth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157603] = {
					"Void Globule", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[32517] = {
					"MT", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155813] = {
					"Court Attendant", -- [1]
					"The Eternal Palace", -- [2]
				},
				[69943] = {
					"Gumi", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[122972] = {
					"Dazar'ai Augur", -- [1]
					"Atal'Dazar", -- [2]
				},
				[38346] = {
					"Xdrake", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[158371] = {
					"Zardeth of the Black Claw", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[17252] = {
					"Leeshashak", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[162719] = {
					"Void Ascendant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[136249] = {
					"Guardian Elemental", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[156837] = {
					"Valeera Sanguinar", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[133436] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[154663] = {
					"Gnome-Eating Droplet", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[160871] = {
					"Possessed Package", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[130400] = {
					"Irontide Crusher", -- [1]
					"Freehold", -- [2]
				},
				[162647] = {
					"Willing Sacrifice", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157605] = {
					"Burrowing Appendage", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136250] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[152874] = {
					"Vez'okk the Lightless", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[144690] = {
					"Mestrah", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[155278] = {
					"Shimmerskin Pufferfish", -- [1]
					"The Eternal Palace", -- [2]
				},
				[160291] = {
					"Ashwalker Assassin", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[158373] = {
					"Roberto Pupellyverbos", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[155432] = {
					"Enchanted Emissary", -- [1]
					"The Underrot", -- [2]
				},
				[147376] = {
					"Barrier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[155688] = {
					"Azsh'ari Frostbinder", -- [1]
					"The Eternal Palace", -- [2]
				},
				[122984] = {
					"Dazar'ai Colossus", -- [1]
					"Atal'Dazar", -- [2]
				},
				[129788] = {
					"Irontide Bonesaw", -- [1]
					"Freehold", -- [2]
				},
				[148254] = {
					"Frost Shard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[150190] = {
					"HK-8 Aerial Oppression Unit", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[152236] = {
					"Lady Ashvane", -- [1]
					"The Eternal Palace", -- [2]
				},
				[155433] = {
					"Void-Touched Emissary", -- [1]
					"The Underrot", -- [2]
				},
				[157607] = {
					"Faceless Shadowcaller", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[155689] = {
					"Zanj'ir Gladiator", -- [1]
					"The Eternal Palace", -- [2]
				},
				[141495] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[146553] = {
					"Kul Tiran Strongarm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[151657] = {
					"Bomb Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[157608] = {
					"Faceless Willbreaker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[158375] = {
					"Corruptor Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155434] = {
					"Emissary of the Tides", -- [1]
					"The Underrot", -- [2]
				},
				[163746] = {
					"Walkie Shockie X1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[155900] = {
					"Zsal'iss", -- [1]
					"The Eternal Palace", -- [2]
				},
				[50815] = {
					"Skarr", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144693] = {
					"Manceroy Flamefist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[155629] = {
					"Azsh'ari Stormbinder", -- [1]
					"The Eternal Palace", -- [2]
				},
				[155272] = {
					"Blackwater Oracle", -- [1]
					"The Eternal Palace", -- [2]
				},
				[158376] = {
					"Psychus", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[24207] = {
					"Army of the Dead", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157609] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135231] = {
					"Spectral Brute", -- [1]
					"Kings' Rest", -- [2]
				},
				[137405] = {
					"Gripping Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[129699] = {
					"Ludwig Von Tortollan", -- [1]
					"Freehold", -- [2]
				},
				[131383] = {
					"Sporecaller Zancha", -- [1]
					"The Underrot", -- [2]
				},
				[155271] = {
					"Abyssal Spearhunter", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157354] = {
					"Vexiona", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155814] = {
					"Eldritch Understudy", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157610] = {
					"K'thir Dominator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[146485] = {
					"Nevara Nightshade", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[122986] = {
					"Wild Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[132126] = {
					"Gilded Priestess", -- [1]
					"Atal'Dazar", -- [2]
				},
				[152159] = {
					"Zoatroid", -- [1]
					"The Eternal Palace", -- [2]
				},
				[155768] = {
					"Squallbinder Mal'ur", -- [1]
					"The Eternal Palace", -- [2]
				},
				[146102] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144293] = {
					"Waste Processing Unit", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[58959] = {
					"Piple", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155899] = {
					"Sak'ja", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134338] = {
					"Tidesage Enforcer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[162828] = {
					"Corrosive Digester", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[160404] = {
					"Angry Bear Rug Spirit", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[150195] = {
					"Gnome-Eating Slime", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[146103] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149556] = {
					"Eternal Enforcer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[157612] = {
					"Eye of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135234] = {
					"Diseased Mastiff", -- [1]
					"Waycrest Manor", -- [2]
				},
				[160937] = {
					"Night Terror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155656] = {
					"Misha", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[130404] = {
					"Vermin Trapper", -- [1]
					"Freehold", -- [2]
				},
				[159275] = {
					"Portal Keeper", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[146104] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138048] = {
					"Training Dummy", -- [1]
					"Waycrest Manor", -- [2]
				},
				[157613] = {
					"Maw of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135235] = {
					"Spectral Beastmaster", -- [1]
					"Kings' Rest", -- [2]
				},
				[155657] = {
					"Huffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[155951] = {
					"Ruffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131527] = {
					"Lord Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				[155738] = {
					"Rallying Banner", -- [1]
					"The Eternal Palace", -- [2]
				},
				[156795] = {
					"SI:7 Informant", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[157486] = {
					"Horrific Hemorrhage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[63508] = {
					"Xuen", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[149558] = {
					"Jaina's Tide Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[69792] = {
					"Choplo", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155952] = {
					"Suffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136643] = {
					"Azerite Extractor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157231] = {
					"Shad'har the Insatiable", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[159405] = {
					"Aqir Scarab", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157614] = {
					"Tentacle of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131825] = {
					"Sister Briar", -- [1]
					"Waycrest Manor", -- [2]
				},
				[128551] = {
					"Irontide Mastiff", -- [1]
					"Freehold", -- [2]
				},
				[135365] = {
					"Matron Alma", -- [1]
					"Waycrest Manor", -- [2]
				},
				[155953] = {
					"C'Thuffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[145851] = {
					"Kaldorei Hippogryph Rider", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[106321] = {
					"Tailwind Totem", -- [1]
					"The Eternal Palace", -- [2]
				},
				[152816] = {
					"Stormling", -- [1]
					"The Eternal Palace", -- [2]
				},
				[136005] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[163841] = {
					"Amalgamation of Flesh", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146491] = {
					"Phantom of Retribution", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148665] = {
					"Rastari Royal Guard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[131402] = {
					"Underrot Tick", -- [1]
					"The Underrot", -- [2]
				},
				[134599] = {
					"Imbued Stormcaller", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[153141] = {
					"Endless Hunger Totem", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153059] = {
					"Aethanel", -- [1]
					"The Eternal Palace", -- [2]
				},
				[136006] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134144] = {
					"Living Current", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[146492] = {
					"Phantom of Rage", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[150712] = {
					"Trixie Tazer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[154524] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[134600] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[135240] = {
					"Soul Essence", -- [1]
					"Waycrest Manor", -- [2]
				},
				[131824] = {
					"Sister Solena", -- [1]
					"Waycrest Manor", -- [2]
				},
				[132299] = {
					"Angry Treant", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[153526] = {
					"Aqir Swarmer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[146493] = {
					"Phantom of Slaughter", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136391] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[161571] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135989] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[144611] = {
					"Coralback Scuttler", -- [1]
					"The Eternal Palace", -- [2]
				},
				[146366] = {
					"Molten Hound", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146401] = {
					"Darkscale Dig-Slave", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[153527] = {
					"Aqir Swarmleader", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136264] = {
					"Half-Finished Mummy", -- [1]
					"Kings' Rest", -- [2]
				},
				[129640] = {
					"Snarling Dockhound", -- [1]
					"Siege of Boralus", -- [2]
				},
				[156980] = {
					"Essence of Void", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134602] = {
					"Shrouded Fang", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[130024] = {
					"Soggy Shiprat", -- [1]
					"Freehold", -- [2]
				},
				[133835] = {
					"Feral Bloodswarmer", -- [1]
					"The Underrot", -- [2]
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
				[126919] = {
					"Irontide Stormcaller", -- [1]
					"Freehold", -- [2]
				},
				[148797] = {
					"Magus of the Dead", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[145337] = {
					"Sandclaw Crab", -- [1]
					"The Eternal Palace", -- [2]
				},
				[130635] = {
					"Stonefury", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157365] = {
					"Crackling Stalker", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153401] = {
					"K'thir Dominator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[416] = {
					"Jakyal", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[126918] = {
					"Irontide Crackshot", -- [1]
					"Freehold", -- [2]
				},
				[153335] = {
					"Potent Spark", -- [1]
					"The Eternal Palace", -- [2]
				},
				[151476] = {
					"Blastatron X-80", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[417] = {
					"Jhaaphom", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157238] = {
					"Prophet Skitra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157366] = {
					"Void Hunter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[129529] = {
					"Blacktooth Scrapper", -- [1]
					"Freehold", -- [2]
				},
				[136139] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133836] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[157594] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[146753] = {
					"Kul Tiran Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[153531] = {
					"Aqir Bonecrusher", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[144963] = {
					"Kimbul's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[151613] = {
					"Anti-Personnel Squirrel", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[149311] = {
					"Shandris Feathermoon", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[146370] = {
					"Dark Iron Vanguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[158774] = {
					"Broken Citizen", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[156577] = {
					"Therum Deepforge", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[130661] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[156089] = {
					"Aqir Venomweaver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[134251] = {
					"Seneschal M'bara", -- [1]
					"Kings' Rest", -- [2]
				},
				[148673] = {
					"Vessel of Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149312] = {
					"Ferocious Swiftclaw", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[138187] = {
					"Grotesque Horror", -- [1]
					"The Underrot", -- [2]
				},
				[158136] = {
					"Inquisitor Darkspeak", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[151742] = {
					"Void-Twisted Invader", -- [1]
					"Eastern Kingdoms - Vermillion Redoubt - HoA Scenario", -- [2]
				},
				[45896] = {
					"Crocolisk", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144837] = {
					"Darkshore Stag", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[131666] = {
					"Coven Thornshaper", -- [1]
					"Waycrest Manor", -- [2]
				},
				[157268] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[134991] = {
					"Sandfury Stonefist", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[149441] = {
					"Frozen Ballista", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149569] = {
					"Dazari Worshipper", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[162306] = {
					"Aqir Drone", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146756] = {
					"Energized Storm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[160183] = {
					"Void Fanatic", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135759] = {
					"Earthwall Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[144071] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[138061] = {
					"Venture Co. Longshoreman", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[132051] = {
					"Blood Tick", -- [1]
					"The Underrot", -- [2]
				},
				[158035] = {
					"Magister Umbric", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[152311] = {
					"Zanj'ir Myrmidon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[152128] = {
					"Orgozoa", -- [1]
					"The Eternal Palace", -- [2]
				},
				[144839] = {
					"Whitetail Doe", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[154174] = {
					"Horrific Summoner", -- [1]
					"The Eternal Palace", -- [2]
				},
				[159417] = {
					"Demented Knife-Twister", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134993] = {
					"Mchimba the Embalmer", -- [1]
					"Kings' Rest", -- [2]
				},
				[152512] = {
					"Stormwraith", -- [1]
					"The Eternal Palace", -- [2]
				},
				[149635] = {
					"Blooming Protector", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[153022] = {
					"Snang", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[157349] = {
					"Void Boar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[144840] = {
					"Mottled Fawn", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[135761] = {
					"Thundering Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[134994] = {
					"Spectral Headhunter", -- [1]
					"Kings' Rest", -- [2]
				},
				[138063] = {
					"Posh Vacationer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157825] = {
					"Crazed Tormenter", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131436] = {
					"Chosen Blood Matron", -- [1]
					"The Underrot", -- [2]
				},
				[127879] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[131670] = {
					"Heartsbane Vinetwister", -- [1]
					"Waycrest Manor", -- [2]
				},
				[148443] = {
					"Defense-A-Bot", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134739] = {
					"Purification Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[61146] = {
					"Black Ox Statue", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[138064] = {
					"Posh Vacationer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129517] = {
					"Reanimated Raptor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[6503] = {
					"Scalehide", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[136934] = {
					"Weapons Tester", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134612] = {
					"Grasping Tentacles", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[145865] = {
					"Worgen Musketeer", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[144970] = {
					"Kaldorei Archer", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[126832] = {
					"Skycap'n Kragg", -- [1]
					"Freehold", -- [2]
				},
				[134284] = {
					"Fallen Deathspeaker", -- [1]
					"The Underrot", -- [2]
				},
				[160699] = {
					"Angry Mailemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[158781] = {
					"Shredded Psyche", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134331] = {
					"King Rahu'ai", -- [1]
					"Kings' Rest", -- [2]
				},
				[137516] = {
					"Ashvane Invader", -- [1]
					"Siege of Boralus", -- [2]
				},
				[141285] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144971] = {
					"Druid of the Branch", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[148442] = {
					"Gnomish Commando", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[163708] = {
					"Umbral Gatekeeper", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[132056] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[162508] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144842] = {
					"Tide Crawler", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[133463] = {
					"Venture Co. War Machine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131545] = {
					"Lady Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				[144972] = {
					"Kaldorei Huntress", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[156575] = {
					"Dark Inquisitor Xanesh", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146251] = {
					"Sister Katherine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[126928] = {
					"Irontide Corsair", -- [1]
					"Freehold", -- [2]
				},
				[144286] = {
					"Asset Manager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[144301] = {
					"Living Waste", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[126969] = {
					"Trothak", -- [1]
					"Freehold", -- [2]
				},
				[129367] = {
					"Bilge Rat Tempest", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144973] = {
					"Kaldorei Sentinel", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[137940] = {
					"Safety Shark", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[156406] = {
					"Voidbound Honor Guard", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153541] = {
					"Slavemaster Ul'rok", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134232] = {
					"Hired Assassin", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[156866] = {
					"Ra-den", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[147787] = {
					"7th Legion Battlemage", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[133593] = {
					"Expert Technician", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[152135] = {
					"Void-Twisted Spellweaver", -- [1]
					"Eastern Kingdoms - Vermillion Redoubt - HoA Scenario", -- [2]
				},
				[131667] = {
					"Soulbound Goliath", -- [1]
					"Waycrest Manor", -- [2]
				},
				[146253] = {
					"Brother Joseph", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[154565] = {
					"Loyal Myrmidon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134616] = {
					"Krolusk Pup", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[135552] = {
					"Deathtouched Slaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				[158567] = {
					"Tormented Kor'kron Annihilator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[158146] = {
					"Fallen Riftwalker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[149591] = {
					"Rastari Marksman", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[159425] = {
					"Occult Shadowmender", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135765] = {
					"Torrent Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[160704] = {
					"Letter Encrusted Void Globule", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[129602] = {
					"Irontide Enforcer", -- [1]
					"Freehold", -- [2]
				},
				[161217] = {
					"Aqir Skitterer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[151881] = {
					"Abyssal Commander Sivara", -- [1]
					"The Eternal Palace", -- [2]
				},
				[152009] = {
					"Malfunctioning Scrapbot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[131677] = {
					"Heartsbane Runeweaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				[159426] = {
					"Auctioneer Drezbit", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135002] = {
					"Demonic Tyrant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[158286] = {
					"Reprogrammed Warbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135258] = {
					"Irontide Marauder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[145616] = {
					"King Rastakhan", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[150859] = {
					"Za'qul", -- [1]
					"The Eternal Palace", -- [2]
				},
				[144849] = {
					"Darkscale Scout", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[157253] = {
					"Ka'zir", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133852] = {
					"Living Rot", -- [1]
					"The Underrot", -- [2]
				},
				[146256] = {
					"Laminaria", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134629] = {
					"Scaled Krolusk Rider", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[110340] = {
					"Spirit Beast", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134364] = {
					"Faithless Tender", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[161218] = {
					"Aqir Crusher", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144850] = {
					"Darkscale Siren", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[157254] = {
					"Tek'ris", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133482] = {
					"Crawler Mine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129208] = {
					"Dread Captain Lockwood", -- [1]
					"Siege of Boralus", -- [2]
				},
				[131864] = {
					"Gorak Tul", -- [1]
					"Waycrest Manor", -- [2]
				},
				[125977] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[159308] = {
					"Zealous Adherent", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146769] = {
					"Druid of the Claw", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[78116] = {
					"Water Elemental", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157255] = {
					"Aqir Drone", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150222] = {
					"Gunker", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[128435] = {
					"Toxic Saurid", -- [1]
					"Atal'Dazar", -- [2]
				},
				[135475] = {
					"Kula the Butcher", -- [1]
					"Kings' Rest", -- [2]
				},
				[122971] = {
					"Dazar'ai Juggernaut", -- [1]
					"Atal'Dazar", -- [2]
				},
				[159416] = {
					"Spiked Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146770] = {
					"Druid of the Claw", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[158279] = {
					"Haywire Clockwork Rocket Bot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[157256] = {
					"Aqir Darter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140038] = {
					"Abyssal Eel", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[153532] = {
					"Aqir Mindhunter", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[134069] = {
					"Vol'zith the Whisperer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[128967] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[156641] = {
					"Enthralled Weaponsmith", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[136541] = {
					"Bile Oozeling", -- [1]
					"Waycrest Manor", -- [2]
				},
				[139946] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[159303] = {
					"Monstrous Behemoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[162764] = {
					"Twisted Appendage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135007] = {
					"Orb Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[135052] = {
					"Blight Toad", -- [1]
					"Waycrest Manor", -- [2]
				},
				[135263] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[133345] = {
					"Feckless Assistant", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[152910] = {
					"Queen Azshara", -- [1]
					"The Eternal Palace", -- [2]
				},
				[38453] = {
					"Arcturis", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[152396] = {
					"Guardian of Azeroth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135903] = {
					"Manifestation of the Deep", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[148940] = {
					"Kaldorei Chimaera", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[135245] = {
					"Bilge Rat Demolisher", -- [1]
					"Siege of Boralus", -- [2]
				},
				[128652] = {
					"Viq'Goth", -- [1]
					"Siege of Boralus", -- [2]
				},
				[133007] = {
					"Unbound Abomination", -- [1]
					"The Underrot", -- [2]
				},
				[127799] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[61245] = {
					"Capacitor Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[159305] = {
					"Maddened Conscript", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131812] = {
					"Heartsbane Soulcharmer", -- [1]
					"Waycrest Manor", -- [2]
				},
				[135167] = {
					"Spectral Berserker", -- [1]
					"Kings' Rest", -- [2]
				},
				[136160] = {
					"King Dazar", -- [1]
					"Kings' Rest", -- [2]
				},
				[130909] = {
					"Fetid Maggot", -- [1]
					"The Underrot", -- [2]
				},
				[144295] = {
					"Mechagon Mechanic", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[129548] = {
					"Blacktooth Brute", -- [1]
					"Freehold", -- [2]
				},
				[155686] = {
					"Azsh'ari Venomwatcher", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131685] = {
					"Runic Disciple", -- [1]
					"Waycrest Manor", -- [2]
				},
				[158411] = {
					"Unstable Servant", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[127111] = {
					"Irontide Oarsman", -- [1]
					"Freehold", -- [2]
				},
				[144294] = {
					"Mechagon Tinkerer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[160182] = {
					"Void Initiate", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[156794] = {
					"SI:7 Light-Hunter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[136552] = {
					"Kao-Tien Marauder", -- [1]
					"Atal'Dazar", -- [2]
				},
				[135764] = {
					"Explosive Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[158284] = {
					"Craggle Wobbletop", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[160458] = {
					"Thulman Flintcrag", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[128434] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[159510] = {
					"Eye of the Depths", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[142199] = {
					"Alpine Hawk", -- [1]
					"Freehold", -- [2]
				},
				[138464] = {
					"Ashvane Deckhand", -- [1]
					"Siege of Boralus", -- [2]
				},
				[139097] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[158157] = {
					"Overlord Mathias Shaw", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[158285] = {
					"Tinkered Shieldbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[1860] = {
					"Graz'krast", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[156653] = {
					"Coagulated Horror", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[160061] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[159633] = {
					"Cultist Executioner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[138465] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[157602] = {
					"Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[158158] = {
					"Forge-Guard Hurrul", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[159309] = {
					"Leeching Parasite", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[162534] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[130485] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129526] = {
					"Bilge Rat Swabby", -- [1]
					"Freehold", -- [2]
				},
				[138338] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[134617] = {
					"Krolusk Hatchling", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[141566] = {
					"Scrimshaw Gutter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[155090] = {
					"Anodized Coilbearer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[106317] = {
					"Storm Totem", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131817] = {
					"Cragmaw the Infested", -- [1]
					"The Underrot", -- [2]
				},
				[137029] = {
					"Ordnance Specialist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[148441] = {
					"Gnomish Gyro-Engineer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148569] = {
					"Breakwater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[157904] = {
					"Aqir Scarab", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136549] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[161229] = {
					"Aqir Venomweaver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[132713] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131818] = {
					"Marked Sister", -- [1]
					"Waycrest Manor", -- [2]
				},
				[134418] = {
					"Drowned Depthbringer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[129527] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[153130] = {
					"Greater Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[155859] = {
					"Vizja'ra", -- [1]
					"The Eternal Palace", -- [2]
				},
				[146371] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135241] = {
					"Bilge Rat Pillager", -- [1]
					"Siege of Boralus", -- [2]
				},
				[159312] = {
					"Living Blood", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131819] = {
					"Coven Diviner", -- [1]
					"Waycrest Manor", -- [2]
				},
				[145850] = {
					"Gilnean Defuser", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[141282] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[136295] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[155860] = {
					"Shirakess Voidreaper", -- [1]
					"The Eternal Palace", -- [2]
				},
				[153942] = {
					"Annihilator Lak'hal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131669] = {
					"Jagged Hound", -- [1]
					"Waycrest Manor", -- [2]
				},
				[137830] = {
					"Pallid Gorger", -- [1]
					"Waycrest Manor", -- [2]
				},
				[154175] = {
					"Horrific Summoner", -- [1]
					"The Eternal Palace", -- [2]
				},
				[161334] = {
					"Gnashing Terror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[141283] = {
					"Kul Tiran Halberd", -- [1]
					"Siege of Boralus", -- [2]
				},
				[161335] = {
					"Void Horror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[156884] = {
					"Essence of Vita", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153943] = {
					"Decimator Shiq'voth", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[155094] = {
					"Mechagon Trooper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[106319] = {
					"Ember Totem", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131821] = {
					"Faceless Maiden", -- [1]
					"Waycrest Manor", -- [2]
				},
				[139110] = {
					"Spark Channeler", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[141284] = {
					"Kul Tiran Wavetender", -- [1]
					"Siege of Boralus", -- [2]
				},
				[136297] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[134990] = {
					"Charged Dust Devil", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[122967] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
				},
				[154682] = {
					"Echo of Fear", -- [1]
					"The Eternal Palace", -- [2]
				},
				[144993] = {
					"Crazed Thistlebear", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[121571] = {
					"Dopey", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[130488] = {
					"Mech Jockey", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[161745] = {
					"Hepthys", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[50159] = {
					"Chat", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146365] = {
					"Blazing Fireguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[73783] = {
					"Danger Ahead", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[155767] = {
					"Grul'taj", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157620] = {
					"Prophet Skitra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131823] = {
					"Sister Malady", -- [1]
					"Waycrest Manor", -- [2]
				},
				[69712] = {
					"Ji-Kun", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[161746] = {
					"Ossirat", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153060] = {
					"Cyranus", -- [1]
					"The Eternal Palace", -- [2]
				},
				[146657] = {
					"Veteran Sentinel", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[91250] = {
					"Wolf", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[147825] = {
					"7th Legion Medic", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148667] = {
					"Rastari Punisher", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[133870] = {
					"Diseased Lasher", -- [1]
					"The Underrot", -- [2]
				},
				[130489] = {
					"Dazarian Stalker", -- [1]
					"Freehold", -- [2]
				},
				[161198] = {
					"Warpweaver Dushar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135239] = {
					"Spectral Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[151773] = {
					"Junkyard D.0.G.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[150773] = {
					"Shimmerskin Pufferfish", -- [1]
					"The Eternal Palace", -- [2]
				},
				[155098] = {
					"Rexxar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[160341] = {
					"Sewer Beastling", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[126845] = {
					"Captain Jolly", -- [1]
					"Freehold", -- [2]
				},
				[148607] = {
					"Kal'ia Pa'kuaya", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[97285] = {
					"Wind Rush Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[152669] = {
					"Void Globule", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135406] = {
					"Animated Gold", -- [1]
					"Kings' Rest", -- [2]
				},
				[139626] = {
					"Dredged Sailor", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[144303] = {
					"G.U.A.R.D.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[69791] = {
					"Choplo", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[148194] = {
					"Icy Barrier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[157604] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[161312] = {
					"Crushing Tendril", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[129552] = {
					"Monzumi", -- [1]
					"Atal'Dazar", -- [2]
				},
				[133361] = {
					"Wasting Servant", -- [1]
					"Waycrest Manor", -- [2]
				},
				[158041] = {
					"N'Zoth the Corruptor", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[148962] = {
					"Ravenous Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[159320] = {
					"Amahtet", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[148623] = {
					"Echo of Gonk", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144231] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[155612] = {
					"Azsh'ari Channeler", -- [1]
					"The Eternal Palace", -- [2]
				},
				[102392] = {
					"Resonance Totem", -- [1]
					"The Eternal Palace", -- [2]
				},
				[133663] = {
					"Fanatical Headhunter", -- [1]
					"The Underrot", -- [2]
				},
				[152033] = {
					"Inconspicuous Plant", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[2630] = {
					"Earthbind Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[159321] = {
					"Khateph", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[152364] = {
					"Radiance of Azshara", -- [1]
					"The Eternal Palace", -- [2]
				},
				[144232] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[148613] = {
					"Commander Broadside", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[151649] = {
					"Defense Bot Mk I", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[155869] = {
					"Shirakess Shadowcaster", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134514] = {
					"Abyssal Cultist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[136688] = {
					"Fanatical Driller", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[148483] = {
					"Ancestral Avenger", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[126847] = {
					"Captain Raoul", -- [1]
					"Freehold", -- [2]
				},
				[159578] = {
					"Exposed Synapse", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[147828] = {
					"7th Legion Cavalier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134417] = {
					"Deepsea Ritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[131318] = {
					"Elder Leaxa", -- [1]
					"The Underrot", -- [2]
				},
				[159266] = {
					"Portal Master", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[161241] = {
					"Voidweaver Mal'thir", -- [1]
					"Kings' Rest", -- [2]
				},
				[152162] = {
					"Void-Twisted Skystriker", -- [1]
					"Eastern Kingdoms - Vermillion Redoubt - HoA Scenario", -- [2]
				},
				[162718] = {
					"Iron-Willed Enforcer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137473] = {
					"Guard Captain Atu", -- [1]
					"Kings' Rest", -- [2]
				},
				[148907] = {
					"Prismatic Image", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148582] = {
					"Stormbound Guardian", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[155871] = {
					"Voidbound Terror", -- [1]
					"The Eternal Palace", -- [2]
				},
				[150653] = {
					"Blackwater Behemoth", -- [1]
					"The Eternal Palace", -- [2]
				},
				[137713] = {
					"Big Money Crab", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[155920] = {
					"Azsh'ari Galeblade", -- [1]
					"The Eternal Palace", -- [2]
				},
				[137969] = {
					"Interment Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[134005] = {
					"Shalebiter", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[155616] = {
					"Zanj'ir Brute", -- [1]
					"The Eternal Palace", -- [2]
				},
				[149508] = {
					"Ice Blocked Nathanos", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137458] = {
					"Rotting Spore", -- [1]
					"The Underrot", -- [2]
				},
				[129214] = {
					"Coin-Operated Crowd Pummeler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[161243] = {
					"Samh'rek, Beckoner of Chaos", -- [1]
					"Siege of Boralus", -- [2]
				},
				[160405] = {
					"Angry Treant Chair Spirit", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[148120] = {
					"Kul Tiran Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[151798] = {
					"Vexiona", -- [1]
					"Eastern Kingdoms - Vermillion Redoubt - HoA Scenario", -- [2]
				},
				[118244] = {
					"Lightning Paw", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[148584] = {
					"Archmage Mordent Evenshade", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[155873] = {
					"Darkcast Annihilator", -- [1]
					"The Eternal Palace", -- [2]
				},
				[139422] = {
					"Scaled Krolusk Tamer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[161244] = {
					"Blood of the Corruptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[152479] = {
					"Void-Twisted Whelp", -- [1]
					"Eastern Kingdoms - Vermillion Redoubt - HoA Scenario", -- [2]
				},
				[147621] = {
					"Dark Iron Vanguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145273] = {
					"The Hand of In'zashi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137204] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[148617] = {
					"Akunda the Devout", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[78001] = {
					"Cloudburst Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[130011] = {
					"Irontide Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[137716] = {
					"Bottom Feeder", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[150160] = {
					"Scrapbone Bully", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[155161] = {
					"Shandris Feathermoon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[145261] = {
					"Opulence", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[156642] = {
					"Enthralled Laborer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129599] = {
					"Cutwater Knife Juggler", -- [1]
					"Freehold", -- [2]
				},
				[160990] = {
					"Image of Absolution", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150253] = {
					"Weaponized Crawler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[138740] = {
					"Musashitake", -- [1]
					"The Underrot", -- [2]
				},
				[149098] = {
					"Maiev Shadowsong", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[150249] = {
					"Pistonhead Scrapper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[157461] = {
					"Mycelial Cyst", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134137] = {
					"Temple Attendant", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[146678] = {
					"Ancient Protector", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[127106] = {
					"Irontide Officer", -- [1]
					"Freehold", -- [2]
				},
				[164188] = {
					"Horrific Figment", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[156132] = {
					"Azsh'ari Witch", -- [1]
					"The Eternal Palace", -- [2]
				},
				[141938] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[150250] = {
					"Pistonhead Blaster", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[150295] = {
					"Tank Buster MK1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[158690] = {
					"Cultist Tormenter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129600] = {
					"Bilge Rat Brinescale", -- [1]
					"Freehold", -- [2]
				},
				[163836] = {
					"Psychophage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137591] = {
					"Healing Tide Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[145903] = {
					"Darkforged Crusader", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[141939] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[150251] = {
					"Pistonhead Mechanic", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[153092] = {
					"Venna Seastorm", -- [1]
					"The Eternal Palace", -- [2]
				},
			},
			["aura_grow_direction"] = 3,
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
				[130436] = {
					false, -- [1]
					false, -- [2]
					"aqua", -- [3]
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
				[136214] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
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
				[131670] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				[133436] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
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
				[137103] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				[137478] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[131436] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[126928] = {
					false, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[138063] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
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
				[122984] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[136470] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[134599] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[134012] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				[131858] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				[129559] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[133852] = {
					true, -- [1]
					false, -- [2]
					"olivedrab", -- [3]
				},
				[141284] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[135365] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[136353] = {
					true, -- [1]
					false, -- [2]
					"royalblue", -- [3]
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
				[141283] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[134600] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
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
				[129602] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[138064] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				[131585] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[125977] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[134174] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[130488] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
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
				[136549] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[135241] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[133430] = {
					true, -- [1]
					false, -- [2]
					"cornflowerblue", -- [3]
				},
			},
			["minor_height_scale"] = 0.9999999403953552,
			["cast_statusbar_spark_half"] = true,
			["aura_padding"] = 2,
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 274,
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Change the color if a unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
					},
					["Time"] = 1551825291,
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
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["Name"] = "Attacking Specific Unit [Plater]",
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 95,
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
					["Time"] = 1553450458,
					["PlaterCore"] = 1,
					["Name"] = "Hide Neutral Units [Plater]",
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
					["Icon"] = 1990989,
					["LastHookEdited"] = "Constructor",
				}, -- [2]
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
					["Name"] = "Players Targeting a Target [Plater]",
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
					["Icon"] = 1966587,
					["LastHookEdited"] = "Constructor",
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1552354619,
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
					["Icon"] = 878211,
					["Name"] = "Current Target Color [Plater]",
				}, -- [4]
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
					["LastHookEdited"] = "Constructor",
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
						["spec"] = {
							[103] = true,
							["Enabled"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 135426,
					["Name"] = "Combo Points [Plater]",
				}, -- [5]
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
					["Icon"] = 133689,
					["Name"] = "Extra Border [Plater]",
				}, -- [6]
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
					["Name"] = "Reorder Nameplate [Plater]",
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
					["Icon"] = 574574,
					["LastHookEdited"] = "Nameplate Added",
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 107,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1551825317,
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
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["Name"] = "Color Automation [Plater]",
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 139,
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = true\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --second execute range (UseCustomExecutePercent must be enabled)\n    envTable.SecondRangeStart = 0.999\n    envTable.SecondRangeEnd = 0.8\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame, divisorPercent)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame, divisorPercent)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame, divisorPercent)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * divisorPercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        local percent = healthBar.CurrentHealth / healthBar.CurrentHealthMax\n        \n        if (percent <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame, envTable.ExecutePercent)\n            envTable.InExecuteRange = true\n            \n        elseif (percent < envTable.SecondRangeStart and percent >= envTable.SecondRangeEnd) then\n            envTable.UnitInExecuteRange (unitFrame, envTable.SecondRangeEnd)\n            envTable.InExecuteRange = true\n            \n        else\n            if (envTable.InExecuteRange) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                Plater.RefreshNameplateColor (unitFrame)\n                Plater.SetBorderColor (unitFrame)\n                envTable.InExecuteRange = false\n            end\n        end\n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame, 0)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Author"] = "Ahwa-Azralon",
					["Desc"] = "Adds extra effects to execute range and allow to setup two execute ranges for classes with execute when the unit has almost full healh. See the constructor script for options.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        local percent = healthBar.CurrentHealth / healthBar.CurrentHealthMax\n        \n        if (percent <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame, envTable.ExecutePercent)\n            envTable.InExecuteRange = true\n            \n        elseif (percent < envTable.SecondRangeStart and percent >= envTable.SecondRangeEnd) then\n            envTable.UnitInExecuteRange (unitFrame, envTable.SecondRangeEnd)\n            envTable.InExecuteRange = true\n            \n        else\n            if (envTable.InExecuteRange) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                Plater.RefreshNameplateColor (unitFrame)\n                Plater.SetBorderColor (unitFrame)\n                envTable.InExecuteRange = false\n            end\n        end\n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame, 0)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = true\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --second execute range (UseCustomExecutePercent must be enabled)\n    envTable.SecondRangeStart = 0.999\n    envTable.SecondRangeEnd = 0.8\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame, divisorPercent)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame, divisorPercent)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame, divisorPercent)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * divisorPercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
					},
					["Time"] = 1551825289,
					["PlaterCore"] = 1,
					["Name"] = "Advanced Execute Range",
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
					["LastHookEdited"] = "Constructor",
				}, -- [9]
				{
					["Enabled"] = false,
					["Revision"] = 273,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n    \n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 2\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 2\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n    \n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["Time"] = 1559665989,
					["PlaterCore"] = 1,
					["Name"] = "Aura Reorder [Plater]",
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
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["LastHookEdited"] = "Constructor",
				}, -- [10]
				{
					["Enabled"] = true,
					["Revision"] = 236,
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
					["Time"] = 1551894760,
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
							2281, -- [1]
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["Name"] = "Jaina Encounter [Plater]",
				}, -- [11]
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
					["Name"] = "Stormwall Encounter [Plater]",
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
							2280, -- [1]
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["LastHookEdited"] = "Constructor",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 58,
					["HooksTemp"] = {
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateBorder (unitFrame, unitId)\nend\n\n\n",
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
					["LastHookEdited"] = "Constructor",
					["Time"] = 1552962607,
					["Icon"] = 133006,
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
				}, -- [13]
				{
					["Enabled"] = false,
					["Revision"] = 47,
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend\n\n\n",
					},
					["Time"] = 1551825334,
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
					["Icon"] = 136207,
					["Name"] = "Don't Have Aura [Plater]",
				}, -- [14]
				{
					["Enabled"] = true,
					["Revision"] = 55,
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
					["Prio"] = 99,
					["Time"] = 1579030189,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
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
						["role"] = {
						},
						["affix"] = {
							[117] = true,
							["Enabled"] = true,
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 2446016,
					["Name"] = "M+ Bwonsamdi Reaping",
				}, -- [15]
				{
					["Enabled"] = false,
					["Revision"] = 35,
					["HooksTemp"] = {
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateSpellNameText (unitFrame)\n    \nend\n\n\n",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateSpellNameText (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --max length of the text\n    envTable.TextMaxLength = 100\n    \n    --update the spell name text\n    function envTable.UpdateSpellNameText (unitFrame)\n        \n        local castBar = unitFrame.castBar\n        local textString = castBar.Text\n        local spellName = castBar.SpellName\n        \n        if (unitFrame.targetUnitID) then\n            local targetName = UnitName (unitFrame.targetUnitID)\n            \n            if (targetName) then\n                textString:SetText (spellName .. \" > \" .. targetName) \n                \n                if (envTable.TextMaxLength) then\n                    Plater.LimitTextSize (textString, envTable.TextMaxLength)\n                end\n                \n            else\n                textString:SetText (spellName)\n            end\n        else\n            textString:SetText (spellName)\n        end\n    end\nend",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Show the name of the unit current target ",
					["Hooks"] = {
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateSpellNameText (unitFrame)\n    \nend\n\n\n",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateSpellNameText (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --max length of the text\n    envTable.TextMaxLength = 100\n    \n    --update the spell name text\n    function envTable.UpdateSpellNameText (unitFrame)\n        \n        local castBar = unitFrame.castBar\n        local textString = castBar.Text\n        local spellName = castBar.SpellName\n        \n        if (unitFrame.targetUnitID) then\n            local targetName = UnitName (unitFrame.targetUnitID)\n            \n            if (targetName) then\n                textString:SetText (spellName .. \" > \" .. targetName) \n                \n                if (envTable.TextMaxLength) then\n                    Plater.LimitTextSize (textString, envTable.TextMaxLength)\n                end\n                \n            else\n                textString:SetText (spellName)\n            end\n        else\n            textString:SetText (spellName)\n        end\n    end\nend",
					},
					["Time"] = 1553450703,
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
					["Icon"] = 413580,
					["Name"] = "Cast Target",
				}, -- [16]
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
					["LastHookEdited"] = "Constructor",
					["Time"] = 1551825361,
					["Icon"] = 135473,
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
				}, -- [17]
				{
					["Enabled"] = false,
					["Revision"] = 35,
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
					["Time"] = 1553450716,
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
					["Icon"] = "Interface\\AddOns\\Plater\\media\\exclamation_64",
					["LastHookEdited"] = "Constructor",
				}, -- [18]
				{
					["Enabled"] = false,
					["Revision"] = 68,
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
					["Icon"] = "Interface\\AddOns\\Plater\\media\\radio_64",
					["Time"] = 1553450705,
				}, -- [19]
				{
					["Enabled"] = true,
					["Revision"] = 42,
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --colors for each time bracket\n    envTable.Colors = {\n        critical = \"red\",\n        warning = \"yellow\",\n        okay = \"white\",\n    }\n    \n    --time amount to enter in warning or critical state\n    envTable.Timers = {\n        critical = 4.9,\n        warning = 8,\n    }\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auras = unitFrame.BuffFrame.PlaterBuffList\n    \n    for _, auraIcon in ipairs (auras) do\n        if (auraIcon:IsVisible()) then\n            if (auraIcon.RemainingTime < envTable.Timers.critical) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.critical)\n                \n            elseif (auraIcon.RemainingTime < envTable.Timers.warning) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.warning)\n                \n            else\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.okay)\n            end \n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Change the color of the aura timer by it's time left",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auras = unitFrame.BuffFrame.PlaterBuffList\n    \n    for _, auraIcon in ipairs (auras) do\n        if (auraIcon:IsVisible()) then\n            if (auraIcon.RemainingTime < envTable.Timers.critical) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.critical)\n                \n            elseif (auraIcon.RemainingTime < envTable.Timers.warning) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.warning)\n                \n            else\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.okay)\n            end \n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --colors for each time bracket\n    envTable.Colors = {\n        critical = \"red\",\n        warning = \"yellow\",\n        okay = \"white\",\n    }\n    \n    --time amount to enter in warning or critical state\n    envTable.Timers = {\n        critical = 4.9,\n        warning = 8,\n    }\n    \nend\n\n\n",
					},
					["Prio"] = 99,
					["Time"] = 1579030177,
					["PlaterCore"] = 1,
					["Name"] = "Paint Aura Timers",
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
					["Icon"] = "Interface\\Timer\\Challenges-Logo",
					["LastHookEdited"] = "Constructor",
				}, -- [20]
				{
					["Enabled"] = true,
					["Revision"] = 125,
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
					["Time"] = 1553450719,
					["LastHookEdited"] = "Nameplate Updated",
					["Icon"] = 133006,
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
				}, -- [21]
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
					["Time"] = 1551825364,
					["LastHookEdited"] = "Constructor",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\star_full_64",
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
				}, -- [22]
				{
					["Enabled"] = true,
					["Revision"] = 65,
					["HooksTemp"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.ThreatIcon) then\n        unitFrame.ThreatIcon:Hide()\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIndicator (unitFrame)\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.ThreatIcon) then\n        unitFrame.ThreatIcon:Hide()\n    end    \nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.ThreatIcon) then\n        unitFrame.ThreatIcon:Hide()\n    end\nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateThreatState (unitFrame, unitId)\n    \nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdatePlayerRole (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.Anchor = {side = 11, x = -2, y = 0}\n    envTable.Texture = \"Interface\\\\AddOns\\\\Plater\\\\media\\\\exclamation2_64\"\n    \n    --it'll only use the icon if the nameplate has a color from the Npc Colors tab and \"Only Scripts\" disabled.\n    envTable.OnlyWhenUsingNpcColor = true --if false, it'll always use the icon\n    \n    --private\n    envTable.PlayerRole = \"NONE\" --automatically changed by the script\n    \n    function envTable.CreateIndicator (unitFrame)\n        if (not unitFrame.ThreatIcon) then\n            unitFrame.ThreatIcon = unitFrame.healthBar:CreateTexture (nil, \"overlay\")\n        end\n    end\n    \n    function envTable.UpdateIndicator (unitFrame)\n        envTable.CreateIndicator (unitFrame)\n        \n        unitFrame.ThreatIcon:SetTexture (envTable.Texture)\n        Plater.SetAnchor (unitFrame.ThreatIcon, envTable.Anchor)\n        unitFrame.ThreatIcon:SetSize (unitFrame.healthBar:GetHeight(), unitFrame.healthBar:GetHeight())\n    end\n    \n    function envTable.UpdateThreatState (unitFrame, unitId)\n        if (not unitFrame.ThreatIcon) then --if there's no icon created yet\n            return\n            \n        elseif (not Plater.IsInCombat()) then --not in combat\n            unitFrame.ThreatIcon:Hide()\n            return\n            \n        elseif (unitFrame.IsSelf) then --personal bar\n            unitFrame.ThreatIcon:Hide()\n            return\n            \n        elseif (envTable.OnlyWhenUsingNpcColor) then --must be using a npc color?\n            if (not unitFrame.UsingCustomColor) then\n                unitFrame.ThreatIcon:Hide()\n                return\n            end\n        end\n        \n        local isTanking, threatStatus, threatpct = UnitDetailedThreatSituation (\"player\", unitId)\n        \n        if (isTanking) then\n            if (envTable.PlayerRole == \"TANK\") then\n                unitFrame.ThreatIcon:Hide()\n            else\n                unitFrame.ThreatIcon:Show()\n                unitFrame.ThreatIcon:SetVertexColor (unpack (envTable.NameplateAggroColor))\n            end\n        else\n            if (envTable.PlayerRole == \"TANK\") then\n                unitFrame.ThreatIcon:Show()\n                unitFrame.ThreatIcon:SetVertexColor (unpack (envTable.NameplateNoAggroColor))                \n            else\n                unitFrame.ThreatIcon:Hide()                \n            end\n        end\n    end\n    \n    function envTable.UpdatePlayerRole (unitFrame)\n        local profile = Plater.db.profile\n        local role = Plater:GetPlayerRole()\n        \n        if (role == \"TANK\") then\n            envTable.PlayerRole = \"TANK\"\n            envTable.NameplateAggroColor = profile.tank.colors.aggro\n            envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            \n        else\n            envTable.PlayerRole = \"DAMAGER\"\n            envTable.NameplateAggroColor = profile.dps.colors.aggro\n            envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            \n        end        \n    end\n    \n    envTable.UpdatePlayerRole (unitFrame)\n    \nend",
					},
					["Author"] = "Cyclopes-Turalyon",
					["Desc"] = "Add an icon to indicate an unit has Aggro on you. By default only show for units using a custom color from Npc Colors.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.ThreatIcon) then\n        unitFrame.ThreatIcon:Hide()\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIndicator (unitFrame)\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.ThreatIcon) then\n        unitFrame.ThreatIcon:Hide()\n    end    \nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.ThreatIcon) then\n        unitFrame.ThreatIcon:Hide()\n    end\nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateThreatState (unitFrame, unitId)\n    \nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdatePlayerRole (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.Anchor = {side = 11, x = -2, y = 0}\n    envTable.Texture = \"Interface\\\\AddOns\\\\Plater\\\\media\\\\exclamation2_64\"\n    \n    --it'll only use the icon if the nameplate has a color from the Npc Colors tab and \"Only Scripts\" disabled.\n    envTable.OnlyWhenUsingNpcColor = true --if false, it'll always use the icon\n    \n    --private\n    envTable.PlayerRole = \"NONE\" --automatically changed by the script\n    \n    function envTable.CreateIndicator (unitFrame)\n        if (not unitFrame.ThreatIcon) then\n            unitFrame.ThreatIcon = unitFrame.healthBar:CreateTexture (nil, \"overlay\")\n        end\n    end\n    \n    function envTable.UpdateIndicator (unitFrame)\n        envTable.CreateIndicator (unitFrame)\n        \n        unitFrame.ThreatIcon:SetTexture (envTable.Texture)\n        Plater.SetAnchor (unitFrame.ThreatIcon, envTable.Anchor)\n        unitFrame.ThreatIcon:SetSize (unitFrame.healthBar:GetHeight(), unitFrame.healthBar:GetHeight())\n    end\n    \n    function envTable.UpdateThreatState (unitFrame, unitId)\n        if (not unitFrame.ThreatIcon) then --if there's no icon created yet\n            return\n            \n        elseif (not Plater.IsInCombat()) then --not in combat\n            unitFrame.ThreatIcon:Hide()\n            return\n            \n        elseif (unitFrame.IsSelf) then --personal bar\n            unitFrame.ThreatIcon:Hide()\n            return\n            \n        elseif (envTable.OnlyWhenUsingNpcColor) then --must be using a npc color?\n            if (not unitFrame.UsingCustomColor) then\n                unitFrame.ThreatIcon:Hide()\n                return\n            end\n        end\n        \n        local isTanking, threatStatus, threatpct = UnitDetailedThreatSituation (\"player\", unitId)\n        \n        if (isTanking) then\n            if (envTable.PlayerRole == \"TANK\") then\n                unitFrame.ThreatIcon:Hide()\n            else\n                unitFrame.ThreatIcon:Show()\n                unitFrame.ThreatIcon:SetVertexColor (unpack (envTable.NameplateAggroColor))\n            end\n        else\n            if (envTable.PlayerRole == \"TANK\") then\n                unitFrame.ThreatIcon:Show()\n                unitFrame.ThreatIcon:SetVertexColor (unpack (envTable.NameplateNoAggroColor))                \n            else\n                unitFrame.ThreatIcon:Hide()                \n            end\n        end\n    end\n    \n    function envTable.UpdatePlayerRole (unitFrame)\n        local profile = Plater.db.profile\n        local role = Plater:GetPlayerRole()\n        \n        if (role == \"TANK\") then\n            envTable.PlayerRole = \"TANK\"\n            envTable.NameplateAggroColor = profile.tank.colors.aggro\n            envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            \n        else\n            envTable.PlayerRole = \"DAMAGER\"\n            envTable.NameplateAggroColor = profile.dps.colors.aggro\n            envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            \n        end        \n    end\n    \n    envTable.UpdatePlayerRole (unitFrame)\n    \nend",
					},
					["Prio"] = 99,
					["Name"] = "Aggro Indicator",
					["PlaterCore"] = 1,
					["Time"] = 1579030500,
					["LastHookEdited"] = "Constructor",
					["Icon"] = 132344,
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
				}, -- [23]
				{
					["Enabled"] = false,
					["Revision"] = 29,
					["HooksTemp"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --added this event just to run the constructor script\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --insert here the font you want to change then /reeload\n    --after the reload, check if the font has changed and disable this script\n    \n    local FONT = \"Friz Quadrata TT\"\n    \n    local profile = Plater.db.profile\n    local actorTables = profile.plate_config\n    \n    for plateType, plateTable in pairs (actorTables) do\n        \n        plateTable.actorname_text_font = FONT\n        plateTable.spellname_text_font = FONT\n        plateTable.spellpercent_text_font = FONT\n        plateTable.level_text_font = FONT\n        plateTable.percent_text_font = FONT\n        plateTable.big_actortitle_text_font = FONT\n        plateTable.big_actorname_text_font = FONT\n        plateTable.power_percent_text_font = FONT\n        \n    end\n    \n    profile.castbar_target_font = FONT\n    profile.aura_timer_text_font = FONT    \n    profile.aura_stack_font = FONT    \n    \nend\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Edit the Constructor script setting the font you want in the FONT = \"\", then /reload.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --added this event just to run the constructor script\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --insert here the font you want to change then /reeload\n    --after the reload, check if the font has changed and disable this script\n    \n    local FONT = \"Friz Quadrata TT\"\n    \n    local profile = Plater.db.profile\n    local actorTables = profile.plate_config\n    \n    for plateType, plateTable in pairs (actorTables) do\n        \n        plateTable.actorname_text_font = FONT\n        plateTable.spellname_text_font = FONT\n        plateTable.spellpercent_text_font = FONT\n        plateTable.level_text_font = FONT\n        plateTable.percent_text_font = FONT\n        plateTable.big_actortitle_text_font = FONT\n        plateTable.big_actorname_text_font = FONT\n        plateTable.power_percent_text_font = FONT\n        \n    end\n    \n    profile.castbar_target_font = FONT\n    profile.aura_timer_text_font = FONT    \n    profile.aura_stack_font = FONT    \n    \nend\n\n\n",
					},
					["Time"] = 1579485709,
					["PlaterCore"] = 1,
					["Name"] = "Change All Fonts",
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
					["Icon"] = 134331,
					["LastHookEdited"] = "Constructor",
				}, -- [24]
				{
					["Enabled"] = false,
					["Revision"] = 50,
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.PowerBarAnchor = {side = 4, x = 0, y = -10}\n    \n    function envTable.UpdatePowerBar (unitFrame)\n        unitFrame.powerBar:SetUnit (unitFrame.unit)\n        Plater.SetAnchor (unitFrame.powerBar, envTable.PowerBarAnchor)\n        \n    end\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (Plater.ZoneInstanceType == \"arena\") then\n        \n        local arenaEnemies = GetNumArenaOpponentSpecs()\n        local found = false\n        for i = 1, arenaEnemies do\n            local guid = UnitGUID (\"arena\" .. i)\n            print (guid)\n            if (guid == unitFrame.namePlateUnitGUID) then\n                \n                local spec = GetArenaOpponentSpec (i)\n                print (spec)\n                if (spec) then\n                    local id, name, description, icon, role, class = GetSpecializationInfoByID (spec)\n                    print (name)\n                    if (role == \"HEALER\") then\n                        envTable.UpdatePowerBar (unitFrame)\n                    end\n                    print (role)\n                end\n                \n                break\n            end\n        end\n        \n        return\n    end\n    \n    --show for enemy players\n    if (unitFrame.ActorType == \"enemyplayer\") then\n        envTable.UpdatePowerBar (unitFrame)\n        return\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show the power bar for specific units",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.PowerBarAnchor = {side = 4, x = 0, y = -10}\n    \n    function envTable.UpdatePowerBar (unitFrame)\n        unitFrame.powerBar:SetUnit (unitFrame.unit)\n        Plater.SetAnchor (unitFrame.powerBar, envTable.PowerBarAnchor)\n        \n    end\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (Plater.ZoneInstanceType == \"arena\") then\n        \n        local arenaEnemies = GetNumArenaOpponentSpecs()\n        local found = false\n        for i = 1, arenaEnemies do\n            local guid = UnitGUID (\"arena\" .. i)\n            print (guid)\n            if (guid == unitFrame.namePlateUnitGUID) then\n                \n                local spec = GetArenaOpponentSpec (i)\n                print (spec)\n                if (spec) then\n                    local id, name, description, icon, role, class = GetSpecializationInfoByID (spec)\n                    print (name)\n                    if (role == \"HEALER\") then\n                        envTable.UpdatePowerBar (unitFrame)\n                    end\n                    print (role)\n                end\n                \n                break\n            end\n        end\n        \n        return\n    end\n    \n    --show for enemy players\n    if (unitFrame.ActorType == \"enemyplayer\") then\n        envTable.UpdatePowerBar (unitFrame)\n        return\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Name"] = "Power Bar",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["Time"] = 1553450521,
					["Icon"] = 1375677,
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
				}, -- [25]
				{
					["Enabled"] = true,
					["Revision"] = 131,
					["HooksTemp"] = {
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    --show cast icon\n    envTable.ShowIcon = true\n    --anchor icon on what side\n    envTable.IconAnchor = \"left\" --accep 'left' 'right'\n    --fine tune the size of the icon\n    envTable.IconSizeOffset = 1\n    \n    --shield for non interruptible casts\n    envTable.ShowShield = false\n    envTable.ShieldTexture = [[Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON]]\n    envTable.ShieldDesaturated = true\n    envTable.ShieldColor = {1, 1, 1 ,1}\n    envTable.ShieldSize = {10, 12}\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local shield = castBar.BorderShield\n        \n        if (envTable.ShowIcon) then\n            icon:ClearAllPoints()\n            \n            if (envTable.IconAnchor == \"left\") then\n                icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -1, 0)    \n                \n            elseif (envTable.IconAnchor == \"right\") then\n                icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", 1, 0)\n                \n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n            \n        else\n            icon:Hide()\n            \n        end\n        \n        if (envTable.ShowShield and not castBar.canInterrupt) then\n            shield:Show()\n            shield:SetAlpha (1)\n            shield:SetTexCoord (0, 1, 0, 1)\n            shield:SetVertexColor (1, 1, 1, 1)\n            \n            shield:SetTexture (envTable.ShieldTexture)\n            shield:SetDesaturated (envTable.ShieldDesaturated)\n            \n            if (not envTable.ShieldDesaturated) then\n                shield:SetVertexColor (DetailsFramework:ParseColors (envTable.ShieldColor))\n            end\n            \n            shield:SetSize (unpack (envTable.ShieldSize))\n            \n            shield:ClearAllPoints()\n            shield:SetPoint (\"center\", castBar, \"left\", 0, 0)\n            \n        else\n            shield:Hide()\n            \n        end\n        \n    end\nend",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Move the icon of the spell cast to the left or right side of the nameplate.",
					["Hooks"] = {
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    --show cast icon\n    envTable.ShowIcon = true\n    --anchor icon on what side\n    envTable.IconAnchor = \"left\" --accep 'left' 'right'\n    --fine tune the size of the icon\n    envTable.IconSizeOffset = 1\n    \n    --shield for non interruptible casts\n    envTable.ShowShield = false\n    envTable.ShieldTexture = [[Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON]]\n    envTable.ShieldDesaturated = true\n    envTable.ShieldColor = {1, 1, 1 ,1}\n    envTable.ShieldSize = {10, 12}\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local shield = castBar.BorderShield\n        \n        if (envTable.ShowIcon) then\n            icon:ClearAllPoints()\n            \n            if (envTable.IconAnchor == \"left\") then\n                icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -1, 0)    \n                \n            elseif (envTable.IconAnchor == \"right\") then\n                icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", 1, 0)\n                \n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n            \n        else\n            icon:Hide()\n            \n        end\n        \n        if (envTable.ShowShield and not castBar.canInterrupt) then\n            shield:Show()\n            shield:SetAlpha (1)\n            shield:SetTexCoord (0, 1, 0, 1)\n            shield:SetVertexColor (1, 1, 1, 1)\n            \n            shield:SetTexture (envTable.ShieldTexture)\n            shield:SetDesaturated (envTable.ShieldDesaturated)\n            \n            if (not envTable.ShieldDesaturated) then\n                shield:SetVertexColor (DetailsFramework:ParseColors (envTable.ShieldColor))\n            end\n            \n            shield:SetSize (unpack (envTable.ShieldSize))\n            \n            shield:ClearAllPoints()\n            shield:SetPoint (\"center\", castBar, \"left\", 0, 0)\n            \n        else\n            shield:Hide()\n            \n        end\n        \n    end\nend",
					},
					["Prio"] = 99,
					["Time"] = 1579035896,
					["PlaterCore"] = 1,
					["Name"] = "Cast Icon Anchor",
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
					["Icon"] = "Interface\\Buttons\\UI-Quickslot2",
					["LastHookEdited"] = "Constructor",
				}, -- [26]
				{
					["Enabled"] = true,
					["Revision"] = 62,
					["HooksTemp"] = {
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BuildFrames (unitFrame)\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.castBar.IconOverlayFrame) then\n        unitFrame.castBar.IconOverlayFrame:Hide()\n    end\n    \nend\n\n\n\n\n",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BuildFrames (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.AnchorSide = \"left\"\n    envTable.BorderThickness = 1\n    envTable.BorderColor = \"black\"\n    \n    --private\n    function envTable.BuildFrames (unitFrame)\n        local castBar = unitFrame.castBar\n        \n        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\n        castBar.IconBorder:SetVertexColor (r, g, b, a)\n        \n        local size = envTable.BorderThickness\n        castBar.IconBorder:SetBorderSizes (size, size, size, size)\n        castBar.IconBorder:UpdateSizes()\n        \n        local icon = castBar.Icon\n        if (envTable.AnchorSide == \"left\") then\n            icon:ClearAllPoints()\n            icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, 0)\n            icon:SetPoint (\"bottomright\", castBar, \"bottomleft\", -1, 0)\n            icon:SetWidth (icon:GetHeight())\n            \n        elseif (envTable.AnchorSide == \"right\") then\n            icon:ClearAllPoints()\n            icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, 0)\n            icon:SetPoint (\"bottomleft\", castBar, \"bottomright\", 1, 0)\n            icon:SetWidth (icon:GetHeight())\n            \n        end\n        \n        icon:Show()\n        castBar.IconOverlayFrame:Show()\n    end\n    \n    if (not unitFrame.castBar.IconOverlayFrame) then\n        --icon support frame\n        unitFrame.castBar.IconOverlayFrame = CreateFrame (\"frame\", nil, unitFrame.castBar)\n        unitFrame.castBar.IconOverlayFrame:SetPoint (\"topleft\", unitFrame.castBar.Icon, \"topleft\")\n        unitFrame.castBar.IconOverlayFrame:SetPoint (\"bottomright\", unitFrame.castBar.Icon, \"bottomright\")\n        \n        unitFrame.castBar.IconBorder = CreateFrame (\"frame\", nil,  unitFrame.castBar.IconOverlayFrame, \"NamePlateFullBorderTemplate\")\n    end    \n    \nend\n\n\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Adds a pixels perfect border around the cast bar spell icon.",
					["Hooks"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BuildFrames (unitFrame)\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.castBar.IconOverlayFrame) then\n        unitFrame.castBar.IconOverlayFrame:Hide()\n    end\n    \nend\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BuildFrames (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.AnchorSide = \"left\"\n    envTable.BorderThickness = 1\n    envTable.BorderColor = \"black\"\n    \n    --private\n    function envTable.BuildFrames (unitFrame)\n        local castBar = unitFrame.castBar\n        \n        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\n        castBar.IconBorder:SetVertexColor (r, g, b, a)\n        \n        local size = envTable.BorderThickness\n        castBar.IconBorder:SetBorderSizes (size, size, size, size)\n        castBar.IconBorder:UpdateSizes()\n        \n        local icon = castBar.Icon\n        if (envTable.AnchorSide == \"left\") then\n            icon:ClearAllPoints()\n            icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, 0)\n            icon:SetPoint (\"bottomright\", castBar, \"bottomleft\", -1, 0)\n            icon:SetWidth (icon:GetHeight())\n            \n        elseif (envTable.AnchorSide == \"right\") then\n            icon:ClearAllPoints()\n            icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, 0)\n            icon:SetPoint (\"bottomleft\", castBar, \"bottomright\", 1, 0)\n            icon:SetWidth (icon:GetHeight())\n            \n        end\n        \n        icon:Show()\n        castBar.IconOverlayFrame:Show()\n    end\n    \n    if (not unitFrame.castBar.IconOverlayFrame) then\n        --icon support frame\n        unitFrame.castBar.IconOverlayFrame = CreateFrame (\"frame\", nil, unitFrame.castBar)\n        unitFrame.castBar.IconOverlayFrame:SetPoint (\"topleft\", unitFrame.castBar.Icon, \"topleft\")\n        unitFrame.castBar.IconOverlayFrame:SetPoint (\"bottomright\", unitFrame.castBar.Icon, \"bottomright\")\n        \n        unitFrame.castBar.IconBorder = CreateFrame (\"frame\", nil,  unitFrame.castBar.IconOverlayFrame, \"NamePlateFullBorderTemplate\")\n    end    \n    \nend\n\n\n\n\n",
					},
					["Prio"] = 99,
					["Time"] = 1579031533,
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
					["Icon"] = 133004,
					["Name"] = "Cast Icon Border",
				}, -- [27]
				{
					["Enabled"] = true,
					["Revision"] = 85,
					["HooksTemp"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder:Hide()\n    end    \nend",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    \n    --hide the icon of the spell, may require /reload after changing\n    envTable.HideIcon = false\n    \n    --border settings\n    envTable.BorderThickness = 1\n    envTable.BorderColor = \"black\"\n    \n    --private\n    --create the border\n    if (not unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder = CreateFrame (\"frame\", nil, unitFrame.castBar, \"NamePlateFullBorderTemplate\")\n    end    \n    \n    --update the border\n    function envTable.UpdateBorder (unitFrame)\n        local castBar = unitFrame.castBar\n        \n        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\n        castBar.CastBarBorder:SetVertexColor (r, g, b, a)\n        \n        local size = envTable.BorderThickness\n        castBar.CastBarBorder:SetBorderSizes (size, size, size, size)\n        castBar.CastBarBorder:UpdateSizes()        \n        \n        if (envTable.HideIcon) then\n            castBar.Icon:Hide()\n        end\n        \n        castBar.CastBarBorder:Show()\n    end\n    \nend\n\n\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Adds a pixels perfect border around the cast bar.",
					["Hooks"] = {
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder:Hide()\n    end    \nend",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    \n    --hide the icon of the spell, may require /reload after changing\n    envTable.HideIcon = false\n    \n    --border settings\n    envTable.BorderThickness = 1\n    envTable.BorderColor = \"black\"\n    \n    --private\n    --create the border\n    if (not unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder = CreateFrame (\"frame\", nil, unitFrame.castBar, \"NamePlateFullBorderTemplate\")\n    end    \n    \n    --update the border\n    function envTable.UpdateBorder (unitFrame)\n        local castBar = unitFrame.castBar\n        \n        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\n        castBar.CastBarBorder:SetVertexColor (r, g, b, a)\n        \n        local size = envTable.BorderThickness\n        castBar.CastBarBorder:SetBorderSizes (size, size, size, size)\n        castBar.CastBarBorder:UpdateSizes()        \n        \n        if (envTable.HideIcon) then\n            castBar.Icon:Hide()\n        end\n        \n        castBar.CastBarBorder:Show()\n    end\n    \nend\n\n\n\n\n",
					},
					["Prio"] = 99,
					["Time"] = 1579035954,
					["PlaterCore"] = 1,
					["Name"] = "Cast Bar Border",
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
					["Icon"] = 133004,
					["LastHookEdited"] = "Constructor",
				}, -- [28]
				{
					["Enabled"] = true,
					["Revision"] = 42,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    for index, auraIcon in ipairs (unitFrame.BuffFrame.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            if (auraIcon.RemainingTime < envTable.MinTime) then\n                auraIcon.TimerText:SetText (format (\"%.1f\", auraIcon.RemainingTime))\n            end\n        end\n    end\n    \n    for index, auraIcon in ipairs (unitFrame.BuffFrame2.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            if (auraIcon.RemainingTime < envTable.MinTime) then            \n                auraIcon.TimerText:SetText (format (\"%.1f\", auraIcon.RemainingTime))\n            end\n        end        \n    end    \nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --minimum time left to take effect\n    envTable.MinTime = 9.999\n    \nend",
					},
					["Author"] = "????????-Illidan",
					["Desc"] = "Debuff timer show decimal values",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --minimum time left to take effect\n    envTable.MinTime = 9.999\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    for index, auraIcon in ipairs (unitFrame.BuffFrame.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            if (auraIcon.RemainingTime < envTable.MinTime) then\n                auraIcon.TimerText:SetText (format (\"%.1f\", auraIcon.RemainingTime))\n            end\n        end\n    end\n    \n    for index, auraIcon in ipairs (unitFrame.BuffFrame2.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            if (auraIcon.RemainingTime < envTable.MinTime) then            \n                auraIcon.TimerText:SetText (format (\"%.1f\", auraIcon.RemainingTime))\n            end\n        end        \n    end    \nend",
					},
					["Time"] = 1551894761,
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
					["Icon"] = 609811,
					["Name"] = "Decimal Debuff Timer",
				}, -- [29]
				{
					["Enabled"] = true,
					["Revision"] = 81,
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
					["Time"] = 1552962644,
					["LastHookEdited"] = "Nameplate Updated",
					["Icon"] = 136139,
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
				}, -- [30]
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
					["LastHookEdited"] = "Player Talent Update",
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
					["Icon"] = "Interface\\AddOns\\Plater\\media\\arrow_right_64",
					["Name"] = "Arrow Target Indicators",
				}, -- [31]
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
					["Time"] = 1551894756,
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
					["Icon"] = 237377,
					["LastHookEdited"] = "Target Changed",
				}, -- [32]
				{
					["Enabled"] = true,
					["Revision"] = 23,
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
					["Prio"] = 99,
					["Name"] = "Adjust Spark Size",
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
					["LastHookEdited"] = "Cast Update",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\spark6",
					["Time"] = 1579486476,
				}, -- [33]
				{
					["Enabled"] = true,
					["Revision"] = 69,
					["HooksTemp"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShowPowerBarForUnit (unitFrame)    \nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --power bar options:\n    \n    --for which units it should\n    envTable.ShowForEnemyPlayers = true\n    envTable.ShowForEnemyNpcs = false\n    \n    --specific npcs, can be the npc name or npcId\n    --this list work even if the ShowForEnemyNpcs is false\n    envTable.SpecificNpcs = {\n        [\"the rock\"] = true, --npc name\n        [225] = true, --npcId\n    }\n    \n    --anchor the power bar to\n    envTable.Anchor = {\n        side = 13, --inside the healthbar, bottom side\n        x = 0, \n        y = 0,\n    }\n    \n    --power bar height\n    envTable.Height = 1\n    \n    --power bar percent text\n    envTable.PercentTextEnabled = false\n    envTable.PercentTextAnchor = {\n        side = 7, --top right\n        x = 2, \n        y = 0,\n    }\n    \n    \n    --private\n    function envTable.ShowPowerbar (unitFrame)\n        unitFrame.powerBar:SetUnit (unitFrame.unit)\n        envTable.UpdatePowerbar (unitFrame)\n    end\n    \n    function envTable.UpdatePowerbar (unitFrame)\n        local powerBar = unitFrame.powerBar\n        Plater.SetAnchor (powerBar, envTable.Anchor, unitFrame.healthBar)\n        powerBar:SetSize (unitFrame.healthBar:GetWidth(), envTable.Height)\n        \n        envTable.SavePowerBarSize (unitFrame, envTable.Height)\n        \n        if (envTable.PercentTextEnabled) then\n            powerBar.percentText:Show()\n            --copy the font from the health percent\n            Plater:SetFontFace (powerBar.percentText, Plater.GetConfig (unitFrame).percent_text_font)\n            Plater:SetFontSize (powerBar.percentText, Plater.GetConfig (unitFrame).percent_text_size)\n            Plater.SetAnchor (powerBar.percentText, envTable.PercentTextAnchor)\n        else\n            powerBar.percentText:Hide()\n        end\n    end\n    \n    function envTable.CanShowPowerBarForUnit (unitFrame)\n        --check if the is in the special list to force show\n        local forceShowPowerBar = envTable.SpecificNpcs [unitFrame.namePlateNpcId] or envTable.SpecificNpcs [unitFrame.namePlateUnitName] or envTable.SpecificNpcs [unitFrame.namePlateUnitNameLower]\n        if (forceShowPowerBar) then\n            envTable.ShowPowerbar (unitFrame)\n            \n            --check if the unit is a enemy player\n        elseif (unitFrame.ActorType == \"enemyplayer\") then\n            if (envTable.ShowForEnemyPlayers) then\n                envTable.ShowPowerbar (unitFrame)\n            end\n            \n            --check if the unit is a enemy npc\n        elseif (unitFrame.ActorType == \"enemynpc\") then\n            if (envTable.ShowForEnemyNpcs) then\n                envTable.ShowPowerbar (unitFrame)\n            end\n        end\n    end\n    \n    function envTable.SavePowerBarSize (unitFrame, height)\n        local plateConfigs = Plater.db.profile.plate_config [unitFrame.ActorType]\n        plateConfigs.mana[1] = plateConfigs.health[1]\n        plateConfigs.mana[2] = height\n        plateConfigs.mana_incombat[1] = plateConfigs.health_incombat[1]\n        plateConfigs.mana_incombat[2] = height\n    end\nend\n\n\n\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show power bar for some units.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --power bar options:\n    \n    --for which units it should\n    envTable.ShowForEnemyPlayers = true\n    envTable.ShowForEnemyNpcs = false\n    \n    --specific npcs, can be the npc name or npcId\n    --this list work even if the ShowForEnemyNpcs is false\n    envTable.SpecificNpcs = {\n        [\"the rock\"] = true, --npc name\n        [225] = true, --npcId\n    }\n    \n    --anchor the power bar to\n    envTable.Anchor = {\n        side = 13, --inside the healthbar, bottom side\n        x = 0, \n        y = 0,\n    }\n    \n    --power bar height\n    envTable.Height = 1\n    \n    --power bar percent text\n    envTable.PercentTextEnabled = false\n    envTable.PercentTextAnchor = {\n        side = 7, --top right\n        x = 2, \n        y = 0,\n    }\n    \n    \n    --private\n    function envTable.ShowPowerbar (unitFrame)\n        unitFrame.powerBar:SetUnit (unitFrame.unit)\n        envTable.UpdatePowerbar (unitFrame)\n    end\n    \n    function envTable.UpdatePowerbar (unitFrame)\n        local powerBar = unitFrame.powerBar\n        Plater.SetAnchor (powerBar, envTable.Anchor, unitFrame.healthBar)\n        powerBar:SetSize (unitFrame.healthBar:GetWidth(), envTable.Height)\n        \n        envTable.SavePowerBarSize (unitFrame, envTable.Height)\n        \n        if (envTable.PercentTextEnabled) then\n            powerBar.percentText:Show()\n            --copy the font from the health percent\n            Plater:SetFontFace (powerBar.percentText, Plater.GetConfig (unitFrame).percent_text_font)\n            Plater:SetFontSize (powerBar.percentText, Plater.GetConfig (unitFrame).percent_text_size)\n            Plater.SetAnchor (powerBar.percentText, envTable.PercentTextAnchor)\n        else\n            powerBar.percentText:Hide()\n        end\n    end\n    \n    function envTable.CanShowPowerBarForUnit (unitFrame)\n        --check if the is in the special list to force show\n        local forceShowPowerBar = envTable.SpecificNpcs [unitFrame.namePlateNpcId] or envTable.SpecificNpcs [unitFrame.namePlateUnitName] or envTable.SpecificNpcs [unitFrame.namePlateUnitNameLower]\n        if (forceShowPowerBar) then\n            envTable.ShowPowerbar (unitFrame)\n            \n            --check if the unit is a enemy player\n        elseif (unitFrame.ActorType == \"enemyplayer\") then\n            if (envTable.ShowForEnemyPlayers) then\n                envTable.ShowPowerbar (unitFrame)\n            end\n            \n            --check if the unit is a enemy npc\n        elseif (unitFrame.ActorType == \"enemynpc\") then\n            if (envTable.ShowForEnemyNpcs) then\n                envTable.ShowPowerbar (unitFrame)\n            end\n        end\n    end\n    \n    function envTable.SavePowerBarSize (unitFrame, height)\n        local plateConfigs = Plater.db.profile.plate_config [unitFrame.ActorType]\n        plateConfigs.mana[1] = plateConfigs.health[1]\n        plateConfigs.mana[2] = height\n        plateConfigs.mana_incombat[1] = plateConfigs.health_incombat[1]\n        plateConfigs.mana_incombat[2] = height\n    end\nend\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShowPowerBarForUnit (unitFrame)    \nend",
					},
					["Prio"] = 99,
					["Time"] = 1579030177,
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
					["Icon"] = "Interface/Addons/Plater/Media/fire_64",
					["Name"] = "Power Bar",
				}, -- [34]
				{
					["Enabled"] = true,
					["Revision"] = 72,
					["HooksTemp"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    -- /RELOAD AFTER IMPORTING OR CHANGING THE SCRIPT\n    -- SELECT THE INDICATOR AT THE TARGET TAB\n    \n    Plater.TargetIndicators    [\"Double Arrows\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\arrow_double_right_64]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 20,\n        height = 16,\n        x = 28,\n        y = 0,\n        blend = \"ADD\",\n        color = \"white\",\n    }    \n    \nend\n\n\n",
					},
					["Author"] = "�r��ne-Kel'thuzad",
					["Desc"] = "Adds double arrow as a target indicators option",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    -- /RELOAD AFTER IMPORTING OR CHANGING THE SCRIPT\n    -- SELECT THE INDICATOR AT THE TARGET TAB\n    \n    Plater.TargetIndicators    [\"Double Arrows\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\arrow_double_right_64]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 20,\n        height = 16,\n        x = 28,\n        y = 0,\n        blend = \"ADD\",\n        color = \"white\",\n    }    \n    \nend\n\n\n",
					},
					["Time"] = 1579486123,
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
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\media\\arrow_double_right_64",
					["LastHookEdited"] = "Nameplate Created",
				}, -- [35]
			},
			["last_news_time"] = 1551553489,
			["news_frame"] = {
				["PlaterNewsFrame"] = {
					["scale"] = 1,
				},
			},
			["cast_statusbar_fadeout_time"] = 0.4899999797344208,
			["extra_icon_height"] = 16,
			["aura_width"] = 22,
			["pet_width_scale"] = 0.9999999403953552,
			["castbar_target_anchor"] = {
				["side"] = 11,
			},
			["quick_hide"] = true,
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Color Change"] = 1,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Cast - Very Important"] = 2,
				["Aura Border Color"] = 1,
				["Aura - Blink Time Left"] = 1,
				["Explosion Affix M+"] = 3,
				["Unit Power"] = 1,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Unit - Important"] = 5,
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
			["castbar_target_font"] = "Friz Quadrata TT",
			["castbar_target_outline"] = "NONE",
			["extra_icon_show_enrage"] = true,
			["cast_statusbar_texture"] = "ElvUI Norm",
			["cast_statusbar_spark_color"] = {
				0.988235294117647, -- [1]
				[3] = 0.941176470588235,
			},
			["aura_cooldown_edge_texture"] = "Interface\\GLUES\\loadingOld",
			["aura_alpha"] = 0.849999964237213,
			["pet_height_scale"] = 0.9999999403953552,
			["aura_x_offset"] = -49,
			["first_run3"] = true,
			["ui_parent_scale_tune"] = 1.889999866485596,
			["ui_parent_buff_strata"] = "LOW",
			["healthbar_framelevel"] = 0,
			["aura_consolidate"] = true,
			["health_statusbar_bgtexture"] = "ElvUI Norm",
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
				["Execute Range"] = 1,
				["Targetting Alpha"] = 3,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Attacking Specific Unit"] = 1,
				["Blockade Encounter"] = 1,
				["Jaina Encounter"] = 6,
				["Hide Neutral Units"] = 1,
				["Combo Points"] = 3,
				["Extra Border"] = 2,
				["Reorder Nameplate"] = 3,
				["Target Color"] = 3,
				["Aura Reorder"] = 1,
				["Monk Statue"] = 2,
			},
			["castbar_target_show"] = true,
			["cast_statusbar_color"] = {
				nil, -- [1]
				0.858823529411765, -- [2]
				nil, -- [3]
				0.96000000089407, -- [4]
			},
			["update_throttle"] = 0.09999999403953552,
			["minor_width_scale"] = 0.9999999403953552,
			["castbar_target_text_size"] = 8,
			["captured_spells"] = {
				[164815] = {
					["type"] = "DEBUFF",
					["source"] = "Zerkwa-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[306474] = {
					["type"] = "DEBUFF",
					["source"] = "Osardurp-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[298798] = {
					["source"] = "Pandâdk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[215479] = {
					["type"] = "BUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[115192] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[316711] = {
					["npcID"] = 158376,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Psychus",
					["encounterID"] = 2344,
				},
				[315176] = {
					["type"] = "DEBUFF",
					["source"] = "Osardurp-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[152279] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[193475] = {
					["type"] = "BUFF",
					["source"] = "Bwaah",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255141] = {
					["source"] = "Rounín",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183752] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lilmajin",
					["encounterID"] = 2344,
				},
				[275773] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[255909] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[313643] = {
					["type"] = "BUFF",
					["source"] = "Kreiser-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[315179] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Deckker-ShatteredHand",
					["npcID"] = 0,
				},
				[270657] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ninjaflash",
					["npcID"] = 0,
				},
				[281404] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cornric-Illidan",
					["npcID"] = 0,
				},
				[255654] = {
					["type"] = "BUFF",
					["source"] = "Filthywarr",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[91141] = {
					["type"] = "BUFF",
					["source"] = "Maurlei",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85256] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Torodelsur-Arthas",
					["npcID"] = 0,
				},
				[31661] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Carnage-SteamwheedleCartel",
					["encounterID"] = 2344,
				},
				[17364] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[153561] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cornric-Illidan",
					["encounterID"] = 2344,
				},
				[31821] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[123254] = {
					["type"] = "BUFF",
					["source"] = "Marderzh-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[403] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2344,
				},
				[270661] = {
					["type"] = "BUFF",
					["source"] = "Lelantoz-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[115450] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Monktain-Ravencrest",
					["encounterID"] = 2344,
				},
				[259750] = {
					["source"] = "Stormbound Conqueror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136555,
				},
				[280385] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Phobiia-Mal'Ganis",
					["npcID"] = 0,
				},
				[277315] = {
					["source"] = "Warmother Gutter",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136303,
				},
				[408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[118905] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Capacitor Totem",
					["npcID"] = 61245,
				},
				[6552] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Påblo",
					["encounterID"] = 2344,
				},
				[200389] = {
					["type"] = "BUFF",
					["source"] = "Zerkwa-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[20243] = {
					["source"] = "Fathomm-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[162264] = {
					["type"] = "BUFF",
					["source"] = "Valandrak-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[221883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[224186] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lockpker-Sargeras",
					["npcID"] = 0,
				},
				[259241] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131265,
				},
				[194249] = {
					["type"] = "BUFF",
					["source"] = "Marderzh-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[190411] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Påblo",
					["encounterID"] = 2344,
				},
				[238260] = {
					["source"] = "Poxi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228537] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lilmajin",
					["encounterID"] = 2344,
				},
				[312121] = {
					["type"] = "DEBUFF",
					["source"] = "Alleria Windrunner",
					["npcID"] = 152718,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2338,
				},
				[45524] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sathroxxigg-BleedingHollow",
					["encounterID"] = 2344,
				},
				[421] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[221885] = {
					["source"] = "Mootion-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[120954] = {
					["type"] = "BUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[3409] = {
					["source"] = "Valithrien-Stormrage",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313148] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerkwa-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[64843] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[273232] = {
					["type"] = "BUFF",
					["source"] = "Valandrak-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[239286] = {
					["source"] = "Aquelian Honor Guard",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153619,
				},
				[1715] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[272721] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[1719] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[290121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Oranash-Mal'Ganis",
					["npcID"] = 0,
				},
				[280398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lavella-Mal'Ganis",
					["npcID"] = 0,
				},
				[269652] = {
					["source"] = "Boulder Caster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137078,
				},
				[194509] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Priestio-Mal'Ganis",
					["npcID"] = 0,
				},
				[313663] = {
					["type"] = "DEBUFF",
					["source"] = "Marderzh-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[280400] = {
					["source"] = "Selis-Gul'dan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235450] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lie-BurningLegion",
					["npcID"] = 0,
				},
				[23922] = {
					["source"] = "Fathomm-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[309572] = {
					["type"] = "DEBUFF",
					["source"] = "Magister Umbric",
					["npcID"] = 158035,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2377,
				},
				[157153] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2344,
				},
				[245686] = {
					["type"] = "BUFF",
					["source"] = "Kreiser-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[274774] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[58511] = {
					["type"] = "DEBUFF",
					["source"] = "Gotura Fourwinds",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 35068,
				},
				[228287] = {
					["source"] = "Beatahoex-Thrall",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[64844] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[232893] = {
					["source"] = "Selis-Gul'dan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290640] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gwomsomdi-Mal'Ganis",
					["npcID"] = 0,
				},
				[313669] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hive-Guard Naz'ruzek",
					["npcID"] = 160826,
				},
				[256434] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tareynia-Turalyon",
					["npcID"] = 0,
				},
				[267612] = {
					["type"] = "BUFF",
					["source"] = "Lînny-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[290641] = {
					["type"] = "BUFF",
					["source"] = "Speedlimit",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296271] = {
					["source"] = "Typo-Malfurion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295248] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[115072] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acetaphine-Illidan",
					["encounterID"] = 2344,
				},
				[45334] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Phobiia-Mal'Ganis",
					["npcID"] = 0,
				},
				[280409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[287062] = {
					["source"] = "Beatahoex-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Exquisitus-Stormrage",
					["npcID"] = 0,
				},
				[254901] = {
					["source"] = "Bloodhunter War Slave",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 123440,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Cornric-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[313675] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Harbinger Il'koxik",
					["npcID"] = 160810,
				},
				[1833] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[280412] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Suvako",
					["npcID"] = 0,
				},
				[91021] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[298836] = {
					["type"] = "BUFF",
					["source"] = "Valandrak-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[235712] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Faleon",
					["npcID"] = 0,
				},
				[7384] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[279902] = {
					["type"] = "BUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[298837] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[226757] = {
					["type"] = "DEBUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[288091] = {
					["type"] = "DEBUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[307026] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bfaaltslul-Illidan",
					["npcID"] = 0,
				},
				[158183] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akhet",
					["npcID"] = 162939,
				},
				[213708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lymos",
					["npcID"] = 0,
				},
				[298839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Leafygreen-Illidan",
					["npcID"] = 0,
				},
				[210126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nial-AeriePeak",
					["npcID"] = 0,
				},
				[295258] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[201427] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Valandrak-Zul'jin",
					["encounterID"] = 2344,
				},
				[298841] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[204242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[317265] = {
					["type"] = "DEBUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[102793] = {
					["source"] = "Psyphonn-AlteracMountains",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115203] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acetaphine-Illidan",
					["encounterID"] = 2344,
				},
				[214222] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[24275] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thejx-Kel'Thuzad",
					["npcID"] = 0,
				},
				[97164] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bataari Fire-Warrior",
					["npcID"] = 59083,
				},
				[251836] = {
					["type"] = "BUFF",
					["source"] = "Lelantoz-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[305497] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tiktokthot-Aggramar",
					["npcID"] = 0,
				},
				[205523] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acetaphine-Illidan",
					["encounterID"] = 2344,
				},
				[126462] = {
					["source"] = "Killsen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[309592] = {
					["type"] = "BUFF",
					["source"] = "Basher Tentacle",
					["npcID"] = 158367,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[198103] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2338,
				},
				[251837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Issialye-Stormrage",
					["npcID"] = 0,
				},
				[98444] = {
					["type"] = "BUFF",
					["source"] = "Pyradis",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127230] = {
					["type"] = "BUFF",
					["source"] = "Boomdiddy",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117507] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Northwind Hawk",
					["npcID"] = 59700,
				},
				[279913] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rainfire-Mal'Ganis",
					["npcID"] = 0,
				},
				[298848] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tonybanana",
					["npcID"] = 0,
				},
				[101643] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Golleniroll-Gorgonnash",
					["npcID"] = 0,
				},
				[162794] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lilmajin",
					["encounterID"] = 2344,
				},
				[312155] = {
					["type"] = "BUFF",
					["source"] = "N'Zoth the Corruptor",
					["npcID"] = 158041,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[1953] = {
					["type"] = "BUFF",
					["source"] = "Creeamy",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Steelwill-Moonrunner",
					["npcID"] = 0,
				},
				[297315] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Greater Void Elemental",
					["npcID"] = 153130,
				},
				[314203] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[52437] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[273264] = {
					["type"] = "BUFF",
					["source"] = "Lelantoz-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[308575] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fallen Riftwalker",
					["npcID"] = 158146,
				},
				[298852] = {
					["source"] = "Jembokanti",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256702] = {
					["source"] = "Issatotem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185313] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[208086] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[498] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[82326] = {
					["source"] = "Dragadon-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313184] = {
					["type"] = "BUFF",
					["source"] = "Psychus",
					["npcID"] = 158376,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[316767] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280433] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skullrepo",
					["npcID"] = 0,
				},
				[316768] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212182] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[210391] = {
					["source"] = "Dragadon-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255937] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fictions-Zul'jin",
					["npcID"] = 0,
				},
				[277365] = {
					["source"] = "Kao-Tien Subjugator",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136551,
				},
				[277366] = {
					["source"] = "Kao-Tien Marauder",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136552,
				},
				[192225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arkkanis-Thrall",
					["npcID"] = 0,
				},
				[198111] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Possums-Stormreaver",
					["npcID"] = 0,
				},
				[2050] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shantei-Ragnaros",
					["encounterID"] = 2344,
				},
				[298863] = {
					["source"] = "Jembokanti",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147193] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Marderzh-Thrall",
					["encounterID"] = 2344,
				},
				[2094] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[2098] = {
					["source"] = "Trù-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[527] = {
					["source"] = "Soccerbilly-Gorefiend",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[298866] = {
					["npcID"] = 153887,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lashing Tendril",
					["encounterID"] = 2375,
				},
				[58452] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nial-AeriePeak",
					["npcID"] = 0,
				},
				[256453] = {
					["source"] = "Jerbane-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12654] = {
					["type"] = "DEBUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[300403] = {
					["source"] = "Wild Wind",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152685,
				},
				[298357] = {
					["type"] = "BUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[317292] = {
					["npcID"] = 162480,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "N'Zoth the Corruptor",
					["encounterID"] = 2344,
				},
				[546] = {
					["source"] = "Locopanda-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203233] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deyjavu",
					["npcID"] = 0,
				},
				[300919] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Trumps-Thrall",
					["npcID"] = 0,
				},
				[205025] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nial-AeriePeak",
					["npcID"] = 0,
				},
				[256456] = {
					["source"] = "Bullymog-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273797] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[33697] = {
					["source"] = "Franticbull-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102417] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerkwa-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[315763] = {
					["type"] = "BUFF",
					["source"] = "Lînny-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[145152] = {
					["type"] = "BUFF",
					["source"] = "Mangloid",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319346] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[200166] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Valandrak-Zul'jin",
					["encounterID"] = 2344,
				},
				[212704] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jojohunts",
					["npcID"] = 0,
				},
				[118922] = {
					["type"] = "BUFF",
					["source"] = "Kreiser-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[231895] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thejx-Kel'Thuzad",
					["npcID"] = 0,
				},
				[11327] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[171253] = {
					["source"] = "Ischyros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[585] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shantei-Ragnaros",
					["encounterID"] = 2344,
				},
				[586] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[207076] = {
					["type"] = "BUFF",
					["source"] = "Daltexx",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256460] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dkslayers-Mal'Ganis",
					["npcID"] = 0,
				},
				[589] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Marderzh-Thrall",
					["encounterID"] = 2344,
				},
				[236502] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jlow-Quel'Thalas",
					["npcID"] = 0,
				},
				[276876] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kunchong Destroyer",
					["npcID"] = 153278,
				},
				[204262] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shamanheals-Ursin",
					["npcID"] = 0,
				},
				[16953] = {
					["source"] = "Horncolio-Turalyon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[596] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shantei-Ragnaros",
					["encounterID"] = 2344,
				},
				[117516] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Northwind Hawk",
					["npcID"] = 59700,
				},
				[190446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[315772] = {
					["type"] = "BUFF",
					["source"] = "N'Zoth the Corruptor",
					["npcID"] = 158041,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[199658] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[77472] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2344,
				},
				[273298] = {
					["source"] = "Beatahoex-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[34914] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Marderzh-Thrall",
					["encounterID"] = 2344,
				},
				[273299] = {
					["source"] = "Beatahoex-Thrall",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106898] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[272276] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[257231] = {
					["source"] = "Bloodhunter War-Witch",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 123439,
				},
				[273301] = {
					["source"] = "Irontide Keelhauler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138212,
				},
				[278931] = {
					["type"] = "BUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[124682] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Monktain-Ravencrest",
					["encounterID"] = 2344,
				},
				[316801] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[58519] = {
					["type"] = "DEBUFF",
					["source"] = "Orgrimmar Grunt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 3296,
				},
				[279956] = {
					["type"] = "DEBUFF",
					["source"] = "Marderzh-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[210152] = {
					["type"] = "BUFF",
					["source"] = "Valandrak-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[275351] = {
					["type"] = "BUFF",
					["source"] = "Hèllbournè",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[633] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thejx-Kel'Thuzad",
					["npcID"] = 0,
				},
				[231390] = {
					["type"] = "BUFF",
					["source"] = "Thanda-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[313733] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Harbinger Il'koxik",
					["npcID"] = 160810,
				},
				[288146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nephanee-Zangarmarsh",
					["npcID"] = 0,
				},
				[313734] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Harbinger Il'koxik",
					["npcID"] = 160810,
				},
				[311176] = {
					["npcID"] = 158041,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "N'Zoth the Corruptor",
					["encounterID"] = 2344,
				},
				[269214] = {
					["type"] = "BUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[206572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Doomrogg",
					["npcID"] = 0,
				},
				[268194] = {
					["source"] = "Fathomm-Dalaran",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315787] = {
					["type"] = "BUFF",
					["source"] = "Lilmajin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[131347] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Valandrak-Zul'jin",
					["encounterID"] = 2344,
				},
				[213995] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Büonetta",
					["npcID"] = 0,
				},
				[222695] = {
					["source"] = "Lazyllama-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267685] = {
					["type"] = "BUFF",
					["source"] = "Cornric-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[5394] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[316814] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[155145] = {
					["source"] = "Whitethorn-Ghostlands",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19705] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mysticbadger",
					["npcID"] = 0,
				},
				[190456] = {
					["source"] = "Fathomm-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49821] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Marderzh-Thrall",
					["encounterID"] = 2344,
				},
				[288158] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bawbie-Eonar",
					["npcID"] = 0,
				},
				[124430] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[312211] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kunchong Destroyer",
					["npcID"] = 153278,
				},
				[691] = {
					["source"] = "Châös-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[135700] = {
					["source"] = "Horncolio-Turalyon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306583] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272296] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[289184] = {
					["type"] = "BUFF",
					["source"] = "Kreiser-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[312213] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kunchong Destroyer",
					["npcID"] = 153278,
				},
				[698] = {
					["source"] = "Moonstriker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295838] = {
					["type"] = "DEBUFF",
					["source"] = "Valandrak-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[61336] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[20473] = {
					["source"] = "Dragadon-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288675] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[313751] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Infused Amber Ooze",
					["npcID"] = 160930,
				},
				[295840] = {
					["type"] = "BUFF",
					["source"] = "Valandrak-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[193530] = {
					["type"] = "BUFF",
					["source"] = "Lelantoz-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[193786] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[712] = {
					["source"] = "Warrlock-Whisperwind",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316823] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[286630] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arkkanis-Thrall",
					["npcID"] = 0,
				},
				[184575] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Torodelsur-Arthas",
					["npcID"] = 0,
				},
				[295842] = {
					["type"] = "BUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[197625] = {
					["source"] = "Psyphonn-AlteracMountains",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16827] = {
					["npcID"] = 151144,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "dlwlrma",
					["encounterID"] = 2344,
				},
				[247777] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[316826] = {
					["npcID"] = 162764,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Twisted Appendage",
					["encounterID"] = 2344,
				},
				[197626] = {
					["source"] = "Psyphonn-AlteracMountains",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113942] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Botched-Executus",
					["npcID"] = 0,
				},
				[185857] = {
					["source"] = "Irontide Trickshot",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138167,
				},
				[147732] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[740] = {
					["type"] = "BUFF",
					["source"] = "Zerkwa-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[197628] = {
					["source"] = "Psyphonn-AlteracMountains",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[744] = {
					["source"] = "Irontide Cutthroat",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138170,
				},
				[310690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[311202] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[269239] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[274357] = {
					["type"] = "BUFF",
					["source"] = "Thanda-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[187650] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Osardurp-Turalyon",
					["encounterID"] = 2344,
				},
				[93985] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zixiks",
					["encounterID"] = 2344,
				},
				[313763] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Baruk Stoneshaper",
					["npcID"] = 155957,
				},
				[316835] = {
					["type"] = "DEBUFF",
					["source"] = "Twisted Appendage",
					["npcID"] = 162764,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[202748] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Patientarrow-Thrall",
					["npcID"] = 0,
				},
				[317859] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[195072] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Valandrak-Zul'jin",
					["encounterID"] = 2344,
				},
				[277943] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[310184] = {
					["npcID"] = 158376,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Psychus",
					["encounterID"] = 2344,
				},
				[49184] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sathroxxigg-BleedingHollow",
					["encounterID"] = 2344,
				},
				[102558] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[295856] = {
					["npcID"] = 152396,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Guardian of Azeroth",
					["encounterID"] = 2344,
				},
				[256739] = {
					["source"] = "Nirvanax-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[774] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerkwa-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[47585] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[3110] = {
					["npcID"] = 58959,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Istatoc",
					["encounterID"] = 2344,
				},
				[260322] = {
					["source"] = "Nol'ixwan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130741,
				},
				[256740] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jojohunts",
					["npcID"] = 0,
				},
				[783] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerkwa-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[155158] = {
					["type"] = "DEBUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[243435] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[317865] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[62618] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[23161] = {
					["type"] = "BUFF",
					["source"] = "Boomdotsalot",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193796] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[318378] = {
					["type"] = "BUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[262115] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[213243] = {
					["source"] = "Selis-Gul'dan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85288] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Påblo",
					["encounterID"] = 2344,
				},
				[158486] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Grismire-Destromath",
					["npcID"] = 0,
				},
				[274369] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[8690] = {
					["source"] = "Yãkwá-Goldrinn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19483] = {
					["type"] = "BUFF",
					["source"] = "Infernal",
					["npcID"] = 89,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[21562] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[180748] = {
					["type"] = "BUFF",
					["source"] = "Dutchbahama",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194310] = {
					["type"] = "DEBUFF",
					["source"] = "Shingalingdk-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260070] = {
					["source"] = "Pa'kura Priest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131834,
				},
				[273349] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[314801] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Agustus Moulaine",
					["npcID"] = 157700,
				},
				[319919] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[200196] = {
					["type"] = "DEBUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[275909] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[818] = {
					["source"] = "Tyresius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318385] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Valeera Sanguinar",
					["npcID"] = 156837,
				},
				[109086] = {
					["source"] = "Madmoxxi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[307128] = {
					["type"] = "BUFF",
					["source"] = "Lînny-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[252396] = {
					["source"] = "Daddyfatsax",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[50977] = {
					["source"] = "Dulqwa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300989] = {
					["type"] = "BUFF",
					["source"] = "Sabiboy",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15407] = {
					["type"] = "BUFF",
					["source"] = "Marderzh-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[298431] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[185358] = {
					["source"] = "Grommxxar-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53600] = {
					["source"] = "Dusktodawn-Icecrown",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15487] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Marderzh-Thrall",
					["encounterID"] = 2344,
				},
				[22842] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[318391] = {
					["source"] = "Great Worm From Beyond",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152550,
				},
				[298433] = {
					["source"] = "Avoak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[308669] = {
					["type"] = "BUFF",
					["source"] = "Eye of Chaos",
					["npcID"] = 158315,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2376,
				},
				[243955] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Auctioneered",
					["npcID"] = 0,
				},
				[225788] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[34026] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bfaaltslul-Illidan",
					["encounterID"] = 2344,
				},
				[303041] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lincx",
					["npcID"] = 0,
				},
				[297412] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lavella-Mal'Ganis",
					["npcID"] = 0,
				},
				[165658] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rock Stalker",
					["npcID"] = 131890,
				},
				[157982] = {
					["type"] = "BUFF",
					["source"] = "Zerkwa-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[252400] = {
					["source"] = "Trainket",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295367] = {
					["type"] = "DEBUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[261612] = {
					["source"] = "Sethrak Warden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136546,
				},
				[308673] = {
					["type"] = "DEBUFF",
					["source"] = "Eye of Chaos",
					["npcID"] = 158315,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2376,
				},
				[298950] = {
					["type"] = "BUFF",
					["source"] = "Kongfubeef",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295368] = {
					["type"] = "DEBUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[51490] = {
					["source"] = "Baazikar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[309698] = {
					["npcID"] = 158367,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Basher Tentacle",
					["encounterID"] = 2344,
				},
				[312257] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vil'thik Amber-Mender",
					["npcID"] = 153255,
				},
				[298440] = {
					["source"] = "Fidelio",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[176151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tandoom-BurningLegion",
					["npcID"] = 0,
				},
				[313793] = {
					["type"] = "DEBUFF",
					["source"] = "Deathwing",
					["npcID"] = 160665,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[54049] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zhaazhum",
					["npcID"] = 417,
				},
				[77489] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[4987] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[264667] = {
					["type"] = "BUFF",
					["source"] = "Timmy",
					["npcID"] = 6500,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[224001] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Locokokonuts-Thrall",
					["npcID"] = 0,
				},
				[295373] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acetaphine-Illidan",
					["encounterID"] = 2344,
				},
				[30455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[312262] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vil'thik Ambersinger",
					["npcID"] = 157621,
				},
				[278999] = {
					["source"] = "Fathomm-Dalaran",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296911] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Boundless Corruption",
					["npcID"] = 152939,
				},
				[303564] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sathroxxigg-BleedingHollow",
					["encounterID"] = 2344,
				},
				[203277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Locokokonuts-Thrall",
					["npcID"] = 0,
				},
				[274395] = {
					["type"] = "BUFF",
					["source"] = "Vodokus",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255220] = {
					["source"] = "Blood Troll Corruptor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136296,
				},
				[119582] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acetaphine-Illidan",
					["encounterID"] = 2344,
				},
				[107428] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Monktain-Ravencrest",
					["encounterID"] = 2344,
				},
				[24858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jaxlyn",
					["npcID"] = 0,
				},
				[295378] = {
					["type"] = "BUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[308172] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fallen Voidspeaker",
					["npcID"] = 152722,
				},
				[256756] = {
					["source"] = "Forgiv",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[216328] = {
					["source"] = "Dragadon-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224772] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lockpker-Sargeras",
					["npcID"] = 0,
				},
				[303568] = {
					["type"] = "DEBUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[121118] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jojohunts",
					["npcID"] = 0,
				},
				[303570] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[297941] = {
					["source"] = "Marík-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213771] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zixiks",
					["encounterID"] = 2344,
				},
				[132403] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dunidane-Durotan",
					["npcID"] = 0,
				},
				[271843] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[2645] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[295384] = {
					["type"] = "BUFF",
					["source"] = "Pyradis",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[71909] = {
					["type"] = "DEBUFF",
					["source"] = "Shivdeeznuts",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80244] = {
					["source"] = "Capexotic",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311249] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Suvako",
					["npcID"] = 0,
				},
				[197908] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[251832] = {
					["source"] = "Ezyryder",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199545] = {
					["type"] = "BUFF",
					["source"] = "Rambledin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157736] = {
					["type"] = "DEBUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[101545] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wwrath-Illidan",
					["npcID"] = 0,
				},
				[308189] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bigbaadaboom-Kel'Thuzad",
					["npcID"] = 0,
				},
				[203538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Heliya-Ghostlands",
					["npcID"] = 0,
				},
				[228358] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[268776] = {
					["source"] = "Amani Battle Bear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130257,
				},
				[275429] = {
					["type"] = "BUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[122783] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[256220] = {
					["source"] = "Lingdo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283106] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Valeera Sanguinar",
					["npcID"] = 156837,
				},
				[152108] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Severinne",
					["encounterID"] = 2344,
				},
				[203539] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kelïra-Arthas",
					["npcID"] = 0,
				},
				[256217] = {
					["source"] = "Lingdo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291295] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[7827] = {
					["source"] = "Nekrikoichi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[240415] = {
					["source"] = "Miltanks",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256044] = {
					["type"] = "DEBUFF",
					["source"] = "Overseer Korgus",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127503,
				},
				[101546] = {
					["source"] = "Beatahoex-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294047] = {
					["type"] = "BUFF",
					["source"] = "Jembokanti",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298461] = {
					["source"] = "Dusktodawn-Icecrown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268955] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[108199] = {
					["source"] = "Zimdk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[161399] = {
					["source"] = "Ilikis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304603] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Macenzii-Azshara",
					["npcID"] = 0,
				},
				[34861] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shantei-Ragnaros",
					["encounterID"] = 2344,
				},
				[187837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[203285] = {
					["source"] = "Skyballer-Stormreaver",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236188] = {
					["type"] = "BUFF",
					["source"] = "Valereon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[88625] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shantei-Ragnaros",
					["encounterID"] = 2344,
				},
				[2538] = {
					["source"] = "Nekrikoichi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157228] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sortof-Zul'jin",
					["npcID"] = 0,
				},
				[256219] = {
					["source"] = "Kerivas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22812] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[264689] = {
					["type"] = "DEBUFF",
					["source"] = "Lînny-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[308188] = {
					["source"] = "Madforwhat-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304606] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Geirdriful-Azralon",
					["npcID"] = 0,
				},
				[974] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spiritfodder",
					["npcID"] = 0,
				},
				[43195] = {
					["type"] = "BUFF",
					["source"] = "Ayayachan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265202] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shantei-Ragnaros",
					["encounterID"] = 2344,
				},
				[31224] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[2540] = {
					["source"] = "Nekrikoichi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80483] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thanda-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[308190] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Needler Zhesalla",
					["npcID"] = 160922,
				},
				[100780] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acetaphine-Illidan",
					["encounterID"] = 2344,
				},
				[29166] = {
					["source"] = "Rykou",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183585] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lightsworn Anchorite",
					["npcID"] = 109751,
				},
				[44457] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Possums-Stormreaver",
					["npcID"] = 0,
				},
				[257413] = {
					["source"] = "Yenny",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257620] = {
					["source"] = "Grommxxar-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287916] = {
					["type"] = "BUFF",
					["source"] = "Roughsea",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119415] = {
					["type"] = "BUFF",
					["source"] = "Soembarasing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272790] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Osardurp-Turalyon",
					["encounterID"] = 2344,
				},
				[313310] = {
					["type"] = "BUFF",
					["source"] = "Kreiser-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[162979] = {
					["source"] = "Komicus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261628] = {
					["source"] = "Sethrak Warden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136546,
				},
				[145205] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerkwa-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[214975] = {
					["type"] = "DEBUFF",
					["source"] = "Coffeedeath",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260349] = {
					["source"] = "Ten'gor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130713,
				},
				[264760] = {
					["type"] = "BUFF",
					["source"] = "Pomf",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Macenzii-Azshara",
					["npcID"] = 0,
				},
				[201754] = {
					["npcID"] = 47389,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "WeedBrain",
					["encounterID"] = 2344,
				},
				[8238] = {
					["source"] = "Sinsterarrow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47528] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sathroxxigg-BleedingHollow",
					["encounterID"] = 2344,
				},
				[279169] = {
					["source"] = "Relanddora",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dklegas",
					["npcID"] = 0,
				},
				[298794] = {
					["source"] = "Pandâdk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[105771] = {
					["type"] = "DEBUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[185123] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Allyxia-Mal'Ganis",
					["npcID"] = 0,
				},
				[132157] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shantei-Ragnaros",
					["encounterID"] = 2344,
				},
				[106785] = {
					["source"] = "Bwonsamdeez",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32216] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[224189] = {
					["type"] = "BUFF",
					["source"] = "Djbeanz",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48168] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 96955,
				},
				[279028] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[184092] = {
					["source"] = "Melanchthon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[236299] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Lie-BurningLegion",
					["npcID"] = 0,
				},
				[2152] = {
					["source"] = "Alkbezbez",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279029] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[8122] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[238166] = {
					["source"] = "Comebackcat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[238167] = {
					["source"] = "Comebackcat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[7328] = {
					["source"] = "Clyph",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207386] = {
					["type"] = "BUFF",
					["source"] = "Zerkwa-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[298796] = {
					["source"] = "Pandâdk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281792] = {
					["type"] = "BUFF",
					["source"] = "Frostport",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197919] = {
					["source"] = "Ceronash-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281794] = {
					["type"] = "BUFF",
					["source"] = "Frostport",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279397] = {
					["type"] = "BUFF",
					["source"] = "Clyph",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274426] = {
					["source"] = "Horncolio-Turalyon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1856] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[108843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Possums-Stormreaver",
					["npcID"] = 0,
				},
				[121253] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acetaphine-Illidan",
					["encounterID"] = 2344,
				},
				[288756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[279033] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[223500] = {
					["type"] = "BUFF",
					["source"] = "Càlem",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213610] = {
					["type"] = "BUFF",
					["source"] = "Ilikis",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1044] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Iawl-Zul'jin",
					["npcID"] = 0,
				},
				[34769] = {
					["type"] = "BUFF",
					["source"] = "Candinia",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300893] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lymos",
					["npcID"] = 0,
				},
				[112042] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 1860,
				},
				[83245] = {
					["source"] = "Blondbimbo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[66] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[124213] = {
					["type"] = "BUFF",
					["source"] = "Juggajugga",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298797] = {
					["source"] = "Pandâdk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1706] = {
					["source"] = "Broggon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260355] = {
					["source"] = "Ten'gor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130713,
				},
				[1064] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2344,
				},
				[100784] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Monktain-Ravencrest",
					["encounterID"] = 2344,
				},
				[313948] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[2139] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cornric-Illidan",
					["encounterID"] = 2344,
				},
				[194084] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[76732] = {
					["npcID"] = 156524,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kelsey Steelspark",
					["encounterID"] = 2374,
				},
				[197548] = {
					["type"] = "BUFF",
					["source"] = "Soliwaves",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236021] = {
					["type"] = "DEBUFF",
					["source"] = "Botferal-BleedingHollow",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[69820] = {
					["type"] = "BUFF",
					["source"] = "Valerock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209693] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Valandrak-Zul'jin",
					["encounterID"] = 2344,
				},
				[317420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Oranash-Mal'Ganis",
					["npcID"] = 0,
				},
				[8676] = {
					["source"] = "Trù-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[58514] = {
					["type"] = "DEBUFF",
					["source"] = "Darkspear Headhunter",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 74228,
				},
				[198837] = {
					["source"] = "Risen Skulker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 99541,
				},
				[29722] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Severinne",
					["encounterID"] = 2344,
				},
				[280149] = {
					["type"] = "BUFF",
					["source"] = "Gräve",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[171640] = {
					["source"] = "Urbandk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302542] = {
					["source"] = "Zanj'ir Stormcaller",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155488,
				},
				[43308] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[19647] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nheedom",
					["npcID"] = 417,
				},
				[212799] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nial-AeriePeak",
					["npcID"] = 0,
				},
				[11334] = {
					["type"] = "BUFF",
					["source"] = "Myraj",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257136] = {
					["source"] = "Senditx",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289277] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[49245] = {
					["source"] = "Taudi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49248] = {
					["source"] = "Taudi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[120360] = {
					["source"] = "Grommxxar-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49247] = {
					["source"] = "Taudi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279555] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[1122] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Severinne",
					["encounterID"] = 2344,
				},
				[184364] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[272903] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Whèrésmyßall-Arthas",
					["npcID"] = 0,
				},
				[318449] = {
					["type"] = "BUFF",
					["source"] = "N'Zoth the Corruptor",
					["npcID"] = 158041,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[292350] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Overlord Mathias Shaw",
					["npcID"] = 158157,
				},
				[148542] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[182993] = {
					["type"] = "BUFF",
					["source"] = "Urogh",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298490] = {
					["source"] = "Harpoon Cannon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153682,
				},
				[1784] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Büonetta",
					["npcID"] = 0,
				},
				[48103] = {
					["type"] = "BUFF",
					["source"] = "Crakohzul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190892] = {
					["source"] = "Rounín",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116011] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Carnage-SteamwheedleCartel",
					["encounterID"] = 2344,
				},
				[93622] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[203812] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lockpker-Sargeras",
					["npcID"] = 0,
				},
				[69179] = {
					["source"] = "Kiimmi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3918] = {
					["source"] = "Wurtiix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77758] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zixiks",
					["encounterID"] = 2344,
				},
				[252216] = {
					["source"] = "Nohala-Fizzcrank",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73920] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2344,
				},
				[3166] = {
					["type"] = "BUFF",
					["source"] = "Dechtire",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53480] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jojohunts",
					["npcID"] = 0,
				},
				[290819] = {
					["type"] = "BUFF",
					["source"] = "Kreiser-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[256777] = {
					["source"] = "Kreinieleron",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283655] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Valeera Sanguinar",
					["npcID"] = 156837,
				},
				[79471] = {
					["type"] = "BUFF",
					["source"] = "Barador",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184367] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Påblo",
					["encounterID"] = 2344,
				},
				[238177] = {
					["source"] = "Poxi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116680] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[122281] = {
					["source"] = "Kâd",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203814] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Auctioneered",
					["npcID"] = 0,
				},
				[314843] = {
					["npcID"] = 158041,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "N'Zoth the Corruptor",
					["encounterID"] = 2344,
				},
				[297107] = {
					["source"] = "Pikgochu-Uther",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48107] = {
					["type"] = "BUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[6795] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zixiks",
					["encounterID"] = 2344,
				},
				[2379] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[2383] = {
					["type"] = "BUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[286587] = {
					["type"] = "BUFF",
					["source"] = "Mmino-Magtheridon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195627] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Büonetta",
					["npcID"] = 0,
				},
				[256695] = {
					["source"] = "Issatotem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[292359] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Regeneratin-Stormreaver",
					["npcID"] = 0,
				},
				[256698] = {
					["source"] = "Issatotem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[97462] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[205351] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Marderzh-Thrall",
					["encounterID"] = 2344,
				},
				[292360] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Msaliti-Blackhand",
					["npcID"] = 0,
				},
				[288075] = {
					["type"] = "BUFF",
					["source"] = "Beeftriceps",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256696] = {
					["source"] = "Issatotem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283661] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Valeera Sanguinar",
					["npcID"] = 156837,
				},
				[292361] = {
					["type"] = "BUFF",
					["source"] = "Kreiser-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[313666] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Needler Zhesalla",
					["npcID"] = 160922,
				},
				[260364] = {
					["source"] = "Thalunagryn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311203] = {
					["type"] = "BUFF",
					["source"] = "Rodhor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292362] = {
					["source"] = "Meéko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185394] = {
					["source"] = "Lygerxd-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2641] = {
					["source"] = "Sheuglyy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273428] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nandorn-Norgannon",
					["npcID"] = 0,
				},
				[292363] = {
					["source"] = "Xeni-Gul'dan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268311] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[97463] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[116014] = {
					["type"] = "BUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[292364] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Trollfish-Stormreaver",
					["npcID"] = 0,
				},
				[195630] = {
					["type"] = "BUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[187698] = {
					["source"] = "Greenbilly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268894] = {
					["source"] = "Djclown",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48108] = {
					["type"] = "BUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[296971] = {
					["type"] = "BUFF",
					["source"] = "Cornric-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[33907] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Broll Bearmantle",
					["npcID"] = 142294,
				},
				[119085] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[308742] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[268314] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[202028] = {
					["source"] = "Horncolio-Turalyon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283667] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Valeera Sanguinar",
					["npcID"] = 156837,
				},
				[302602] = {
					["source"] = "Aquelian Honor Guard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155527,
				},
				[294926] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zixiks",
					["encounterID"] = 2344,
				},
				[45927] = {
					["source"] = "Bollverk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[236060] = {
					["type"] = "BUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[228128] = {
					["type"] = "BUFF",
					["source"] = "Bou",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246807] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Torodelsur-Arthas",
					["npcID"] = 0,
				},
				[108211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nalien-Azuremyst",
					["npcID"] = 0,
				},
				[212520] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[77762] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[290467] = {
					["type"] = "BUFF",
					["source"] = "Dtwø",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264735] = {
					["type"] = "BUFF",
					["source"] = "Nerpur",
					["npcID"] = 103326,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[316422] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Goblinmommy-Sargeras",
					["npcID"] = 0,
				},
				[260881] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[33076] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shantei-Ragnaros",
					["encounterID"] = 2344,
				},
				[184662] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fictions-Zul'jin",
					["npcID"] = 0,
				},
				[190356] = {
					["source"] = "Rodhor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[208683] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[198149] = {
					["source"] = "Rodhor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157981] = {
					["source"] = "Freák",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285719] = {
					["type"] = "BUFF",
					["source"] = "Boopmaster-Bonechewer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314889] = {
					["npcID"] = 159578,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Exposed Synapse",
					["encounterID"] = 2344,
				},
				[257044] = {
					["source"] = "Grommxxar-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197937] = {
					["type"] = "BUFF",
					["source"] = "Marderzh-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[48045] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Marderzh-Thrall",
					["encounterID"] = 2344,
				},
				[295047] = {
					["type"] = "DEBUFF",
					["source"] = "Mumo",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306715] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solinus",
					["npcID"] = 0,
				},
				[53209] = {
					["source"] = "Shadowfawx",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285721] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cashforgold-Hyjal",
					["npcID"] = 0,
				},
				[2643] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lelantoz-Aegwynn",
					["encounterID"] = 2344,
				},
				[256691] = {
					["source"] = "Issatotem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[134477] = {
					["type"] = "BUFF",
					["source"] = "Krimkazul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[5308] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Påblo",
					["encounterID"] = 2344,
				},
				[30146] = {
					["source"] = "Eufemia",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187874] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[285981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mahla",
					["npcID"] = 0,
				},
				[283676] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Valeera Sanguinar",
					["npcID"] = 156837,
				},
				[190831] = {
					["type"] = "BUFF",
					["source"] = "Hulksmashh-Skullcrusher",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294935] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Eilaura-Greymane",
					["npcID"] = 0,
				},
				[268836] = {
					["source"] = "Chrisppll-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287771] = {
					["source"] = "Aristofu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[126892] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Poeboy-Garona",
					["npcID"] = 0,
				},
				[298823] = {
					["type"] = "BUFF",
					["source"] = "Tinman",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242627] = {
					["source"] = "Nethrill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279584] = {
					["type"] = "BUFF",
					["source"] = "Valandrak-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[14914] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shantei-Ragnaros",
					["encounterID"] = 2344,
				},
				[303125] = {
					["source"] = "Aquelian Honor Guard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153619,
				},
				[289308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[268756] = {
					["type"] = "DEBUFF",
					["source"] = "Thanda-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[273956] = {
					["source"] = "Sethrak Warden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136546,
				},
				[107574] = {
					["source"] = "Fathomm-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53140] = {
					["source"] = "Therampant",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298009] = {
					["source"] = "Ebonfang",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316944] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[30108] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Senbonzakurâ",
					["npcID"] = 0,
				},
				[254474] = {
					["source"] = "Kyaura-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104430] = {
					["source"] = "Katu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[74231] = {
					["source"] = "Katu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155722] = {
					["type"] = "DEBUFF",
					["source"] = "Zerkwa-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[177578] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255074] = {
					["source"] = "Sugargay",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32379] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[288800] = {
					["type"] = "BUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[296547] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[180733] = {
					["source"] = "Eviandrys",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303062] = {
					["source"] = "Känyë",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256026] = {
					["source"] = "Ghettolas-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[40625] = {
					["type"] = "BUFF",
					["source"] = "Åna",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191034] = {
					["source"] = "Élaa-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252358] = {
					["source"] = "Micust",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3567] = {
					["source"] = "Ttmage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[252382] = {
					["source"] = "Zenaden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192058] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[195457] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Clandestin-AeriePeak",
					["npcID"] = 0,
				},
				[2823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Humphrees-Blackhand",
					["npcID"] = 0,
				},
				[289315] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Phobiia-Mal'Ganis",
					["npcID"] = 0,
				},
				[283658] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Valeera Sanguinar",
					["npcID"] = 156837,
				},
				[18562] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerkwa-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[257126] = {
					["source"] = "Ninevoids",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272940] = {
					["source"] = "Rippenyou-Zangarmarsh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33206] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[290361] = {
					["source"] = "Känyë",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[301310] = {
					["source"] = "Pùnq",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[286547] = {
					["source"] = "Vlara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[160331] = {
					["source"] = "Élaa-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302623] = {
					["source"] = "Aquelian Honor Guard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155527,
				},
				[199736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Squeezit-Mal'Ganis",
					["npcID"] = 0,
				},
				[181062] = {
					["source"] = "Wolyung",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[62061] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Waterbaby-Alexstrasza",
					["npcID"] = 0,
				},
				[285720] = {
					["type"] = "BUFF",
					["source"] = "Jacketdruid-Illidan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["type"] = "BUFF",
					["source"] = "Zerkwa-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[307742] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vil'thik Amber-Mender",
					["npcID"] = 157724,
				},
				[290360] = {
					["source"] = "Känyë",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298855] = {
					["source"] = "Jembokanti",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197690] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[36213] = {
					["npcID"] = 95072,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Greater Earth Elemental",
					["encounterID"] = 2338,
				},
				[278954] = {
					["source"] = "Dusktodawn-Icecrown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298845] = {
					["source"] = "Jembokanti",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102560] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tiktokthot-Aggramar",
					["npcID"] = 0,
				},
				[297999] = {
					["source"] = "Känyë",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1464] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[5697] = {
					["type"] = "BUFF",
					["source"] = "Ybarra",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73500] = {
					["source"] = "Buggywuggy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268852] = {
					["source"] = "Dárksôul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61353] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dagna Flintlock",
					["npcID"] = 96779,
				},
				[16593] = {
					["type"] = "BUFF",
					["source"] = "Hakjek",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278244] = {
					["source"] = "Pizzaisgood",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267201] = {
					["source"] = "Whitexsix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263224] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 123441,
				},
				[199483] = {
					["type"] = "BUFF",
					["source"] = "Greenbilly",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185471] = {
					["type"] = "BUFF",
					["source"] = "Mogwaizor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195901] = {
					["source"] = "Soccerbilly-Gorefiend",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47536] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[1490] = {
					["type"] = "DEBUFF",
					["source"] = "Valandrak-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[2983] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ravik-TheForgottenCoast",
					["npcID"] = 0,
				},
				[190784] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Iawl-Zul'jin",
					["npcID"] = 0,
				},
				[298025] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "SI:7 Informant",
					["npcID"] = 156795,
				},
				[312866] = {
					["type"] = "BUFF",
					["source"] = "Deathwing",
					["npcID"] = 160665,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[201787] = {
					["source"] = "Beatahoex-Thrall",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268856] = {
					["type"] = "BUFF",
					["source"] = "Lilmajin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[272526] = {
					["source"] = "Mine Technician",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138521,
				},
				[273974] = {
					["source"] = "Selis-Gul'dan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256455] = {
					["type"] = "BUFF",
					["source"] = "Jassmine",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287280] = {
					["source"] = "Plush-Turalyon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77764] = {
					["type"] = "BUFF",
					["source"] = "Vuhdruid",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296492] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Void Globule",
					["npcID"] = 152669,
				},
				[218164] = {
					["source"] = "Lohngorron",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vinkine-Illidan",
					["npcID"] = 0,
				},
				[306600] = {
					["type"] = "DEBUFF",
					["source"] = "Nimnin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202719] = {
					["source"] = "Ânpû",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115767] = {
					["source"] = "Fathomm-Dalaran",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260384] = {
					["source"] = "Jembokanti",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77130] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2344,
				},
				[69070] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2344,
				},
				[281402] = {
					["source"] = "Pikapanda",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257099] = {
					["source"] = "Gwydion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267325] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[276025] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[203534] = {
					["type"] = "BUFF",
					["source"] = "Prodeath",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75249] = {
					["source"] = "Cerres",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[312360] = {
					["npcID"] = 152718,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Alleria Windrunner",
					["encounterID"] = 2338,
				},
				[183111] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 104091,
				},
				[187501] = {
					["source"] = "Urbandk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80353] = {
					["type"] = "BUFF",
					["source"] = "Freezswerdna",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267327] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[181408] = {
					["source"] = "Urbandk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212552] = {
					["type"] = "BUFF",
					["source"] = "Brimbor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289324] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[298033] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "SI:7 Informant",
					["npcID"] = 156795,
				},
				[302639] = {
					["source"] = "Aquelian Honor Guard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155527,
				},
				[207400] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[118455] = {
					["type"] = "BUFF",
					["source"] = "Lelantoz-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[267329] = {
					["type"] = "BUFF",
					["source"] = "Kreiser-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[139176] = {
					["source"] = "Killsen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280635] = {
					["source"] = "Boppitz-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275006] = {
					["type"] = "BUFF",
					["source"] = "Notamaje",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267330] = {
					["type"] = "BUFF",
					["source"] = "Kreiser-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[187546] = {
					["source"] = "Urbandk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188370] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dunidane-Durotan",
					["npcID"] = 0,
				},
				[212283] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[267331] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[302642] = {
					["source"] = "Aquelian Honor Guard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155527,
				},
				[294966] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[101568] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[59052] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[271938] = {
					["source"] = "Nest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138172,
				},
				[187464] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[100] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Påblo",
					["encounterID"] = 2344,
				},
				[252395] = {
					["source"] = "Drubra",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[235313] = {
					["type"] = "BUFF",
					["source"] = "Cornric-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[1604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Void Globule",
					["npcID"] = 152669,
				},
				[268907] = {
					["source"] = "Kiltron",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51124] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[308862] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unstable Servant",
					["npcID"] = 158411,
				},
				[114800] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264776] = {
					["source"] = "Smugbunky-BleedingHollow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316463] = {
					["npcID"] = 158374,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mindgate",
					["encounterID"] = 2344,
				},
				[273988] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jojohunts",
					["npcID"] = 0,
				},
				[303158] = {
					["source"] = "Zanj'ir Myrmidon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152883,
				},
				[203720] = {
					["source"] = "Hèllbournè",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203819] = {
					["type"] = "BUFF",
					["source"] = "Hèllbournè",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277511] = {
					["source"] = "Rewired Harvester",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137153,
				},
				[883] = {
					["source"] = "Asgár",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[301624] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Nevé",
					["npcID"] = 0,
				},
				[238190] = {
					["source"] = "Jooby",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261773] = {
					["source"] = "Sethrak Warbringer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136547,
				},
				[49822] = {
					["type"] = "BUFF",
					["source"] = "Wulfshroo",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3275] = {
					["source"] = "Firemountain",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308278] = {
					["npcID"] = 152718,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Alleria Windrunner",
					["encounterID"] = 2338,
				},
				[74191] = {
					["source"] = "Sheuglyy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6572] = {
					["source"] = "Fathomm-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46352] = {
					["type"] = "BUFF",
					["source"] = "Qixxz",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101186] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Teresea-Turalyon",
					["npcID"] = 0,
				},
				[273992] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jojohunts",
					["npcID"] = 0,
				},
				[113724] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Possums-Stormreaver",
					["npcID"] = 0,
				},
				[688] = {
					["source"] = "Boomdotsalot",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193753] = {
					["type"] = "BUFF",
					["source"] = "Devei",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302651] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Exquisitus-Stormrage",
					["npcID"] = 0,
				},
				[279943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Phobiia-Mal'Ganis",
					["npcID"] = 0,
				},
				[272970] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Suvako",
					["npcID"] = 0,
				},
				[196099] = {
					["type"] = "BUFF",
					["source"] = "Nomandible",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[160597] = {
					["source"] = "Assassablorg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80174] = {
					["type"] = "DEBUFF",
					["source"] = "Burning Blade Apprentice",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 3198,
				},
				[268877] = {
					["type"] = "BUFF",
					["source"] = "Lelantoz-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[1543] = {
					["source"] = "Forgiv",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205636] = {
					["source"] = "Uraviti",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313400] = {
					["npcID"] = 158375,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Corruptor Tentacle",
					["encounterID"] = 2344,
				},
				[58450] = {
					["type"] = "BUFF",
					["source"] = "Xulkor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1680] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[316036] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309307] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Carnage-SteamwheedleCartel",
					["encounterID"] = 2344,
				},
				[309819] = {
					["npcID"] = 152718,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Alleria Windrunner",
					["encounterID"] = 2338,
				},
				[310331] = {
					["type"] = "BUFF",
					["source"] = "Mind's Eye",
					["npcID"] = 158122,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[127797] = {
					["source"] = "Psyphonn-AlteracMountains",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162906] = {
					["type"] = "BUFF",
					["source"] = "Novabelle",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[148540] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296003] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[6788] = {
					["type"] = "DEBUFF",
					["source"] = "Marderzh-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[301121] = {
					["source"] = "Necrofin Murloc",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152709,
				},
				[296059] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[297989] = {
					["source"] = "Biggerkman-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258860] = {
					["source"] = "Zyorek-Magtheridon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24379] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251838] = {
					["type"] = "BUFF",
					["source"] = "Buzerah",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119611] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[206662] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Solinus",
					["npcID"] = 0,
				},
				[280653] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[211881] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Allyxia-Mal'Ganis",
					["npcID"] = 0,
				},
				[17253] = {
					["npcID"] = 150373,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Replacesoon",
					["encounterID"] = 2344,
				},
				[80610] = {
					["type"] = "BUFF",
					["source"] = "Razgar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 43239,
				},
				[280654] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[313918] = {
					["type"] = "BUFF",
					["source"] = "Cornric-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[297995] = {
					["source"] = "Foursèasons",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308801] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zardeth of the Black Claw",
					["npcID"] = 158371,
				},
				[255129] = {
					["source"] = "Foursèasons",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272979] = {
					["source"] = "Dusktodawn-Icecrown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115006] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hozen Nibstabber",
					["npcID"] = 58945,
				},
				[193358] = {
					["source"] = "Trù-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203849] = {
					["source"] = "Mobster-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[74250] = {
					["source"] = "Ludik",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Priestio-Mal'Ganis",
					["npcID"] = 0,
				},
				[304851] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[64044] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[268887] = {
					["type"] = "BUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[275540] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[192081] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[297034] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[267799] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Thejx-Kel'Thuzad",
					["npcID"] = 0,
				},
				[210053] = {
					["source"] = "Élaa-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116670] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Monktain-Ravencrest",
					["encounterID"] = 2344,
				},
				[297035] = {
					["type"] = "BUFF",
					["source"] = "Cornric-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[1766] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[40120] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Leafygreen-Illidan",
					["npcID"] = 0,
				},
				[190826] = {
					["type"] = "BUFF",
					["source"] = "Hulksmashh-Skullcrusher",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34428] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[273293] = {
					["source"] = "Darthvin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287825] = {
					["source"] = "Soccerbilly-Gorefiend",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194384] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Priestio-Mal'Ganis",
					["npcID"] = 0,
				},
				[188499] = {
					["type"] = "BUFF",
					["source"] = "Lilmajin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[96312] = {
					["type"] = "BUFF",
					["source"] = "Tazda",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[24450] = {
					["type"] = "BUFF",
					["source"] = "Desire",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 7434,
				},
				[203852] = {
					["type"] = "BUFF",
					["source"] = "Jäyke",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289362] = {
					["source"] = "Franticbull-Illidan",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287827] = {
					["source"] = "Soccerbilly-Gorefiend",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104773] = {
					["type"] = "BUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[297039] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[268893] = {
					["type"] = "BUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[115008] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Monktain-Ravencrest",
					["encounterID"] = 2344,
				},
				[16739] = {
					["type"] = "BUFF",
					["source"] = "Pyradis",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304037] = {
					["type"] = "BUFF",
					["source"] = "Phurrmented",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313928] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acolyte of N'Zoth",
					["npcID"] = 161139,
				},
				[78674] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sortof-Zul'jin",
					["npcID"] = 0,
				},
				[125883] = {
					["source"] = "Zhu-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[74589] = {
					["type"] = "BUFF",
					["source"] = "Tazda",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[74964] = {
					["source"] = "Cerres",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[162402] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Auctioneered",
					["npcID"] = 0,
				},
				[122301] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Water Sprite",
					["npcID"] = 62930,
				},
				[203173] = {
					["source"] = "Blodig",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1822] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerkwa-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[16870] = {
					["type"] = "BUFF",
					["source"] = "Zerkwa-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[73685] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[48181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Senbonzakurâ",
					["npcID"] = 0,
				},
				[236077] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[5277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[146283] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yoyi-Kalecgos",
					["npcID"] = 0,
				},
				[311373] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "SI:7 Light-Hunter",
					["npcID"] = 156794,
				},
				[313932] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Infused Amber Ooze",
					["npcID"] = 160930,
				},
				[78675] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tiktokthot-Aggramar",
					["npcID"] = 0,
				},
				[118521] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Enraged Priest",
					["npcID"] = 59166,
				},
				[114783] = {
					["source"] = "Fknmoneyman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117952] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Monktain-Ravencrest",
					["encounterID"] = 2344,
				},
				[191920] = {
					["type"] = "BUFF",
					["source"] = "Aaravos",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1850] = {
					["type"] = "BUFF",
					["source"] = "Zerkwa-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[29175] = {
					["type"] = "BUFF",
					["source"] = "Eldanor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[287835] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[306770] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Enthralled Weaponsmith",
					["npcID"] = 156641,
				},
				[314962] = {
					["source"] = "Tyresius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[250878] = {
					["type"] = "BUFF",
					["source"] = "Zéphine",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287836] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[205648] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[313424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pentiumfour-Elune",
					["npcID"] = 0,
				},
				[313936] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Infused Amber Ooze",
					["npcID"] = 160930,
				},
				[80723] = {
					["source"] = "Capexotic",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298584] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Enthralled Footman",
					["npcID"] = 153760,
				},
				[246152] = {
					["type"] = "BUFF",
					["source"] = "Osardurp-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[104395] = {
					["source"] = "Cerres",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fallen Heartpiercer",
					["npcID"] = 158092,
				},
				[214202] = {
					["type"] = "BUFF",
					["source"] = "Harys",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277471] = {
					["source"] = "Stormsong Loyalist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137155,
				},
				[268904] = {
					["type"] = "BUFF",
					["source"] = "Marderzh-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[200587] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rainfire-Mal'Ganis",
					["npcID"] = 0,
				},
				[312915] = {
					["type"] = "BUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[248622] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[33917] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zixiks",
					["encounterID"] = 2344,
				},
				[300751] = {
					["source"] = "Blasterzob",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[247249] = {
					["source"] = "Eviandrys",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48438] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerkwa-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[121536] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shantei-Ragnaros",
					["encounterID"] = 2344,
				},
				[50613] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sathroxxigg-BleedingHollow",
					["encounterID"] = 2344,
				},
				[280165] = {
					["type"] = "BUFF",
					["source"] = "Zerkwa-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[223306] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[256314] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Docile Porcupine",
					["npcID"] = 156759,
				},
				[180734] = {
					["source"] = "Eviandrys",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5225] = {
					["type"] = "BUFF",
					["source"] = "Algoríthm",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daenêrÿs-Trollbane",
					["npcID"] = 0,
				},
				[120] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Suvako",
					["npcID"] = 0,
				},
				[192090] = {
					["type"] = "DEBUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[104393] = {
					["source"] = "Sugargay",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[71864] = {
					["type"] = "BUFF",
					["source"] = "Utilitynerd",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20549] = {
					["source"] = "Swoletauro",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223819] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fictions-Zul'jin",
					["npcID"] = 0,
				},
				[209746] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sortof-Zul'jin",
					["npcID"] = 0,
				},
				[185438] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[11366] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Carnage-SteamwheedleCartel",
					["encounterID"] = 2344,
				},
				[264774] = {
					["type"] = "BUFF",
					["source"] = "Jâdè",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5784] = {
					["type"] = "BUFF",
					["source"] = "Swafrax",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47776] = {
					["source"] = "Dicedaddy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316703] = {
					["type"] = "BUFF",
					["source"] = "Amberftw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[152175] = {
					["source"] = "Beatahoex-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2649] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fenryr",
					["npcID"] = 119990,
				},
				[15572] = {
					["source"] = "Warfang Miner",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136015,
				},
				[122] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cornric-Illidan",
					["encounterID"] = 2344,
				},
				[53760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kthesage",
					["npcID"] = 0,
				},
				[278124] = {
					["source"] = "Fathomm-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285976] = {
					["source"] = "Nathaniel-Trollbane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282505] = {
					["source"] = "Leanansidhe-Zuluhed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3919] = {
					["source"] = "Wurtiix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256778] = {
					["source"] = "Carnemechada-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[109128] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[1966] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ravik-TheForgottenCoast",
					["npcID"] = 0,
				},
				[312413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Hive-Guard Naz'ruzek",
					["npcID"] = 160826,
				},
				[261947] = {
					["source"] = "Beatahoex-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117828] = {
					["type"] = "BUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[312782] = {
					["npcID"] = 158041,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "N'Zoth the Corruptor",
					["encounterID"] = 2344,
				},
				[113656] = {
					["source"] = "Beatahoex-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317020] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Neravine-Thrall",
					["npcID"] = 0,
				},
				[246851] = {
					["type"] = "BUFF",
					["source"] = "Osardurp-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[134522] = {
					["type"] = "BUFF",
					["source"] = "Sickass",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zara'thik Hive-Guard",
					["npcID"] = 157792,
				},
				[49143] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sathroxxigg-BleedingHollow",
					["encounterID"] = 2344,
				},
				[311392] = {
					["type"] = "DEBUFF",
					["source"] = "Mindgrasp Stalker",
					["npcID"] = 161411,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[287340] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[316510] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[74202] = {
					["source"] = "Sugargay",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[246852] = {
					["type"] = "BUFF",
					["source"] = "Osardurp-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[313960] = {
					["type"] = "BUFF",
					["source"] = "Sylvanas Windrunner",
					["npcID"] = 160671,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[300971] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[8004] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[19750] = {
					["source"] = "Dragadon-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17735] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bellos",
					["npcID"] = 1860,
				},
				[199260] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Doughmaker-Arthas",
					["npcID"] = 0,
				},
				[283660] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Valeera Sanguinar",
					["npcID"] = 156837,
				},
				[264314] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[191840] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[298928] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pandawarrìor-Mal'Ganis",
					["npcID"] = 0,
				},
				[6770] = {
					["source"] = "Trù-Stormrage",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203286] = {
					["source"] = "Skyballer-Stormreaver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275765] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8092] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[297889] = {
					["source"] = "Ian Langill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153321,
				},
				[246854] = {
					["type"] = "BUFF",
					["source"] = "Lelantoz-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[298512] = {
					["source"] = "Korlicmynuts-Kel'Thuzad",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298493] = {
					["source"] = "Harpoon Cannon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153682,
				},
				[292463] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[312720] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faceless Dominator",
					["npcID"] = 160550,
				},
				[313957] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drone Keeper Ak'thet",
					["npcID"] = 160874,
				},
				[302699] = {
					["source"] = "Aquelian Honor Guard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155527,
				},
				[209753] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sortof-Zul'jin",
					["npcID"] = 0,
				},
				[311399] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Armsmaster Terenson",
					["npcID"] = 156949,
				},
				[120517] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shantei-Ragnaros",
					["encounterID"] = 2344,
				},
				[980] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Senbonzakurâ",
					["npcID"] = 0,
				},
				[284277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daymanhunter-BleedingHollow",
					["npcID"] = 0,
				},
				[239277] = {
					["source"] = "Champion Aquaclease",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153619,
				},
				[2060] = {
					["source"] = "Broggon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45242] = {
					["source"] = "Soccerbilly-Gorefiend",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298290] = {
					["source"] = "Toshpriest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302917] = {
					["source"] = "Locopanda-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[130] = {
					["source"] = "Leanansidhe-Zuluhed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279673] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rainfire-Mal'Ganis",
					["npcID"] = 0,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[302675] = {
					["source"] = "Mootion-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281209] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[239310] = {
					["source"] = "Champion Aquaclease",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153619,
				},
				[258883] = {
					["type"] = "DEBUFF",
					["source"] = "Valandrak-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[212792] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Suvako",
					["npcID"] = 0,
				},
				[288803] = {
					["type"] = "BUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[217694] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Possums-Stormreaver",
					["npcID"] = 0,
				},
				[102351] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerkwa-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[79962] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 96954,
				},
				[133] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Carnage-SteamwheedleCartel",
					["encounterID"] = 2344,
				},
				[316522] = {
					["type"] = "BUFF",
					["source"] = "Lilmajin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[215607] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Huntond-Dalaran",
					["npcID"] = 0,
				},
				[109132] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acetaphine-Illidan",
					["encounterID"] = 2344,
				},
				[271194] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Phobiia-Mal'Ganis",
					["npcID"] = 0,
				},
				[54710] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dàvinci-Mal'Ganis",
					["npcID"] = 0,
				},
				[301147] = {
					["source"] = "Necrofin Reaver",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152711,
				},
				[278654] = {
					["source"] = "Toshpriest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124273] = {
					["type"] = "DEBUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[179057] = {
					["source"] = "Zyorek-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300916] = {
					["source"] = "Necrofin Deep Oracle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152710,
				},
				[114250] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fictions-Zul'jin",
					["npcID"] = 0,
				},
				[136] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kreiser-Ragnaros",
					["encounterID"] = 2344,
				},
				[256459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frostyo-BleedingHollow",
					["npcID"] = 0,
				},
				[102352] = {
					["type"] = "BUFF",
					["source"] = "Zerkwa-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[279503] = {
					["source"] = "Aonir-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215387] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Huntond-Dalaran",
					["npcID"] = 0,
				},
				[106830] = {
					["source"] = "Horncolio-Turalyon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[211805] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[244813] = {
					["type"] = "DEBUFF",
					["source"] = "Icecoldie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216411] = {
					["source"] = "Plush-Turalyon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280615] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[268854] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[302952] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tacoslayer-Sargeras",
					["npcID"] = 0,
				},
				[139] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shantei-Ragnaros",
					["encounterID"] = 2344,
				},
				[244808] = {
					["source"] = "Sandclaw Crab",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145337,
				},
				[278147] = {
					["source"] = "Dragadon-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108853] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Carnage-SteamwheedleCartel",
					["encounterID"] = 2344,
				},
				[8936] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerkwa-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[108366] = {
					["type"] = "BUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[283167] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jojohunts",
					["npcID"] = 0,
				},
				[287769] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108280] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[316530] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nevé",
					["npcID"] = 0,
				},
				[49998] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sathroxxigg-BleedingHollow",
					["encounterID"] = 2344,
				},
				[197561] = {
					["source"] = "Dusktodawn-Icecrown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216413] = {
					["source"] = "Thickhealz-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[98008] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2344,
				},
				[326419] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yoyi-Kalecgos",
					["npcID"] = 0,
				},
				[280709] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Senbonzakurâ",
					["npcID"] = 0,
				},
				[34433] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Marderzh-Thrall",
					["encounterID"] = 2344,
				},
				[315672] = {
					["type"] = "BUFF",
					["source"] = "Corruptor Tentacle",
					["npcID"] = 158375,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[55095] = {
					["type"] = "DEBUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[270987] = {
					["source"] = "Disciple of Nalorakk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 120949,
				},
				[192106] = {
					["source"] = "Tamiriel",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275779] = {
					["source"] = "Dusktodawn-Icecrown",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16595] = {
					["source"] = "Takeniro-Proudmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90328] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nerpur",
					["npcID"] = 103326,
				},
				[298111] = {
					["source"] = "Crushtide Orb",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153500,
				},
				[61684] = {
					["type"] = "BUFF",
					["source"] = "Darkhatirock",
					["npcID"] = 151144,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[80477] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lincx",
					["npcID"] = 0,
				},
				[309882] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cultist Slavedriver",
					["npcID"] = 157158,
				},
				[2336] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Catbury-Kel'Thuzad",
					["npcID"] = 0,
				},
				[286342] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[280713] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mazhr-Mal'Ganis",
					["npcID"] = 0,
				},
				[299664] = {
					["type"] = "BUFF",
					["source"] = "Kreiser-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[105809] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[41635] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[73313] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Afèn-BleedingHollow",
					["npcID"] = 0,
				},
				[77535] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skullrepo",
					["npcID"] = 0,
				},
				[268898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[6789] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rainfire-Mal'Ganis",
					["npcID"] = 0,
				},
				[309373] = {
					["npcID"] = 158035,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Magister Umbric",
					["encounterID"] = 2377,
				},
				[280009] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137915,
				},
				[298115] = {
					["source"] = "Crushtide Orb",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153500,
				},
				[280204] = {
					["type"] = "BUFF",
					["source"] = "Cornric-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[198839] = {
					["type"] = "BUFF",
					["source"] = "Earthen Wall Totem",
					["npcID"] = 100943,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[266030] = {
					["type"] = "BUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[316542] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[280205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jlow-Quel'Thalas",
					["npcID"] = 0,
				},
				[31935] = {
					["source"] = "Dusktodawn-Icecrown",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[293511] = {
					["type"] = "DEBUFF",
					["source"] = "Kitkitsune",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13750] = {
					["type"] = "BUFF",
					["source"] = "Géars",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256228] = {
					["source"] = "Mother Goat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136939,
				},
				[75361] = {
					["source"] = "Irontide Cutthroat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138170,
				},
				[126664] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Påblo",
					["encounterID"] = 2344,
				},
				[316541] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[308865] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zardeth of the Black Claw",
					["npcID"] = 158371,
				},
				[285475] = {
					["source"] = "Grommxxar-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Geirdriful-Azralon",
					["npcID"] = 0,
				},
				[195181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skullrepo",
					["npcID"] = 0,
				},
				[252753] = {
					["type"] = "DEBUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[257103] = {
					["source"] = "Ninevoids",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195949] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Auctioneered",
					["npcID"] = 0,
				},
				[281744] = {
					["source"] = "Shadycuddles-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tywin-Executus",
					["npcID"] = 0,
				},
				[268439] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Phobiia-Mal'Ganis",
					["npcID"] = 0,
				},
				[287660] = {
					["source"] = "Fadeqt-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294027] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[2484] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[301192] = {
					["source"] = "Necrofin Deep Oracle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152710,
				},
				[275778] = {
					["source"] = "Ettin Stoneflinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136419,
				},
				[202164] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tywin-Executus",
					["npcID"] = 0,
				},
				[104404] = {
					["source"] = "Sheuglyy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276888] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vil'thik Amber-Shaper",
					["npcID"] = 157757,
				},
				[268953] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[137619] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mierve-Dalaran",
					["npcID"] = 0,
				},
				[115151] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Monktain-Ravencrest",
					["encounterID"] = 2344,
				},
				[147833] = {
					["source"] = "Orcanizer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[276110] = {
					["source"] = "Taskmaster Burlok",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138793,
				},
				[53365] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[5217] = {
					["source"] = "Horncolio-Turalyon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[93402] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerkwa-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[290793] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[45438] = {
					["type"] = "BUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[5221] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerkwa-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[299661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deckker-ShatteredHand",
					["npcID"] = 0,
				},
				[279572] = {
					["type"] = "BUFF",
					["source"] = "Marderzh-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[528] = {
					["source"] = "Toshpriest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201846] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[299662] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Manyspells-Illidan",
					["npcID"] = 0,
				},
				[300174] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[2580] = {
					["type"] = "BUFF",
					["source"] = "Kreiser-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[264352] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nial-AeriePeak",
					["npcID"] = 0,
				},
				[163201] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[277308] = {
					["source"] = "Blood Troll Corruptor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136296,
				},
				[41425] = {
					["type"] = "DEBUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[35395] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Torodelsur-Arthas",
					["npcID"] = 0,
				},
				[279194] = {
					["source"] = "Fathomm-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[211793] = {
					["source"] = "Hæbrewhammer-Illidan",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308876] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unstable Servant",
					["npcID"] = 158411,
				},
				[214968] = {
					["source"] = "Hæbrewhammer-Illidan",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35715] = {
					["source"] = "Érmiñ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5246] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[317065] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[262308] = {
					["source"] = "Blood Troll Berserker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136293,
				},
				[131474] = {
					["source"] = "Greenbilly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308366] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Inquisitor Darkspeak",
					["npcID"] = 158136,
				},
				[80354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Locokokonuts-Thrall",
					["npcID"] = 0,
				},
				[297108] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lînny-Illidan",
					["encounterID"] = 2344,
				},
				[5302] = {
					["source"] = "Fathomm-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224869] = {
					["source"] = "Montez-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268956] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[113746] = {
					["type"] = "DEBUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[209261] = {
					["source"] = "Demongara",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[238175] = {
					["source"] = "Lownwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258908] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vil'thik Quickblade",
					["npcID"] = 153265,
				},
				[277373] = {
					["source"] = "Stormbound Conqueror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136555,
				},
				[259753] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257622] = {
					["source"] = "Grommxxar-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300693] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[185562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Minatox-Stormrage",
					["npcID"] = 0,
				},
				[196980] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[238176] = {
					["source"] = "Poxi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164547] = {
					["type"] = "BUFF",
					["source"] = "Zerkwa-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[53563] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[318219] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[171649] = {
					["source"] = "Urbandk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275378] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Senbonzakurâ",
					["npcID"] = 0,
				},
				[312243] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Vil'thik Amber-Mender",
					["npcID"] = 157724,
				},
				[297993] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Crozone",
					["npcID"] = 0,
				},
				[207472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bannem",
					["npcID"] = 0,
				},
				[168835] = {
					["source"] = "Ischyros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8921] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zixiks",
					["encounterID"] = 2344,
				},
				[202099] = {
					["type"] = "BUFF",
					["source"] = "Confused Seerspine Murloc",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 102350,
				},
				[279715] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Possums-Stormreaver",
					["npcID"] = 0,
				},
				[288024] = {
					["source"] = "Orcanizer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274598] = {
					["type"] = "BUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[279204] = {
					["source"] = "Modenz-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106839] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zixiks",
					["encounterID"] = 2344,
				},
				[197874] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Priestio-Mal'Ganis",
					["npcID"] = 0,
				},
				[270505] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fallen Heartpiercer",
					["npcID"] = 158092,
				},
				[296537] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cultist Tormenter",
					["npcID"] = 158690,
				},
				[308375] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fallen Voidspeaker",
					["npcID"] = 152722,
				},
				[44544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[297117] = {
					["type"] = "BUFF",
					["source"] = "Arsames",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264877] = {
					["source"] = "Deathbylol",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15286] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[318216] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[259161] = {
					["source"] = "Caroels-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273947] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skullrepo",
					["npcID"] = 0,
				},
				[3714] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[164545] = {
					["source"] = "Communism-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22568] = {
					["source"] = "Horncolio-Turalyon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313609] = {
					["type"] = "DEBUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[260242] = {
					["source"] = "Grommxxar-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43265] = {
					["source"] = "Aonir-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[236645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Possums-Stormreaver",
					["npcID"] = 0,
				},
				[139546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Büonetta",
					["npcID"] = 0,
				},
				[193315] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Büonetta",
					["npcID"] = 0,
				},
				[295855] = {
					["type"] = "BUFF",
					["source"] = "Valandrak-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[205766] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Suvako",
					["npcID"] = 0,
				},
				[278297] = {
					["source"] = "Pelani-Doomhammer",
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
					["type"] = "BUFF",
					["source"] = "Yelløw-Thrall",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317592] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[299790] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[210294] = {
					["source"] = "Paleta-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19577] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thanda-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[217200] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Osardurp-Turalyon",
					["encounterID"] = 2344,
				},
				[307870] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[280746] = {
					["source"] = "Cohlnarn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298659] = {
					["source"] = "Toshpriest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5740] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Severinne",
					["encounterID"] = 2344,
				},
				[13877] = {
					["source"] = "Trù-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188031] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Locokokonuts-Thrall",
					["npcID"] = 0,
				},
				[189363] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Teresea-Turalyon",
					["npcID"] = 0,
				},
				[184362] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[293946] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tabacco",
					["npcID"] = 0,
				},
				[271538] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[195452] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[317596] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[55164] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[19434] = {
					["source"] = "Grommxxar-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2948] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Carnage-SteamwheedleCartel",
					["encounterID"] = 2344,
				},
				[311456] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Armsmaster Terenson",
					["npcID"] = 156949,
				},
				[180612] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[256607] = {
					["source"] = "Bloodhunter War Slave",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 123440,
				},
				[2964] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Muugo",
					["npcID"] = 0,
				},
				[192077] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2344,
				},
				[57723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cruxy-Illidan",
					["npcID"] = 0,
				},
				[300142] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cornric-Illidan",
					["encounterID"] = 2344,
				},
				[190336] = {
					["source"] = "Moonbîter",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17962] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Severinne",
					["encounterID"] = 2344,
				},
				[301008] = {
					["source"] = "Necrofin Reaver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152711,
				},
				[308998] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fallen Taskmaster",
					["npcID"] = 158437,
				},
				[207736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[199804] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Büonetta",
					["npcID"] = 0,
				},
				[198013] = {
					["type"] = "BUFF",
					["source"] = "Valandrak-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[188034] = {
					["type"] = "BUFF",
					["source"] = "Foxes-Illidan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188290] = {
					["source"] = "Aonir-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[236298] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lie-BurningLegion",
					["npcID"] = 0,
				},
				[312350] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Harrier Nir'verash",
					["npcID"] = 160868,
				},
				[300714] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[317602] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Golden Lotus Warrior",
					["npcID"] = 162836,
				},
				[26297] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tiktokthot-Aggramar",
					["npcID"] = 0,
				},
				[305252] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Possums-Stormreaver",
					["npcID"] = 0,
				},
				[279709] = {
					["source"] = "Élaa-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267288] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Earthen Ring Shaman",
					["npcID"] = 135671,
				},
				[85222] = {
					["source"] = "Dragadon-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[209785] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tacoslayer-Sargeras",
					["npcID"] = 0,
				},
				[267798] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thejx-Kel'Thuzad",
					["npcID"] = 0,
				},
				[77761] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[304062] = {
					["source"] = "Dread Captain DeMeza",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154335,
				},
				[79849] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gija",
					["npcID"] = 47248,
				},
				[233582] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Thumpkin",
					["npcID"] = 0,
				},
				[212207] = {
					["source"] = "Barbedclaw Grizzly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139793,
				},
				[238188] = {
					["source"] = "Jooby",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276154] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sortof-Zul'jin",
					["npcID"] = 0,
				},
				[232559] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Tiktokthot-Aggramar",
					["npcID"] = 0,
				},
				[121557] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[181346] = {
					["source"] = "Barbedclaw Grizzly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139793,
				},
				[165776] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rock Stalker",
					["npcID"] = 131890,
				},
				[53822] = {
					["type"] = "BUFF",
					["source"] = "Urfzlul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194153] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sortof-Zul'jin",
					["npcID"] = 0,
				},
				[271550] = {
					["type"] = "BUFF",
					["source"] = "Clyph",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19236] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[73325] = {
					["source"] = "Ilikis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6262] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Severinne",
					["encounterID"] = 2344,
				},
				[275481] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dunidane-Durotan",
					["npcID"] = 0,
				},
				[165777] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Azerite-Infused Elemental",
					["npcID"] = 137905,
				},
				[781] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kreiser-Ragnaros",
					["encounterID"] = 2344,
				},
				[277181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thumpkin",
					["npcID"] = 0,
				},
				[267458] = {
					["source"] = "Madîson",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[286393] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thejx-Kel'Thuzad",
					["npcID"] = 0,
				},
				[255078] = {
					["source"] = "Enalan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[221886] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Iawl-Zul'jin",
					["npcID"] = 0,
				},
				[203651] = {
					["source"] = "Psyphonn-AlteracMountains",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314040] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[65081] = {
					["type"] = "BUFF",
					["source"] = "Marderzh-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[247776] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[260708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[202933] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Jojohunts",
					["npcID"] = 0,
				},
				[61243] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zuena-Mal'Ganis",
					["npcID"] = 0,
				},
				[311035] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Advisor Kathem",
					["npcID"] = 161049,
				},
				[288343] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nevé",
					["npcID"] = 0,
				},
				[72968] = {
					["type"] = "BUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[115181] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acetaphine-Illidan",
					["encounterID"] = 2344,
				},
				[277185] = {
					["type"] = "BUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[88423] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerkwa-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[317102] = {
					["npcID"] = 158041,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "N'Zoth the Corruptor",
					["encounterID"] = 2344,
				},
				[116189] = {
					["type"] = "DEBUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[277186] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136550,
				},
				[115546] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acetaphine-Illidan",
					["encounterID"] = 2344,
				},
				[6807] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zixiks",
					["encounterID"] = 2344,
				},
				[196741] = {
					["type"] = "BUFF",
					["source"] = "Flowbz",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277187] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[19574] = {
					["type"] = "BUFF",
					["source"] = "Osardurp-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[96231] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thejx-Kel'Thuzad",
					["npcID"] = 0,
				},
				[79468] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Quantmdragon-Illidan",
					["npcID"] = 0,
				},
				[288813] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Harbinger Il'koxik",
					["npcID"] = 160810,
				},
				[271559] = {
					["source"] = "Selis-Gul'dan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198533] = {
					["npcID"] = 60849,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jade Serpent Statue",
					["encounterID"] = 2344,
				},
				[196742] = {
					["source"] = "Beatahoex-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258408] = {
					["source"] = "Kwanten",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201639] = {
					["source"] = "Calnaks-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258920] = {
					["type"] = "BUFF",
					["source"] = "Valandrak-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[280772] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Påblo",
					["encounterID"] = 2344,
				},
				[84714] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[214621] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[298343] = {
					["type"] = "BUFF",
					["source"] = "Cornric-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[280773] = {
					["type"] = "DEBUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[51714] = {
					["type"] = "DEBUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[56814] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[113858] = {
					["type"] = "BUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[124503] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acetaphine-Illidan",
					["encounterID"] = 2344,
				},
				[299775] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151310,
				},
				[257642] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hive-Guard Naz'ruzek",
					["npcID"] = 160826,
				},
				[262652] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[114780] = {
					["source"] = "Fknmoneyman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[642] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[316598] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Raging Amberclaw",
					["npcID"] = 162641,
				},
				[297162] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[280776] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[16589] = {
					["source"] = "Takeniro-Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277706] = {
					["type"] = "BUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[186254] = {
					["type"] = "BUFF",
					["source"] = "Osardurp-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[115804] = {
					["type"] = "DEBUFF",
					["source"] = "Timmy",
					["npcID"] = 6500,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[196608] = {
					["type"] = "BUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[279754] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[317112] = {
					["type"] = "DEBUFF",
					["source"] = "N'Zoth the Corruptor",
					["npcID"] = 158041,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[190984] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sortof-Zul'jin",
					["npcID"] = 0,
				},
				[85739] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[273779] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208772] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Priestio-Mal'Ganis",
					["npcID"] = 0,
				},
				[198793] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Valandrak-Zul'jin",
					["encounterID"] = 2344,
				},
				[268769] = {
					["type"] = "BUFF",
					["source"] = "Thanda-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[3408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Humphrees-Blackhand",
					["npcID"] = 0,
				},
				[298691] = {
					["npcID"] = 153541,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Slavemaster Ul'rok",
					["encounterID"] = 2375,
				},
				[32375] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Marderzh-Thrall",
					["encounterID"] = 2344,
				},
				[32752] = {
					["source"] = "Warrlock-Whisperwind",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90985] = {
					["source"] = "Psyphonn-AlteracMountains",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54680] = {
					["npcID"] = 6500,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Timmy",
					["encounterID"] = 2344,
				},
				[48707] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[197003] = {
					["source"] = "Key-TheVentureCo",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81262] = {
					["type"] = "BUFF",
					["source"] = "Efflorescence",
					["npcID"] = 47649,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[258925] = {
					["source"] = "Zyorek-Magtheridon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303299] = {
					["source"] = "Azsh'ari Wavebreaker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152916,
				},
				[272090] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[268899] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[186257] = {
					["type"] = "BUFF",
					["source"] = "Lelantoz-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[278736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ikutchulinda-Zul'jin",
					["npcID"] = 0,
				},
				[277201] = {
					["source"] = "Sethrak Warden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136546,
				},
				[205448] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Marderzh-Thrall",
					["encounterID"] = 2344,
				},
				[309451] = {
					["type"] = "BUFF",
					["source"] = "Magister Umbric",
					["npcID"] = 158035,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2377,
				},
				[129250] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Priestio-Mal'Ganis",
					["npcID"] = 0,
				},
				[269279] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[205708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[186258] = {
					["type"] = "BUFF",
					["source"] = "Lelantoz-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[297126] = {
					["type"] = "BUFF",
					["source"] = "Lînny-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[273525] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Botched-Executus",
					["npcID"] = 0,
				},
				[296138] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[242551] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Biggerthomas-BleedingHollow",
					["npcID"] = 0,
				},
				[124506] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acetaphine-Illidan",
					["encounterID"] = 2344,
				},
				[232698] = {
					["type"] = "BUFF",
					["source"] = "Marderzh-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[116705] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acetaphine-Illidan",
					["encounterID"] = 2344,
				},
				[23881] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Påblo",
					["encounterID"] = 2344,
				},
				[280787] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sortof-Zul'jin",
					["npcID"] = 0,
				},
				[115041] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hozen Nibstabber",
					["npcID"] = 58945,
				},
				[80240] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Severinne",
					["encounterID"] = 2344,
				},
				[317066] = {
					["npcID"] = 162933,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thought Harvester",
					["encounterID"] = 2344,
				},
				[280788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sortof-Zul'jin",
					["npcID"] = 0,
				},
				[115313] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Monktain-Ravencrest",
					["encounterID"] = 2344,
				},
				[308432] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Forge-Guard Hurrul",
					["npcID"] = 158158,
				},
				[202636] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shapeshifts-Azuremyst",
					["npcID"] = 0,
				},
				[44614] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[205473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[36554] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[298701] = {
					["type"] = "DEBUFF",
					["source"] = "Slavemaster Ul'rok",
					["npcID"] = 153541,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2375,
				},
				[312248] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Brodolfo-Stormrage",
					["npcID"] = 0,
				},
				[270598] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130916,
				},
				[79206] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[45062] = {
					["type"] = "BUFF",
					["source"] = "Avoak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8219] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Atomsz",
					["npcID"] = 0,
				},
				[257415] = {
					["source"] = "Shadycuddles-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3600] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Earthbind Totem",
					["npcID"] = 2630,
				},
				[298703] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rageheart-Kel'Thuzad",
					["npcID"] = 0,
				},
				[297168] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[33763] = {
					["type"] = "BUFF",
					["source"] = "Zerkwa-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[271581] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Torodelsur-Arthas",
					["npcID"] = 0,
				},
				[298704] = {
					["type"] = "BUFF",
					["source"] = "Slavemaster Ul'rok",
					["npcID"] = 153541,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2375,
				},
				[288981] = {
					["source"] = "Greasatorium-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[130265] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thunder Hold Soldier",
					["npcID"] = 66291,
				},
				[5215] = {
					["type"] = "BUFF",
					["source"] = "Bwonsamdeez",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335150] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[3716] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bellos",
					["npcID"] = 1860,
				},
				[271071] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nevé",
					["npcID"] = 0,
				},
				[297037] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[186263] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daftheals-Thrall",
					["npcID"] = 0,
				},
				[246853] = {
					["type"] = "BUFF",
					["source"] = "Thanda-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[318187] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[203407] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thecrusher",
					["npcID"] = 0,
				},
				[299765] = {
					["source"] = "Kelfin Scout",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151300,
				},
				[264420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Brodolfo-Stormrage",
					["npcID"] = 0,
				},
				[17] = {
					["type"] = "BUFF",
					["source"] = "Marderzh-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[138927] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mesoothorny",
					["npcID"] = 0,
				},
				[87023] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Possums-Stormreaver",
					["npcID"] = 0,
				},
				[768] = {
					["type"] = "BUFF",
					["source"] = "Zerkwa-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[130266] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thunder Hold Soldier",
					["npcID"] = 66200,
				},
				[298197] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[185311] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[256390] = {
					["source"] = "Tunnel Stalker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137967,
				},
				[319237] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tÿchè-Illidan",
					["npcID"] = 0,
				},
				[267326] = {
					["type"] = "BUFF",
					["source"] = "Kreiser-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[186265] = {
					["type"] = "BUFF",
					["source"] = "Thanda-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[119381] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acetaphine-Illidan",
					["encounterID"] = 2344,
				},
				[112867] = {
					["source"] = "Boomdotsalot",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[213644] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thejx-Kel'Thuzad",
					["npcID"] = 0,
				},
				[196834] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[288988] = {
					["source"] = "Trù-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312017] = {
					["type"] = "BUFF",
					["source"] = "Eye of Chaos",
					["npcID"] = 158315,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2376,
				},
				[313303] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mericanman-Kel'Thuzad",
					["npcID"] = 0,
				},
				[172193] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vil'thik Swarmkeeper",
					["npcID"] = 153267,
				},
				[196770] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[299762] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154297,
				},
				[198817] = {
					["source"] = "Bjornserkr-Gorefiend",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5487] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[69369] = {
					["source"] = "Horncolio-Turalyon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210065] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gwomsomdi-Mal'Ganis",
					["npcID"] = 0,
				},
				[300761] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[316062] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Corrupted Putrefaction",
					["npcID"] = 158706,
				},
				[191837] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[267498] = {
					["source"] = "Forgiv",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300762] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[301886] = {
					["type"] = "BUFF",
					["source"] = "Osardurp-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[210320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Iawl-Zul'jin",
					["npcID"] = 0,
				},
				[197871] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Priestio-Mal'Ganis",
					["npcID"] = 0,
				},
				[270058] = {
					["type"] = "BUFF",
					["source"] = "Osardurp-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[295134] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Weekä-Mal'Ganis",
					["npcID"] = 0,
				},
				[277223] = {
					["source"] = "Blood Troll Berserker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136293,
				},
				[287790] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "ßïgßlãck-Illidan",
					["npcID"] = 0,
				},
				[315624] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[154796] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Naria-Zuluhed",
					["npcID"] = 0,
				},
				[307822] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308459] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zardeth of the Black Claw",
					["npcID"] = 158371,
				},
				[104425] = {
					["source"] = "Sugargay",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281036] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jojohunts",
					["npcID"] = 0,
				},
				[348] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Severinne",
					["encounterID"] = 2344,
				},
				[51505] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2344,
				},
				[74232] = {
					["source"] = "Cerres",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295137] = {
					["type"] = "BUFF",
					["source"] = "Kreiser-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[16591] = {
					["source"] = "Takeniro-Proudmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20707] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thumpkin",
					["npcID"] = 0,
				},
				[48265] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[308265] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Alx'kov the Infested",
					["npcID"] = 152809,
				},
				[156077] = {
					["type"] = "BUFF",
					["source"] = "Kóntact",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281240] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Humphrees-Blackhand",
					["npcID"] = 0,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 17252,
				},
				[303211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Imaron",
					["npcID"] = 0,
				},
				[309991] = {
					["type"] = "DEBUFF",
					["source"] = "Corrupted Neuron",
					["npcID"] = 162331,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[772] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[311320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cultist Executioner",
					["npcID"] = 159633,
				},
				[270576] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[227723] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[256337] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Docile Porcupine",
					["npcID"] = 156759,
				},
				[259456] = {
					["source"] = "Zryeth-Mannoroth",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299239] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dhethg-Agamaggan",
					["npcID"] = 0,
				},
				[44425] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lie-BurningLegion",
					["npcID"] = 0,
				},
				[7870] = {
					["source"] = "Bronwen",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1863,
				},
				[131493] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Asthlynn-WyrmrestAccord",
					["npcID"] = 0,
				},
				[190319] = {
					["type"] = "BUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[82691] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Possums-Stormreaver",
					["npcID"] = 0,
				},
				[302307] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[185763] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Büonetta",
					["npcID"] = 0,
				},
				[278767] = {
					["type"] = "BUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[118000] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Påblo",
					["encounterID"] = 2344,
				},
				[81782] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298726] = {
					["source"] = "Pùnq",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259455] = {
					["source"] = "Sifo-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54149] = {
					["source"] = "Dragadon-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132627] = {
					["source"] = "Miaob-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279793] = {
					["type"] = "BUFF",
					["source"] = "Zerkwa-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[25771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[259454] = {
					["source"] = "Fatalscroll-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198300] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[270070] = {
					["type"] = "BUFF",
					["source"] = "Deadheads",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118038] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[192082] = {
					["type"] = "BUFF",
					["source"] = "Wind Rush Totem",
					["npcID"] = 97285,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[197277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Torodelsur-Arthas",
					["npcID"] = 0,
				},
				[296962] = {
					["type"] = "BUFF",
					["source"] = "Cornric-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[143625] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[177575] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Swarm Ravager",
					["npcID"] = 153268,
				},
				[309990] = {
					["type"] = "DEBUFF",
					["source"] = "N'Zoth the Corruptor",
					["npcID"] = 158041,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[12042] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ðøctor-BleedingHollow",
					["npcID"] = 0,
				},
				[313571] = {
					["type"] = "BUFF",
					["source"] = "Shantei-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[262161] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[281843] = {
					["type"] = "BUFF",
					["source"] = "Lelantoz-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[115175] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Monktain-Ravencrest",
					["encounterID"] = 2344,
				},
				[263840] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fenryr",
					["npcID"] = 119990,
				},
				[177576] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Swarm Ravager",
					["npcID"] = 153268,
				},
				[281844] = {
					["type"] = "BUFF",
					["source"] = "Lelantoz-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[308967] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fallen Taskmaster",
					["npcID"] = 158437,
				},
				[289298] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[264957] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[203975] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[61295] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2344,
				},
				[2061] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shantei-Ragnaros",
					["encounterID"] = 2344,
				},
				[257410] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nehalennia-Hellscream",
					["npcID"] = 0,
				},
				[34767] = {
					["type"] = "BUFF",
					["source"] = "Vynestal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79865] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Marud",
					["npcID"] = 47247,
				},
				[51271] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[289523] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Barcelin",
					["npcID"] = 0,
				},
				[154797] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Keyzus-Stormrage",
					["npcID"] = 0,
				},
				[298700] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cakeimi-Stormrage",
					["npcID"] = 0,
				},
				[49020] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sathroxxigg-BleedingHollow",
					["encounterID"] = 2344,
				},
				[289524] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Barcelin",
					["npcID"] = 0,
				},
				[198304] = {
					["source"] = "Orcanizer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[296510] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crawling Corruption",
					["npcID"] = 152704,
				},
				[119910] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thumpkin",
					["npcID"] = 0,
				},
				[164273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Faleon",
					["npcID"] = 0,
				},
				[556] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[272126] = {
					["source"] = "Miaob-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58180] = {
					["source"] = "Horncolio-Turalyon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271103] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kekstorm-Thrall",
					["npcID"] = 0,
				},
				[188070] = {
					["source"] = "Gretuina",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102383] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sortof-Zul'jin",
					["npcID"] = 0,
				},
				[303344] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[188838] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2344,
				},
				[294133] = {
					["source"] = "Varanorx-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8680] = {
					["source"] = "Valithrien-Stormrage",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303345] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[255366] = {
					["source"] = "Bloodhunter War-Witch",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 123439,
				},
				[271105] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[6343] = {
					["source"] = "Fathomm-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[247677] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fictions-Zul'jin",
					["npcID"] = 0,
				},
				[1079] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerkwa-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[269571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tacoslayer-Sargeras",
					["npcID"] = 0,
				},
				[201633] = {
					["type"] = "BUFF",
					["source"] = "Earthen Wall Totem",
					["npcID"] = 100943,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[114282] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Stanilsaus-Arthas",
					["npcID"] = 0,
				},
				[271107] = {
					["type"] = "BUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[120679] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jojohunts",
					["npcID"] = 0,
				},
				[266091] = {
					["type"] = "BUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[116841] = {
					["type"] = "BUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[299766] = {
					["source"] = "Kelfin Scout",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151300,
				},
				[268905] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[298743] = {
					["source"] = "Daddyfatsax",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[162997] = {
					["type"] = "BUFF",
					["source"] = "Komicus",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299767] = {
					["source"] = "Kelfin Scout",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151300,
				},
				[309671] = {
					["type"] = "BUFF",
					["source"] = "Therum Deepforge",
					["npcID"] = 156577,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2374,
				},
				[288509] = {
					["source"] = "Assura-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202914] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jojohunts",
					["npcID"] = 0,
				},
				[227847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[312562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[308980] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Corruption Tumor",
					["npcID"] = 158478,
				},
				[131901] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dead Inkgill Spearman",
					["npcID"] = 61532,
				},
				[299769] = {
					["source"] = "Kelfin Scout",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151300,
				},
				[269576] = {
					["source"] = "Grommxxar-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308945] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mindtwist Tendril",
					["npcID"] = 158452,
				},
				[114014] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[318193] = {
					["npcID"] = 0,
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[79892] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 96957,
				},
				[232633] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Marderzh-Thrall",
					["encounterID"] = 2344,
				},
				[257161] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153364,
				},
				[299771] = {
					["source"] = "Kelfin Scout",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151300,
				},
				[270515] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Azerite-Infused Elemental",
					["npcID"] = 137905,
				},
				[12294] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[20271] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fictions-Zul'jin",
					["npcID"] = 0,
				},
				[48778] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Orophèr",
					["npcID"] = 0,
				},
				[313953] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drone Keeper Ak'thet",
					["npcID"] = 160874,
				},
				[20572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[301308] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thanda-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[108271] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[57286] = {
					["type"] = "BUFF",
					["source"] = "Lascivìous",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280177] = {
					["type"] = "BUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[196819] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[63619] = {
					["npcID"] = 19668,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shadowfiend",
					["encounterID"] = 2344,
				},
				[316608] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Raging Amberclaw",
					["npcID"] = 162641,
				},
				[11426] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drnewport-Malygos",
					["npcID"] = 0,
				},
				[115308] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acetaphine-Illidan",
					["encounterID"] = 2344,
				},
				[204197] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Priestio-Mal'Ganis",
					["npcID"] = 0,
				},
				[261769] = {
					["source"] = "Beatahoex-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279810] = {
					["type"] = "BUFF",
					["source"] = "Lelantoz-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[204883] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shantei-Ragnaros",
					["encounterID"] = 2344,
				},
				[299776] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151310,
				},
				[285959] = {
					["type"] = "BUFF",
					["source"] = "Lohngorron",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300800] = {
					["source"] = "Dusktodawn-Icecrown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301312] = {
					["source"] = "Blasterzob",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5211] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sortof-Zul'jin",
					["npcID"] = 0,
				},
				[61391] = {
					["source"] = "Élaa-Wildhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288455] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[311390] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90361] = {
					["npcID"] = 151144,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "dlwlrma",
					["encounterID"] = 2344,
				},
				[283914] = {
					["source"] = "Samfung",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300802] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lymos",
					["npcID"] = 0,
				},
				[185422] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[201350] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warggh",
					["npcID"] = 0,
				},
				[318714] = {
					["type"] = "BUFF",
					["source"] = "Basher Tentacle",
					["npcID"] = 158367,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[311267] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cultist Shadowblade",
					["npcID"] = 159632,
				},
				[147362] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lînny-Illidan",
					["encounterID"] = 2344,
				},
				[190894] = {
					["source"] = "Kiltron",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[68996] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Worgames-LaughingSkull",
					["npcID"] = 0,
				},
				[183218] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Torodelsur-Arthas",
					["npcID"] = 0,
				},
				[311323] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cultist Executioner",
					["npcID"] = 159633,
				},
				[257422] = {
					["type"] = "BUFF",
					["source"] = "Laserpants",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308481] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fallen Riftwalker",
					["npcID"] = 158146,
				},
				[123725] = {
					["type"] = "DEBUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[303943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tacoslayer-Sargeras",
					["npcID"] = 0,
				},
				[53385] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fictions-Zul'jin",
					["npcID"] = 0,
				},
				[324858] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluffs-Stormrage",
					["npcID"] = 0,
				},
				[313088] = {
					["type"] = "BUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[115310] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Monktain-Ravencrest",
					["encounterID"] = 2344,
				},
				[299783] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151309,
				},
				[310530] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[206760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[274346] = {
					["type"] = "BUFF",
					["source"] = "Lilmajin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[121471] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[294155] = {
					["type"] = "BUFF",
					["source"] = "Awakaza",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193455] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bfaaltslul-Illidan",
					["encounterID"] = 2344,
				},
				[122278] = {
					["type"] = "BUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[177591] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ravager Worker",
					["npcID"] = 157567,
				},
				[194223] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sortof-Zul'jin",
					["npcID"] = 0,
				},
				[116858] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Severinne",
					["encounterID"] = 2344,
				},
				[57724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Keprion-Dalaran",
					["npcID"] = 0,
				},
				[30283] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thumpkin",
					["npcID"] = 0,
				},
				[313934] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Infused Amber Ooze",
					["npcID"] = 160930,
				},
				[193456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kragdoh",
					["npcID"] = 0,
				},
				[272723] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[193078] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "SI:7 Light-Hunter",
					["npcID"] = 156794,
				},
				[126340] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Golden Lotus Guard",
					["npcID"] = 162860,
				},
				[273415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[6673] = {
					["type"] = "BUFF",
					["source"] = "Påblo",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[318211] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[324864] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shapeshifts-Azuremyst",
					["npcID"] = 0,
				},
				[296718] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Horrific Figment",
					["npcID"] = 164188,
				},
				[199854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[26573] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[310195] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[278296] = {
					["source"] = "Ghettolas-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116847] = {
					["type"] = "BUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[269085] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[314631] = {
					["source"] = "Mygodimcool",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268062] = {
					["type"] = "BUFF",
					["source"] = "Zixiks",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[22703] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Thumpkin",
					["npcID"] = 0,
				},
				[5176] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerkwa-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[313939] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Needler Zhesalla",
					["npcID"] = 160922,
				},
				[51723] = {
					["source"] = "Jackomanixon-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295186] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kreiser-Ragnaros",
					["encounterID"] = 2344,
				},
				[299792] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[60103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[260072] = {
					["source"] = "Pa'kura Priest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131834,
				},
				[197214] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[198065] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Neefprime",
					["npcID"] = 0,
				},
				[296211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lanféár-BurningLegion",
					["npcID"] = 0,
				},
				[266018] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[304611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Macenzii-Azshara",
					["npcID"] = 0,
				},
				[162243] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Valandrak-Zul'jin",
					["encounterID"] = 2344,
				},
				[248473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nephanee-Zangarmarsh",
					["npcID"] = 0,
				},
				[319241] = {
					["type"] = "DEBUFF",
					["source"] = "Lilmajin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[293142] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dunidane-Durotan",
					["npcID"] = 0,
				},
				[312107] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tÿchè-Illidan",
					["npcID"] = 0,
				},
				[285978] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kirue-Thrall",
					["npcID"] = 0,
				},
				[260057] = {
					["source"] = "Priest of Gonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131809,
				},
				[280861] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Possums-Stormreaver",
					["npcID"] = 0,
				},
				[312078] = {
					["npcID"] = 160249,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spike Tentacle",
					["encounterID"] = 2344,
				},
				[285979] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Houhai-Illidan",
					["npcID"] = 0,
				},
				[228260] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Marderzh-Thrall",
					["encounterID"] = 2344,
				},
				[280862] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Possums-Stormreaver",
					["npcID"] = 0,
				},
				[315927] = {
					["npcID"] = 158041,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "N'Zoth the Corruptor",
					["encounterID"] = 2344,
				},
				[167898] = {
					["type"] = "BUFF",
					["source"] = "Thanda-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[223143] = {
					["type"] = "BUFF",
					["source"] = "Rlgrime",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303380] = {
					["type"] = "BUFF",
					["source"] = "Zerkwa-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[231843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fictions-Zul'jin",
					["npcID"] = 0,
				},
				[267558] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tacoslayer-Sargeras",
					["npcID"] = 0,
				},
				[339] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sortof-Zul'jin",
					["npcID"] = 0,
				},
				[273323] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[305249] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Possums-Stormreaver",
					["npcID"] = 0,
				},
				[212653] = {
					["type"] = "BUFF",
					["source"] = "Cornric-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[275915] = {
					["source"] = "Horncolio-Turalyon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102359] = {
					["source"] = "Psyphonn-AlteracMountains",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[306125] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Valeera Sanguinar",
					["npcID"] = 156837,
				},
				[267560] = {
					["source"] = "Nirvanax-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306965] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dark Delusion",
					["npcID"] = 157425,
				},
				[272678] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lînny-Illidan",
					["encounterID"] = 2344,
				},
				[198069] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[281178] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fictions-Zul'jin",
					["npcID"] = 0,
				},
				[199412] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Doughmaker-Arthas",
					["npcID"] = 0,
				},
				[272679] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thanda-Mal'Ganis",
					["encounterID"] = 2344,
				},
				[259597] = {
					["source"] = "Feral Ravasaur",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131560,
				},
				[209584] = {
					["type"] = "BUFF",
					["source"] = "Betotaichou",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[74247] = {
					["source"] = "Kiltron",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8679] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ravik-TheForgottenCoast",
					["npcID"] = 0,
				},
				[259480] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Casteless Zandalari",
					["npcID"] = 131331,
				},
				[253595] = {
					["source"] = "Jerbane-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296733] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faceless Willbreaker",
					["npcID"] = 152987,
				},
				[198838] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2344,
				},
				[318227] = {
					["type"] = "BUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[195182] = {
					["source"] = "Aonir-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[111400] = {
					["type"] = "BUFF",
					["source"] = "Severinne",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[202090] = {
					["type"] = "BUFF",
					["source"] = "Monktain-Ravencrest",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[293664] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ûrîel-Arthas",
					["npcID"] = 0,
				},
				[183998] = {
					["source"] = "Dragadon-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257946] = {
					["type"] = "BUFF",
					["source"] = "Osardurp-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[2825] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2338,
				},
				[53390] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[213680] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Phobiia-Mal'Ganis",
					["npcID"] = 0,
				},
				[5672] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Healing Stream Totem",
					["npcID"] = 3527,
				},
				[297063] = {
					["source"] = "Typo-Malfurion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204213] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Priestio-Mal'Ganis",
					["npcID"] = 0,
				},
				[51661] = {
					["source"] = "Swaggyde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313113] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[278826] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fordtruck-Zul'jin",
					["npcID"] = 0,
				},
				[57994] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2344,
				},
				[274443] = {
					["type"] = "BUFF",
					["source"] = "Osardurp-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[315161] = {
					["type"] = "DEBUFF",
					["source"] = "Cornric-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[299297] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Laina-Haomarush",
					["npcID"] = 0,
				},
				[312091] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vil'thik Amber-Mender",
					["npcID"] = 153255,
				},
				[300082] = {
					["source"] = "Tide Surger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152672,
				},
				[301124] = {
					["source"] = "Necrofin Reaver",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152711,
				},
				[287802] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ankh-Deathwing",
					["npcID"] = 0,
				},
				[16979] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Phobiia-Mal'Ganis",
					["npcID"] = 0,
				},
				[1449] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lie-BurningLegion",
					["npcID"] = 0,
				},
				[94719] = {
					["source"] = "Moardrid",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315675] = {
					["type"] = "BUFF",
					["source"] = "Basher Tentacle",
					["npcID"] = 158367,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[109304] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Osardurp-Turalyon",
					["encounterID"] = 2344,
				},
				[260643] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tlsy-Arthas",
					["npcID"] = 0,
				},
				[1459] = {
					["type"] = "BUFF",
					["source"] = "Carnage-SteamwheedleCartel",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[48719] = {
					["type"] = "BUFF",
					["source"] = "Toramak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293671] = {
					["type"] = "BUFF",
					["source"] = "Redic",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[234153] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Trumps-Thrall",
					["npcID"] = 0,
				},
				[193316] = {
					["source"] = "Trù-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crazed Ramkahen Guardian",
					["npcID"] = 161110,
				},
				[256231] = {
					["type"] = "BUFF",
					["source"] = "Marderzh-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[57291] = {
					["type"] = "BUFF",
					["source"] = "Crakohzul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[239284] = {
					["source"] = "Champion Aquaclease",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153619,
				},
				[274738] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Osardurp-Turalyon",
					["encounterID"] = 2344,
				},
				[370] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[2120] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cornric-Illidan",
					["encounterID"] = 2344,
				},
				[31884] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sensible-Kel'Thuzad",
					["npcID"] = 0,
				},
				[274739] = {
					["type"] = "BUFF",
					["source"] = "Broggon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Büonetta",
					["npcID"] = 0,
				},
				[47568] = {
					["type"] = "BUFF",
					["source"] = "Sathroxxigg-BleedingHollow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[260069] = {
					["source"] = "Priest of Gonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131809,
				},
				[274740] = {
					["type"] = "BUFF",
					["source"] = "Osardurp-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[304056] = {
					["type"] = "BUFF",
					["source"] = "Lelantoz-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[124274] = {
					["type"] = "DEBUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[242599] = {
					["type"] = "BUFF",
					["source"] = "Griffdawg",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315681] = {
					["source"] = "Dragorián",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Huntond-Dalaran",
					["npcID"] = 0,
				},
				[52174] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Påblo",
					["encounterID"] = 2344,
				},
				[178119] = {
					["type"] = "BUFF",
					["source"] = "Hobbitslayed",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216528] = {
					["source"] = "Eatmee-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sipde",
					["npcID"] = 0,
				},
				[310565] = {
					["type"] = "BUFF",
					["source"] = "Marderzh-Thrall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[115191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deb-BurningBlade",
					["npcID"] = 0,
				},
				[199721] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dreksaurfang-Stormrage",
					["npcID"] = 0,
				},
				[59752] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thejx-Kel'Thuzad",
					["npcID"] = 0,
				},
				[111759] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Graysontate",
					["npcID"] = 0,
				},
				[290608] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Séton",
					["npcID"] = 0,
				},
				[54861] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ziggypaly-Illidan",
					["npcID"] = 0,
				},
				[127801] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Turnip Punching Bag",
					["npcID"] = 65310,
				},
				[124275] = {
					["type"] = "DEBUFF",
					["source"] = "Acetaphine-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2344,
				},
				[69826] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bullhòrn",
					["npcID"] = 0,
				},
			},
			["indicator_rare"] = false,
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.1000000238419",
				["nameplateShowSelf"] = "0",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateGlobalScale"] = "1",
				["nameplateShowEnemyMinions"] = "0",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "1",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateSelfTopInset"] = "0.5",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateShowAll"] = "1",
				["nameplateMinScale"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfScale"] = "1",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateSelfAlpha"] = "1",
				["NamePlateHorizontalScale"] = "1",
				["nameplateOtherTopInset"] = "0.085",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["NamePlateVerticalScale"] = "1",
			},
			["aura_height"] = 14,
			["use_health_animation"] = true,
			["target_highlight_alpha"] = 1,
			["aura2_x_offset"] = 48,
			["target_indicator"] = "Double Arrows",
			["target_shady_alpha"] = 0.599999964237213,
			["target_highlight_height"] = 18,
			["login_counter"] = 2486,
			["extra_icon_caster_name"] = false,
			["aura_cooldown_show_swipe"] = false,
			["extra_icon_auras_mine"] = {
				[224991] = true,
			},
			["aura_stack_font"] = "Expressway",
			["patch_version"] = 9,
			["no_spellname_length_limit"] = true,
			["aura_timer_text_size"] = 12,
			["extra_icon_show_timer"] = false,
			["aura2_grow_direction"] = 1,
			["number_region_first_run"] = true,
			["aura_stack_anchor"] = {
				["y"] = 10,
				["side"] = 5,
			},
			["cast_statusbar_spark_alpha"] = 0.7199999690055847,
			["aura_tracker"] = {
				["debuff"] = {
					224991, -- [1]
					277950, -- [2]
				},
				["buff_tracked"] = {
					[280001] = true,
				},
			},
			["hide_friendly_castbars"] = true,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["cast_statusbar_color_nointerrupt"] = {
				0.494117647058824, -- [1]
				0.498039215686275, -- [2]
				0.501960784313726, -- [3]
				0.96000000089407, -- [4]
			},
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
			["health_animation_time_dilatation"] = 2.869999885559082,
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
			["aura_cooldown_reverse"] = false,
			["health_selection_overlay_alpha"] = 0.2999999821186066,
			["cast_statusbar_bgtexture"] = "ElvUI Norm",
			["cast_statusbar_spark_width"] = 25,
		},
	},
}
