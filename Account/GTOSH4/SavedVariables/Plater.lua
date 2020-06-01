
PlaterDB = {
	["profileKeys"] = {
		["Toshdk - Kil'jaeden"] = "PixelPerfect",
		["Daggny - Frostwolf"] = "Default",
		["Tosku - Kil'jaeden"] = "Default",
		["Toshpriest - Area 52"] = "PixelPerfect",
		["Yorman - Kil'jaeden"] = "Default",
		["Toshmoney - Greymane"] = "Default",
		["Toshmonk - Kil'jaeden"] = "Default",
		["Zallie - Frostwolf"] = "Default",
		["Toshpal - Kil'jaeden"] = "PixelPerfect",
		["Toshpriest - Illidan"] = "Default",
		["Toshpal - Area 52"] = "PixelPerfect",
		["Toshpala - Illidan"] = "Default",
		["Tosh - Frostwolf"] = "Default",
		["Koutetsu - Frostwolf"] = "Default",
		["Toshaman - Area 52"] = "Default",
		["Toshmoney - Quel'dorei"] = "Default",
		["Sumex - Frostwolf"] = "Default",
		["Toshwar - Kil'jaeden"] = "Default",
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1537884697,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Name"] = "Unit - Important [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1538066775,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Very Important [Plater]",
					["PlaterCore"] = 1,
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
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1540663131,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["Name"] = "Explosion Affix M+ [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1538429739,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Aura - Debuff Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add the debuff name in the trigger box.",
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1538237586,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Big Alert [Plater]",
					["PlaterCore"] = 1,
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
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1539201768,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1538256464,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1543680853,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Name"] = "Aura - Border Color [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1539015649,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Name"] = "UnitPower [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Show the energy amount above the nameplate",
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1539201849,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
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
			["cast_statusbar_spark_alpha"] = 0.8299999833106995,
			["login_counter"] = 79,
			["pet_width_scale"] = 0.949999988079071,
			["plate_config"] = {
				["player"] = {
					["click_through"] = true,
					["castbar_enabled"] = false,
					["spellpercent_text_enabled"] = false,
				},
				["friendlyplayer"] = {
					["big_actorname_text_size"] = 10,
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["level_text_size"] = 8,
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
					["all_names"] = true,
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["actorname_text_anchor"] = {
						["side"] = 1,
					},
					["actorname_text_size"] = 8,
					["big_actortitle_text_outline"] = "OUTLINE",
					["actorname_text_spacing"] = 7,
					["percent_text_font"] = "Friz Quadrata TT",
					["buff_frame_y_offset"] = 0,
					["percent_text_show_decimals"] = false,
					["quest_enabled"] = true,
					["percent_text_ooc"] = true,
					["spellpercent_text_enabled"] = true,
					["health_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["spellname_text_size"] = 12,
					["health"] = {
						140, -- [1]
						10, -- [2]
					},
					["percent_text_enabled"] = true,
					["mana"] = {
						nil, -- [1]
						4, -- [2]
					},
					["percent_show_health"] = true,
					["percent_text_size"] = 8,
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
					["percent_text_show_decimals"] = false,
					["percent_text_size"] = 8,
					["actorname_text_spacing"] = 7,
					["percent_text_font"] = "Friz Quadrata TT",
					["spellpercent_text_size"] = 8,
					["percent_text_alpha"] = 0.7999999523162842,
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
			["cast_statusbar_fadeout_time"] = 0.4999999701976776,
			["aura_timer_text_size"] = 12,
			["first_run2"] = true,
			["patch_version"] = 9,
			["minor_width_scale"] = 0.8999999761581421,
			["health_animation_time_dilatation"] = 2.619999885559082,
			["minor_height_scale"] = 0.949999988079071,
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
				[46962] = {
					"Baron Ashbury", -- [1]
					"Shadowfang Keep", -- [2]
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
				[75172] = {
					"Deep Terror", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[140631] = {
					"South Sea Ray", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[78116] = {
					"Water Elemental", -- [1]
					"Crucible of Storms", -- [2]
				},
				[129231] = {
					"Rixxa Fluxflame", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[74569] = {
					"Restorative Waters", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[128435] = {
					"Toxic Saurid", -- [1]
					"Atal'Dazar", -- [2]
				},
				[145903] = {
					"Darkforged Crusader", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34135] = {
					"Winter Rumbler", -- [1]
					"Ulduar", -- [2]
				},
				[129232] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140632] = {
					"Scaleback Snapper", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[74722] = {
					"Razorshell Snapjaw", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[149611] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[75642] = {
					"Blindlight Bilefin", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[74728] = {
					"Twilight Lord Bathiel", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[75643] = {
					"Blindlight Murloc", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[140377] = {
					"Duneshell Harvester", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[75640] = {
					"Blindlight Murloc", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[33432] = {
					"Leviathan Mk II", -- [1]
					"Ulduar", -- [2]
				},
				[33836] = {
					"Bomb Bot", -- [1]
					"Ulduar", -- [2]
				},
				[74747] = {
					"Deep Terror", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[33528] = {
					"Guardian of Life", -- [1]
					"Ulduar", -- [2]
				},
				[74716] = {
					"Aqua Guardian", -- [1]
					"Blackfathom Deeps", -- [2]
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
				[76954] = {
					"Pahboo-Ra", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[133463] = {
					"Venture Co. War Machine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[74980] = {
					"Twilight Storm Mender", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[148631] = {
					"Unexploded Ordnance", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[74729] = {
					"Voidwalker Minion", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[74984] = {
					"Blindlight Murloc", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[32857] = {
					"Stormcaller Brundir", -- [1]
					"Ulduar", -- [2]
				},
				[50561] = {
					"Bloodthirsty Ghoul", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[46964] = {
					"Lord Godfrey", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[47138] = {
					"Pustulant Monstrosity", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[138845] = {
					"Commander Jo'vak", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[47141] = {
					"Dread Scryer", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[126918] = {
					"Irontide Crackshot", -- [1]
					"Freehold", -- [2]
				},
				[136160] = {
					"King Dazar", -- [1]
					"Kings' Rest", -- [2]
				},
				[33113] = {
					"Flame Leviathan", -- [1]
					"Ulduar", -- [2]
				},
				[47135] = {
					"Fetid Ghoul", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[145261] = {
					"Opulence", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[3887] = {
					"Baron Silverlaine", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[47232] = {
					"Ghostly Cook", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[130400] = {
					"Irontide Crusher", -- [1]
					"Freehold", -- [2]
				},
				[4958] = {
					"Haunting Spirit", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[78001] = {
					"Cloudburst Totem", -- [1]
					"Crucible of Storms", -- [2]
				},
				[3877] = {
					"Wailing Guardsman", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[47137] = {
					"Mindless Horror", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[126023] = {
					"Harbor Saurid", -- [1]
					"Crucible of Storms", -- [2]
				},
				[137029] = {
					"Ordnance Specialist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140334] = {
					"Nightscale Coilfang", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[144876] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[151068] = {
					"Tentacled Voidpriest", -- [1]
					"Crucible of Storms", -- [2]
				},
				[151630] = {
					"Void Ichor", -- [1]
					"Crucible of Storms", -- [2]
				},
				[129598] = {
					"Freehold Pack Mule", -- [1]
					"Freehold", -- [2]
				},
				[53006] = {
					"Spirit Link Totem", -- [1]
					"Crucible of Storms", -- [2]
				},
				[140691] = {
					"Giant Dreadfang", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33216] = {
					"Mechagnome Pilot", -- [1]
					"Ulduar", -- [2]
				},
				[127799] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[151041] = {
					"Etruvis the Vassal", -- [1]
					"Crucible of Storms", -- [2]
				},
				[146829] = {
					"Undying Guardian", -- [1]
					"Crucible of Storms", -- [2]
				},
				[32926] = {
					"Flash Freeze", -- [1]
					"Ulduar", -- [2]
				},
				[130575] = {
					"Wandering Axebeak", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140353] = {
					"Brightscale Coilfang", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[417] = {
					"크리툰", -- [1]
					"Crucible of Storms", -- [2]
				},
				[135239] = {
					"Spectral Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[126848] = {
					"Captain Eudora", -- [1]
					"Freehold", -- [2]
				},
				[34137] = {
					"Winter Jormungar", -- [1]
					"Ulduar", -- [2]
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
				[122970] = {
					"Shadowblade Stalker", -- [1]
					"Atal'Dazar", -- [2]
				},
				[133432] = {
					"Venture Co. Alchemist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[148623] = {
					"Echo of Gonk", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[126429] = {
					"Encrusted Coralback", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[50869] = {
					"Razorclaw the Butcher", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[148441] = {
					"Gnomish Gyro-Engineer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145372] = {
					"Wild Mooncaller", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[148569] = {
					"Breakwater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[77232] = {
					"Twilight Disciple", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[74988] = {
					"Executioner Gore", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[130653] = {
					"Wanton Sapper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[132713] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[75058] = {
					"Twilight Aquamancer", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[129527] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[148442] = {
					"Gnomish Commando", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148262] = {
					"Tidewater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[3875] = {
					"Haunted Servitor", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[34198] = {
					"Iron Mender", -- [1]
					"Ulduar", -- [2]
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
				[33526] = {
					"Ironroot Lasher", -- [1]
					"Ulduar", -- [2]
				},
				[133482] = {
					"Crawler Mine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[74989] = {
					"Twilight Disciple", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[147932] = {
					"Agitated Azershard", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[34271] = {
					"XD-175 Compactobot", -- [1]
					"Ulduar", -- [2]
				},
				[142324] = {
					"Bluefin Dolphin", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[150137] = {
					"Faceless Subduer", -- [1]
					"Uldir Scenario", -- [2]
				},
				[76037] = {
					"Twilight Storm Mender", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[149144] = {
					"Jaina's Tide Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34199] = {
					"Lightning Charged Iron Dwarf", -- [1]
					"Ulduar", -- [2]
				},
				[130743] = {
					"Adolescent Direhorn", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147933] = {
					"Geoactive Azershard", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135204] = {
					"Spectral Hex Priest", -- [1]
					"Kings' Rest", -- [2]
				},
				[34133] = {
					"Champion of Hodir", -- [1]
					"Ulduar", -- [2]
				},
				[129553] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				[133943] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[134251] = {
					"Seneschal M'bara", -- [1]
					"Kings' Rest", -- [2]
				},
				[122972] = {
					"Dazar'ai Augur", -- [1]
					"Atal'Dazar", -- [2]
				},
				[131727] = {
					"Fenrae the Cunning", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[32872] = {
					"Runic Colossus", -- [1]
					"Ulduar", -- [2]
				},
				[134994] = {
					"Spectral Headhunter", -- [1]
					"Kings' Rest", -- [2]
				},
				[33820] = {
					"Twilight Pyromancer", -- [1]
					"Ulduar", -- [2]
				},
				[130488] = {
					"Mech Jockey", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129529] = {
					"Blacktooth Scrapper", -- [1]
					"Freehold", -- [2]
				},
				[129550] = {
					"Bilge Rat Padfoot", -- [1]
					"Freehold", -- [2]
				},
				[131311] = {
					"Unleashed Azerite", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[126424] = {
					"Coralback Surfcrawler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[147935] = {
					"Azergem Crawler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33755] = {
					"Dark Rune Ravager", -- [1]
					"Ulduar", -- [2]
				},
				[148243] = {
					"Fallen Disciple", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33819] = {
					"Twilight Frost Mage", -- [1]
					"Ulduar", -- [2]
				},
				[148617] = {
					"Akunda the Devout", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139698] = {
					"Clattercraw the Oracle", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33855] = {
					"Junk Bot", -- [1]
					"Ulduar", -- [2]
				},
				[134157] = {
					"Shadow-Borne Warrior", -- [1]
					"Kings' Rest", -- [2]
				},
				[147936] = {
					"Azergem Shardback", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[136828] = {
					"Witherbranch Warrior", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[134893] = {
					"Ironweb Spider", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[3864] = {
					"Fel Steed", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[134895] = {
					"Ironweb Weaver", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[34196] = {
					"Rune Etched Sentry", -- [1]
					"Ulduar", -- [2]
				},
				[3870] = {
					"Stone Sleeper", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[130298] = {
					"Water Elemental", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[122963] = {
					"Rezan", -- [1]
					"Atal'Dazar", -- [2]
				},
				[34267] = {
					"Parts Recovery Technician", -- [1]
					"Ulduar", -- [2]
				},
				[126845] = {
					"Captain Jolly", -- [1]
					"Freehold", -- [2]
				},
				[122969] = {
					"Zanchuli Witch-Doctor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[144747] = {
					"Pa'ku's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135817] = {
					"Zephyr", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[135406] = {
					"Animated Gold", -- [1]
					"Kings' Rest", -- [2]
				},
				[134894] = {
					"Ironweb Spinner", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[147938] = {
					"Azergem Crystalback", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33699] = {
					"Storm Tempered Keeper", -- [1]
					"Ulduar", -- [2]
				},
				[148194] = {
					"Icy Barrier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[130489] = {
					"Dazarian Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140354] = {
					"Brightscale Wind Serpent", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[74353] = {
					"Twilight Aquamancer", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[32916] = {
					"Snaplasher", -- [1]
					"Ulduar", -- [2]
				},
				[134900] = {
					"Venomfang Spider", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[148962] = {
					"Ravenous Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[131729] = {
					"Lyco", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[33237] = {
					"Ulduar Colossus", -- [1]
					"Ulduar", -- [2]
				},
				[144231] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[122967] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
				},
				[130404] = {
					"Vermin Trapper", -- [1]
					"Freehold", -- [2]
				},
				[135322] = {
					"The Golden Serpent", -- [1]
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
				[74363] = {
					"Twilight Shadow", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[144232] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[34234] = {
					"Runeforged Sentry", -- [1]
					"Ulduar", -- [2]
				},
				[130024] = {
					"Soggy Shiprat", -- [1]
					"Freehold", -- [2]
				},
				[34288] = {
					"Salvagebot Sawblade", -- [1]
					"Ulduar", -- [2]
				},
				[33186] = {
					"Razorscale", -- [1]
					"Ulduar", -- [2]
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
				[32930] = {
					"Kologarn", -- [1]
					"Ulduar", -- [2]
				},
				[132868] = {
					"Congealed Azerite", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[136264] = {
					"Half-Finished Mummy", -- [1]
					"Kings' Rest", -- [2]
				},
				[128434] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[33453] = {
					"Dark Rune Watcher", -- [1]
					"Ulduar", -- [2]
				},
				[161241] = {
					"Voidweaver Mal'thir", -- [1]
					"Atal'Dazar", -- [2]
				},
				[130661] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134899] = {
					"Venomfang Lurker", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[129469] = {
					"Deepsea Crawler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[126969] = {
					"Trothak", -- [1]
					"Freehold", -- [2]
				},
				[148582] = {
					"Stormbound Guardian", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140355] = {
					"Brightscale Screecher", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[32906] = {
					"Freya", -- [1]
					"Ulduar", -- [2]
				},
				[137713] = {
					"Big Money Crab", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129526] = {
					"Bilge Rat Swabby", -- [1]
					"Freehold", -- [2]
				},
				[137969] = {
					"Interment Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[134005] = {
					"Shalebiter", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146409] = {
					"Lady Jaina Proudmoore", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34191] = {
					"Trash", -- [1]
					"Ulduar", -- [2]
				},
				[138369] = {
					"Footbomb Hooligan", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129214] = {
					"Coin-Operated Crowd Pummeler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[145898] = {
					"Anointed Disciple", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144680] = {
					"Frida Ironbellows", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138993] = {
					"Gurlack", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[129470] = {
					"Deepsea Crab", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[50159] = {
					"Uzi", -- [1]
					"Crucible of Storms", -- [2]
				},
				[33118] = {
					"Ignis the Furnace Master", -- [1]
					"Ulduar", -- [2]
				},
				[62005] = {
					"Beast", -- [1]
					"Crucible of Storms", -- [2]
				},
				[132797] = {
					"Pinegraze Calf", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
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
				[146945] = {
					"Swarming Voidspawn", -- [1]
					"Crucible of Storms", -- [2]
				},
				[93349] = {
					"FelBane", -- [1]
					"Crucible of Storms", -- [2]
				},
				[132893] = {
					"Fire Spirit", -- [1]
					"Verdant Wilds (Islands 8)", -- [2]
				},
				[145644] = {
					"Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147614] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137716] = {
					"Bottom Feeder", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136470] = {
					"Refreshment Vendor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[47231] = {
					"Shadowy Attendant", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[129471] = {
					"Deepsea Sandcrawler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135834] = {
					"Vile Cloud", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[129599] = {
					"Cutwater Knife Juggler", -- [1]
					"Freehold", -- [2]
				},
				[33966] = {
					"Crusher Tentacle", -- [1]
					"Ulduar", -- [2]
				},
				[131726] = {
					"Gunnolf the Ferocious", -- [1]
					"Havenswood (Islands 2)", -- [2]
				},
				[147218] = {
					"Spirit of Gold", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[143011] = {
					"Sandy Perch", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[74983] = {
					"Twilight Disciple", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[33822] = {
					"Twilight Guardian", -- [1]
					"Ulduar", -- [2]
				},
				[33488] = {
					"Saronite Vapors", -- [1]
					"Ulduar", -- [2]
				},
				[74721] = {
					"Blindlight Bilefin", -- [1]
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
				[33293] = {
					"XT-002 Deconstructor", -- [1]
					"Ulduar", -- [2]
				},
				[130435] = {
					"Addled Thug", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[76036] = {
					"Twilight Shadow", -- [1]
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
				[75155] = {
					"Aku'mai the Devourer", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[125828] = {
					"Pluie", -- [1]
					"Atal'Dazar", -- [2]
				},
				[161437] = {
					"Explosive Scarab", -- [1]
					"Atal'Dazar", -- [2]
				},
			},
			["cast_statusbar_texture"] = "ElvUI Norm",
			["extra_icon_auras"] = {
				277242, -- [1]
			},
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
				["Blockade Encounter"] = 1,
				["Jaina Encounter"] = 6,
				["Execute Range"] = 1,
				["Reorder Nameplate"] = 3,
				["Combo Points"] = 3,
				["Hide Neutral Units"] = 1,
				["Extra Border"] = 2,
				["Target Color"] = 3,
				["Attacking Specific Unit"] = 1,
				["Aura Reorder"] = 1,
			},
			["update_throttle"] = 0.2499999850988388,
			["captured_spells"] = {
				[269279] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298152] = {
					["type"] = "BUFF",
					["source"] = "Turkeydos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272986] = {
					["type"] = "DEBUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272987] = {
					["type"] = "BUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275540] = {
					["type"] = "BUFF",
					["source"] = "Sploshyy",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228537] = {
					["encounterID"] = 2281,
					["source"] = "Delpix-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203819] = {
					["type"] = "BUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198838] = {
					["encounterID"] = 2281,
					["source"] = "Toshaman-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268898] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32216] = {
					["type"] = "BUFF",
					["source"] = "Sploshyy",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115834] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274395] = {
					["type"] = "BUFF",
					["source"] = "Kasscades-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268899] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278736] = {
					["source"] = "Hqvoc-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318211] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118038] = {
					["type"] = "BUFF",
					["source"] = "Sploshyy",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195072] = {
					["encounterID"] = 2281,
					["source"] = "Hqvoc-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294966] = {
					["source"] = "Zendro-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["source"] = "Roxibabe-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295856] = {
					["encounterID"] = 2281,
					["source"] = "Guardian of Azeroth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152396,
				},
				[285253] = {
					["type"] = "DEBUFF",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146409,
				},
				[319241] = {
					["type"] = "DEBUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267611] = {
					["type"] = "BUFF",
					["source"] = "Kasscades-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186254] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285254] = {
					["type"] = "DEBUFF",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146409,
				},
				[259455] = {
					["source"] = "Adrayahealz-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54149] = {
					["type"] = "BUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315787] = {
					["type"] = "BUFF",
					["source"] = "Rathux-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225921] = {
					["encounterID"] = 2281,
					["source"] = "Meta",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317065] = {
					["source"] = "Goonette-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319237] = {
					["source"] = "Zendro-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268893] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268904] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80354] = {
					["source"] = "Laziness-Area52",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318216] = {
					["type"] = "BUFF",
					["source"] = "Turkeydos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81340] = {
					["type"] = "BUFF",
					["source"] = "Rathux-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290878] = {
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146409,
				},
				[315161] = {
					["type"] = "DEBUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109128] = {
					["type"] = "BUFF",
					["source"] = "Sploshyy",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313113] = {
					["encounterID"] = 2281,
					["source"] = "Ctchmeifyucn-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118455] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115804] = {
					["type"] = "DEBUFF",
					["source"] = "Sploshyy",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Fiery",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221771] = {
					["encounterID"] = 2281,
					["source"] = "Ctchmeifyucn-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[293946] = {
					["source"] = "Adoratroll-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79140] = {
					["encounterID"] = 2281,
					["source"] = "Solvèj-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318219] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235313] = {
					["type"] = "BUFF",
					["source"] = "Fiery",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[642] = {
					["type"] = "BUFF",
					["source"] = "Kasscades-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270058] = {
					["source"] = "Nihelix-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272979] = {
					["type"] = "BUFF",
					["source"] = "Evanpal-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288199] = {
					["type"] = "BUFF",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146409,
				},
				[196608] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287565] = {
					["encounterID"] = 2281,
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146409,
				},
				[204079] = {
					["type"] = "DEBUFF",
					["source"] = "Evanpal-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186258] = {
					["source"] = "Lucifina-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53365] = {
					["type"] = "BUFF",
					["source"] = "Rathux-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77130] = {
					["encounterID"] = 2281,
					["source"] = "Toshaman-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297162] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267612] = {
					["type"] = "BUFF",
					["source"] = "Sploshyy",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296003] = {
					["type"] = "BUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[126664] = {
					["encounterID"] = 2281,
					["source"] = "Sploshyy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6673] = {
					["encounterID"] = 2281,
					["source"] = "Sploshyy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108843] = {
					["type"] = "BUFF",
					["source"] = "Fiery",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105809] = {
					["type"] = "BUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[781] = {
					["encounterID"] = 2281,
					["source"] = "Thunderrz-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288212] = {
					["type"] = "DEBUFF",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146409,
				},
				[77762] = {
					["type"] = "BUFF",
					["source"] = "Toshaman-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Psèudò-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204021] = {
					["encounterID"] = 2281,
					["source"] = "Meta",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[163201] = {
					["encounterID"] = 2281,
					["source"] = "Sploshyy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198013] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300989] = {
					["source"] = "Adrayahealz-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[226757] = {
					["type"] = "DEBUFF",
					["source"] = "Fiery",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290121] = {
					["source"] = "Blurie-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36107] = {
					["encounterID"] = 2281,
					["source"] = "Meta",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155158] = {
					["type"] = "DEBUFF",
					["source"] = "Turkeydos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270576] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279902] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79206] = {
					["type"] = "BUFF",
					["source"] = "Toshaman-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26573] = {
					["encounterID"] = 2281,
					["source"] = "Evanpal-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59628] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11366] = {
					["encounterID"] = 2281,
					["source"] = "Turkeydos-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1044] = {
					["encounterID"] = 2281,
					["source"] = "Scifi-Misha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[232698] = {
					["source"] = "Excel-Eredar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194310] = {
					["type"] = "DEBUFF",
					["source"] = "Rathux-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183436] = {
					["type"] = "BUFF",
					["source"] = "Kasscades-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216411] = {
					["type"] = "BUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109132] = {
					["encounterID"] = 2281,
					["source"] = "Ctchmeifyucn-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313088] = {
					["type"] = "BUFF",
					["source"] = "Hqvoc-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196742] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47541] = {
					["encounterID"] = 2281,
					["source"] = "Rathux-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[296138] = {
					["type"] = "BUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210152] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272122] = {
					["source"] = "Lockburn-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316826] = {
					["encounterID"] = 2281,
					["source"] = "Twisted Appendage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162764,
				},
				[108366] = {
					["type"] = "BUFF",
					["source"] = "Blueechaos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289488] = {
					["encounterID"] = 2281,
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146409,
				},
				[188499] = {
					["type"] = "BUFF",
					["source"] = "Felfanatic-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288211] = {
					["encounterID"] = 2281,
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146409,
				},
				[171253] = {
					["source"] = "Trexxi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Skyggen-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204596] = {
					["encounterID"] = 2281,
					["source"] = "Meta",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[216413] = {
					["type"] = "BUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297034] = {
					["source"] = "Novará-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290001] = {
					["type"] = "BUFF",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146409,
				},
				[53385] = {
					["encounterID"] = 2281,
					["source"] = "Kasscades-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295367] = {
					["type"] = "DEBUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36554] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48707] = {
					["type"] = "BUFF",
					["source"] = "Rathux-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297035] = {
					["source"] = "Goonette-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[133] = {
					["encounterID"] = 2281,
					["source"] = "Fiery",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6262] = {
					["encounterID"] = 2281,
					["source"] = "Fiery",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288981] = {
					["source"] = "Yorman",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188501] = {
					["type"] = "BUFF",
					["source"] = "Felfanatic-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196741] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[96231] = {
					["encounterID"] = 2281,
					["source"] = "Kasscades-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[167105] = {
					["encounterID"] = 2281,
					["source"] = "Sploshyy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204598] = {
					["type"] = "DEBUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209261] = {
					["source"] = "Williem-Area52",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1490] = {
					["type"] = "DEBUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308742] = {
					["source"] = "Solvèj-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295248] = {
					["type"] = "BUFF",
					["source"] = "Ogv-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20473] = {
					["encounterID"] = 2281,
					["source"] = "Scifi-Misha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288345] = {
					["type"] = "BUFF",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146409,
				},
				[41425] = {
					["source"] = "Fiery",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312107] = {
					["type"] = "BUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185245] = {
					["type"] = "DEBUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288221] = {
					["encounterID"] = 2281,
					["source"] = "Unexploded Ordnance",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148631,
				},
				[275699] = {
					["encounterID"] = 2281,
					["source"] = "Rathux-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85948] = {
					["encounterID"] = 2281,
					["source"] = "Rathux-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288219] = {
					["type"] = "BUFF",
					["source"] = "Unexploded Ordnance",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148631,
				},
				[185565] = {
					["encounterID"] = 2281,
					["source"] = "Solvèj-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2645] = {
					["type"] = "BUFF",
					["source"] = "Toshaman-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Yaabs-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116768] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Quixi-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297037] = {
					["source"] = "Nihelix-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2139] = {
					["encounterID"] = 2281,
					["source"] = "Turkeydos-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317859] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192082] = {
					["type"] = "BUFF",
					["source"] = "Wind Rush Totem",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 97285,
				},
				[271103] = {
					["type"] = "BUFF",
					["source"] = "Sploshyy",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1329] = {
					["encounterID"] = 2281,
					["source"] = "Solvèj-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288719] = {
					["type"] = "BUFF",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146409,
				},
				[185311] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272126] = {
					["source"] = "Lucifina-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73685] = {
					["type"] = "BUFF",
					["source"] = "Toshaman-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300691] = {
					["type"] = "BUFF",
					["source"] = "Evanpal-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279397] = {
					["type"] = "BUFF",
					["source"] = "Evanpal-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297168] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295855] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277185] = {
					["type"] = "BUFF",
					["source"] = "Turkeydos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297039] = {
					["source"] = "Psèudò-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33697] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196782] = {
					["type"] = "DEBUFF",
					["source"] = "Rathux-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31661] = {
					["encounterID"] = 2281,
					["source"] = "Turkeydos-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280177] = {
					["type"] = "BUFF",
					["source"] = "Fiery",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100] = {
					["encounterID"] = 2281,
					["source"] = "Sploshyy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280433] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275779] = {
					["encounterID"] = 2281,
					["source"] = "Evanpal-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281711] = {
					["type"] = "DEBUFF",
					["source"] = "Rathux-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["source"] = "Skyggen-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[7384] = {
					["type"] = "BUFF",
					["source"] = "Sploshyy",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24275] = {
					["encounterID"] = 2281,
					["source"] = "Kasscades-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274373] = {
					["type"] = "BUFF",
					["source"] = "Rathux-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[52174] = {
					["encounterID"] = 2281,
					["source"] = "Sploshyy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277181] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204157] = {
					["encounterID"] = 2281,
					["source"] = "Meta",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[98008] = {
					["encounterID"] = 2281,
					["source"] = "Toshaman-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315763] = {
					["type"] = "BUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281721] = {
					["type"] = "DEBUFF",
					["source"] = "Hqvoc-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318378] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119996] = {
					["encounterID"] = 2281,
					["source"] = "Ctchmeifyucn-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77472] = {
					["encounterID"] = 2281,
					["source"] = "Toshaman-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1856] = {
					["encounterID"] = 2281,
					["source"] = "Solvèj-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[220510] = {
					["source"] = "Viserecht-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Skyggen-Illidan",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281843] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300174] = {
					["type"] = "BUFF",
					["source"] = "Evanpal-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303568] = {
					["type"] = "DEBUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[27576] = {
					["encounterID"] = 2281,
					["source"] = "Solvèj-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281844] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295258] = {
					["type"] = "BUFF",
					["source"] = "Trexxi",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53595] = {
					["encounterID"] = 2281,
					["source"] = "Evanpal-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207289] = {
					["type"] = "BUFF",
					["source"] = "Rathux-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268877] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298836] = {
					["source"] = "Morcak-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272903] = {
					["type"] = "BUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90328] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 32517,
				},
				[403] = {
					["encounterID"] = 2281,
					["source"] = "Toshaman-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298837] = {
					["source"] = "Goonette-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303564] = {
					["encounterID"] = 2281,
					["source"] = "Solvèj-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316814] = {
					["source"] = "Quixi-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303570] = {
					["source"] = "Solvèj-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316823] = {
					["type"] = "BUFF",
					["source"] = "Toshaman-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313918] = {
					["type"] = "BUFF",
					["source"] = "Toshaman-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318187] = {
					["type"] = "DEBUFF",
					["source"] = "Evanpal-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208086] = {
					["type"] = "DEBUFF",
					["source"] = "Sploshyy",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288619] = {
					["encounterID"] = 2281,
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146409,
				},
				[63560] = {
					["encounterID"] = 2281,
					["source"] = "Rathux-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11327] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199373] = {
					["encounterID"] = 2281,
					["source"] = "Army of the Dead",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24207,
				},
				[313148] = {
					["encounterID"] = 2281,
					["source"] = "Toshaman-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[319919] = {
					["source"] = "Yaabs-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289387] = {
					["encounterID"] = 2281,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288546] = {
					["encounterID"] = 2281,
					["source"] = "Magus of the Dead",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148797,
				},
				[298841] = {
					["source"] = "Psèudò-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164815] = {
					["type"] = "DEBUFF",
					["source"] = "Yorman",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31884] = {
					["type"] = "BUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[178740] = {
					["type"] = "BUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115080] = {
					["encounterID"] = 2281,
					["source"] = "Ctchmeifyucn-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275773] = {
					["encounterID"] = 2281,
					["source"] = "Scifi-Misha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51505] = {
					["encounterID"] = 2281,
					["source"] = "Toshaman-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288882] = {
					["type"] = "BUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228477] = {
					["encounterID"] = 2281,
					["source"] = "Meta",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274443] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114250] = {
					["type"] = "BUFF",
					["source"] = "Kasscades-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114282] = {
					["source"] = "Yorman",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[248622] = {
					["type"] = "BUFF",
					["source"] = "Sploshyy",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117828] = {
					["type"] = "BUFF",
					["source"] = "Blueechaos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90361] = {
					["encounterID"] = 2281,
					["source"] = "Gara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 88708,
				},
				[279810] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286581] = {
					["type"] = "DEBUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108853] = {
					["encounterID"] = 2281,
					["source"] = "Turkeydos-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288099] = {
					["encounterID"] = 2281,
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146409,
				},
				[107428] = {
					["encounterID"] = 2281,
					["source"] = "Ctchmeifyucn-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251839] = {
					["source"] = "Brohana-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285177] = {
					["encounterID"] = 2281,
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146409,
				},
				[268953] = {
					["type"] = "BUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275089] = {
					["source"] = "Needeyedrops-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201633] = {
					["type"] = "BUFF",
					["source"] = "Earthen Wall Totem",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100943,
				},
				[157153] = {
					["encounterID"] = 2281,
					["source"] = "Toshaman-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203720] = {
					["encounterID"] = 2281,
					["source"] = "Meta",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290621] = {
					["encounterID"] = 2281,
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146409,
				},
				[231504] = {
					["source"] = "Evanpal-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268955] = {
					["type"] = "BUFF",
					["source"] = "Kasscades-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[62124] = {
					["encounterID"] = 2281,
					["source"] = "Evanpal-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300893] = {
					["type"] = "BUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162264] = {
					["type"] = "BUFF",
					["source"] = "Hqvoc-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268956] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[4987] = {
					["encounterID"] = 2281,
					["source"] = "Scifi-Misha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298343] = {
					["type"] = "BUFF",
					["source"] = "Turkeydos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297108] = {
					["encounterID"] = 2281,
					["source"] = "Solvèj-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203975] = {
					["source"] = "Majinxx-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269085] = {
					["type"] = "BUFF",
					["source"] = "Toshaman-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272790] = {
					["encounterID"] = 2281,
					["source"] = "Thunderrz-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207744] = {
					["type"] = "DEBUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280200] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287993] = {
					["encounterID"] = 2281,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312915] = {
					["type"] = "BUFF",
					["source"] = "Toshaman-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1459] = {
					["encounterID"] = 2281,
					["source"] = "Fiery",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207317] = {
					["encounterID"] = 2281,
					["source"] = "Rathux-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108280] = {
					["type"] = "BUFF",
					["source"] = "Toshaman-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298357] = {
					["type"] = "BUFF",
					["source"] = "Fiery",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188838] = {
					["encounterID"] = 2281,
					["source"] = "Toshaman-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280204] = {
					["type"] = "BUFF",
					["source"] = "Fiery",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6552] = {
					["encounterID"] = 2281,
					["source"] = "Sploshyy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268194] = {
					["type"] = "DEBUFF",
					["source"] = "Kasscades-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147193] = {
					["encounterID"] = 2281,
					["source"] = "Ogv-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85222] = {
					["encounterID"] = 2281,
					["source"] = "Scifi-Misha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61295] = {
					["encounterID"] = 2281,
					["source"] = "Toshaman-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[25771] = {
					["type"] = "DEBUFF",
					["source"] = "Kasscades-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300142] = {
					["encounterID"] = 2281,
					["source"] = "Turkeydos-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31821] = {
					["type"] = "BUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[152175] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267685] = {
					["type"] = "BUFF",
					["source"] = "Turkeydos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217200] = {
					["encounterID"] = 2281,
					["source"] = "Thunderrz-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12294] = {
					["encounterID"] = 2281,
					["source"] = "Sploshyy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267558] = {
					["source"] = "Phluphphie-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256739] = {
					["source"] = "Bootard-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81262] = {
					["type"] = "BUFF",
					["source"] = "Efflorescence",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 47649,
				},
				[287365] = {
					["encounterID"] = 2281,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203981] = {
					["type"] = "BUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191587] = {
					["type"] = "DEBUFF",
					["source"] = "Rathux-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289277] = {
					["source"] = "Zendro-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48265] = {
					["type"] = "BUFF",
					["source"] = "Rathux-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267560] = {
					["source"] = "Bootard-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316744] = {
					["source"] = "Goonette-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85256] = {
					["encounterID"] = 2281,
					["source"] = "Kasscades-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45438] = {
					["source"] = "Fiery",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287490] = {
					["encounterID"] = 2281,
					["source"] = "Ice Block",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148522,
				},
				[1680] = {
					["encounterID"] = 2281,
					["source"] = "Sploshyy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16827] = {
					["encounterID"] = 2281,
					["source"] = "Gara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 88708,
				},
				[101545] = {
					["encounterID"] = 2281,
					["source"] = "Ctchmeifyucn-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[109304] = {
					["encounterID"] = 2281,
					["source"] = "Thunderrz-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[296059] = {
					["type"] = "BUFF",
					["source"] = "Toshaman-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116011] = {
					["encounterID"] = 2281,
					["source"] = "Turkeydos-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223143] = {
					["type"] = "BUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296971] = {
					["type"] = "BUFF",
					["source"] = "Fiery",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[21562] = {
					["source"] = "Roxibabe-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268854] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[703] = {
					["encounterID"] = 2281,
					["source"] = "Solvèj-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279715] = {
					["type"] = "BUFF",
					["source"] = "Turkeydos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279956] = {
					["type"] = "DEBUFF",
					["source"] = "Kasscades-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308189] = {
					["source"] = "Nihelix-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260643] = {
					["encounterID"] = 2281,
					["source"] = "Sploshyy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[231895] = {
					["type"] = "BUFF",
					["source"] = "Kasscades-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203539] = {
					["source"] = "Kasscades-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3408] = {
					["source"] = "Novará-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201427] = {
					["encounterID"] = 2281,
					["source"] = "Delpix-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51460] = {
					["type"] = "BUFF",
					["source"] = "Rathux-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267331] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274346] = {
					["type"] = "BUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127797] = {
					["type"] = "DEBUFF",
					["source"] = "Yorman",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156779] = {
					["source"] = "Bootard-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2818] = {
					["type"] = "DEBUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122783] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[853] = {
					["encounterID"] = 2281,
					["source"] = "Scifi-Misha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193641] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246852] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2823] = {
					["source"] = "Novará-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116014] = {
					["type"] = "BUFF",
					["source"] = "Turkeydos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290053] = {
					["type"] = "BUFF",
					["source"] = "Icebound Image",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149535,
				},
				[287626] = {
					["encounterID"] = 2281,
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146409,
				},
				[197277] = {
					["type"] = "DEBUFF",
					["source"] = "Kasscades-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[130736] = {
					["encounterID"] = 2281,
					["source"] = "Rathux-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292361] = {
					["source"] = "Ogv-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317265] = {
					["type"] = "DEBUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[167898] = {
					["source"] = "Zendro-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288394] = {
					["type"] = "DEBUFF",
					["source"] = "Unexploded Ordnance",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148631,
				},
				[267329] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48107] = {
					["type"] = "BUFF",
					["source"] = "Turkeydos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264761] = {
					["source"] = "Apexarrow-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274598] = {
					["type"] = "BUFF",
					["source"] = "Turkeydos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138130] = {
					["type"] = "BUFF",
					["source"] = "Earth Spirit",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69792,
				},
				[122] = {
					["encounterID"] = 2281,
					["source"] = "Turkeydos-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108446] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[113746] = {
					["type"] = "DEBUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73920] = {
					["encounterID"] = 2281,
					["source"] = "Toshaman-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19574] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[93402] = {
					["encounterID"] = 2281,
					["source"] = "Yorman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[246851] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303344] = {
					["type"] = "BUFF",
					["source"] = "Evanpal-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19750] = {
					["encounterID"] = 2281,
					["source"] = "Scifi-Misha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264764] = {
					["source"] = "Apexarrow-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204242] = {
					["type"] = "DEBUFF",
					["source"] = "Evanpal-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303345] = {
					["type"] = "BUFF",
					["source"] = "Evanpal-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100780] = {
					["encounterID"] = 2281,
					["source"] = "Ctchmeifyucn-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279584] = {
					["type"] = "BUFF",
					["source"] = "Felfanatic-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260708] = {
					["type"] = "BUFF",
					["source"] = "Sploshyy",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294155] = {
					["source"] = "Majinxx-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285721] = {
					["source"] = "Safin-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187827] = {
					["type"] = "BUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258920] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267327] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202137] = {
					["encounterID"] = 2281,
					["source"] = "Meta",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[589] = {
					["type"] = "DEBUFF",
					["source"] = "Ogv-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1943] = {
					["encounterID"] = 2281,
					["source"] = "Solvèj-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[101643] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190319] = {
					["type"] = "BUFF",
					["source"] = "Turkeydos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268856] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279204] = {
					["type"] = "BUFF",
					["source"] = "Kasscades-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102793] = {
					["encounterID"] = 2281,
					["source"] = "Yorman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262115] = {
					["type"] = "DEBUFF",
					["source"] = "Sploshyy",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296962] = {
					["type"] = "BUFF",
					["source"] = "Fiery",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301308] = {
					["encounterID"] = 2281,
					["source"] = "Rathux-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285976] = {
					["source"] = "Vhaestus-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33943] = {
					["source"] = "Sausagechuck-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267325] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207311] = {
					["encounterID"] = 2281,
					["source"] = "Rathux-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313571] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118922] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267326] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201754] = {
					["encounterID"] = 2281,
					["source"] = "Gara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 88708,
				},
				[285978] = {
					["source"] = "Catrosphe-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317020] = {
					["source"] = "Quixi-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32645] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294027] = {
					["type"] = "BUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285979] = {
					["source"] = "Goonette-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8921] = {
					["encounterID"] = 2281,
					["source"] = "Skyggen-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183998] = {
					["encounterID"] = 2281,
					["source"] = "Scifi-Misha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289940] = {
					["encounterID"] = 2281,
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146409,
				},
				[297089] = {
					["source"] = "Blurie-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278954] = {
					["type"] = "BUFF",
					["source"] = "Evanpal-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285725] = {
					["encounterID"] = 2281,
					["source"] = "Kul Tiran Marine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146753,
				},
				[269239] = {
					["type"] = "BUFF",
					["source"] = "Yorman",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285981] = {
					["source"] = "Blurie-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53600] = {
					["encounterID"] = 2281,
					["source"] = "Evanpal-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267330] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26297] = {
					["type"] = "BUFF",
					["source"] = "Turkeydos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31224] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Palliwhirl-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48108] = {
					["type"] = "BUFF",
					["source"] = "Turkeydos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17962] = {
					["encounterID"] = 2281,
					["source"] = "Blueechaos-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300802] = {
					["type"] = "BUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212552] = {
					["type"] = "BUFF",
					["source"] = "Rathux-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246853] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184575] = {
					["encounterID"] = 2281,
					["source"] = "Kasscades-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203538] = {
					["source"] = "Kasscades-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295310] = {
					["type"] = "BUFF",
					["source"] = "Felfanatic-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162794] = {
					["encounterID"] = 2281,
					["source"] = "Felfanatic-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[231843] = {
					["type"] = "BUFF",
					["source"] = "Kasscades-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251836] = {
					["source"] = "Laziness-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[97462] = {
					["encounterID"] = 2281,
					["source"] = "Sploshyy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[246854] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271550] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61999] = {
					["encounterID"] = 2281,
					["source"] = "Rathux-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[35395] = {
					["encounterID"] = 2281,
					["source"] = "Scifi-Misha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193455] = {
					["encounterID"] = 2281,
					["source"] = "Thunderrz-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[246152] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[69070] = {
					["encounterID"] = 2281,
					["source"] = "Toshaman-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[100784] = {
					["encounterID"] = 2281,
					["source"] = "Ctchmeifyucn-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116841] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12654] = {
					["type"] = "DEBUFF",
					["source"] = "Turkeydos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53390] = {
					["type"] = "BUFF",
					["source"] = "Toshaman-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31935] = {
					["encounterID"] = 2281,
					["source"] = "Evanpal-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[214202] = {
					["type"] = "BUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268998] = {
					["type"] = "BUFF",
					["source"] = "Fiery",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122470] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[97463] = {
					["type"] = "BUFF",
					["source"] = "Sploshyy",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288800] = {
					["type"] = "BUFF",
					["source"] = "Turkeydos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316522] = {
					["type"] = "BUFF",
					["source"] = "Rathux-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236060] = {
					["type"] = "BUFF",
					["source"] = "Fiery",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256735] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210320] = {
					["type"] = "BUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Weezyl-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270661] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277943] = {
					["type"] = "BUFF",
					["source"] = "Toshaman-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288374] = {
					["encounterID"] = 2281,
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146409,
				},
				[245388] = {
					["encounterID"] = 2281,
					["source"] = "Solvèj-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113656] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288675] = {
					["type"] = "BUFF",
					["source"] = "Toshaman-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288803] = {
					["type"] = "BUFF",
					["source"] = "Turkeydos-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131347] = {
					["encounterID"] = 2281,
					["source"] = "Felfanatic-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288548] = {
					["encounterID"] = 2281,
					["source"] = "Magus of the Dead",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148797,
				},
				[57994] = {
					["encounterID"] = 2281,
					["source"] = "Toshaman-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317420] = {
					["source"] = "Thekhan-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245389] = {
					["type"] = "DEBUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288038] = {
					["encounterID"] = 2281,
					["source"] = "Kul Tiran Marine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146753,
				},
				[162243] = {
					["encounterID"] = 2281,
					["source"] = "Delpix-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257946] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200166] = {
					["encounterID"] = 2281,
					["source"] = "Hqvoc-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259161] = {
					["source"] = "Brohana-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299790] = {
					["type"] = "BUFF",
					["source"] = "Toshaman-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8690] = {
					["source"] = "Scifi-Misha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2948] = {
					["encounterID"] = 2281,
					["source"] = "Turkeydos-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290084] = {
					["encounterID"] = 2281,
					["source"] = "Jaina's Tide Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149558,
				},
				[145205] = {
					["encounterID"] = 2281,
					["source"] = "Yorman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1064] = {
					["encounterID"] = 2281,
					["source"] = "Toshaman-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204255] = {
					["encounterID"] = 2281,
					["source"] = "Meta",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57723] = {
					["source"] = "Dragodifuoco-Area52",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288169] = {
					["encounterID"] = 2281,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288297] = {
					["encounterID"] = 2281,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288747] = {
					["encounterID"] = 2281,
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146409,
				},
				[260881] = {
					["type"] = "BUFF",
					["source"] = "Toshaman-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263642] = {
					["encounterID"] = 2281,
					["source"] = "Meta",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183752] = {
					["encounterID"] = 2281,
					["source"] = "Felfanatic-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212653] = {
					["type"] = "BUFF",
					["source"] = "Fiery",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290087] = {
					["encounterID"] = 2281,
					["source"] = "Jaina's Tide Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149144,
				},
				[307128] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6940] = {
					["type"] = "BUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221886] = {
					["type"] = "BUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153561] = {
					["encounterID"] = 2281,
					["source"] = "Turkeydos-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184092] = {
					["encounterID"] = 2281,
					["source"] = "Evanpal-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298700] = {
					["source"] = "Wencha-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199658] = {
					["encounterID"] = 2281,
					["source"] = "Sploshyy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281402] = {
					["source"] = "Turkeydos-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295838] = {
					["type"] = "DEBUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287790] = {
					["source"] = "Grownbull-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214222] = {
					["type"] = "DEBUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34026] = {
					["encounterID"] = 2281,
					["source"] = "Thunderrz-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315176] = {
					["type"] = "DEBUFF",
					["source"] = "Fiery",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287280] = {
					["type"] = "DEBUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289963] = {
					["encounterID"] = 2281,
					["source"] = "Ice Blocked Nathanos",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149508,
				},
				[61684] = {
					["type"] = "BUFF",
					["source"] = "JiKun",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69712,
				},
				[295840] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87023] = {
					["type"] = "DEBUFF",
					["source"] = "Fiery",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316835] = {
					["type"] = "DEBUFF",
					["source"] = "Twisted Appendage",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 162764,
				},
				[102417] = {
					["source"] = "Skyggen-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263648] = {
					["type"] = "BUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2983] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8004] = {
					["encounterID"] = 2281,
					["source"] = "Toshaman-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57724] = {
					["source"] = "Majinxx-Area52",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295842] = {
					["type"] = "BUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268887] = {
					["type"] = "BUFF",
					["source"] = "Felfanatic-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304056] = {
					["type"] = "BUFF",
					["source"] = "Meta",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303380] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297412] = {
					["source"] = "Roxibabe-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192077] = {
					["encounterID"] = 2281,
					["source"] = "Toshaman-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288434] = {
					["type"] = "DEBUFF",
					["source"] = "Fiery",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273232] = {
					["type"] = "BUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2643] = {
					["encounterID"] = 2281,
					["source"] = "Thunderrz-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[87024] = {
					["type"] = "DEBUFF",
					["source"] = "Fiery",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188370] = {
					["type"] = "BUFF",
					["source"] = "Evanpal-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[137639] = {
					["type"] = "BUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287925] = {
					["type"] = "BUFF",
					["source"] = "Lady Jaina Proudmoore",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146409,
				},
				[318227] = {
					["type"] = "BUFF",
					["source"] = "Rathux-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193530] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203814] = {
					["source"] = "Thekhan-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20271] = {
					["encounterID"] = 2281,
					["source"] = "Kasscades-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199854] = {
					["type"] = "BUFF",
					["source"] = "Sploshyy",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190784] = {
					["encounterID"] = 2281,
					["source"] = "Scifi-Misha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228287] = {
					["type"] = "DEBUFF",
					["source"] = "Ctchmeifyucn-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258883] = {
					["type"] = "DEBUFF",
					["source"] = "Delpix-Tichondrius",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289220] = {
					["encounterID"] = 2281,
					["source"] = "Jaina's Tide Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149144,
				},
				[255937] = {
					["encounterID"] = 2281,
					["source"] = "Kasscades-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77575] = {
					["encounterID"] = 2281,
					["source"] = "Rathux-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[132403] = {
					["type"] = "BUFF",
					["source"] = "Evanpal-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297126] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268905] = {
					["type"] = "BUFF",
					["source"] = "Scifi-Misha",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198839] = {
					["type"] = "BUFF",
					["source"] = "Earthen Wall Totem",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100943,
				},
				[25046] = {
					["encounterID"] = 2281,
					["source"] = "Solvèj-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197561] = {
					["type"] = "BUFF",
					["source"] = "Evanpal-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1766] = {
					["encounterID"] = 2281,
					["source"] = "Solvèj-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212056] = {
					["source"] = "Scifi-Misha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289467] = {
					["type"] = "BUFF",
					["source"] = "Solvèj-Area52",
					["encounterID"] = 2281,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288441] = {
					["encounterID"] = 2281,
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146409,
				},
				[209693] = {
					["encounterID"] = 2281,
					["source"] = "Hqvoc-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[225919] = {
					["encounterID"] = 2281,
					["source"] = "Meta",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
			},
			["aura_timer_text_font"] = "Friz Quadrata TT",
			["cast_statusbar_bgtexture"] = "ElvUI Norm",
			["target_highlight_height"] = 16,
			["health_selection_overlay_alpha"] = 0.09999999403953552,
			["aura_stack_font"] = "Friz Quadrata TT",
			["cast_statusbar_spark_texture"] = "Interface\\AddOns\\Plater\\images\\spark8",
			["number_region_first_run"] = true,
			["aura_tracker"] = {
				["buff_tracked"] = {
					[209859] = true,
				},
			},
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
				["nameplateShowSelf"] = "0",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["NamePlateHorizontalScale"] = "1",
				["nameplateMinScale"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateOtherTopInset"] = "0.085",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateSelfAlpha"] = "0.75",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowAll"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateGlobalScale"] = "1.0",
				["NamePlateVerticalScale"] = "1",
			},
		},
		["PixelPerfect"] = {
			["script_data"] = {
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1579499279,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 388,
					["Author"] = "Tercioo-Sylvanas",
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
					["Prio"] = 99,
					["Name"] = "Cast - Small Alert [Plater]",
					["PlaterCore"] = 1,
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
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
					["Time"] = 1581394814,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 433,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["Prio"] = 99,
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
					["Time"] = 1581394817,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 248,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["Prio"] = 99,
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
					["Time"] = 1579499270,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 193,
					["Author"] = "Izimode-Azralon",
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
					["Prio"] = 99,
					["Name"] = "Cast - Frontal Cone [Plater]",
					["PlaterCore"] = 1,
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["Temp_UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
				}, -- [6]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Time"] = 1581394863,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = 1029718,
					["Enabled"] = true,
					["Revision"] = 198,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["Prio"] = 99,
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
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1579499269,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --https://www.wowhead.com/spell=253583/fiery-enchant\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 582,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["Name"] = "Cast - Big Alert [Plater]",
					["Prio"] = 99,
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
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
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
					["Time"] = 1581394818,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3 --increases the size of the healthBar\n    envTable.GlowAlpha = 0.45 --from zero to one, is the percent of transparency of the glowing border\n    envTable.ShowArrow = true --or 'false' to hide the arrow above the healthBar\n    envTable.ArrowAlpha = 0.45 --transparent of the arrow above the healthBar\n    envTable.HealthBarColor = \"orange\" --color of the healthBar\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 336,
					["Author"] = "Bombad�o-Azralon",
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["Prio"] = 99,
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
					["Time"] = 1581394819,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["Enabled"] = true,
					["Revision"] = 68,
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["Prio"] = 99,
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
					["Time"] = 1581394809,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["Enabled"] = true,
					["Revision"] = 165,
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Prio"] = 99,
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
					["Time"] = 1579499339,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.CastbarColor = \"orangered\"\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    envTable.CastBarHeightAdd = 1.5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-22, 20, 8, -11)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+20, self:GetHeight()+30, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["Icon"] = "INTERFACE\\ICONS\\Spell_Fire_FelFlameStrike",
					["Enabled"] = false,
					["Revision"] = 1385,
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetWidth (envTable.OriginalWidth)\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n        envTable.OriginalWidth = nil\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					["Prio"] = 99,
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    Plater.SetCastBarBorderColor (self, 1, 0, 0, 0.4)\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetWidth (envTable.OriginalWidth)\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    \n    --increase the cast bar size\n    envTable.OriginalHeight = self:GetHeight()\n    envTable.OriginalWidth = self:GetWidth()\n    local width = Plater.db.profile.plate_config.enemynpc.cast_incombat[1]\n    local height = Plater.db.profile.plate_config.enemynpc.cast_incombat[2]\n    \n    self:SetWidth (width)\n    self:SetHeight (height * envTable.CastBarHeightAdd)\n    \n    print (envTable.glowEffect:GetAlpha())\n    \nend",
					["Name"] = "M+ Important Spells [Plater]",
					["NpcNames"] = {
					},
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
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
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ShowTargeted = false; -- true or false; determines if the nameplate shoudl be shown if you have the unit targeted\n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.ShowTargeted) and (unitFrame.namePlateIsTarget) then\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n    else\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        unitFrame.castBar:Hide ()\n    end    \n    \n    \nend",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.ShowTargeted) and (unitFrame.namePlateIsTarget) then\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n    else\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        unitFrame.castBar:Hide ()\n    end    \n    \n    \nend",
					["Time"] = 1581139433,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ShowTargeted = false; -- true or false; determines if the nameplate shoudl be shown if you have the unit targeted\n    \nend",
					["Icon"] = 644389,
					["Enabled"] = true,
					["Revision"] = 311,
					["Author"] = "Evosparks-Area 52",
					["Desc"] = "Hide's nameplates based on the unit's name or npcID. Add the Unit Name or npcID as a trigger.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.ShowTargeted) and (unitFrame.namePlateIsTarget) then\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n    else\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        unitFrame.castBar:Hide ()\n    end    \n    \n    \nend",
					["Prio"] = 99,
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.ShowTargeted) and (unitFrame.namePlateIsTarget) then\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n    else\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        unitFrame.castBar:Hide ()\n    end    \n    \n    \nend",
					["Name"] = "Hide Nameplate by UnitID",
					["NpcNames"] = {
						"Aqir Drone", -- [1]
					},
				}, -- [20]
			},
			["aura_stack_anchor"] = {
				["y"] = 10,
				["side"] = 5,
			},
			["cast_statusbar_fadein_time"] = 0.0208119247108698,
			["indicator_raidmark_scale"] = 0.699999988079071,
			["aura2_y_offset"] = 30,
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
					["actorname_use_friends_color"] = false,
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
					["actorname_text_font"] = "Friz Quadrata TT",
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
					["actorname_text_size"] = 11,
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
					["spellpercent_text_enabled"] = true,
					["spellname_text_font"] = "Friz Quadrata TT",
					["big_actorname_text_outline"] = "OUTLINE",
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["mana"] = {
						nil, -- [1]
						4, -- [2]
					},
					["big_actorname_text_font"] = "Friz Quadrata TT",
					["big_actorname_text_size"] = 10,
					["spellpercent_text_size"] = 9,
					["big_actortitle_text_size"] = 10,
					["level_text_alpha"] = 0.299999982118607,
					["percent_text_size"] = 8,
					["spellname_text_color"] = {
						0.952941176470588, -- [1]
						[3] = 0.992156862745098,
					},
					["percent_text_font"] = "Friz Quadrata TT",
					["buff_frame_y_offset"] = 0,
					["percent_text_outline"] = "NONE",
					["quest_enabled"] = true,
					["percent_text_enabled"] = true,
					["health_incombat"] = {
						120, -- [1]
						6, -- [2]
					},
					["health"] = {
						120, -- [1]
						6, -- [2]
					},
					["percent_show_health"] = true,
					["spellname_text_size"] = 9,
					["actorname_text_anchor"] = {
						["x"] = -1,
						["side"] = 1,
					},
					["power_percent_text_font"] = "Friz Quadrata TT",
					["level_text_enabled"] = true,
				},
				["friendlynpc"] = {
					["big_actorname_text_size"] = 10,
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
					["spellname_text_color"] = {
						0.952941176470588, -- [1]
						[3] = 0.992156862745098,
					},
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
					["spellname_text_font"] = "Friz Quadrata TT",
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["actorname_text_size"] = 11,
					["percent_text_enabled"] = true,
					["big_actortitle_text_size"] = 10,
					["percent_text_ooc"] = true,
					["actorname_text_anchor"] = {
						["x"] = -1,
						["side"] = 1,
					},
					["spellpercent_text_enabled"] = true,
					["percent_text_font"] = "Friz Quadrata TT",
					["spellname_text_size"] = 9,
					["percent_text_outline"] = "NONE",
					["actorname_text_font"] = "Friz Quadrata TT",
					["big_actorname_text_font"] = "Friz Quadrata TT",
					["health_incombat"] = {
						nil, -- [1]
						12, -- [2]
					},
					["health"] = {
						120, -- [1]
					},
					["percent_show_health"] = true,
					["percent_text_size"] = 8,
					["power_percent_text_font"] = "Friz Quadrata TT",
					["level_text_alpha"] = 0.299999982118607,
					["level_text_enabled"] = true,
				},
				["enemyplayer"] = {
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["level_text_size"] = 8,
					["cast"] = {
						140, -- [1]
						6, -- [2]
					},
					["spellpercent_text_anchor"] = {
						["x"] = 1,
						["side"] = 5,
					},
					["spellpercent_text_outline"] = "NONE",
					["level_text_font"] = "Friz Quadrata TT",
					["spellname_text_color"] = {
						0.952941176470588, -- [1]
						[3] = 0.992156862745098,
					},
					["mana_incombat"] = {
						140, -- [1]
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
					["cast_incombat"] = {
						140, -- [1]
					},
					["spellname_text_size"] = 9,
					["spellname_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["percent_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["spellname_text_font"] = "Friz Quadrata TT",
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["mana"] = {
						140, -- [1]
						1, -- [2]
					},
					["big_actorname_text_font"] = "Friz Quadrata TT",
					["percent_text_ooc"] = false,
					["big_actorname_text_size"] = 10,
					["actorname_text_anchor"] = {
						["y"] = -2,
						["x"] = -1,
						["side"] = 1,
					},
					["percent_text_size"] = 8,
					["quest_enabled"] = true,
					["percent_text_font"] = "Friz Quadrata TT",
					["big_actortitle_text_size"] = 10,
					["percent_text_outline"] = "NONE",
					["health_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["health"] = {
						140, -- [1]
						6, -- [2]
					},
					["actorname_text_font"] = "Friz Quadrata TT",
					["power_percent_text_font"] = "Friz Quadrata TT",
					["level_text_alpha"] = 0.299999982118607,
					["actorname_text_size"] = 11,
				},
				["enemynpc"] = {
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["cast"] = {
						140, -- [1]
						6, -- [2]
					},
					["spellpercent_text_anchor"] = {
						["x"] = 1,
						["side"] = 5,
					},
					["spellname_text_outline"] = "NONE",
					["spellpercent_text_outline"] = "NONE",
					["level_text_font"] = "Friz Quadrata TT",
					["spellname_text_color"] = {
						0.952941176470588, -- [1]
						[3] = 0.992156862745098,
					},
					["actorname_text_outline"] = "OUTLINE",
					["big_actortitle_text_font"] = "Friz Quadrata TT",
					["level_text_anchor"] = {
						["x"] = 1,
						["side"] = 5,
					},
					["cast_incombat"] = {
						140, -- [1]
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
					["health_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["spellname_text_font"] = "Friz Quadrata TT",
					["power_percent_text_font"] = "Friz Quadrata TT",
					["big_actorname_text_font"] = "Friz Quadrata TT",
					["spellpercent_text_size"] = 9,
					["actorname_text_anchor"] = {
						["y"] = -3,
						["x"] = -1,
						["side"] = 1,
					},
					["percent_text_size"] = 8,
					["percent_text_font"] = "Friz Quadrata TT",
					["percent_text_outline"] = "NONE",
					["spellname_text_size"] = 9,
					["health"] = {
						140, -- [1]
						6, -- [2]
					},
					["level_text_alpha"] = 0.299999982118607,
					["actorname_text_font"] = "Friz Quadrata TT",
				},
			},
			["aura_y_offset"] = 3,
			["use_ui_parent"] = true,
			["indicator_rare"] = false,
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
			["target_highlight_height"] = 18,
			["health_animation_time_dilatation"] = 2.869999885559082,
			["npc_cache"] = {
				[138972] = {
					"Zian-Ti Cloudbreaker", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[161745] = {
					"Hepthys", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[156884] = {
					"Essence of Vita", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[161746] = {
					"Ossirat", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[77067] = {
					"Gorgrond Python", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[135903] = {
					"Manifestation of the Deep", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[148441] = {
					"Gnomish Gyro-Engineer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[155094] = {
					"Mechagon Trooper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[133345] = {
					"Feckless Assistant", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136160] = {
					"King Dazar", -- [1]
					"Kings' Rest", -- [2]
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
					"The Dread Chain (Islands 4)", -- [2]
				},
				[147932] = {
					"Agitated Azershard", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[131812] = {
					"Heartsbane Soulcharmer", -- [1]
					"Waycrest Manor", -- [2]
				},
				[138465] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[147933] = {
					"Geoactive Azershard", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[155098] = {
					"Rexxar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[146911] = {
					"Fleshrot Blighthound", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
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
					"Molten Cay (Islands 6)", -- [2]
				},
				[161241] = {
					"Voidweaver Mal'thir", -- [1]
					"The Underrot", -- [2]
				},
				[141283] = {
					"Kul Tiran Halberd", -- [1]
					"Siege of Boralus", -- [2]
				},
				[147936] = {
					"Azergem Shardback", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[146401] = {
					"Darkscale Dig-Slave", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
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
				[131817] = {
					"Cragmaw the Infested", -- [1]
					"The Underrot", -- [2]
				},
				[161243] = {
					"Samh'rek, Beckoner of Chaos", -- [1]
					"The Underrot", -- [2]
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
					"Molten Cay (Islands 6)", -- [2]
				},
				[131818] = {
					"Marked Sister", -- [1]
					"Waycrest Manor", -- [2]
				},
				[127479] = {
					"The Sand Queen", -- [1]
					"Tol Dagor", -- [2]
				},
				[161244] = {
					"Blood of the Corruptor", -- [1]
					"The Underrot", -- [2]
				},
				[152033] = {
					"Inconspicuous Plant", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[131819] = {
					"Coven Diviner", -- [1]
					"Waycrest Manor", -- [2]
				},
				[137449] = {
					"Dust Devil", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[129527] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[160990] = {
					"Image of Absolution", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[19668] = {
					"Shadowfiend", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[161502] = {
					"Ravenous Fleshfiend", -- [1]
					"The Underrot", -- [2]
				},
				[131821] = {
					"Faceless Maiden", -- [1]
					"Waycrest Manor", -- [2]
				},
				[156641] = {
					"Enthralled Weaponsmith", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[140777] = {
					"Gemshard Colossus", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[126969] = {
					"Trothak", -- [1]
					"Freehold", -- [2]
				},
				[156642] = {
					"Enthralled Laborer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[131311] = {
					"Unleashed Azerite", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[152293] = {
					"Orc Commoner", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[158690] = {
					"Cultist Tormenter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135406] = {
					"Animated Gold", -- [1]
					"Kings' Rest", -- [2]
				},
				[131824] = {
					"Sister Solena", -- [1]
					"Waycrest Manor", -- [2]
				},
				[127482] = {
					"Sewer Vicejaw", -- [1]
					"Tol Dagor", -- [2]
				},
				[145898] = {
					"Anointed Disciple", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[131825] = {
					"Sister Briar", -- [1]
					"Waycrest Manor", -- [2]
				},
				[161251] = {
					"Cultist Sycophant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[132849] = {
					"Grizzlefur Cub", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[133361] = {
					"Wasting Servant", -- [1]
					"Waycrest Manor", -- [2]
				},
				[150249] = {
					"Pistonhead Scrapper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[136688] = {
					"Fanatical Driller", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[145644] = {
					"Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[130298] = {
					"Water Elemental", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[150250] = {
					"Pistonhead Blaster", -- [1]
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
				[147948] = {
					"Coagulated Azerite", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[137969] = {
					"Interment Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[127484] = {
					"Jes Howlis", -- [1]
					"Tol Dagor", -- [2]
				},
				[161510] = {
					"Mindrend Tentacle", -- [1]
					"The Underrot", -- [2]
				},
				[137458] = {
					"Rotting Spore", -- [1]
					"The Underrot", -- [2]
				},
				[130299] = {
					"Droplet", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[162534] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134388] = {
					"A Knot of Snakes", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[126845] = {
					"Captain Jolly", -- [1]
					"Freehold", -- [2]
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
				[134389] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
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
				[134390] = {
					"Sand-crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[138740] = {
					"Musashitake", -- [1]
					"The Underrot", -- [2]
				},
				[147440] = {
					"Blazing Fireguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[127486] = {
					"Ashvane Officer", -- [1]
					"Tol Dagor", -- [2]
				},
				[142324] = {
					"Bluefin Dolphin", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[126847] = {
					"Captain Raoul", -- [1]
					"Freehold", -- [2]
				},
				[134137] = {
					"Temple Attendant", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[156143] = {
					"Voidcrazed Hulk", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[126848] = {
					"Captain Eudora", -- [1]
					"Freehold", -- [2]
				},
				[133627] = {
					"Tally Zapnabber", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[127488] = {
					"Ashvane Flamecaster", -- [1]
					"Tol Dagor", -- [2]
				},
				[138489] = {
					"Shadow of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[156145] = {
					"Burrowing Appendage", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[146678] = {
					"Ancient Protector", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[156146] = {
					"Voidbound Shieldbearer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[140795] = {
					"Dunecircler the Bleak", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
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
				[159219] = {
					"Umbral Seer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135167] = {
					"Spectral Berserker", -- [1]
					"Kings' Rest", -- [2]
				},
				[131585] = {
					"Enthralled Guard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[158452] = {
					"Mindtwist Tendril", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134144] = {
					"Living Current", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[140541] = {
					"Kindleweb Creeper", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[69791] = {
					"Uchai", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[131586] = {
					"Banquet Steward", -- [1]
					"Waycrest Manor", -- [2]
				},
				[156406] = {
					"Voidbound Honor Guard", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[138495] = {
					"Twilight Commander", -- [1]
					"Crestfall (Islands 11)", -- [2]
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
				[138496] = {
					"Twilight Drakonaar", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[137473] = {
					"Guard Captain Atu", -- [1]
					"Kings' Rest", -- [2]
				},
				[138497] = {
					"Twilight Scalesworn", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[132868] = {
					"Congealed Azerite", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[137474] = {
					"King Timalji", -- [1]
					"Kings' Rest", -- [2]
				},
				[147965] = {
					"Volatile Azerite", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[130435] = {
					"Addled Thug", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[142336] = {
					"Pygmy Octopus", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[159224] = {
					"Gryth'ax the Executioner", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134916] = {
					"Trapdoor Hunter", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[138499] = {
					"Twilight Dragonkin", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[160249] = {
					"Spike Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131847] = {
					"Waycrest Reveler", -- [1]
					"Waycrest Manor", -- [2]
				},
				[134150] = {
					"Runecarver Sorn", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[147968] = {
					"Agitated Azerite", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[137989] = {
					"Embalming Fluid", -- [1]
					"Kings' Rest", -- [2]
				},
				[140292] = {
					"Snowfur Alpha", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138501] = {
					"Twilight Whelp", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139269] = {
					"Gloom Horror", -- [1]
					"Waycrest Manor", -- [2]
				},
				[137478] = {
					"Queen Wasi", -- [1]
					"Kings' Rest", -- [2]
				},
				[126215] = {
					"Zian-Ti Darkweaver", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[131849] = {
					"Crazed Marksman", -- [1]
					"Waycrest Manor", -- [2]
				},
				[140293] = {
					"Snowfur Snarler", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[147202] = {
					"Animated Azershard", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
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
				[127879] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[126216] = {
					"Zian-Ti Destroyer", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[140295] = {
					"Snowfur Pup", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[157439] = {
					"Fury of N'Zoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[63508] = {
					"Xuen", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[123146] = {
					"Torn Spirit", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[138505] = {
					"Evolved Clutch-Warden", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[149508] = {
					"Ice Blocked Nathanos", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[156161] = {
					"Inquisitor Gnshal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[150276] = {
					"Heavy Scrapbot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[151812] = {
					"Detect-o-Bot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[162303] = {
					"Aqir Swarmkeeper", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[152324] = {
					"Aldwin Laughlin", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134157] = {
					"Shadow-Borne Warrior", -- [1]
					"Kings' Rest", -- [2]
				},
				[157442] = {
					"Gaze of Madness", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137484] = {
					"King A'akul", -- [1]
					"Kings' Rest", -- [2]
				},
				[124171] = {
					"Shadowguard Subjugator", -- [1]
					"Seat of the Triumvirate", -- [2]
				},
				[140299] = {
					"Ghostfang", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138508] = {
					"Unbreakable Vortax", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[132879] = {
					"Crystalline Giant", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[137485] = {
					"Bloodsworn Agent", -- [1]
					"Kings' Rest", -- [2]
				},
				[162305] = {
					"Aqir Heartpiercer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146185] = {
					"Firesting Drone", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[148488] = {
					"Unliving Augur", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[163841] = {
					"Amalgamation of Flesh", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137486] = {
					"Queen Patlaa", -- [1]
					"Kings' Rest", -- [2]
				},
				[162306] = {
					"Aqir Drone", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146186] = {
					"Firesting Warrior", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[138254] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				[2630] = {
					"Earthbind Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137487] = {
					"Skeletal Hunting Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[146187] = {
					"Firesting Dominator", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
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
				[149514] = {
					"Grimhorn", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[134418] = {
					"Drowned Depthbringer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[153097] = {
					"Voidbound Shaman", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[157447] = {
					"Fanatical Cultist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155656] = {
					"Misha", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[139536] = {
					"Zara'thik Drone", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[78116] = {
					"Water Elemental", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[152330] = {
					"Jelinek Sharpshear", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[115218] = {
					"Bloodfist Basher", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[140560] = {
					"Blazeseeker", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[161286] = {
					"Dark Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155657] = {
					"Huffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135699] = {
					"Ashvane Jailer", -- [1]
					"Tol Dagor", -- [2]
				},
				[152331] = {
					"Captain Lancy Revshon", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[128652] = {
					"Viq'Goth", -- [1]
					"Siege of Boralus", -- [2]
				},
				[132885] = {
					"Air Elemental", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[157705] = {
					"Stormwind Orphan", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[152332] = {
					"Lara Moore", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129548] = {
					"Blacktooth Brute", -- [1]
					"Freehold", -- [2]
				},
				[127757] = {
					"Reanimated Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[157450] = {
					"Spellbound Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157706] = {
					"Stormwind Orphan", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[139539] = {
					"Tavok, Hammer of the Empress", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[131863] = {
					"Raal the Gluttonous", -- [1]
					"Waycrest Manor", -- [2]
				},
				[140563] = {
					"Brimstone Tracker", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[157451] = {
					"Iron-Willed Enforcer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
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
				[140564] = {
					"Brimstone Lavamaw", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[157452] = {
					"Nightmare Antigen", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133912] = {
					"Bloodsworn Defiler", -- [1]
					"The Underrot", -- [2]
				},
				[114581] = {
					"Nat Pagle", -- [1]
					"Ashamane's Fall", -- [2]
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
				[139799] = {
					"Ironhull Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[158478] = {
					"Corruption Tumor", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[162828] = {
					"Corrosive Digester", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139032] = {
					"Razorfin Waveguard", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[135706] = {
					"Bilge Rat Looter", -- [1]
					"Tol Dagor", -- [2]
				},
				[135962] = {
					"Crag Rager", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[115222] = {
					"Bloodfist Geomancer", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[139033] = {
					"Razorfin Watershaper", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[155665] = {
					"Bebri Coifcurl", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[133660] = {
					"BomBot 9000", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[150292] = {
					"Mechagon Cavalry", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[130575] = {
					"Wandering Axebeak", -- [1]
					"Atal'Dazar", -- [2]
				},
				[139034] = {
					"Razorfin Impaler", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[135964] = {
					"Rumbling Earth", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[129552] = {
					"Monzumi", -- [1]
					"Atal'Dazar", -- [2]
				},
				[139035] = {
					"Razorfin Aqualyte", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[61146] = {
					"Black Ox Statue", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134174] = {
					"Shadow-Borne Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[134686] = {
					"Mature Krolusk", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[139036] = {
					"Razorfin Javelineer", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[139804] = {
					"Venture Inspector", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[150295] = {
					"Tank Buster MK1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[129553] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				[139037] = {
					"Razorfin Jinyu", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[139805] = {
					"Mechanical Guardhound", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[156949] = {
					"Armsmaster Terenson", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[136735] = {
					"Ashvane Marine", -- [1]
					"Tol Dagor", -- [2]
				},
				[157461] = {
					"Mycelial Cyst", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[159764] = {
					"Jesh'ra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150297] = {
					"Mechagon Renormalizer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[133666] = {
					"Dizzy's Decoy", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[140063] = {
					"Smashmaw the Man-Eater", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[159510] = {
					"Eye of the Depths", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153881] = {
					"Conversion Totem", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[139808] = {
					"Venture Oaf", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[123286] = {
					"Southsea Gambler", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[134691] = {
					"Static-charged Dervish", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[139041] = {
					"Aquamancer Lushu", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[159767] = {
					"Sanguimar", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135971] = {
					"Faithless Conscript", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[136483] = {
					"Ashvane Deckhand", -- [1]
					"Siege of Boralus", -- [2]
				},
				[139042] = {
					"Spearmaster Kashai", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[159768] = {
					"Deresh of the Nothingness", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139810] = {
					"Venture Middle Manager", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[138019] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[134437] = {
					"Medic Bot", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[151325] = {
					"Alarm-o-Bot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[122264] = {
					"Elder Spineshell", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[159514] = {
					"Blood of Ny'alotha", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131112] = {
					"Cutwater Striker", -- [1]
					"Tol Dagor", -- [2]
				},
				[140324] = {
					"Stonehusk Harvester", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[132904] = {
					"Sandscalp Villager", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[147745] = {
					"The Indomitable", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[130325] = {
					"Deepsea Viseclaw", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[135975] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140325] = {
					"Stonehusk Scarab", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[153119] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[137511] = {
					"Bilge Rat Cutthroat", -- [1]
					"Siege of Boralus", -- [2]
				},
				[162331] = {
					"Corrupted Neuron", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[123289] = {
					"Sparkleshell Deathclaw", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[140326] = {
					"Stonehusk Swarmer", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[140838] = {
					"Mischievous Flood", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[122266] = {
					"Spineshell Turtle", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[130582] = {
					"Despondent Scallywag", -- [1]
					"Tol Dagor", -- [2]
				},
				[153377] = {
					"Goop", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[123290] = {
					"Sparkleshell Clacker", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[138281] = {
					"Faceless Corruptor", -- [1]
					"The Underrot", -- [2]
				},
				[19644] = {
					"Image of Archmage Vargoth", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[125977] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[140329] = {
					"Vy'lix the Corpse-Mauler", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[78001] = {
					"Cloudburst Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[148262] = {
					"Tidewater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144680] = {
					"Frida Ironbellows", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[161312] = {
					"Crushing Tendril", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[147495] = {
					"Rastari Enforcer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137516] = {
					"Ashvane Invader", -- [1]
					"Siege of Boralus", -- [2]
				},
				[159266] = {
					"Portal Master", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[157475] = {
					"Synthesis Growth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137517] = {
					"Ashvane Destroyer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[154149] = {
					"Karolek", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[123292] = {
					"Sparkleshell Pincher", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[160291] = {
					"Ashwalker Assassin", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[161571] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135472] = {
					"Zanazal the Wise", -- [1]
					"Kings' Rest", -- [2]
				},
				[69943] = {
					"Ralph", -- [1]
					"Kings' Rest", -- [2]
				},
				[154663] = {
					"Gnome-Eating Droplet", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[146731] = {
					"Zombie Dust Totem", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140335] = {
					"Nightscale Screecher", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[144941] = {
					"Akunda's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137521] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				[140336] = {
					"Nightscale Wind Serpent", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[152874] = {
					"Vez'okk the Lightless", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153130] = {
					"Greater Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135475] = {
					"Kula the Butcher", -- [1]
					"Kings' Rest", -- [2]
				},
				[140337] = {
					"Nightscale Hatchling", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[73783] = {
					"Danger Ahead", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[133685] = {
					"Befouled Spirit", -- [1]
					"The Underrot", -- [2]
				},
				[144944] = {
					"Thirsting Bloodsucker", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
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
				[159275] = {
					"Portal Keeper", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[133432] = {
					"Venture Co. Alchemist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130333] = {
					"Gritplate Basilisk", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[133944] = {
					"Aspix", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[140086] = {
					"Pinegraze Courser", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[157486] = {
					"Horrific Hemorrhage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155951] = {
					"Ruffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[130334] = {
					"Gritplate Gazer", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[136249] = {
					"Guardian Elemental", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[144693] = {
					"Manceroy Flamefist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[157231] = {
					"Shad'har the Insatiable", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155952] = {
					"Suffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[154161] = {
					"Nogg", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[146485] = {
					"Nevara Nightshade", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[149556] = {
					"Eternal Enforcer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[155953] = {
					"C'Thuffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[130335] = {
					"Gritplate Crystaleye", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[144951] = {
					"Palefur Devourer", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[145975] = {
					"Stonehide Buck", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[149558] = {
					"Jaina's Tide Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145976] = {
					"Stonehide Bull", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[153141] = {
					"Endless Hunger Totem", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[139580] = {
					"Bloodfist Ogre", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[145977] = {
					"Mammoth Stonehide", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[140092] = {
					"Longstrider", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[156980] = {
					"Essence of Void", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135231] = {
					"Spectral Brute", -- [1]
					"Kings' Rest", -- [2]
				},
				[146491] = {
					"Phantom of Retribution", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[157238] = {
					"Prophet Skitra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139583] = {
					"Bloodfist Enforcer", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[138048] = {
					"Training Dummy", -- [1]
					"Waycrest Manor", -- [2]
				},
				[158774] = {
					"Broken Citizen", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[124581] = {
					"Spineshell Snapper", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[153401] = {
					"K'thir Dominator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135234] = {
					"Diseased Mastiff", -- [1]
					"Waycrest Manor", -- [2]
				},
				[146493] = {
					"Phantom of Slaughter", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129699] = {
					"Ludwig Von Tortollan", -- [1]
					"Freehold", -- [2]
				},
				[161334] = {
					"Gnashing Terror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135235] = {
					"Spectral Beastmaster", -- [1]
					"Kings' Rest", -- [2]
				},
				[140353] = {
					"Brightscale Coilfang", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[148797] = {
					"Magus of the Dead", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[161335] = {
					"Void Horror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140354] = {
					"Brightscale Wind Serpent", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
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
					"Molten Cay (Islands 6)", -- [2]
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
					"Molten Cay (Islands 6)", -- [2]
				},
				[146753] = {
					"Kul Tiran Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149312] = {
					"Ferocious Swiftclaw", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[135239] = {
					"Spectral Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[144963] = {
					"Kimbul's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135240] = {
					"Soul Essence", -- [1]
					"Waycrest Manor", -- [2]
				},
				[131402] = {
					"Underrot Tick", -- [1]
					"The Underrot", -- [2]
				},
				[158781] = {
					"Shredded Psyche", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135241] = {
					"Bilge Rat Pillager", -- [1]
					"Siege of Boralus", -- [2]
				},
				[160061] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[146244] = {
					"Stinging Fiend", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
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
				[119724] = {
					"Tidal Surger", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[130087] = {
					"Irontide Raider", -- [1]
					"Tol Dagor", -- [2]
				},
				[136011] = {
					"Bloodstone", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146247] = {
					"White Death", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[140362] = {
					"Shimmerwing", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[135245] = {
					"Bilge Rat Demolisher", -- [1]
					"Siege of Boralus", -- [2]
				},
				[140619] = {
					"Coastal Fathomjaw", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[134990] = {
					"Charged Dust Devil", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[131408] = {
					"Venture Muscle", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[138061] = {
					"Venture Co. Longshoreman", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[144970] = {
					"Kaldorei Archer", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[134991] = {
					"Sandfury Stonefist", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[135759] = {
					"Earthwall Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[157253] = {
					"Ka'zir", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139342] = {
					"Icetusk Warrior", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[131410] = {
					"Gargantuan Venomscale", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[131666] = {
					"Coven Thornshaper", -- [1]
					"Waycrest Manor", -- [2]
				},
				[138063] = {
					"Posh Vacationer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157254] = {
					"Tek'ris", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134993] = {
					"Mchimba the Embalmer", -- [1]
					"Kings' Rest", -- [2]
				},
				[139343] = {
					"Icetusk Drudge", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[139599] = {
					"Gladiator Ortugg", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[135761] = {
					"Thundering Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[138064] = {
					"Posh Vacationer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157255] = {
					"Aqir Drone", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134994] = {
					"Spectral Headhunter", -- [1]
					"Kings' Rest", -- [2]
				},
				[157767] = {
					"Anastasia", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[158279] = {
					"Haywire Clockwork Rocket Bot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[146253] = {
					"Brother Joseph", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[159303] = {
					"Monstrous Behemoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131669] = {
					"Jagged Hound", -- [1]
					"Waycrest Manor", -- [2]
				},
				[133972] = {
					"Heavy Cannon", -- [1]
					"Tol Dagor", -- [2]
				},
				[131670] = {
					"Heartsbane Vinetwister", -- [1]
					"Waycrest Manor", -- [2]
				},
				[152396] = {
					"Guardian of Azeroth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[159305] = {
					"Maddened Conscript", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135765] = {
					"Torrent Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[146256] = {
					"Laminaria", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139348] = {
					"Baga the Frostshield", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[133463] = {
					"Venture Co. War Machine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146769] = {
					"Druid of the Claw", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[158284] = {
					"Craggle Wobbletop", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134232] = {
					"Hired Assassin", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146770] = {
					"Druid of the Claw", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[159308] = {
					"Zealous Adherent", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139862] = {
					"Voru'kar Spitter", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[140630] = {
					"Ornate Puffer", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[159309] = {
					"Leeching Parasite", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[158286] = {
					"Reprogrammed Warbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[140375] = {
					"Duneshell Swarmer", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[138840] = {
					"Zara'thik Impaler", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[149331] = {
					"Luminous Azerite", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[135258] = {
					"Irontide Marauder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[140376] = {
					"Duneshell Scarab", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[140632] = {
					"Scaleback Snapper", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[139097] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[131677] = {
					"Heartsbane Runeweaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				[140377] = {
					"Duneshell Harvester", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[159312] = {
					"Living Blood", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140378] = {
					"Duneshell Broodwatcher", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[139867] = {
					"Voru'kar Venomancer", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[136541] = {
					"Bile Oozeling", -- [1]
					"Waycrest Manor", -- [2]
				},
				[149591] = {
					"Rastari Marksman", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[158035] = {
					"Magister Umbric", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[139868] = {
					"Voru'kar Nerubian", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[157268] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135007] = {
					"Orb Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[135263] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[153942] = {
					"Annihilator Lak'hal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[139869] = {
					"Voru'kar Web Winder", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[128434] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[148569] = {
					"Breakwater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[153943] = {
					"Decimator Shiq'voth", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[160341] = {
					"Sewer Beastling", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[128435] = {
					"Toxic Saurid", -- [1]
					"Atal'Dazar", -- [2]
				},
				[139360] = {
					"Risen Icetusk Brute", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[131685] = {
					"Runic Disciple", -- [1]
					"Waycrest Manor", -- [2]
				},
				[138338] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[159320] = {
					"Amahtet", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[158041] = {
					"N'Zoth the Corruptor", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[162647] = {
					"Willing Sacrifice", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[159321] = {
					"Khateph", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[152669] = {
					"Void Globule", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[136549] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144993] = {
					"Crazed Thistlebear", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[159578] = {
					"Exposed Synapse", -- [1]
					"Ny'alotha, the Waking City", -- [2]
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
				[54320] = {
					"Birdie", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[136552] = {
					"Kao-Tien Marauder", -- [1]
					"Atal'Dazar", -- [2]
				},
				[127799] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
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
				[164188] = {
					"Horrific Figment", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134251] = {
					"Seneschal M'bara", -- [1]
					"Kings' Rest", -- [2]
				},
				[164189] = {
					"Horrific Figment", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[144231] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134764] = {
					"Clattershell", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[163678] = {
					"Clotted Corruption", -- [1]
					"Ny'alotha, the Waking City", -- [2]
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
				[130488] = {
					"Mech Jockey", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[145001] = {
					"Lanara Moonshade", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[148584] = {
					"Archmage Mordent Evenshade", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[130489] = {
					"Dazarian Stalker", -- [1]
					"Freehold", -- [2]
				},
				[144747] = {
					"Pa'ku's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[158565] = {
					"Naros", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[161124] = {
					"Urg'roth, Breaker of Heroes", -- [1]
					"The Underrot", -- [2]
				},
				[149098] = {
					"Maiev Shadowsong", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[141166] = {
					"Lightbound Vigilant", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[151657] = {
					"Bomb Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[134514] = {
					"Abyssal Cultist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[141167] = {
					"Lightbound Dragoon", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[1860] = {
					"Graz'krast", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[158567] = {
					"Tormented Kor'kron Annihilator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[151659] = {
					"Rocket Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[131445] = {
					"Block Warden", -- [1]
					"Tol Dagor", -- [2]
				},
				[160871] = {
					"Possessed Package", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[140657] = {
					"Craghorn Behemoth", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[141169] = {
					"Lightbound Warpriest", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[161895] = {
					"Thing From Beyond", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134005] = {
					"Shalebiter", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[153196] = {
					"Scrapbone Grunter", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[141170] = {
					"Lightbound Sharpshooter", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[141938] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[162664] = {
					"Aqir Swarmer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[141171] = {
					"Lightbound Bulwark", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[141939] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[129469] = {
					"Deepsea Crawler", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[141172] = {
					"Lightbound Battlemage", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[147825] = {
					"7th Legion Medic", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[163690] = {
					"Shath'Yar Scribe", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[129214] = {
					"Coin-Operated Crowd Pummeler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129470] = {
					"Deepsea Crab", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[129598] = {
					"Freehold Pack Mule", -- [1]
					"Freehold", -- [2]
				},
				[141174] = {
					"Exarch Orelis", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[163947] = {
					"Psychophage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[147827] = {
					"7th Legion Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[142454] = {
					"Ashtail Bandicoon", -- [1]
					"Freehold", -- [2]
				},
				[144757] = {
					"Edgard Shadeclaw", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[159598] = {
					"\"Target Dummy\"", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[139384] = {
					"Slitherblade Striker", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[147828] = {
					"7th Legion Cavalier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129471] = {
					"Deepsea Sandcrawler", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[129599] = {
					"Cutwater Knife Juggler", -- [1]
					"Freehold", -- [2]
				},
				[140153] = {
					"Rotclaw Bear", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
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
				[144249] = {
					"Omega Buster", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[146552] = {
					"Kul Tiran Tideweaver", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145273] = {
					"The Hand of In'zashi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[157811] = {
					"Lilliam Sparkspindle", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[162417] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[129601] = {
					"Cutwater Harpooner", -- [1]
					"Freehold", -- [2]
				},
				[145274] = {
					"Yalat's Bulwark", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139389] = {
					"Steelscale Volshasis", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[132481] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[131009] = {
					"Spirit of Gold", -- [1]
					"Atal'Dazar", -- [2]
				},
				[157813] = {
					"Sprite Jumpsprocket", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135552] = {
					"Deathtouched Slaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				[152184] = {
					"Orgrimmar Grunt", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[129602] = {
					"Irontide Enforcer", -- [1]
					"Freehold", -- [2]
				},
				[161140] = {
					"Bwemba", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
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
					"The Dread Chain (Islands 4)", -- [2]
				},
				[158327] = {
					"Crackling Shard", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[162933] = {
					"Thought Harvester", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[59764] = {
					"Healing Tide Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134787] = {
					"Spineclaw Crab", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[158328] = {
					"Il'gynoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150396] = {
					"Aerial Unit R-21/X", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[152699] = {
					"Voidbound Berserker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[138626] = {
					"Amathet Zealot", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[134788] = {
					"Spineclaw Rockshell", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[150397] = {
					"King Mechagon", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[156794] = {
					"SI:7 Light-Hunter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134789] = {
					"Monstrous Spineclaw", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139651] = {
					"Coldlight Deepseer", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[150142] = {
					"Scrapbone Trashtosser", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[156795] = {
					"SI:7 Informant", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[126918] = {
					"Irontide Crackshot", -- [1]
					"Freehold", -- [2]
				},
				[139396] = {
					"Mirelurk Guardian", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139652] = {
					"Coldlight Coastrunner", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[150143] = {
					"Scrapbone Grinder", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[126023] = {
					"Harbor Saurid", -- [1]
					"The Underrot", -- [2]
				},
				[158588] = {
					"Gamon", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[152703] = {
					"Walkie Shockie X1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[138630] = {
					"Cleric Izzad", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[132745] = {
					"Frostscale Wanderer", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[135048] = {
					"Gorestained Piglet", -- [1]
					"Waycrest Manor", -- [2]
				},
				[139398] = {
					"Mirelurk Assassin", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139654] = {
					"Dampscale Mudskipper", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[148610] = {
					"Druid of the Branch", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[140678] = {
					"Frostbeard Howler", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134793] = {
					"Glowspine", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[135049] = {
					"Dreadwing Raven", -- [1]
					"Waycrest Manor", -- [2]
				},
				[139399] = {
					"Mirelurk Basher", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[139655] = {
					"Coldlight Seer", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[150146] = {
					"Scrapbone Shaman", -- [1]
					"Operation: Mechagon", -- [2]
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
				[120651] = {
					"Explosives", -- [1]
					"Atal'Dazar", -- [2]
				},
				[128967] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[149635] = {
					"Blooming Protector", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[139656] = {
					"Coldlight Oracle", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[135818] = {
					"Gust Soldier", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134283] = {
					"Anchorite Lanna", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[139657] = {
					"Coldlight Shorestriker", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[135819] = {
					"Living Tornado", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134284] = {
					"Fallen Deathspeaker", -- [1]
					"The Underrot", -- [2]
				},
				[134796] = {
					"King Spineclaw", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[135052] = {
					"Blight Toad", -- [1]
					"Waycrest Manor", -- [2]
				},
				[157825] = {
					"Crazed Tormenter", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[139658] = {
					"Coldlight Murkdweller", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[131726] = {
					"Gunnolf the Ferocious", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
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
					"Whispering Reef (Islands 10)", -- [2]
				},
				[161408] = {
					"Malicious Growth", -- [1]
					"The Underrot", -- [2]
				},
				[139659] = {
					"Dampscale Oracle", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[162432] = {
					"Awakened Terror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134286] = {
					"Archmage Tamuura", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[134798] = {
					"Abyss Crawler", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[133007] = {
					"Unbound Abomination", -- [1]
					"The Underrot", -- [2]
				},
				[139660] = {
					"Dampscale Murloc", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139661] = {
					"Dampscale Forager", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[131729] = {
					"Lyco", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[154758] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[140685] = {
					"Elderhorn", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[136847] = {
					"Sandscalp Shadow Hunter", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[137103] = {
					"Blood Visage", -- [1]
					"The Underrot", -- [2]
				},
				[139662] = {
					"Dampscale Raincaller", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[148618] = {
					"Archdruid Andrenius", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[134801] = {
					"Cracked-Shell", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139663] = {
					"Dampscale Reedweaver", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[150154] = {
					"Saurolisk Bonenipper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[148619] = {
					"Echo of Akunda", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[132755] = {
					"Breakbeak Scavenger", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[139664] = {
					"Dampscale Terrorfin", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[158343] = {
					"Organ of Corruption", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144782] = {
					"Brother Bruen", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
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
					"The Dread Chain (Islands 4)", -- [2]
				},
				[160904] = {
					"Image of Absolution", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140690] = {
					"Dreadfang Viper", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[161416] = {
					"Aqir Shadowcrafter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139667] = {
					"Seer Grglok", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[135829] = {
					"Dustwind", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146320] = {
					"Prelate Za'lan", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148623] = {
					"Echo of Gonk", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146832] = {
					"Necromancer Disciple", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139412] = {
					"Gashasz", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[150159] = {
					"King Gobbamak", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[152718] = {
					"Alleria Windrunner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[146833] = {
					"Necromancer Conjurer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[158092] = {
					"Fallen Heartpiercer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
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
				[140949] = {
					"Kor'gall, Greatson of Kor'gall", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[134041] = {
					"Infected Peasant", -- [1]
					"Waycrest Manor", -- [2]
				},
				[146835] = {
					"Ghoul", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[122322] = {
					"Famished Broken", -- [1]
					"Seat of the Triumvirate", -- [2]
				},
				[130638] = {
					"Vicejaw Crocolisk", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
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
					"Crestfall (Islands 11)", -- [2]
				},
				[152722] = {
					"Fallen Voidspeaker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[140696] = {
					"Da'zu the Feared", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[137626] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[146326] = {
					"Headhunter Gal'wana", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[130639] = {
					"Vicejaw Chomper", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[146838] = {
					"Brittle Skeleton", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
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
				[156818] = {
					"Wrathion", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[123731] = {
					"Horse", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[159633] = {
					"Cultist Executioner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[139675] = {
					"Fathom-Seeker", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140443] = {
					"Muskflank Charger", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[146840] = {
					"Skeleton Guardian", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[130896] = {
					"Blackout Barrel", -- [1]
					"Freehold", -- [2]
				},
				[148120] = {
					"Kul Tiran Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140444] = {
					"Muskflank Bull", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[149144] = {
					"Jaina's Tide Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[150168] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[147098] = {
					"Spirit of Xuen", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139422] = {
					"Scaled Krolusk Tamer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[160404] = {
					"Angry Bear Rug Spirit", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[144796] = {
					"High Tinker Mekkatorque", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146492] = {
					"Phantom of Rage", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135329] = {
					"Matron Bryndle", -- [1]
					"Waycrest Manor", -- [2]
				},
				[148962] = {
					"Ravenous Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[160405] = {
					"Angry Treant Chair Spirit", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[144767] = {
					"Gonk's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136353] = {
					"Colossal Tentacle", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[161173] = {
					"Abyssal Watcher", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[141173] = {
					"Lightbound Blademaster", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[148624] = {
					"Echo of Pa'ku", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148621] = {
					"Jek'kwa", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[131492] = {
					"Devout Blood Priest", -- [1]
					"The Underrot", -- [2]
				},
				[148622] = {
					"Echo of Kimbul", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144286] = {
					"Asset Manager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[148607] = {
					"Kal'ia Pa'kuaya", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[85564] = {
					"Jungle Axebeak", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[149569] = {
					"Dazari Worshipper", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147218] = {
					"Spirit of Gold", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139425] = {
					"Crazed Incubator", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[139681] = {
					"Bleakfin", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[145261] = {
					"Opulence", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[160663] = {
					"Essence of Nightmare", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[148483] = {
					"Ancestral Avenger", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[152987] = {
					"Faceless Willbreaker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[152704] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[163712] = {
					"Dying Voidspawn", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[122967] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
				},
				[127497] = {
					"Ashvane Warden", -- [1]
					"Tol Dagor", -- [2]
				},
				[134139] = {
					"Shrine Templar", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[136100] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[148254] = {
					"Frost Shard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[152988] = {
					"Faceless Shadowcaller", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[153244] = {
					"Oblivion Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[157594] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[150251] = {
					"Pistonhead Mechanic", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[144876] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129208] = {
					"Dread Captain Lockwood", -- [1]
					"Siege of Boralus", -- [2]
				},
				[154524] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[144637] = {
					"Grong", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148243] = {
					"Fallen Disciple", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134822] = {
					"Gritplate Matriarch", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[148613] = {
					"Commander Broadside", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[122968] = {
					"Yazma", -- [1]
					"Atal'Dazar", -- [2]
				},
				[150293] = {
					"Mechagon Prowler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[135846] = {
					"Sand-Crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[147439] = {
					"Molten Hound", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135254] = {
					"Irontide Raider", -- [1]
					"Tol Dagor", -- [2]
				},
				[99541] = {
					"Risen Skulker", -- [1]
					"Waycrest Manor", -- [2]
				},
				[143011] = {
					"Sandy Perch", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[127381] = {
					"Silt Crab", -- [1]
					"Tol Dagor", -- [2]
				},
				[139429] = {
					"Stonebound Warrior", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[126832] = {
					"Skycap'n Kragg", -- [1]
					"Freehold", -- [2]
				},
				[161229] = {
					"Aqir Venomweaver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134056] = {
					"Aqu'sirr", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[97285] = {
					"Wind Rush Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146850] = {
					"Grand Master Ulrich", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[156820] = {
					"Dod", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[148522] = {
					"Ice Block", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139430] = {
					"Zaliz' Eternal Hound", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[84151] = {
					"Gorge Rylak", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[129366] = {
					"Bilge Rat Buccaneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[162715] = {
					"Fanatical Cultist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[138369] = {
					"Footbomb Hooligan", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146436] = {
					"Tempting Siren", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146251] = {
					"Sister Katherine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[157812] = {
					"Billibub Cogspinner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[153760] = {
					"Enthralled Footman", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[146553] = {
					"Kul Tiran Strongarm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140058] = {
					"Grizzlefur Patriarch", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[144293] = {
					"Waste Processing Unit", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[81518] = {
					"Boneyard Tunneler", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[152993] = {
					"Garona Halforcen", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[161437] = {
					"Explosive Scarab", -- [1]
					"The Underrot", -- [2]
				},
				[149535] = {
					"Icebound Image", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139432] = {
					"Lu'si", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[158157] = {
					"Overlord Mathias Shaw", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129367] = {
					"Bilge Rat Tempest", -- [1]
					"Siege of Boralus", -- [2]
				},
				[162717] = {
					"Sinister Soulcarver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134058] = {
					"Galecaller Faye", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[58959] = {
					"Istanuk", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[147621] = {
					"Dark Iron Vanguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140677] = {
					"Hulking Frostbeard", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139433] = {
					"Sister of Anguish", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[134629] = {
					"Scaled Krolusk Rider", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[126205] = {
					"Profit-O-Matic", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[162718] = {
					"Iron-Willed Enforcer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
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
				[140441] = {
					"Muskflank Calf", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[122971] = {
					"Dazar'ai Juggernaut", -- [1]
					"Atal'Dazar", -- [2]
				},
				[133384] = {
					"Merektha", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[139946] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[162719] = {
					"Void Ascendant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140458] = {
					"Bramblefur Bull", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[151658] = {
					"Strider Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[145064] = {
					"Blaze", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[157602] = {
					"Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[143985] = {
					"Absorb-o-Tron", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140152] = {
					"Rotclaw Mauler", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[129227] = {
					"Azerokk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136186] = {
					"Tidesage Spiritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[132056] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[160458] = {
					"Thulman Flintcrag", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[148631] = {
					"Unexploded Ordnance", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[157603] = {
					"Void Globule", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[122972] = {
					"Dazar'ai Augur", -- [1]
					"Atal'Dazar", -- [2]
				},
				[137591] = {
					"Healing Tide Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[158371] = {
					"Zardeth of the Black Claw", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[144298] = {
					"Defense Bot Mk III", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[158367] = {
					"Basher Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[138493] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[139400] = {
					"Mirelurk Rivercaller", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[157604] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[144246] = {
					"K.U.-J.0.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[130307] = {
					"Unstable Typhoon", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[148137] = {
					"Mooncrazed Tidehunter", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[144299] = {
					"Workshop Defender", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[156837] = {
					"Valeera Sanguinar", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[150222] = {
					"Gunker", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[157349] = {
					"Void Boar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[147370] = {
					"Bladeguard Kaja", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139438] = {
					"Soul-Bringer Togan", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[163746] = {
					"Walkie Shockie X1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[160420] = {
					"Angry Book Spirit", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[144300] = {
					"Mechagon Citizen", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[145616] = {
					"King Rastakhan", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146859] = {
					"Enslaved Rock Elemental", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[416] = {
					"Abagup", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139858] = {
					"Voru'kar Infector", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[138838] = {
					"Zara'thik Mantid", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[132740] = {
					"Venomscale Hydra", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[157700] = {
					"Agustus Moulaine", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[130522] = {
					"Freehold Shipmate", -- [1]
					"Freehold", -- [2]
				},
				[157158] = {
					"Cultist Slavedriver", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[148907] = {
					"Prismatic Image", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[130436] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157607] = {
					"Faceless Shadowcaller", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[126919] = {
					"Irontide Stormcaller", -- [1]
					"Freehold", -- [2]
				},
				[135764] = {
					"Explosive Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[158375] = {
					"Corruptor Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[138842] = {
					"Ta'kil the Resonator", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[142511] = {
					"Exarch Orelis", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[132532] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[140609] = {
					"Ravenous Mako", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[157608] = {
					"Faceless Willbreaker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[5913] = {
					"Tremor Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133556] = {
					"Razak Ironsides", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[158376] = {
					"Psychus", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144303] = {
					"G.U.A.R.D.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[130012] = {
					"Irontide Ravager", -- [1]
					"Freehold", -- [2]
				},
				[146862] = {
					"Mistscorn Subjugator", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140977] = {
					"Jadescale Gnasher", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[157609] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[139442] = {
					"Backbreaker Zukan", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[133557] = {
					"Razak Ironsides", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[129372] = {
					"Blacktar Bomber", -- [1]
					"Siege of Boralus", -- [2]
				},
				[134069] = {
					"Vol'zith the Whisperer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[61245] = {
					"Capacitor Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146863] = {
					"Mistscorn Ravager", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[157354] = {
					"Vexiona", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157610] = {
					"K'thir Dominator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[140542] = {
					"Kindleweb Spider", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[131850] = {
					"Maddened Survivalist", -- [1]
					"Waycrest Manor", -- [2]
				},
				[150190] = {
					"HK-8 Aerial Oppression Unit", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[122965] = {
					"Vol'kaal", -- [1]
					"Atal'Dazar", -- [2]
				},
				[160937] = {
					"Night Terror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[143971] = {
					"Kor'gall Agitator", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[140979] = {
					"Greatfangs", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[147376] = {
					"Barrier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139444] = {
					"Necrolord Zian", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[148940] = {
					"Kaldorei Chimaera", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[129373] = {
					"Dockhound Packmaster", -- [1]
					"Siege of Boralus", -- [2]
				},
				[133389] = {
					"Galvazzt", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[128649] = {
					"Sergeant Bainbridge", -- [1]
					"Siege of Boralus", -- [2]
				},
				[135817] = {
					"Zephyr", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[140980] = {
					"Jadescale Worm", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[157612] = {
					"Eye of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139445] = {
					"Tumat", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[100943] = {
					"Earthen Wall Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144772] = {
					"Lady Tamakeen", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[136330] = {
					"Soul Thorns", -- [1]
					"Waycrest Manor", -- [2]
				},
				[130653] = {
					"Wanton Sapper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[144301] = {
					"Living Waste", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[130909] = {
					"Fetid Maggot", -- [1]
					"The Underrot", -- [2]
				},
				[157613] = {
					"Maw of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[122970] = {
					"Shadowblade Stalker", -- [1]
					"Atal'Dazar", -- [2]
				},
				[130581] = {
					"Sand-Eye", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[134158] = {
					"Shadow-Borne Champion", -- [1]
					"Kings' Rest", -- [2]
				},
				[128651] = {
					"Hadal Darkfathom", -- [1]
					"Siege of Boralus", -- [2]
				},
				[137713] = {
					"Big Money Crab", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129758] = {
					"Irontide Grenadier", -- [1]
					"Freehold", -- [2]
				},
				[159405] = {
					"Aqir Scarab", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157614] = {
					"Tentacle of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137625] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[134802] = {
					"Razorback", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[156653] = {
					"Coagulated Horror", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[134280] = {
					"Vindicator Baatul", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[131858] = {
					"Thornguard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[130319] = {
					"Slitherblade Phalanx", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[137614] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[129526] = {
					"Bilge Rat Swabby", -- [1]
					"Freehold", -- [2]
				},
				[141495] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[134173] = {
					"Animated Droplet", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[150195] = {
					"Gnome-Eating Slime", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[163708] = {
					"Umbral Gatekeeper", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134331] = {
					"King Rahu'ai", -- [1]
					"Kings' Rest", -- [2]
				},
				[161198] = {
					"Warpweaver Dushar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[126094] = {
					"Slitherblade Wavecaller", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[136470] = {
					"Refreshment Vendor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134821] = {
					"Vilegaze Petrifier", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[134024] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				[146102] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[126422] = {
					"Coralback Scuttler", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[130655] = {
					"Bobby Howlis", -- [1]
					"Tol Dagor", -- [2]
				},
				[118192] = {
					"Norgor", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[132797] = {
					"Pinegraze Calf", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[151476] = {
					"Blastatron X-80", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[69712] = {
					"JiKun", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[32517] = {
					"Loquenahak", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[146103] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[158373] = {
					"Roberto Pupellyverbos", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[138427] = {
					"Spitefin Harpooner", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[161218] = {
					"Aqir Crusher", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140442] = {
					"Muskflank Yak", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[137029] = {
					"Ordnance Specialist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146104] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[133870] = {
					"Diseased Lasher", -- [1]
					"The Underrot", -- [2]
				},
				[124259] = {
					"Jungle Tiger", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[139800] = {
					"Galecaller Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[138428] = {
					"Spitefin Myrmidon", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[146872] = {
					"Kachota the Exiled", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[157605] = {
					"Burrowing Appendage", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153755] = {
					"Naeno Megacrash", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[137405] = {
					"Gripping Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[130400] = {
					"Irontide Crusher", -- [1]
					"Freehold", -- [2]
				},
				[133436] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140060] = {
					"Grizzlefur Bear", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[138429] = {
					"Spitefin Tidebinder", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[145185] = {
					"Gnomercy 4.U.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[157620] = {
					"Prophet Skitra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153526] = {
					"Aqir Swarmer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136250] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[145850] = {
					"Gilnean Defuser", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[69792] = {
					"Uchai", -- [1]
					"Shrine of the Storm", -- [2]
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
				[157365] = {
					"Crackling Stalker", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153527] = {
					"Aqir Swarmleader", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[144840] = {
					"Mottled Fawn", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[145851] = {
					"Kaldorei Hippogryph Rider", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[156866] = {
					"Ra-den", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[160704] = {
					"Letter Encrusted Void Globule", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[134060] = {
					"Lord Stormsong", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[89] = {
					"Infernal", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157366] = {
					"Void Hunter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[152089] = {
					"Thrall", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[144973] = {
					"Kaldorei Sentinel", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[122086] = {
					"Slitherblade Ironscale", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139807] = {
					"Venture Surveyor", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[148667] = {
					"Rastari Punisher", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134338] = {
					"Tidesage Enforcer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[135474] = {
					"Thistle Acolyte", -- [1]
					"Waycrest Manor", -- [2]
				},
				[126423] = {
					"Coralback Crab", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[144071] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[140334] = {
					"Nightscale Coilfang", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[160182] = {
					"Void Initiate", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[129371] = {
					"Riptide Shredder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[146365] = {
					"Blazing Fireguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139877] = {
					"Egg-Tender Kahasz", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[159632] = {
					"Cultist Shadowblade", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[158136] = {
					"Inquisitor Darkspeak", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134701] = {
					"Blood Effigy", -- [1]
					"The Underrot", -- [2]
				},
				[139457] = {
					"Stonebound Quilen", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[156089] = {
					"Aqir Venomweaver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[146110] = {
					"Waxing Moon", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[146366] = {
					"Molten Hound", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134063] = {
					"Brother Ironhull", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[136643] = {
					"Azerite Extractor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[159416] = {
					"Spiked Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153531] = {
					"Aqir Bonecrusher", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136264] = {
					"Half-Finished Mummy", -- [1]
					"Kings' Rest", -- [2]
				},
				[140978] = {
					"Doomtunnel", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139464] = {
					"Zian-Ti Howler", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146367] = {
					"Char'golm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144296] = {
					"Spider Tank", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[153020] = {
					"Borya", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[159417] = {
					"Demented Knife-Twister", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153532] = {
					"Aqir Mindhunter", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[139459] = {
					"Stonebound Soldier", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[131527] = {
					"Lord Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				[130404] = {
					"Vermin Trapper", -- [1]
					"Freehold", -- [2]
				},
				[139460] = {
					"Stonebound Earthweaver", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[134602] = {
					"Shrouded Fang", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[153021] = {
					"Magar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[132807] = {
					"Zian-Ti Quilen", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[130011] = {
					"Irontide Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[122984] = {
					"Dazar'ai Colossus", -- [1]
					"Atal'Dazar", -- [2]
				},
				[140455] = {
					"Bramblefur Calf", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[126429] = {
					"Encrusted Coralback", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[135470] = {
					"Aka'ali the Conqueror", -- [1]
					"Kings' Rest", -- [2]
				},
				[122089] = {
					"Slitherblade Oracle", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[134599] = {
					"Imbued Stormcaller", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[146370] = {
					"Dark Iron Vanguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145067] = {
					"Shadefeather Hatchling", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[139461] = {
					"Stonebound Rockmaw", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[158140] = {
					"Frenzied Rat", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[131785] = {
					"Buzzing Drone", -- [1]
					"Tol Dagor", -- [2]
				},
				[160699] = {
					"Angry Mailemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[148673] = {
					"Vessel of Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134600] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[146882] = {
					"Gargantuan Blighthound", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[149441] = {
					"Frozen Ballista", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[132530] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[136391] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[127480] = {
					"Stinging Parasite", -- [1]
					"Tol Dagor", -- [2]
				},
				[146371] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140769] = {
					"Goldenvein", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[146883] = {
					"Houndmaster Angvold", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[130661] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[132913] = {
					"Island Ettin", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[153022] = {
					"Snang", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135204] = {
					"Spectral Hex Priest", -- [1]
					"Kings' Rest", -- [2]
				},
				[140447] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[135366] = {
					"Blacktooth Arsonist", -- [1]
					"Tol Dagor", -- [2]
				},
				[132299] = {
					"Angry Treant", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[144837] = {
					"Darkshore Stag", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[135365] = {
					"Matron Alma", -- [1]
					"Waycrest Manor", -- [2]
				},
				[144294] = {
					"Mechagon Tinkerer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[122986] = {
					"Wild Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[150169] = {
					"Toxic Lurker", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[133835] = {
					"Feral Bloodswarmer", -- [1]
					"The Underrot", -- [2]
				},
				[133935] = {
					"Animated Guardian", -- [1]
					"Kings' Rest", -- [2]
				},
				[160183] = {
					"Void Fanatic", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157467] = {
					"Void Ascendant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[129370] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[156577] = {
					"Therum Deepforge", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[145058] = {
					"Shadefeather Raven", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[126185] = {
					"Zian-Ti Shadowcaster", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[133836] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[136139] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130521] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[144839] = {
					"Whitetail Doe", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[151579] = {
					"Shield Generator", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[26125] = {
					"Stonereaver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[156575] = {
					"Dark Inquisitor Xanesh", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140643] = {
					"Ferocious Craghorn", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[126424] = {
					"Coralback Surfcrawler", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[138187] = {
					"Grotesque Horror", -- [1]
					"The Underrot", -- [2]
				},
				[129640] = {
					"Snarling Dockhound", -- [1]
					"Siege of Boralus", -- [2]
				},
				[146887] = {
					"Ghern the Rancid", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[159425] = {
					"Occult Shadowmender", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[130024] = {
					"Soggy Shiprat", -- [1]
					"Freehold", -- [2]
				},
				[129369] = {
					"Irontide Raider", -- [1]
					"Siege of Boralus", -- [2]
				},
				[158146] = {
					"Fallen Riftwalker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[157449] = {
					"Sinister Soulcarver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[160416] = {
					"Angry Ale Barrel Spirit", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129559] = {
					"Cutwater Duelist", -- [1]
					"Freehold", -- [2]
				},
				[161217] = {
					"Aqir Skitterer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[158056] = {
					"Rat", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[153541] = {
					"Slavemaster Ul'rok", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[150547] = {
					"Scrapbone Grunter", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[145865] = {
					"Worgen Musketeer", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[154150] = {
					"Kamari", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[130640] = {
					"Vicejaw Sawtooth", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[133430] = {
					"Venture Co. Mastermind", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[144842] = {
					"Tide Crawler", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[129529] = {
					"Blacktooth Scrapper", -- [1]
					"Freehold", -- [2]
				},
				[130025] = {
					"Irontide Thug", -- [1]
					"Tol Dagor", -- [2]
				},
				[162716] = {
					"Spellbound Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133663] = {
					"Fanatical Headhunter", -- [1]
					"The Underrot", -- [2]
				},
				[134423] = {
					"Abyss Dweller", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[132922] = {
					"Enslaved Murloc", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[138446] = {
					"Fathom-Caller Zelissa", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[146890] = {
					"Fleshrot Runeweaver", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[417] = {
					"Thoomon", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[136347] = {
					"Tidesage Initiate", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[139470] = {
					"Serpent Master Xisho", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[133585] = {
					"Dizzy Dina", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[122973] = {
					"Dazar'ai Confessor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[129547] = {
					"Blacktooth Knuckleduster", -- [1]
					"Freehold", -- [2]
				},
				[140059] = {
					"Grizzlefur Mauler", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[127019] = {
					"Training Dummy", -- [1]
					"Freehold", -- [2]
				},
				[131727] = {
					"Fenrae the Cunning", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[130026] = {
					"Bilge Rat Seaspeaker", -- [1]
					"Tol Dagor", -- [2]
				},
				[158315] = {
					"Eye of Chaos", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[152009] = {
					"Malfunctioning Scrapbot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[122969] = {
					"Zanchuli Witch-Doctor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[132051] = {
					"Blood Tick", -- [1]
					"The Underrot", -- [2]
				},
				[122478] = {
					"Void Discharge", -- [1]
					"Seat of the Triumvirate", -- [2]
				},
				[146892] = {
					"Fleshrot Marauder", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[127124] = {
					"Freehold Barhand", -- [1]
					"Freehold", -- [2]
				},
				[152326] = {
					"Kyra Boucher", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[158285] = {
					"Tinkered Shieldbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[142199] = {
					"Alpine Hawk", -- [1]
					"Freehold", -- [2]
				},
				[134823] = {
					"Unbreakable Crystalspine", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[127315] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[131667] = {
					"Soulbound Goliath", -- [1]
					"Waycrest Manor", -- [2]
				},
				[146893] = {
					"Fleshrot Mystic", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[118193] = {
					"Bloodfist Elementalist", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[130027] = {
					"Ashvane Marine", -- [1]
					"Tol Dagor", -- [2]
				},
				[140691] = {
					"Giant Dreadfang", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[133588] = {
					"Automatic Explosive Ejector", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[140692] = {
					"Bloodbore", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[119990] = {
					"Fenryr", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135562] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[134612] = {
					"Grasping Tentacles", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[121567] = {
					"Lightningz", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[129550] = {
					"Bilge Rat Padfoot", -- [1]
					"Freehold", -- [2]
				},
				[140540] = {
					"Kindleweb Clutchkeeper", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[132126] = {
					"Gilded Priestess", -- [1]
					"Atal'Dazar", -- [2]
				},
				[146653] = {
					"Champion Huntress", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[24207] = {
					"Army of the Dead", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134739] = {
					"Purification Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[146895] = {
					"Fleshrot Vandal", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[144972] = {
					"Kaldorei Huntress", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[130028] = {
					"Ashvane Priest", -- [1]
					"Tol Dagor", -- [2]
				},
				[139475] = {
					"Jade-Formed Bonesnapper", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[126190] = {
					"Zian-Ti Brutalizer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[137940] = {
					"Safety Shark", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[139949] = {
					"Plague Doctor", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[141565] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144849] = {
					"Darkscale Scout", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[138623] = {
					"Amathet Archer", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[137233] = {
					"Plague Toad", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[152939] = {
					"Boundless Corruption", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[131411] = {
					"Venomscale Monitor", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[158411] = {
					"Unstable Servant", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129517] = {
					"Reanimated Raptor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134012] = {
					"Taskmaster Askari", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[144850] = {
					"Darkscale Siren", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[157256] = {
					"Aqir Darter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131823] = {
					"Sister Malady", -- [1]
					"Waycrest Manor", -- [2]
				},
				[131436] = {
					"Chosen Blood Matron", -- [1]
					"The Underrot", -- [2]
				},
				[131545] = {
					"Lady Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				[140155] = {
					"Rabid Rotclaw", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[128969] = {
					"Ashvane Commander", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144295] = {
					"Mechagon Mechanic", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[134616] = {
					"Krolusk Pup", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[156650] = {
					"Dark Manifestation", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144971] = {
					"Druid of the Branch", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[17252] = {
					"Flaazinul", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133593] = {
					"Expert Technician", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[156523] = {
					"Maut", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146831] = {
					"Kul Tiran Stormbringer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146596] = {
					"Darkscale Myrmidon", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[134617] = {
					"Krolusk Hatchling", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[130437] = {
					"Mine Rat", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146409] = {
					"Lady Jaina Proudmoore", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[85562] = {
					"Skittering Doomstinger", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[158158] = {
					"Forge-Guard Hurrul", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[162508] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[162764] = {
					"Twisted Appendage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144244] = {
					"The Platinum Pummeler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[136665] = {
					"Ashvane Spotter", -- [1]
					"Tol Dagor", -- [2]
				},
				[138968] = {
					"Zian-Ti Ironmaw", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[133379] = {
					"Adderis", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[158437] = {
					"Fallen Taskmaster", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[148442] = {
					"Gnomish Commando", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144942] = {
					"Spark Bot", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147614] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147787] = {
					"7th Legion Battlemage", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140760] = {
					"Earthliving Giant", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[138969] = {
					"Zian-Ti Spirit", -- [1]
					"Crestfall (Islands 11)", -- [2]
				},
				[147967] = {
					"7th Legion Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[157904] = {
					"Aqir Scarab", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[149611] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[133852] = {
					"Living Rot", -- [1]
					"The Underrot", -- [2]
				},
				[144949] = {
					"Canopy Stalker", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
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
					"Crestfall (Islands 11)", -- [2]
				},
				[157150] = {
					"Thomas Westmill", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[163836] = {
					"Psychophage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[143425] = {
					"Echo of Garrosh Hellscream", -- [1]
					"Siege of Orgrimmar - Mag'har Orc Unlock Scenario", -- [2]
				},
				[148615] = {
					"Div'yane", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148617] = {
					"Akunda the Devout", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[88708] = {
					"Gara", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[141074] = {
					"Kor'gall Defector", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[138971] = {
					"Zian-Ti Serpent", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[84233] = {
					"Thrashtalon Vulture", -- [1]
					"Gorgrond - Mag'har Scenario", -- [2]
				},
				[119925] = {
					"Bloodfist Rockbinder", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[163612] = {
					"Voidspawn Annihilator", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[148194] = {
					"Icy Barrier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[151149] = {
					"Hati", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
			},
			["cast_statusbar_spark_offset"] = -13,
			["aura_grow_direction"] = 3,
			["health_selection_overlay_alpha"] = 0.2999999821186066,
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
					["Revision"] = 186,
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
					["Prio"] = 99,
					["Time"] = 1581394870,
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
					["Revision"] = 93,
					["HooksTemp"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["Prio"] = 99,
					["Time"] = 1581395024,
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
					["Revision"] = 59,
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
					["Prio"] = 99,
					["Name"] = "Focus Target Border",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["Time"] = 1581394872,
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
					["Revision"] = 69,
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
					["Prio"] = 99,
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
					["Time"] = 1581394870,
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
					["Revision"] = 66,
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
					["Time"] = 1581394866,
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
					["Revision"] = 32,
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
					["Prio"] = 99,
					["Time"] = 1579568337,
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
					["Revision"] = 82,
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
					["Prio"] = 99,
					["Name"] = "Buff Special Mod",
					["PlaterCore"] = 1,
					["Time"] = 1581394910,
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
					["Revision"] = 24,
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
					["Time"] = 1581394865,
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
					["Revision"] = 89,
					["HooksTemp"] = {
						["Nameplate Created"] = "\n\n",
						["Player Logon"] = "function ()\n    \n    -- /RELOAD AFTER IMPORTING OR CHANGING THE SCRIPT\n    -- SELECT THE INDICATOR AT THE TARGET TAB\n    \n    Plater.TargetIndicators[\"Double Arrows\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\arrow_double_right_64]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 20,\n        height = 16,\n        x = 28,\n        y = 0,\n        blend = \"ADD\",\n        color = \"white\",\n    } \nend\n\n\n\n\n",
						["Constructor"] = "\n\n",
					},
					["Author"] = "�r��ne-Kel'thuzad",
					["Desc"] = "Adds double arrow as a target indicators option",
					["Hooks"] = {
						["Player Logon"] = "function ()\n    \n    -- /RELOAD AFTER IMPORTING OR CHANGING THE SCRIPT\n    -- SELECT THE INDICATOR AT THE TARGET TAB\n    \n    Plater.TargetIndicators[\"Double Arrows\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\arrow_double_right_64]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 20,\n        height = 16,\n        x = 28,\n        y = 0,\n        blend = \"ADD\",\n        color = \"white\",\n    } \nend\n\n\n\n\n",
					},
					["Prio"] = 99,
					["Time"] = 1581394868,
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
					["LastHookEdited"] = "Player Logon",
				}, -- [35]
			},
			["last_news_time"] = 1551553489,
			["aura2_x_offset"] = -49,
			["cast_statusbar_fadeout_time"] = 0.4899999797344208,
			["cast_statusbar_spark_alpha"] = 0.7199999690055847,
			["aura_width"] = 22,
			["pet_width_scale"] = 0.9999999403953552,
			["ui_parent_cast_strata"] = "DIALOG",
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
				319695, -- [2]
			},
			["aura2_grow_direction"] = 3,
			["castbar_target_outline"] = "NONE",
			["extra_icon_show_enrage"] = true,
			["aura_alpha"] = 0.849999964237213,
			["cast_statusbar_spark_color"] = {
				0.988235294117647, -- [1]
				[3] = 0.941176470588235,
			},
			["aura_cooldown_edge_texture"] = "Interface\\GLUES\\loadingOld",
			["castbar_target_font"] = "Friz Quadrata TT",
			["extra_icon_height"] = 20,
			["aura_x_offset"] = -49,
			["first_run3"] = true,
			["ui_parent_scale_tune"] = 1.889999866485596,
			["ui_parent_buff_strata"] = "LOW",
			["healthbar_framelevel"] = 0,
			["aura_consolidate"] = true,
			["health_statusbar_bgtexture"] = "Smooth v2",
			["indicator_raidmark_anchor"] = {
				["x"] = -40,
			},
			["extra_icon_width"] = 26,
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
			["health_statusbar_texture"] = "Smooth v2",
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
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[289074] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vile Screecher",
					["npcID"] = 148898,
				},
				[259489] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[306474] = {
					["source"] = "Toshpal",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289075] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[215479] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298288] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315176] = {
					["source"] = "Gummybuns",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183752] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gloombringer-Hyjal",
					["npcID"] = 0,
				},
				[104318] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wild Imp",
					["npcID"] = 55659,
				},
				[255909] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315179] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Relaxedgamer-Deathwing",
					["npcID"] = 0,
				},
				[270657] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[85256] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Melirralvia",
					["npcID"] = 0,
				},
				[31661] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fiery-Kil'jaeden",
					["npcID"] = 0,
				},
				[17364] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[153561] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[31821] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[403] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[270661] = {
					["source"] = "Cazibar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275779] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288573] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[48018] = {
					["source"] = "Ozoden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116858] = {
					["source"] = "Delpix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[90887] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jananji",
					["npcID"] = 0,
				},
				[190410] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nevara Nightshade",
					["npcID"] = 146485,
				},
				[162264] = {
					["source"] = "Noinvite",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221883] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["source"] = "Dragontoothz-Azralon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228537] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Chillìdan",
					["npcID"] = 0,
				},
				[301886] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[421] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[270670] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[120954] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190925] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[221886] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scheme-BlackDragonflight",
					["npcID"] = 0,
				},
				[205766] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[64843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[273232] = {
					["source"] = "Noinvite",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196555] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dôöm-Thrall",
					["npcID"] = 0,
				},
				[270674] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[290121] = {
					["source"] = "Dragontoothz-Azralon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["source"] = "Nightmares",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1725] = {
					["source"] = "Emosong-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194509] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[313663] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[235450] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[126457] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nimravus",
					["npcID"] = 0,
				},
				[157153] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Dragontoothz-Azralon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[64844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[267611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Melirralvia",
					["npcID"] = 0,
				},
				[267612] = {
					["source"] = "Exwar-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295248] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[219589] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[115072] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[316744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Snackeyes-Hyjal",
					["npcID"] = 0,
				},
				[5225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Snozberries-Gurubashi",
					["npcID"] = 0,
				},
				[271711] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267618] = {
					["encounterID"] = 2142,
					["source"] = "Mchimba the Embalmer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134993,
				},
				[298836] = {
					["source"] = "Santì-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279902] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[298837] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[226757] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[298839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Oatmealpie-Tichondrius",
					["npcID"] = 0,
				},
				[210126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Altex",
					["npcID"] = 0,
				},
				[295258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[201427] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gloombringer-Hyjal",
					["npcID"] = 0,
				},
				[298841] = {
					["source"] = "Wolfgarr-Stormreaver",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204242] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[267626] = {
					["encounterID"] = 2142,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115203] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[214222] = {
					["source"] = "Toshpal",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24275] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Melirralvia",
					["npcID"] = 0,
				},
				[251836] = {
					["source"] = "Syfodias-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22356] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Archmage Mordent Evenshade",
					["npcID"] = 145589,
				},
				[205523] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[265582] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Glimmerspine",
					["npcID"] = 145269,
				},
				[251837] = {
					["source"] = "Boklock-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127230] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Negatrön",
					["npcID"] = 0,
				},
				[5697] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Killersan-Azralon",
					["npcID"] = 0,
				},
				[251838] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Synchronize-Dalaran",
					["npcID"] = 0,
				},
				[101643] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185311] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hoochella-BleedingHollow",
					["npcID"] = 0,
				},
				[498] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2139,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115078] = {
					["encounterID"] = 2142,
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267639] = {
					["encounterID"] = 2142,
					["source"] = "Mchimba the Embalmer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134993,
				},
				[264057] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[187874] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[255937] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Chuckkyd-Mal'Ganis",
					["npcID"] = 0,
				},
				[283506] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dôöm-Thrall",
					["npcID"] = 0,
				},
				[30449] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[32752] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2094] = {
					["source"] = "Emosong-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2098] = {
					["source"] = "Emosong-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315241] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Maiev Shadowsong",
					["npcID"] = 149098,
				},
				[527] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[187878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[285049] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Forsaken Blight Thrower",
					["npcID"] = 146647,
				},
				[256453] = {
					["source"] = "Ozoden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314731] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Avatar of Smoldering Vengeance",
					["npcID"] = 149164,
				},
				[204255] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[135425] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Boomshot Specialist",
					["npcID"] = 148164,
				},
				[298357] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[273794] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gloombringer-Hyjal",
					["npcID"] = 0,
				},
				[203233] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Irhuntarded",
					["npcID"] = 0,
				},
				[205025] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[256456] = {
					["source"] = "Emibeam-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89751] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zerikshekor",
					["npcID"] = 17252,
				},
				[273286] = {
					["source"] = "Toxíyc-Ragnaros",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235219] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[102417] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[315763] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Melirralvia",
					["npcID"] = 0,
				},
				[200166] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Chillìdan",
					["npcID"] = 0,
				},
				[6673] = {
					["source"] = "Dragontoothz-Azralon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231895] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chuckkyd-Mal'Ganis",
					["npcID"] = 0,
				},
				[11327] = {
					["type"] = "BUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2139,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[585] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[586] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[236502] = {
					["source"] = "Win-Icecrown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89753] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerikshekor",
					["npcID"] = 17252,
				},
				[204262] = {
					["source"] = "Potsu-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[596] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[190446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[259277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Unknown",
					["npcID"] = 119748,
				},
				[277904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bashingpanda",
					["npcID"] = 0,
				},
				[205032] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[278931] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124682] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Epicrolls-Quel'dorei",
					["npcID"] = 0,
				},
				[316801] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gloombringer-Hyjal",
					["npcID"] = 0,
				},
				[633] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[231390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[295310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[288146] = {
					["source"] = "Billythepleb",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[642] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[25046] = {
					["encounterID"] = 2139,
					["source"] = "Emosong-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315787] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267171] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[131347] = {
					["source"] = "Noinvite",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259285] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[222695] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[267685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[316814] = {
					["source"] = "Ångel-Zuluhed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53595] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155145] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288158] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nanija-Mal'Ganis",
					["npcID"] = 0,
				},
				[686] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[688] = {
					["source"] = "Delpix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[691] = {
					["source"] = "Delpix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295838] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dôöm-Thrall",
					["npcID"] = 0,
				},
				[20473] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288675] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[295840] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dôöm-Thrall",
					["npcID"] = 0,
				},
				[193530] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[193786] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[316823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[184575] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Melirralvia",
					["npcID"] = 0,
				},
				[295842] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16827] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Magria",
					["npcID"] = 54319,
				},
				[269232] = {
					["type"] = "BUFF",
					["source"] = "Reban",
					["encounterID"] = 2143,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136984,
				},
				[176644] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deathschosen-Spirestone",
					["npcID"] = 0,
				},
				[316826] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Twisted Appendage",
					["npcID"] = 162764,
				},
				[266163] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wowcoldcold-Barthilas",
					["npcID"] = 0,
				},
				[113942] = {
					["type"] = "DEBUFF",
					["source"] = "Delpix",
					["encounterID"] = 2142,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147732] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[287660] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lotsohdots-Kil'jaeden",
					["npcID"] = 0,
				},
				[267702] = {
					["encounterID"] = 2142,
					["source"] = "Mchimba the Embalmer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134993,
				},
				[269239] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274357] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[139546] = {
					["source"] = "Emosong-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275895] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[317859] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195072] = {
					["source"] = "Noinvite",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[295855] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dôöm-Thrall",
					["npcID"] = 0,
				},
				[196608] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317861] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalesi-Turalyon",
					["npcID"] = 0,
				},
				[295856] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Guardian of Azeroth",
					["npcID"] = 152396,
				},
				[256739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Odella-Staghelm",
					["npcID"] = 0,
				},
				[193538] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3110] = {
					["source"] = "Zornik",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 416,
				},
				[289205] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[781] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Jerémy-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155158] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[62618] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[193796] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[318378] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111771] = {
					["encounterID"] = 2142,
					["source"] = "Delpix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274369] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[8690] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19483] = {
					["source"] = "Infernal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 89,
				},
				[21562] = {
					["source"] = "Nightmares",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273348] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Epicrolls-Quel'dorei",
					["npcID"] = 0,
				},
				[194310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Culga",
					["npcID"] = 0,
				},
				[260070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pa'kura Priest",
					["npcID"] = 131834,
				},
				[190984] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[319919] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200196] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zerikshekor",
					["npcID"] = 17252,
				},
				[304056] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307128] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[83243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[228600] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[270284] = {
					["source"] = "Purification Construct",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134739,
				},
				[311736] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Archdruid Andrenius",
					["npcID"] = 148618,
				},
				[298431] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2139,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53600] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318391] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Great Worm From Beyond",
					["npcID"] = 152550,
				},
				[243955] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toxîcshot-Tichondrius",
					["npcID"] = 0,
				},
				[853] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303041] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297412] = {
					["source"] = "Squeaksdrood",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[160029] = {
					["source"] = "Delpix",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83245] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cärri-Ragnaros",
					["npcID"] = 0,
				},
				[268756] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261612] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Forsaken Alchemist",
					["npcID"] = 144875,
				},
				[270292] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Darkscale Scout",
					["npcID"] = 144849,
				},
				[270293] = {
					["source"] = "Purification Construct",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134739,
				},
				[298440] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["npcID"] = 0,
				},
				[263642] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[54049] = {
					["source"] = "Bheegrom",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 417,
				},
				[77489] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[4987] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264667] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Chromaggus",
					["npcID"] = 14020,
				},
				[295373] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[314308] = {
					["source"] = "Urg'roth, Breaker of Heroes",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161124,
				},
				[30455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[314309] = {
					["source"] = "Urg'roth, Breaker of Heroes",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161124,
				},
				[171804] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Heiligefotze-Tichondrius",
					["npcID"] = 0,
				},
				[266206] = {
					["encounterID"] = 2140,
					["source"] = "Kula the Butcher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135475,
				},
				[303564] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Snoopchögg-Zul'jin",
					["npcID"] = 0,
				},
				[203277] = {
					["source"] = "Nasum",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263648] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[274395] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119582] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[24858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[295378] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pierrebourne",
					["npcID"] = 0,
				},
				[269279] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[303568] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Snoopchögg-Zul'jin",
					["npcID"] = 0,
				},
				[265187] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[303570] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Snoopchögg-Zul'jin",
					["npcID"] = 0,
				},
				[297941] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Himesama-Ner'zhul",
					["npcID"] = 0,
				},
				[132403] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Reckahqt-Proudmoore",
					["npcID"] = 0,
				},
				[311761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Keeper Dagda",
					["npcID"] = 144759,
				},
				[157736] = {
					["source"] = "Delpix",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101545] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yukai",
					["npcID"] = 0,
				},
				[203538] = {
					["source"] = "Reconmarine-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228358] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[268776] = {
					["source"] = "Amani Battle Bear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130257,
				},
				[275429] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184092] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpal",
					["npcID"] = 0,
				},
				[152108] = {
					["source"] = "Delpix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203539] = {
					["source"] = "Reconmarine-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203795] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[202004] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[264173] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[301531] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[34861] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[260857] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Worgen Musketeer",
					["npcID"] = 145865,
				},
				[250878] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157228] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[22812] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[264689] = {
					["source"] = "Merhys-Dalaran",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308188] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Patman-Illidan",
					["npcID"] = 0,
				},
				[264178] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[265202] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[31224] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100780] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 148921,
				},
				[44457] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hugebrain",
					["npcID"] = 0,
				},
				[267764] = {
					["source"] = "Coffin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136256,
				},
				[270323] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[302565] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266231] = {
					["encounterID"] = 2140,
					["source"] = "Kula the Butcher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135475,
				},
				[111400] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274420] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295402] = {
					["source"] = "Potsu-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267256] = {
					["encounterID"] = 2140,
					["source"] = "Earthwall Totem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135759,
				},
				[185123] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dôöm-Thrall",
					["npcID"] = 0,
				},
				[132157] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[267257] = {
					["encounterID"] = 2140,
					["source"] = "Thundering Totem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135761,
				},
				[279028] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[288752] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cinderhala",
					["npcID"] = 0,
				},
				[279029] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[257537] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[266237] = {
					["encounterID"] = 2140,
					["source"] = "Aka'ali the Conqueror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135470,
				},
				[268796] = {
					["encounterID"] = 2143,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270332] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[121253] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279033] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[1044] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193315] = {
					["source"] = "Emosong-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270335] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[66] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fiery-Kil'jaeden",
					["npcID"] = 0,
				},
				[268801] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sandfury Thug",
					["npcID"] = 125460,
				},
				[193316] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2139] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[194084] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[209693] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Chillìdan",
					["npcID"] = 0,
				},
				[317420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Christiee-DarkIron",
					["npcID"] = 0,
				},
				[8676] = {
					["source"] = "Emosong-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[282110] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaldorei Archer",
					["npcID"] = 144970,
				},
				[29722] = {
					["source"] = "Delpix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Potsu-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19647] = {
					["source"] = "Bheegrom",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 417,
				},
				[289277] = {
					["source"] = "Potsu-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270343] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[299513] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[35760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Greater Bogstrok",
					["npcID"] = 17817,
				},
				[1122] = {
					["source"] = "Delpix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272903] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254474] = {
					["source"] = "Merhys-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282116] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Druid of the Branch",
					["npcID"] = 144971,
				},
				[116011] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[69826] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Oatmealpie-Tichondrius",
					["npcID"] = 0,
				},
				[274443] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[296962] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[48107] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[31290] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Darkscale Scout",
					["npcID"] = 144849,
				},
				[2383] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195627] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270865] = {
					["source"] = "King A'akul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137484,
				},
				[178740] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[292360] = {
					["type"] = "BUFF",
					["source"] = "Zeledar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285196] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cinderhala",
					["npcID"] = 0,
				},
				[292361] = {
					["source"] = "Dragontoothz-Azralon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288779] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaldorei Glaive Thrower",
					["npcID"] = 148921,
				},
				[292362] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292363] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Grimwippa",
					["npcID"] = 0,
				},
				[268311] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[116014] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[292364] = {
					["source"] = "Trolladins",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195630] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311811] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Archmage Mordent Evenshade",
					["npcID"] = 148584,
				},
				[297994] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lothraleron",
					["npcID"] = 0,
				},
				[48108] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[12051] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[33907] = {
					["source"] = "Broll Bearmantle",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142294,
				},
				[119085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Letò",
					["npcID"] = 0,
				},
				[308742] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203819] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[134477] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zerikshekor",
					["npcID"] = 17252,
				},
				[225313] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dark Ranger Velonara",
					["npcID"] = 148479,
				},
				[236060] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[108211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Stunnedmuch",
					["npcID"] = 0,
				},
				[77762] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[311816] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Archmage Mordent Evenshade",
					["npcID"] = 148584,
				},
				[260881] = {
					["source"] = "Potsu-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33076] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[298512] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bobtehcreatr",
					["npcID"] = 0,
				},
				[311819] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gilnean Defuser",
					["npcID"] = 145850,
				},
				[287256] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Boomshot Specialist",
					["npcID"] = 148164,
				},
				[285721] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Seprath-Thaurissan",
					["npcID"] = 0,
				},
				[2643] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[288281] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaldorei Huntress",
					["npcID"] = 144972,
				},
				[294935] = {
					["source"] = "Potsu-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chuckkyd-Mal'Ganis",
					["npcID"] = 0,
				},
				[77764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitx-Tichondrius",
					["npcID"] = 0,
				},
				[108853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[14914] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[284702] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Darkscale Scout",
					["npcID"] = 144849,
				},
				[289308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[269351] = {
					["encounterID"] = 2143,
					["source"] = "T'zala",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136976,
				},
				[314387] = {
					["source"] = "Malicious Growth",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161408,
				},
				[288800] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[270889] = {
					["source"] = "King Rahu'ai",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134331,
				},
				[263725] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[191034] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[265773] = {
					["encounterID"] = 2139,
					["source"] = "The Golden Serpent",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135322,
				},
				[311831] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kaldorei Chimaera",
					["npcID"] = 148940,
				},
				[192058] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[204596] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[2823] = {
					["source"] = "Roguesap-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311832] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaldorei Chimaera",
					["npcID"] = 148940,
				},
				[18562] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[272940] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314392] = {
					["source"] = "Malicious Growth",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161408,
				},
				[273453] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[5740] = {
					["encounterID"] = 2139,
					["source"] = "Delpix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[165961] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[36213] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Greater Earth Elemental",
					["npcID"] = 95072,
				},
				[278574] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Melirralvia",
					["npcID"] = 0,
				},
				[314397] = {
					["source"] = "Voidweaver Mal'thir",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161241,
				},
				[265781] = {
					["encounterID"] = 2139,
					["source"] = "The Golden Serpent",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135322,
				},
				[268854] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
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
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ivannáa-Quel'Thalas",
					["npcID"] = 0,
				},
				[2983] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190784] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287790] = {
					["source"] = "Krisyala-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268856] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287280] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269369] = {
					["encounterID"] = 2143,
					["source"] = "T'zala",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136976,
				},
				[218164] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264764] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22273] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unknown",
					["npcID"] = 145589,
				},
				[69070] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[267325] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Steffzazo",
					["npcID"] = 0,
				},
				[176458] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blacksmithing Follower - Horde",
					["npcID"] = 88402,
				},
				[267326] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[282167] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Forsaken Alchemist",
					["npcID"] = 144875,
				},
				[267327] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[118455] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[267329] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[275006] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Altex",
					["npcID"] = 0,
				},
				[267330] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[267331] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[294966] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187464] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[289850] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shandris Feathermoon",
					["npcID"] = 149311,
				},
				[235313] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hugebrain",
					["npcID"] = 0,
				},
				[1604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kaldorei Sentinel",
					["npcID"] = 144973,
				},
				[59628] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273988] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[288829] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Hugebrain",
					["npcID"] = 0,
				},
				[126389] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Braveling-Coilfang",
					["npcID"] = 0,
				},
				[225080] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[270920] = {
					["source"] = "Queen Wasi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137478,
				},
				[212799] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[282692] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 144850,
				},
				[273481] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Melirralvia",
					["npcID"] = 0,
				},
				[270923] = {
					["source"] = "Queen Wasi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137478,
				},
				[212800] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chillìdan",
					["npcID"] = 0,
				},
				[268877] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[205636] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[51505] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[20707] = {
					["source"] = "Delpix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290372] = {
					["source"] = "Nightmares",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[62124] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207684] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[270927] = {
					["source"] = "King Timalji",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137474,
				},
				[296003] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[193356] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[244787] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Glimmerspine",
					["npcID"] = 145269,
				},
				[192077] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[19236] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[270930] = {
					["source"] = "Queen Patlaa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137486,
				},
				[17253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unknown",
					["npcID"] = 119748,
				},
				[193357] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280654] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[206151] = {
					["source"] = "Gummybuns",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272979] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6940] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2139,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193358] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[268887] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193359] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297034] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116670] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297035] = {
					["source"] = "Wolfgarr-Stormreaver",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313923] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[40120] = {
					["source"] = "Jerémy-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1776] = {
					["source"] = "Emosong-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194384] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[280661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Absorb-o-Tron",
					["npcID"] = 143985,
				},
				[1784] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203852] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Steffzazo",
					["npcID"] = 0,
				},
				[272986] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[228928] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 149096,
				},
				[297039] = {
					["source"] = "Santì-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272987] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[104773] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205644] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Treant",
					["npcID"] = 103822,
				},
				[78674] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[267874] = {
					["encounterID"] = 2142,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284762] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lotsohdots-Kil'jaeden",
					["npcID"] = 0,
				},
				[44535] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["npcID"] = 0,
				},
				[252216] = {
					["source"] = "Krisyala-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1850] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitx-Tichondrius",
					["npcID"] = 0,
				},
				[116] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[1856] = {
					["encounterID"] = 2139,
					["source"] = "Emosong-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289371] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maiev Shadowsong",
					["npcID"] = 149098,
				},
				[240447] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31935] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268904] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269928] = {
					["source"] = "Shadow-Borne Champion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134158,
				},
				[268905] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121536] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[280165] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[204883] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[269931] = {
					["source"] = "Shadow-Borne Warrior",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134157,
				},
				[156779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lanteranth",
					["npcID"] = 0,
				},
				[89808] = {
					["source"] = "Zornik",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 416,
				},
				[269932] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[129597] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11366] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[285798] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284263] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Goblin Harvester",
					["npcID"] = 145603,
				},
				[269935] = {
					["source"] = "Minion of Zul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133943,
				},
				[122] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fiery-Kil'jaeden",
					["npcID"] = 0,
				},
				[312411] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zkøria-Ragnaros",
					["npcID"] = 0,
				},
				[269936] = {
					["source"] = "Minion of Zul",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133943,
				},
				[1966] = {
					["type"] = "BUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2143,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117828] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317020] = {
					["source"] = "Tebras-Madoran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246851] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[134522] = {
					["type"] = "BUFF",
					["source"] = "Deejey",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13877] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246852] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[8004] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[19750] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17735] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Xorsik",
					["npcID"] = 58960,
				},
				[246853] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[205146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[314467] = {
					["source"] = "Explosive Scarab",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161437,
				},
				[246854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[292463] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[313445] = {
					["source"] = "Cursed Spire of Ny'alotha",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161163,
				},
				[212056] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[120517] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[284277] = {
					["source"] = "Benegesserit-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300142] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[316007] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bobtehcreatr",
					["npcID"] = 0,
				},
				[279673] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lotsohdots-Kil'jaeden",
					["npcID"] = 0,
				},
				[278650] = {
					["type"] = "BUFF",
					["source"] = "Oåk",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293491] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281721] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gloombringer-Hyjal",
					["npcID"] = 0,
				},
				[133] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[316522] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109132] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268419] = {
					["encounterID"] = 2143,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114250] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chuckkyd-Mal'Ganis",
					["npcID"] = 0,
				},
				[268932] = {
					["encounterID"] = 2143,
					["source"] = "King Dazar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136160,
				},
				[314478] = {
					["source"] = "Samh'rek, Beckoner of Chaos",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161243,
				},
				[244813] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Hugebrain",
					["npcID"] = 0,
				},
				[216411] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[139] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[268936] = {
					["encounterID"] = 2143,
					["source"] = "King Dazar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136160,
				},
				[108366] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314483] = {
					["source"] = "Samh'rek, Beckoner of Chaos",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161243,
				},
				[216413] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34433] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[192106] = {
					["source"] = "Potsu-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90328] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hati",
					["npcID"] = 151144,
				},
				[217694] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Hugebrain",
					["npcID"] = 0,
				},
				[298623] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257099] = {
					["source"] = "Tauidaga",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2336] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Demoñette-KhazModan",
					["npcID"] = 0,
				},
				[105809] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6789] = {
					["encounterID"] = 2139,
					["source"] = "Delpix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280204] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hugebrain",
					["npcID"] = 0,
				},
				[270481] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Demonic Tyrant",
					["npcID"] = 135002,
				},
				[280205] = {
					["source"] = "Kennison-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270482] = {
					["source"] = "Spectral Berserker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135167,
				},
				[13750] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199786] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[269972] = {
					["source"] = "Shadow-Borne Witch Doctor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134174,
				},
				[45181] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296072] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[269973] = {
					["source"] = "Shadow-Borne Witch Doctor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134174,
				},
				[270485] = {
					["source"] = "Spectral Berserker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135167,
				},
				[279185] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shredder Technician",
					["npcID"] = 146072,
				},
				[281744] = {
					["source"] = "Senorbobby-Sargeras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["source"] = "Ripkeyy-Sargeras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294027] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270487] = {
					["source"] = "Spectral Berserker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135167,
				},
				[314498] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nevara Nightshade",
					["npcID"] = 146485,
				},
				[282258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cinderhala",
					["npcID"] = 0,
				},
				[196718] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zarcine-Kil'jaeden",
					["npcID"] = 0,
				},
				[268953] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268954] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282260] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chillìdan",
					["npcID"] = 0,
				},
				[93402] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[268956] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282262] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[270492] = {
					["source"] = "Spectral Hex Priest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135204,
				},
				[45182] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80353] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[264352] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[281240] = {
					["source"] = "Euphaire-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35395] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299664] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Glamorpuss-Tichondrius",
					["npcID"] = 0,
				},
				[282265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[270495] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317065] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80354] = {
					["source"] = "Makoa",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297108] = {
					["source"] = "Emosong-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[105174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[279709] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[113746] = {
					["source"] = "Gummybuns",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209261] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Speedh-Illidan",
					["npcID"] = 0,
				},
				[270499] = {
					["source"] = "Spectral Witch Doctor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135239,
				},
				[300693] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270500] = {
					["source"] = "Skeletal Hunting Raptor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137487,
				},
				[80483] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[270502] = {
					["source"] = "Skeletal Hunting Raptor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137487,
				},
				[285855] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maiev Shadowsong",
					["npcID"] = 149098,
				},
				[8921] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[279715] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[274598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[285857] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maiev Shadowsong",
					["npcID"] = 149098,
				},
				[297116] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Playtoy-Arthas",
					["npcID"] = 0,
				},
				[44544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[270506] = {
					["source"] = "Spectral Beastmaster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135235,
				},
				[270507] = {
					["source"] = "Spectral Beastmaster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135235,
				},
				[314519] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Nevara Nightshade",
					["npcID"] = 146485,
				},
				[290467] = {
					["source"] = "Bonshee-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dmwallace-BoreanTundra",
					["npcID"] = 0,
				},
				[282280] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[79206] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[282282] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chuckkyd-Mal'Ganis",
					["npcID"] = 0,
				},
				[217200] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[199545] = {
					["source"] = "Merhys-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270514] = {
					["source"] = "Spectral Brute",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135231,
				},
				[270003] = {
					["source"] = "Animated Guardian",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133935,
				},
				[297126] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265910] = {
					["encounterID"] = 2139,
					["source"] = "The Golden Serpent",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135322,
				},
				[57723] = {
					["source"] = "Bonshee-BleedingHollow",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199804] = {
					["source"] = "Emosong-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198013] = {
					["source"] = "Noinvite",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30213] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zerikshekor",
					["npcID"] = 17252,
				},
				[314531] = {
					["source"] = "Ravenous Fleshfiend",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161502,
				},
				[300714] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119381] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[266939] = {
					["encounterID"] = 2140,
					["source"] = "Aka'ali the Conqueror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135470,
				},
				[288433] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Worgen Musketeer",
					["npcID"] = 145865,
				},
				[85222] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fiery-Kil'jaeden",
					["npcID"] = 0,
				},
				[283829] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lotsohdots-Kil'jaeden",
					["npcID"] = 0,
				},
				[289459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Veteran Sentinel",
					["npcID"] = 146657,
				},
				[195457] = {
					["source"] = "Emosong-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57724] = {
					["source"] = "Clammert-BleedingHollow",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204413] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[284855] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Forsaken Blight Thrower",
					["npcID"] = 146647,
				},
				[12472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[311979] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Avatar of Smoldering Vengeance",
					["npcID"] = 149164,
				},
				[270016] = {
					["source"] = "Animated Guardian",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133935,
				},
				[283834] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lotsohdots-Kil'jaeden",
					["npcID"] = 0,
				},
				[286393] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Melirralvia",
					["npcID"] = 0,
				},
				[267971] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Demonic Tyrant",
					["npcID"] = 135002,
				},
				[31589] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[267972] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Demonic Tyrant",
					["npcID"] = 135002,
				},
				[271555] = {
					["source"] = "Interment Construct",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137969,
				},
				[284861] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Forsaken Blight Thrower",
					["npcID"] = 146647,
				},
				[277185] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Braveling-Coilfang",
					["npcID"] = 0,
				},
				[88423] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bobtehcreatr",
					["npcID"] = 0,
				},
				[266951] = {
					["encounterID"] = 2140,
					["source"] = "Aka'ali the Conqueror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135470,
				},
				[115546] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283840] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lotsohdots-Kil'jaeden",
					["npcID"] = 0,
				},
				[207744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[183436] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Melirralvia",
					["npcID"] = 0,
				},
				[271559] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[198533] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jade Serpent Statue",
					["npcID"] = 60849,
				},
				[258920] = {
					["source"] = "Noinvite",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271049] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[271561] = {
					["source"] = "Interment Construct",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137969,
				},
				[124503] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271563] = {
					["source"] = "Embalming Fluid",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137989,
				},
				[271564] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314040] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277706] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186254] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[85739] = {
					["source"] = "Dragontoothz-Azralon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147362] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cärri-Ragnaros",
					["npcID"] = 0,
				},
				[198793] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Chillìdan",
					["npcID"] = 0,
				},
				[3408] = {
					["source"] = "Roguesap-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116189] = {
					["source"] = "Gummybuns",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297989] = {
					["source"] = "Stabbysabi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267482] = {
					["source"] = "Stabbysabi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197919] = {
					["type"] = "BUFF",
					["source"] = "Leesy",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186257] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[278736] = {
					["source"] = "Shalazak-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289483] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maiev Shadowsong",
					["npcID"] = 149098,
				},
				[84714] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[290004] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Braveling-Coilfang",
					["npcID"] = 0,
				},
				[228477] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[305249] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Duloom-Illidan",
					["npcID"] = 0,
				},
				[289745] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shandris Feathermoon",
					["npcID"] = 149311,
				},
				[186258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[210391] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thalius-Zul'jin",
					["npcID"] = 0,
				},
				[85948] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Synchronize-Dalaran",
					["npcID"] = 0,
				},
				[296138] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242551] = {
					["source"] = "Reconmarine-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297162] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zerikshekor",
					["npcID"] = 17252,
				},
				[289997] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Braveling-Coilfang",
					["npcID"] = 0,
				},
				[974] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[34914] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Savart-Stormrage",
					["npcID"] = 0,
				},
				[281036] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[80240] = {
					["source"] = "Delpix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113858] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270289] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316835] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Twisted Appendage",
					["npcID"] = 162764,
				},
				[294926] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202636] = {
					["source"] = "Zflye-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44614] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[256459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kippsy-Zul'jin",
					["npcID"] = 0,
				},
				[314565] = {
					["source"] = "Blood of the Corruptor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161244,
				},
				[272090] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[3714] = {
					["source"] = "Euphaire-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261488] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Forsaken Lancer",
					["npcID"] = 144877,
				},
				[117952] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315212] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maiev Shadowsong",
					["npcID"] = 149098,
				},
				[167898] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5143] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[225289] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dark Ranger Velonara",
					["npcID"] = 148479,
				},
				[298703] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297168] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289492] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maiev Shadowsong",
					["npcID"] = 149098,
				},
				[314568] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nevara Nightshade",
					["npcID"] = 146485,
				},
				[190356] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[265923] = {
					["encounterID"] = 2139,
					["source"] = "The Golden Serpent",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135322,
				},
				[260069] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Priest of Gonk",
					["npcID"] = 131809,
				},
				[5215] = {
					["source"] = "Heo-LaughingSkull",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271565] = {
					["source"] = "Embalming Fluid",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137989,
				},
				[201754] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Magria",
					["npcID"] = 54319,
				},
				[266940] = {
					["encounterID"] = 2140,
					["source"] = "Aka'ali the Conqueror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135470,
				},
				[277724] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186263] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[164812] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[192082] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wind Rush Totem",
					["npcID"] = 97285,
				},
				[188838] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[36107] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[232698] = {
					["source"] = "Doanuts-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210191] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Melirralvia",
					["npcID"] = 0,
				},
				[3716] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Xorsik",
					["npcID"] = 58960,
				},
				[1766] = {
					["source"] = "Emosong-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[225919] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[269231] = {
					["encounterID"] = 2143,
					["source"] = "Reban",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136984,
				},
				[298197] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124273] = {
					["source"] = "Gummybuns",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232633] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[279810] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[262538] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Forsaken Lancer",
					["npcID"] = 144877,
				},
				[186265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[185763] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312107] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213644] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[21169] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[288988] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[41425] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fiery-Kil'jaeden",
					["npcID"] = 0,
				},
				[88625] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[87024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dmwallace-BoreanTundra",
					["npcID"] = 0,
				},
				[280177] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dmwallace-BoreanTundra",
					["npcID"] = 0,
				},
				[205708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[30146] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[270497] = {
					["source"] = "Spectral Witch Doctor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135239,
				},
				[283831] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Lotsohdots-Kil'jaeden",
					["npcID"] = 0,
				},
				[270493] = {
					["source"] = "Spectral Hex Priest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135204,
				},
				[197561] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300761] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279913] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Braveling-Coilfang",
					["npcID"] = 0,
				},
				[326419] = {
					["source"] = "Kalayavan-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11426] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[300762] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[259448] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Whyisgamora",
					["npcID"] = 0,
				},
				[313148] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[270058] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deathschosen-Spirestone",
					["npcID"] = 0,
				},
				[187837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[288877] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[268955] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185245] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[272790] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[45242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[260249] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[257946] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[188499] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gloombringer-Hyjal",
					["npcID"] = 0,
				},
				[214202] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296059] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[82326] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295137] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[259491] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[318227] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279684] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[259388] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[8679] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ziac-Tichondrius",
					["npcID"] = 0,
				},
				[314585] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199754] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304722] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[118922] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[203975] = {
					["source"] = "Bonshee-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271045] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[270576] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Shalazak-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290165] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313948] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281209] = {
					["source"] = "Euphaire-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279277] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Forsaken Blight Thrower",
					["npcID"] = 146647,
				},
				[268314] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[270872] = {
					["source"] = "Bloodsworn Agent",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137485,
				},
				[204157] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[256382] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Whitetail Doe",
					["npcID"] = 144839,
				},
				[154797] = {
					["source"] = "Kerriigan-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[278767] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17962] = {
					["source"] = "Delpix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81782] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115313] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Clapity-Tichondrius",
					["npcID"] = 0,
				},
				[212653] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pyromâniac-Zul'jin",
					["npcID"] = 0,
				},
				[279584] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Snoopchögg-Zul'jin",
					["npcID"] = 0,
				},
				[213652] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[312915] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[278769] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[202138] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[314592] = {
					["source"] = "Mindrend Tentacle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161510,
				},
				[270070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sesostris",
					["npcID"] = 0,
				},
				[280817] = {
					["source"] = "Soonnt-Ragnaros",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[197277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Melirralvia",
					["npcID"] = 0,
				},
				[299624] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[26297] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54149] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19505] = {
					["source"] = "Bheegrom",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 417,
				},
				[12042] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[313571] = {
					["source"] = "Exwar-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288539] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Druid of the Claw",
					["npcID"] = 146770,
				},
				[273323] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[115175] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Clapity-Tichondrius",
					["npcID"] = 0,
				},
				[129250] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[114051] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[115356] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[164547] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[275544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[768] = {
					["source"] = "Krisyala-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288537] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Druid of the Claw",
					["npcID"] = 146769,
				},
				[196834] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[296971] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[257410] = {
					["type"] = "BUFF",
					["source"] = "Nighsu",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34767] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Buddahz",
					["npcID"] = 0,
				},
				[2645] = {
					["source"] = "Potsu-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2641] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[246152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[121557] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[268403] = {
					["encounterID"] = 2143,
					["source"] = "King Dazar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136160,
				},
				[282283] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Steffzazo",
					["npcID"] = 0,
				},
				[267308] = {
					["encounterID"] = 2140,
					["source"] = "Zanazal the Wise",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135472,
				},
				[243563] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tide Crawler",
					["npcID"] = 144842,
				},
				[201846] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[57934] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tosano-Stormrage",
					["npcID"] = 0,
				},
				[164545] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[272126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Alphaglaives-Tichondrius",
					["npcID"] = 0,
				},
				[279397] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61684] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Devilsaur",
					["npcID"] = 71529,
				},
				[188070] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[102383] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[303344] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48265] = {
					["source"] = "Euphaire-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294133] = {
					["type"] = "BUFF",
					["source"] = "Toshpal",
					["encounterID"] = 2139,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287586] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Crankshot Blaster",
					["npcID"] = 148300,
				},
				[303345] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Omgcriticals-Akama",
					["npcID"] = 0,
				},
				[41635] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[6343] = {
					["source"] = "Ripkeyy-Sargeras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268998] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fiery-Kil'jaeden",
					["npcID"] = 0,
				},
				[318187] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[269571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chuckkyd-Mal'Ganis",
					["npcID"] = 0,
				},
				[58875] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[17] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Seeraku-Tichondrius",
					["npcID"] = 0,
				},
				[271107] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[120679] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[270084] = {
					["source"] = "Guard Captain Atu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137473,
				},
				[116841] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319237] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[115178] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313352] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257415] = {
					["source"] = "Nightmares",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Littlles-Mal'Ganis",
					["npcID"] = 0,
				},
				[288509] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scynìte-Tichondrius",
					["npcID"] = 0,
				},
				[266091] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113899] = {
					["encounterID"] = 2142,
					["source"] = "Demonic Gateway",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 59262,
				},
				[205473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[26573] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268552] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[265273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[270505] = {
					["source"] = "Queen Patlaa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137486,
				},
				[12654] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[32375] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[114923] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[197214] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[268893] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58867] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spirit Raptor",
					["npcID"] = 29264,
				},
				[73920] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[301308] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45438] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fiery-Kil'jaeden",
					["npcID"] = 0,
				},
				[20271] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Melirralvia",
					["npcID"] = 0,
				},
				[113900] = {
					["encounterID"] = 2142,
					["source"] = "Demonic Gateway",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 59271,
				},
				[280653] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[278954] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Melirralvia",
					["npcID"] = 0,
				},
				[289026] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vile Screecher",
					["npcID"] = 148898,
				},
				[108271] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[315309] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Veteran Sentinel",
					["npcID"] = 146657,
				},
				[288882] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[112042] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xorsik",
					["npcID"] = 58960,
				},
				[47788] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[214621] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[268769] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115308] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204197] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[283911] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Asithra Diresong",
					["npcID"] = 144765,
				},
				[289324] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119914] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[270931] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2948] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[77472] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[34026] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[207400] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[207685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[278244] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116844] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[90361] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hati",
					["npcID"] = 151096,
				},
				[313088] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115181] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31850] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116705] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61295] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[183081] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Darkscale Siren",
					["npcID"] = 144850,
				},
				[119996] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259387] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[284713] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Darkscale Siren",
					["npcID"] = 144850,
				},
				[183218] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Duloom-Illidan",
					["npcID"] = 0,
				},
				[282381] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaldorei Sentinel",
					["npcID"] = 144973,
				},
				[190319] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[124506] = {
					["source"] = "Gummybuns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194153] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[200397] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ferocious Swiftclaw",
					["npcID"] = 149312,
				},
				[53385] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Melirralvia",
					["npcID"] = 0,
				},
				[283918] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Asithra Diresong",
					["npcID"] = 144765,
				},
				[288524] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaldorei Huntress",
					["npcID"] = 144972,
				},
				[289999] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Braveling-Coilfang",
					["npcID"] = 0,
				},
				[275773] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[310530] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scheme-BlackDragonflight",
					["npcID"] = 0,
				},
				[216251] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[21807] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Keeper Dagda",
					["npcID"] = 144759,
				},
				[225921] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[710] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[193455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[289038] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Archdruid Andrenius",
					["npcID"] = 148618,
				},
				[153595] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[194223] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kandranx-Zul'jin",
					["npcID"] = 0,
				},
				[270339] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[298343] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30283] = {
					["encounterID"] = 2139,
					["source"] = "Delpix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271640] = {
					["source"] = "Shadow of Zul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138489,
				},
				[98008] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[266779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[187827] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288803] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[179057] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zarcine-Kil'jaeden",
					["npcID"] = 0,
				},
				[318211] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[44425] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[143625] = {
					["source"] = "Migz-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299789] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gloombringer-Hyjal",
					["npcID"] = 0,
				},
				[264761] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269976] = {
					["source"] = "Shadow-Borne Champion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134158,
				},
				[116847] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Melirralvia",
					["npcID"] = 0,
				},
				[152262] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[211881] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Chillìdan",
					["npcID"] = 0,
				},
				[22703] = {
					["source"] = "Delpix",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192225] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274346] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chillìdan",
					["npcID"] = 0,
				},
				[286486] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maiev Shadowsong",
					["npcID"] = 149098,
				},
				[295186] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[311812] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Archmage Mordent Evenshade",
					["npcID"] = 148584,
				},
				[60103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[199600] = {
					["type"] = "BUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2139,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215111] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dreadstalker",
					["npcID"] = 98035,
				},
				[318216] = {
					["source"] = "Win-Icecrown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285976] = {
					["source"] = "Felfirelol",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288535] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Druid of the Claw",
					["npcID"] = 146769,
				},
				[204021] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[162243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gloombringer-Hyjal",
					["npcID"] = 0,
				},
				[248473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yro",
					["npcID"] = 0,
				},
				[319241] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gloombringer-Hyjal",
					["npcID"] = 0,
				},
				[2649] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Magria",
					["npcID"] = 54319,
				},
				[64901] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[285978] = {
					["source"] = "Migz-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sergra Darkthorn",
					["npcID"] = 3338,
				},
				[283826] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lotsohdots-Kil'jaeden",
					["npcID"] = 0,
				},
				[318219] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[285979] = {
					["source"] = "Potsu-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19577] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[311634] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Blooming Protector",
					["npcID"] = 149635,
				},
				[24331] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Harbor Saurid",
					["npcID"] = 126023,
				},
				[246287] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[223143] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303380] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blueflamee-Kil'jaeden",
					["npcID"] = 0,
				},
				[231843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Melirralvia",
					["npcID"] = 0,
				},
				[285981] = {
					["source"] = "Dylana-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199603] = {
					["source"] = "Emosong-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208772] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[118905] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Capacitor Totem",
					["npcID"] = 61245,
				},
				[196277] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[297037] = {
					["source"] = "Gummybuns",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264735] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hati",
					["npcID"] = 151144,
				},
				[198813] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Chillìdan",
					["npcID"] = 0,
				},
				[314411] = {
					["source"] = "Voidweaver Mal'thir",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161241,
				},
				[313918] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhaedos-Ragnaros",
					["npcID"] = 0,
				},
				[311571] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Druid of the Branch",
					["npcID"] = 144971,
				},
				[198069] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[198300] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[25771] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203720] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[267288] = {
					["source"] = "Earthen Ring Shaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135671,
				},
				[209584] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Epicrolls-Quel'dorei",
					["npcID"] = 0,
				},
				[264353] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[268586] = {
					["type"] = "BUFF",
					["source"] = "King Dazar",
					["encounterID"] = 2143,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136160,
				},
				[348] = {
					["source"] = "Delpix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[96231] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280170] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[273006] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[72968] = {
					["source"] = "Potsu-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295368] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[123725] = {
					["source"] = "Gummybuns",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260834] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Forsaken Deathguard",
					["npcID"] = 144878,
				},
				[293664] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tankieseven",
					["npcID"] = 0,
				},
				[183998] = {
					["source"] = "Toshpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[266030] = {
					["source"] = "Delpix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2825] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[283430] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ifaythope-Tichondrius",
					["npcID"] = 0,
				},
				[288944] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hugebrain",
					["npcID"] = 0,
				},
				[188370] = {
					["source"] = "Spoonerisms-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51533] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[204213] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Toshpriest",
					["npcID"] = 0,
				},
				[162794] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dôöm-Thrall",
					["npcID"] = 0,
				},
				[157644] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hugebrain",
					["npcID"] = 0,
				},
				[6136] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Darkscale Siren",
					["npcID"] = 144850,
				},
				[57994] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[313310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[315161] = {
					["source"] = "Toshpal",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272388] = {
					["source"] = "Shadow of Zul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138489,
				},
				[108280] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Qiro-Kil'jaeden",
					["npcID"] = 0,
				},
				[136] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[210320] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280433] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zof-Hyjal",
					["npcID"] = 0,
				},
				[5784] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Leahla",
					["npcID"] = 0,
				},
				[280200] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zkøria-Ragnaros",
					["npcID"] = 0,
				},
				[308189] = {
					["source"] = "Violetflame-Skullcrusher",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[86659] = {
					["type"] = "BUFF",
					["source"] = "Spoonerisms-Kil'jaeden",
					["encounterID"] = 2139,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109304] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[83242] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[1459] = {
					["source"] = "Zapner-LaughingSkull",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6262] = {
					["source"] = "Delpix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267060] = {
					["encounterID"] = 2140,
					["source"] = "Zanazal the Wise",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135472,
				},
				[234153] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cinderhala",
					["npcID"] = 0,
				},
				[290819] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Premicide-Tichondrius",
					["npcID"] = 0,
				},
				[295367] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cinderhala",
					["npcID"] = 0,
				},
				[205648] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hélanoiis-Azralon",
					["npcID"] = 0,
				},
				[288043] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaldorei Glaive Thrower",
					["npcID"] = 145303,
				},
				[20572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cärri-Ragnaros",
					["npcID"] = 0,
				},
				[29893] = {
					["source"] = "Delpix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30451] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Crazygrulz-Tichondrius",
					["npcID"] = 0,
				},
				[288044] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaldorei Glaive Thrower",
					["npcID"] = 145303,
				},
				[31884] = {
					["source"] = "Toshpal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2050] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Itsyellowy",
					["npcID"] = 0,
				},
				[19574] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strawcherry-Illidan",
					["npcID"] = 0,
				},
				[316703] = {
					["source"] = "Euphaire-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1022] = {
					["type"] = "BUFF",
					["source"] = "Spoonerisms-Kil'jaeden",
					["encounterID"] = 2139,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nuerologicz-Proudmoore",
					["npcID"] = 0,
				},
				[282279] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cinderhala",
					["npcID"] = 0,
				},
				[124274] = {
					["source"] = "Gummybuns",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290605] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ferocious Swiftclaw",
					["npcID"] = 149312,
				},
				[264314] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mizalie-BleedingHollow",
					["npcID"] = 0,
				},
				[303211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cringelived-Thrall",
					["npcID"] = 0,
				},
				[104316] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Leophilo-Azralon",
					["npcID"] = 0,
				},
				[198589] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Chillìdan",
					["npcID"] = 0,
				},
				[22888] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33702] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Braveling-Coilfang",
					["npcID"] = 0,
				},
				[199736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kamaqi",
					["npcID"] = 0,
				},
				[115191] = {
					["source"] = "Felfirelol",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289072] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vile Screecher",
					["npcID"] = 148898,
				},
				[280149] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Synchronize-Dalaran",
					["npcID"] = 0,
				},
				[214968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Synchronize-Dalaran",
					["npcID"] = 0,
				},
				[278326] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Chillìdan",
					["npcID"] = 0,
				},
				[289073] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vile Screecher",
					["npcID"] = 148898,
				},
				[299662] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ejresto-Illidan",
					["npcID"] = 0,
				},
				[124275] = {
					["source"] = "Gummybuns",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[56814] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kxo",
					["npcID"] = 0,
				},
			},
			["aura_timer_text_font"] = "Expressway",
			["castbar_target_anchor"] = {
				["side"] = 11,
			},
			["aura_height"] = 22,
			["use_health_animation"] = true,
			["target_highlight_alpha"] = 1,
			["news_frame"] = {
				["PlaterNewsFrame"] = {
					["scale"] = 1,
				},
			},
			["target_indicator"] = "Double Arrows",
			["target_shady_alpha"] = 0.599999964237213,
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.1",
				["nameplateShowSelf"] = "0",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.025",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateGlobalScale"] = "1",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "1",
				["nameplateSelectedScale"] = "1",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateSelfTopInset"] = "0.5",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateShowAll"] = "1",
				["nameplateMinScale"] = "1",
				["nameplateMaxDistance"] = "40",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfScale"] = "1",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateOccludedAlphaMult"] = "0.4",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateSelfAlpha"] = "1",
				["NamePlateHorizontalScale"] = "1",
				["nameplateOtherTopInset"] = "0.085",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["NamePlateVerticalScale"] = "1",
			},
			["login_counter"] = 3572,
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
				[133835] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				[136353] = {
					true, -- [1]
					false, -- [2]
					"royalblue", -- [3]
				},
				[134600] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
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
				[135365] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
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
			["number_region_first_run"] = true,
			["pet_height_scale"] = 0.9999999403953552,
			["cast_statusbar_texture"] = "Smooth v2",
			["hover_highlight_alpha"] = 0.299999982118607,
			["hide_friendly_castbars"] = true,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["aura_tracker"] = {
				["debuff"] = {
					224991, -- [1]
					277950, -- [2]
				},
				["debuff_tracked"] = {
					[319695] = true,
				},
				["buff_tracked"] = {
					[280001] = true,
				},
			},
			["first_run2"] = true,
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
			["cast_statusbar_bgtexture"] = "Smooth v2",
			["cast_statusbar_spark_width"] = 25,
		},
	},
}
