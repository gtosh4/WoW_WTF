
PlaterDB = {
	["profileKeys"] = {
		["Toshpriest - Area 52"] = "PixelPerfect",
		["Toshaman - Area 52"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["aura_cooldown_edge_texture"] = "Interface\\GLUES\\loadingOld",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["Revision"] = 387,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Name"] = "Cast - Small Alert [Plater]",
					["PlaterCore"] = 1,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
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
					["Enabled"] = true,
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Time"] = 1541263726,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Revision"] = 108,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["PlaterCore"] = 1,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["Enabled"] = true,
				}, -- [2]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Time"] = 1551467254,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["Revision"] = 432,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Name"] = "Aura - Buff Alert [Plater]",
					["PlaterCore"] = 1,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["Desc"] = "Add the buff name in the trigger box.",
					["Enabled"] = true,
				}, -- [3]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1548349245,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["Revision"] = 399,
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Very Important [Plater]",
					["PlaterCore"] = 1,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
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
					["Enabled"] = true,
				}, -- [4]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1551466091,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["Revision"] = 247,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Aura - Debuff Alert [Plater]",
					["PlaterCore"] = 1,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["SpellIds"] = {
					},
					["Desc"] = "Add the debuff name in the trigger box.",
					["Enabled"] = true,
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["Revision"] = 192,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["Temp_UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["PlaterCore"] = 1,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
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
					["Enabled"] = true,
				}, -- [6]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Time"] = 1550595071,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["Revision"] = 197,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Name"] = "Fixate [Plater]",
					["PlaterCore"] = 1,
					["Icon"] = 1029718,
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
					},
					["Desc"] = "Show above the nameplate who is the player fixated",
					["Enabled"] = true,
				}, -- [7]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Time"] = 1547158828,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["Revision"] = 135,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Name"] = "UnitPower [Plater]",
					["PlaterCore"] = 1,
					["Icon"] = 136048,
					["SpellIds"] = {
					},
					["Desc"] = "Show the energy amount above the nameplate",
					["Enabled"] = true,
				}, -- [8]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1548957216,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["Icon"] = 135996,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
					["Revision"] = 162,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Name"] = "Unit - Important [Plater]",
					["PlaterCore"] = 1,
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
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["SpellIds"] = {
					},
					["Enabled"] = true,
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["Revision"] = 581,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Big Alert [Plater]",
					["PlaterCore"] = 1,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
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
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["Enabled"] = true,
				}, -- [10]
				{
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        \n        [288038] = \"Marked Target\", --marine jaina encounter on battle of dazar'alor\n        [282209] = \"Mark of Prey\", --ravenous stalker conclave encounter on battle of dazar'alor\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n146753: Kul Tiran Marine from jaina encounter on battle of dazar'alor\n144807: Ravenous Stalker conclave encounter on battle of dazar'alor\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1548105751,
					["Temp_ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        \n        [288038] = \"Marked Target\", --marine jaina encounter\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n146753: kul tiran marine from jaina encounter\n--]=]\n\n\n\n\n",
					["Icon"] = 841383,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["Revision"] = 208,
					["Author"] = "Tecno-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Name"] = "Fixate On You [Plater]",
					["PlaterCore"] = 1,
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
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
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
					["Enabled"] = true,
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Revision"] = 45,
					["Author"] = "抹了油的大叔-白银之手",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    \nend\n\n\n",
					["Name"] = "NameplaterColor with Special Buff ID",
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Desc"] = "NameplaterColor with Special Buff ID",
					["SpellIds"] = {
						277242, -- [1]
					},
					["Enabled"] = false,
				}, -- [12]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3 --increases the size of the healthBar\n    envTable.GlowAlpha = 0.45 --from zero to one, is the percent of transparency of the glowing border\n    envTable.ShowArrow = true --or 'false' to hide the arrow above the healthBar\n    envTable.ArrowAlpha = 0.45 --transparent of the arrow above the healthBar\n    envTable.HealthBarColor = \"orange\" --color of the healthBar\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["Time"] = 1550589212,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3 --increases the size of the healthBar\n    envTable.GlowAlpha = 0.45 --from zero to one, is the percent of transparency of the glowing border\n    envTable.ShowArrow = true --or 'false' to hide the arrow above the healthBar\n    envTable.ArrowAlpha = 0.45 --transparent of the arrow above the healthBar\n    envTable.HealthBarColor = \"orange\" --color of the healthBar\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = 2175503,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["Revision"] = 335,
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["Name"] = "Explosion Affix M+ [Plater]",
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["Enabled"] = true,
				}, -- [13]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Time"] = 1548349253,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["Icon"] = 135024,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["Revision"] = 67,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Name"] = "Color Change [Plater]",
					["PlaterCore"] = 1,
					["NpcNames"] = {
						"141851", -- [1]
					},
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["SpellIds"] = {
					},
					["Enabled"] = true,
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["Revision"] = 46,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Name"] = "Aura - Border Color [Plater]",
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["SpellIds"] = {
					},
					["Enabled"] = false,
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["Revision"] = 164,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["SpellIds"] = {
					},
					["Enabled"] = true,
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
					["OnShowCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local isTanking = UnitDetailedThreatSituation (\"player\", unitId)\n    if (not isTanking) then \n        Plater.SetNameplateColor (unitFrame, \"pink\") \n    end\n    \nend\n\n\n\n\n",
					["Name"] = "New Script",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "",
					["Temp_OnHideCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetWidth (envTable.OriginalWidth)\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n        envTable.OriginalWidth = nil\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					["Revision"] = 1382,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    Plater.SetCastBarBorderColor (self, 1, 0, 0, 0.4)\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetWidth (envTable.OriginalWidth)\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    \n    --increase the cast bar size\n    envTable.OriginalHeight = self:GetHeight()\n    envTable.OriginalWidth = self:GetWidth()\n    local width = Plater.db.profile.plate_config.enemynpc.cast_incombat[1]\n    local height = Plater.db.profile.plate_config.enemynpc.cast_incombat[2]\n    \n    self:SetWidth (width)\n    self:SetHeight (height * envTable.CastBarHeightAdd)\n    \n    print (envTable.glowEffect:GetAlpha())\n    \nend",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "M+ Important Spells [Plater]",
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
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
					["Enabled"] = false,
				}, -- [18]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --custom frames\n    unitFrame.JadeFireGlowEffect = unitFrame.JadeFireGlowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    unitFrame.JadeFireGlowEffect:SetOffset (-27, 25, 6, -8)\n    unitFrame.JadeFireGlowEffect:Hide()\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:Hide() \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:Show() \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:SetAlpha (.5)\nend\n\n\n",
					["Time"] = 1550596124,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --custom frames\n    unitFrame.JadeFireGlowEffect = unitFrame.JadeFireGlowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    unitFrame.JadeFireGlowEffect:SetOffset (-27, 25, 6, -8)\n    unitFrame.JadeFireGlowEffect:Hide()\n    \nend\n\n\n",
					["Icon"] = 132221,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:Hide() \nend\n\n\n",
					["Revision"] = 33,
					["Author"] = "Kastfall-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:Show() \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:SetAlpha (.5)\nend\n\n\n",
					["Name"] = "Jadefire [BOD] - Fire Shield",
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Desc"] = "Alert when the unit has the Fire Shield to be broken.",
					["SpellIds"] = {
						286425, -- [1]
					},
					["Enabled"] = true,
				}, -- [19]
			},
			["pet_height_scale"] = 0.9999999403953552,
			["aura_x_offset"] = 0,
			["first_run3"] = true,
			["aura_cache_by_name"] = {
				["weakened soul"] = {
					6788, -- [1]
					126921, -- [2]
				},
			},
			["url"] = "https://wago.io/g-jp-v2zw/5",
			["hover_highlight_alpha"] = 0.29999998211861,
			["cast_statusbar_fadein_time"] = 0.02081192471087,
			["ui_parent_buff_strata"] = "LOW",
			["cast_statusbar_spark_alpha"] = 0.7199999690055847,
			["healthbar_framelevel"] = 0,
			["aura2_y_offset"] = 15.9,
			["aura_timer_text_anchor"] = {
				["y"] = 8,
				["x"] = 1,
				["side"] = 5,
			},
			["castbar_framelevel"] = 0,
			["health_statusbar_bgtexture"] = "PlaterBackground",
			["plate_config"] = {
				["player"] = {
					["actorname_text_font"] = "Accidental Presidency",
					["percent_text_font"] = "Friz Quadrata TT",
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["power_percent_text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
					["big_actortitle_text_font"] = "Accidental Presidency",
					["click_through"] = true,
					["power_percent_text_size"] = 8,
					["level_text_font"] = "Accidental Presidency",
					["spellname_text_font"] = "Friz Quadrata TT",
					["power_percent_text_font"] = "Friz Quadrata TT",
					["percent_text_size"] = 8,
					["percent_show_health"] = false,
					["big_actorname_text_font"] = "Accidental Presidency",
				},
				["friendlyplayer"] = {
					["big_actorname_text_size"] = 10,
					["spellpercent_text_font"] = "Accidental Presidency",
					["level_text_size"] = 8,
					["only_thename"] = true,
					["big_actortitle_text_font"] = "Accidental Presidency",
					["cast"] = {
						120, -- [1]
					},
					["percent_text_ooc"] = true,
					["big_actortitle_text_size"] = 10,
					["spellpercent_text_anchor"] = {
						["side"] = 5,
						["x"] = 1,
					},
					["level_text_anchor"] = {
						["side"] = 5,
						["x"] = 1,
					},
					["big_actortitle_text_shadow_color_offset"] = {
						1, -- [1]
						-1, -- [2]
					},
					["cast_incombat"] = {
						120, -- [1]
					},
					["big_actorname_text_shadow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["spellpercent_text_outline"] = "NONE",
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
					["level_text_font"] = "Accidental Presidency",
					["actorname_text_font"] = "Accidental Presidency",
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
					["power_percent_text_font"] = "Accidental Presidency",
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["all_names"] = true,
					["spellname_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["spellname_text_font"] = "Accidental Presidency",
					["spellname_text_color"] = {
						0.95294117647059, -- [1]
						[3] = 0.9921568627451,
					},
					["actorname_text_size"] = 11,
					["percent_show_health"] = true,
					["spellpercent_text_enabled"] = true,
					["big_actortitle_text_outline"] = "OUTLINE",
					["health_incombat"] = {
						120, -- [1]
						12, -- [2]
					},
					["percent_text_font"] = "Accidental Presidency",
					["buff_frame_y_offset"] = 0,
					["spellpercent_text_size"] = 9,
					["percent_text_outline"] = "NONE",
					["percent_text_size"] = 8,
					["quest_enabled"] = true,
					["big_actorname_text_font"] = "Accidental Presidency",
					["spellname_text_size"] = 9,
					["health"] = {
						120, -- [1]
						12, -- [2]
					},
					["level_text_alpha"] = 0.29999998211861,
					["actorname_text_anchor"] = {
						["y"] = -3,
						["x"] = -1,
						["side"] = 1,
					},
					["percent_text_enabled"] = true,
					["mana"] = {
						nil, -- [1]
						4, -- [2]
					},
					["level_text_enabled"] = true,
				},
				["friendlynpc"] = {
					["big_actorname_text_size"] = 10,
					["spellpercent_text_font"] = "Accidental Presidency",
					["level_text_size"] = 8,
					["big_actortitle_text_font"] = "Accidental Presidency",
					["cast"] = {
						120, -- [1]
						8, -- [2]
					},
					["spellpercent_text_size"] = 9,
					["big_actortitle_text_size"] = 10,
					["spellpercent_text_anchor"] = {
						["side"] = 5,
						["x"] = 1,
					},
					["level_text_anchor"] = {
						["side"] = 5,
						["x"] = 1,
					},
					["spellpercent_text_outline"] = "NONE",
					["percent_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["level_text_font"] = "Accidental Presidency",
					["spellname_text_color"] = {
						0.95294117647059, -- [1]
						[3] = 0.9921568627451,
					},
					["only_names"] = false,
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["actorname_text_size"] = 11,
					["power_percent_text_font"] = "Accidental Presidency",
					["actorname_text_outline"] = "OUTLINE",
					["actorname_text_anchor"] = {
						["y"] = -3,
						["x"] = -1,
						["side"] = 1,
					},
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["spellpercent_text_enabled"] = true,
					["spellname_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["percent_text_font"] = "Accidental Presidency",
					["spellname_text_font"] = "Accidental Presidency",
					["percent_text_ooc"] = true,
					["percent_text_outline"] = "NONE",
					["actorname_text_font"] = "Accidental Presidency",
					["percent_text_enabled"] = true,
					["spellname_text_size"] = 9,
					["health_incombat"] = {
						nil, -- [1]
						12, -- [2]
					},
					["health"] = {
						120, -- [1]
					},
					["percent_show_health"] = true,
					["percent_text_size"] = 8,
					["level_text_alpha"] = 0.29999998211861,
					["big_actorname_text_font"] = "Accidental Presidency",
					["level_text_enabled"] = true,
				},
				["enemyplayer"] = {
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["spellpercent_text_font"] = "Accidental Presidency",
					["level_text_size"] = 8,
					["big_actortitle_text_font"] = "Accidental Presidency",
					["cast"] = {
						120, -- [1]
						8, -- [2]
					},
					["spellpercent_text_size"] = 9,
					["big_actortitle_text_size"] = 10,
					["spellpercent_text_anchor"] = {
						["side"] = 5,
						["x"] = 1,
					},
					["level_text_anchor"] = {
						["side"] = 5,
						["x"] = 1,
					},
					["spellpercent_text_outline"] = "NONE",
					["percent_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["level_text_font"] = "Accidental Presidency",
					["spellname_text_color"] = {
						0.95294117647059, -- [1]
						[3] = 0.9921568627451,
					},
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["mana_incombat"] = {
						120, -- [1]
						1, -- [2]
					},
					["big_actorname_text_font"] = "Accidental Presidency",
					["all_names"] = true,
					["actorname_text_outline"] = "OUTLINE",
					["level_text_alpha"] = 0.29999998211861,
					["percent_text_size"] = 8,
					["actorname_text_spacing"] = 10,
					["percent_text_font"] = "Accidental Presidency",
					["spellname_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["spellname_text_font"] = "Accidental Presidency",
					["quest_enabled"] = true,
					["actorname_text_font"] = "Accidental Presidency",
					["actorname_text_size"] = 11,
					["big_actorname_text_size"] = 10,
					["spellname_text_size"] = 9,
					["health"] = {
						120, -- [1]
					},
					["health_incombat"] = {
						nil, -- [1]
						12, -- [2]
					},
					["mana"] = {
						120, -- [1]
						1, -- [2]
					},
					["power_percent_text_font"] = "Accidental Presidency",
					["percent_text_outline"] = "NONE",
					["actorname_text_anchor"] = {
						["y"] = -3,
						["x"] = -1,
						["side"] = 1,
					},
				},
				["enemynpc"] = {
					["spellname_text_color"] = {
						0.95294117647059, -- [1]
						[3] = 0.9921568627451,
					},
					["spellpercent_text_font"] = "Accidental Presidency",
					["big_actortitle_text_font"] = "Accidental Presidency",
					["cast"] = {
						120, -- [1]
						8, -- [2]
					},
					["spellpercent_text_size"] = 9,
					["big_actorname_text_font"] = "Accidental Presidency",
					["level_text_alpha"] = 0.29999998211861,
					["actorname_text_outline"] = "OUTLINE",
					["actorname_text_anchor"] = {
						["y"] = -3,
						["x"] = -1,
						["side"] = 1,
					},
					["spellpercent_text_anchor"] = {
						["side"] = 5,
						["x"] = 1,
					},
					["percent_text_size"] = 8,
					["level_text_anchor"] = {
						["side"] = 5,
						["x"] = 1,
					},
					["percent_text_font"] = "Accidental Presidency",
					["spellname_text_font"] = "Accidental Presidency",
					["power_percent_text_font"] = "Accidental Presidency",
					["cast_incombat"] = {
						nil, -- [1]
						8, -- [2]
					},
					["spellname_text_outline"] = "NONE",
					["spellname_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["health_incombat"] = {
						nil, -- [1]
						14, -- [2]
					},
					["spellname_text_size"] = 9,
					["health"] = {
						120, -- [1]
						14, -- [2]
					},
					["spellpercent_text_outline"] = "NONE",
					["percent_text_outline"] = "NONE",
					["percent_text_anchor"] = {
						["y"] = 1,
						["side"] = 3,
					},
					["level_text_font"] = "Accidental Presidency",
					["actorname_text_font"] = "Accidental Presidency",
				},
			},
			["indicator_raidmark_anchor"] = {
				["x"] = -40,
			},
			["aura_y_offset"] = 15.9,
			["extra_icon_width"] = 22,
			["use_ui_parent"] = true,
			["aura_tracker"] = {
				["debuff"] = {
					224991, -- [1]
					277950, -- [2]
				},
				["debuff_banned"] = {
					[6788] = true,
				},
				["buff_tracked"] = {
					["280001"] = true,
				},
				["buff_banned"] = {
					["206150"] = true,
					["61574"] = true,
					["61573"] = true,
				},
			},
			["hook_auto_imported"] = {
				["Color Automation"] = 1,
				["Blockade Encounter"] = 1,
				["Cast Bar Icon Config"] = 1,
				["Hide Neutral Units"] = 1,
				["Execute Range"] = 1,
				["Reorder Nameplate"] = 4,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Bwonsamdi Reaping"] = 1,
				["Jaina Encounter"] = 6,
				["Attacking Specific Unit"] = 1,
				["Combo Points"] = 3,
				["Extra Border"] = 2,
				["Monk Statue"] = 2,
				["Target Color"] = 3,
				["Targetting Alpha"] = 3,
				["Aura Reorder"] = 2,
			},
			["castbar_target_show"] = true,
			["cast_statusbar_color_nointerrupt"] = {
				0.49411764705882, -- [1]
				0.49803921568628, -- [2]
				0.50196078431373, -- [3]
				0.96000000089407, -- [4]
			},
			["first_run2"] = true,
			["minor_width_scale"] = 0.9999999403953552,
			["health_animation_time_dilatation"] = 2.869999885559082,
			["npc_cache"] = {
				["125977"] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				["135472"] = {
					"Zanazal the Wise", -- [1]
					"Kings' Rest", -- [2]
				},
				["128967"] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				["137474"] = {
					"King Timalji", -- [1]
					"Kings' Rest", -- [2]
				},
				["126969"] = {
					"Trothak", -- [1]
					"Freehold", -- [2]
				},
				["132491"] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				["139269"] = {
					"Gloom Horror", -- [1]
					"Waycrest Manor", -- [2]
				},
				[152910] = {
					"Queen Azshara", -- [1]
					"The Eternal Palace", -- [2]
				},
				["131677"] = {
					"Heartsbane Runeweaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				["133432"] = {
					"Venture Co. Alchemist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["134174"] = {
					"Shadow-Borne Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				["135240"] = {
					"Soul Essence", -- [1]
					"Waycrest Manor", -- [2]
				},
				["139799"] = {
					"Ironhull Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["136549"] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				["137969"] = {
					"Interment Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				["135231"] = {
					"Spectral Brute", -- [1]
					"Kings' Rest", -- [2]
				},
				["129208"] = {
					"Dread Captain Lockwood", -- [1]
					"Siege of Boralus", -- [2]
				},
				["129552"] = {
					"Monzumi", -- [1]
					"Atal'Dazar", -- [2]
				},
				["134686"] = {
					"Mature Krolusk", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["136006"] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["129553"] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				["129227"] = {
					"Azerokk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["131864"] = {
					"Gorak Tul", -- [1]
					"Waycrest Manor", -- [2]
				},
				["135365"] = {
					"Matron Alma", -- [1]
					"Waycrest Manor", -- [2]
				},
				["134157"] = {
					"Shadow-Borne Warrior", -- [1]
					"Kings' Rest", -- [2]
				},
				["1860"] = {
					"Graz'krast", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["122973"] = {
					"Dazar'ai Confessor", -- [1]
					"Atal'Dazar", -- [2]
				},
				["131670"] = {
					"Heartsbane Vinetwister", -- [1]
					"Waycrest Manor", -- [2]
				},
				["137486"] = {
					"Queen Patlaa", -- [1]
					"Kings' Rest", -- [2]
				},
				["128652"] = {
					"Viq'Goth", -- [1]
					"Siege of Boralus", -- [2]
				},
				["134691"] = {
					"Static-charged Dervish", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["135169"] = {
					"Spirit Drain Totem", -- [1]
					"The Underrot", -- [2]
				},
				["136552"] = {
					"Kao-Tien Marauder", -- [1]
					"Atal'Dazar", -- [2]
				},
				["135329"] = {
					"Matron Bryndle", -- [1]
					"Waycrest Manor", -- [2]
				},
				["139425"] = {
					"Crazed Incubator", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["135552"] = {
					"Deathtouched Slaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				["130896"] = {
					"Blackout Barrel", -- [1]
					"Freehold", -- [2]
				},
				["136005"] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["139422"] = {
					"Scaled Krolusk Tamer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["129369"] = {
					"Irontide Raider", -- [1]
					"Siege of Boralus", -- [2]
				},
				["140447"] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				["134137"] = {
					"Temple Attendant", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["135263"] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				["131527"] = {
					"Lord Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				["127799"] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				["126023"] = {
					"Harbor Saurid", -- [1]
					"The Underrot", -- [2]
				},
				["133685"] = {
					"Befouled Spirit", -- [1]
					"The Underrot", -- [2]
				},
				["134390"] = {
					"Sand-crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["137989"] = {
					"Embalming Fluid", -- [1]
					"Kings' Rest", -- [2]
				},
				["131824"] = {
					"Sister Solena", -- [1]
					"Waycrest Manor", -- [2]
				},
				["131817"] = {
					"Cragmaw the Infested", -- [1]
					"The Underrot", -- [2]
				},
				["134990"] = {
					"Charged Dust Devil", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["131545"] = {
					"Lady Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				["132532"] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				["134144"] = {
					"Living Current", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["136295"] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["129372"] = {
					"Blacktar Bomber", -- [1]
					"Siege of Boralus", -- [2]
				},
				["132126"] = {
					"Gilded Priestess", -- [1]
					"Atal'Dazar", -- [2]
				},
				["137716"] = {
					"Bottom Feeder", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["137713"] = {
					"Big Money Crab", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["134063"] = {
					"Brother Ironhull", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["127111"] = {
					"Irontide Oarsman", -- [1]
					"Freehold", -- [2]
				},
				["125828"] = {
					"Zetapally", -- [1]
					"Atal'Dazar", -- [2]
				},
				["131402"] = {
					"Underrot Tick", -- [1]
					"The Underrot", -- [2]
				},
				["141283"] = {
					"Kul Tiran Halberd", -- [1]
					"Siege of Boralus", -- [2]
				},
				["144232"] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["129232"] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["129758"] = {
					"Irontide Grenadier", -- [1]
					"Freehold", -- [2]
				},
				["137511"] = {
					"Bilge Rat Cutthroat", -- [1]
					"Siege of Boralus", -- [2]
				},
				["135258"] = {
					"Irontide Marauder", -- [1]
					"Siege of Boralus", -- [2]
				},
				["134514"] = {
					"Abyssal Cultist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["131818"] = {
					"Marked Sister", -- [1]
					"Waycrest Manor", -- [2]
				},
				["135245"] = {
					"Bilge Rat Demolisher", -- [1]
					"Siege of Boralus", -- [2]
				},
				["132051"] = {
					"Blood Tick", -- [1]
					"The Underrot", -- [2]
				},
				["129548"] = {
					"Blacktooth Brute", -- [1]
					"Freehold", -- [2]
				},
				["137614"] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				["131819"] = {
					"Coven Diviner", -- [1]
					"Waycrest Manor", -- [2]
				},
				["126919"] = {
					"Irontide Stormcaller", -- [1]
					"Freehold", -- [2]
				},
				["129367"] = {
					"Bilge Rat Tempest", -- [1]
					"Siege of Boralus", -- [2]
				},
				["131685"] = {
					"Runic Disciple", -- [1]
					"Waycrest Manor", -- [2]
				},
				["136483"] = {
					"Ashvane Deckhand", -- [1]
					"Siege of Boralus", -- [2]
				},
				["137029"] = {
					"Ordnance Specialist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[153060] = {
					"Cyranus", -- [1]
					"The Eternal Palace", -- [2]
				},
				["135470"] = {
					"Aka'ali the Conqueror", -- [1]
					"Kings' Rest", -- [2]
				},
				["129550"] = {
					"Bilge Rat Padfoot", -- [1]
					"Freehold", -- [2]
				},
				["137517"] = {
					"Ashvane Destroyer", -- [1]
					"Siege of Boralus", -- [2]
				},
				["138063"] = {
					"Posh Vacationer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["132056"] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["129231"] = {
					"Rixxa Fluxflame", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["133963"] = {
					"Test Subject", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["136330"] = {
					"Soul Thorns", -- [1]
					"Waycrest Manor", -- [2]
				},
				["135049"] = {
					"Dreadwing Raven", -- [1]
					"Waycrest Manor", -- [2]
				},
				["130400"] = {
					"Irontide Crusher", -- [1]
					"Freehold", -- [2]
				},
				["130436"] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["142454"] = {
					"Ashtail Bandicoon", -- [1]
					"Freehold", -- [2]
				},
				["133663"] = {
					"Fanatical Headhunter", -- [1]
					"The Underrot", -- [2]
				},
				["129366"] = {
					"Bilge Rat Buccaneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				["129529"] = {
					"Blacktooth Scrapper", -- [1]
					"Freehold", -- [2]
				},
				["131587"] = {
					"Bewitched Captain", -- [1]
					"Waycrest Manor", -- [2]
				},
				[153064] = {
					"Overzealous Hulk", -- [1]
					"The Eternal Palace", -- [2]
				},
				["130522"] = {
					"Freehold Shipmate", -- [1]
					"Freehold", -- [2]
				},
				["138281"] = {
					"Faceless Corruptor", -- [1]
					"The Underrot", -- [2]
				},
				["136643"] = {
					"Azerite Extractor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["136976"] = {
					"T'zala", -- [1]
					"Kings' Rest", -- [2]
				},
				["138048"] = {
					"Training Dummy", -- [1]
					"Waycrest Manor", -- [2]
				},
				["129788"] = {
					"Irontide Bonesaw", -- [1]
					"Freehold", -- [2]
				},
				["137830"] = {
					"Pallid Gorger", -- [1]
					"Waycrest Manor", -- [2]
				},
				["128455"] = {
					"T'lonja", -- [1]
					"Atal'Dazar", -- [2]
				},
				["142199"] = {
					"Alpine Hawk", -- [1]
					"Freehold", -- [2]
				},
				["142587"] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				["129640"] = {
					"Snarling Dockhound", -- [1]
					"Siege of Boralus", -- [2]
				},
				["135975"] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["136186"] = {
					"Tidesage Spiritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["138493"] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				["130909"] = {
					"Fetid Maggot", -- [1]
					"The Underrot", -- [2]
				},
				["129602"] = {
					"Irontide Enforcer", -- [1]
					"Freehold", -- [2]
				},
				["134173"] = {
					"Animated Droplet", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["130661"] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["134284"] = {
					"Fallen Deathspeaker", -- [1]
					"The Underrot", -- [2]
				},
				["130653"] = {
					"Wanton Sapper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["137204"] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["122969"] = {
					"Zanchuli Witch-Doctor", -- [1]
					"Atal'Dazar", -- [2]
				},
				["134058"] = {
					"Galecaller Faye", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["122984"] = {
					"Dazar'ai Colossus", -- [1]
					"Atal'Dazar", -- [2]
				},
				["134417"] = {
					"Deepsea Ritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["135562"] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["137516"] = {
					"Ashvane Invader", -- [1]
					"Siege of Boralus", -- [2]
				},
				["131863"] = {
					"Raal the Gluttonous", -- [1]
					"Waycrest Manor", -- [2]
				},
				["129370"] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				["138489"] = {
					"Shadow of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				["131666"] = {
					"Coven Thornshaper", -- [1]
					"Waycrest Manor", -- [2]
				},
				["138254"] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				["141938"] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				["135971"] = {
					"Faithless Conscript", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["138019"] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				["136984"] = {
					"Reban", -- [1]
					"Kings' Rest", -- [2]
				},
				["130011"] = {
					"Irontide Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				["134005"] = {
					"Shalebiter", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["134418"] = {
					"Drowned Depthbringer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["131436"] = {
					"Chosen Blood Matron", -- [1]
					"The Underrot", -- [2]
				},
				["133836"] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				["137940"] = {
					"Safety Shark", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["134993"] = {
					"Mchimba the Embalmer", -- [1]
					"Kings' Rest", -- [2]
				},
				["134994"] = {
					"Spectral Headhunter", -- [1]
					"Kings' Rest", -- [2]
				},
				["136249"] = {
					"Guardian Elemental", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["127119"] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				["144286"] = {
					"Asset Manager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["127019"] = {
					"Training Dummy", -- [1]
					"Freehold", -- [2]
				},
				["137485"] = {
					"Bloodsworn Agent", -- [1]
					"Kings' Rest", -- [2]
				},
				["137484"] = {
					"King A'akul", -- [1]
					"Kings' Rest", -- [2]
				},
				["135234"] = {
					"Diseased Mastiff", -- [1]
					"Waycrest Manor", -- [2]
				},
				["127106"] = {
					"Irontide Officer", -- [1]
					"Freehold", -- [2]
				},
				["129600"] = {
					"Bilge Rat Brinescale", -- [1]
					"Freehold", -- [2]
				},
				["131009"] = {
					"Spirit of Gold", -- [1]
					"Atal'Dazar", -- [2]
				},
				["135764"] = {
					"Explosive Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				["136934"] = {
					"Weapons Tester", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["129699"] = {
					"Ludwig Von Tortollan", -- [1]
					"Freehold", -- [2]
				},
				["133944"] = {
					"Aspix", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["127315"] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				["136250"] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["137405"] = {
					"Gripping Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				["130485"] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["139110"] = {
					"Spark Channeler", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["134012"] = {
					"Taskmaster Askari", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["122967"] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
				},
				[153059] = {
					"Aethanel", -- [1]
					"The Eternal Palace", -- [2]
				},
				["136264"] = {
					"Half-Finished Mummy", -- [1]
					"Kings' Rest", -- [2]
				},
				["134616"] = {
					"Krolusk Pup", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["122971"] = {
					"Dazar'ai Juggernaut", -- [1]
					"Atal'Dazar", -- [2]
				},
				["136541"] = {
					"Bile Oozeling", -- [1]
					"Waycrest Manor", -- [2]
				},
				["139946"] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["135048"] = {
					"Gorestained Piglet", -- [1]
					"Waycrest Manor", -- [2]
				},
				["144231"] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["133436"] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["137487"] = {
					"Skeletal Hunting Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				["141282"] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[161895] = {
					"Thing From Beyond", -- [1]
					"The Eternal Palace", -- [2]
				},
				["129214"] = {
					"Coin-Operated Crowd Pummeler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["131492"] = {
					"Devout Blood Priest", -- [1]
					"The Underrot", -- [2]
				},
				["135903"] = {
					"Manifestation of the Deep", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["126983"] = {
					"Harlan Sweete", -- [1]
					"Freehold", -- [2]
				},
				["138061"] = {
					"Venture Co. Longshoreman", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["135241"] = {
					"Bilge Rat Pillager", -- [1]
					"Siege of Boralus", -- [2]
				},
				["134150"] = {
					"Runecarver Sorn", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["136391"] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["135204"] = {
					"Spectral Hex Priest", -- [1]
					"Kings' Rest", -- [2]
				},
				["133943"] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				["141565"] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				["139097"] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["135235"] = {
					"Spectral Beastmaster", -- [1]
					"Kings' Rest", -- [2]
				},
				["134828"] = {
					"Aqualing", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["136353"] = {
					"Colossal Tentacle", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["128969"] = {
					"Ashvane Commander", -- [1]
					"Siege of Boralus", -- [2]
				},
				["138464"] = {
					"Ashvane Deckhand", -- [1]
					"Siege of Boralus", -- [2]
				},
				["136214"] = {
					"Windspeaker Heldis", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["134739"] = {
					"Purification Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				["122972"] = {
					"Dazar'ai Augur", -- [1]
					"Atal'Dazar", -- [2]
				},
				["134331"] = {
					"King Rahu'ai", -- [1]
					"Kings' Rest", -- [2]
				},
				["135765"] = {
					"Torrent Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				["138064"] = {
					"Posh Vacationer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["133345"] = {
					"Feckless Assistant", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["137591"] = {
					"Healing Tide Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				["134232"] = {
					"Hired Assassin", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["127757"] = {
					"Reanimated Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				["134251"] = {
					"Seneschal M'bara", -- [1]
					"Kings' Rest", -- [2]
				},
				["130488"] = {
					"Mech Jockey", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["135846"] = {
					"Sand-Crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["134617"] = {
					"Krolusk Hatchling", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["138465"] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				["131847"] = {
					"Waycrest Reveler", -- [1]
					"Waycrest Manor", -- [2]
				},
				["137103"] = {
					"Blood Visage", -- [1]
					"The Underrot", -- [2]
				},
				["132713"] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["131585"] = {
					"Enthralled Guard", -- [1]
					"Waycrest Manor", -- [2]
				},
				["131667"] = {
					"Soulbound Goliath", -- [1]
					"Waycrest Manor", -- [2]
				},
				["130575"] = {
					"Wandering Axebeak", -- [1]
					"Atal'Dazar", -- [2]
				},
				["136297"] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["135239"] = {
					"Spectral Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				["129802"] = {
					"Earthrager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["136347"] = {
					"Tidesage Initiate", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["134364"] = {
					"Faithless Tender", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["136083"] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["133912"] = {
					"Bloodsworn Defiler", -- [1]
					"The Underrot", -- [2]
				},
				["122963"] = {
					"Rezan", -- [1]
					"Atal'Dazar", -- [2]
				},
				["130435"] = {
					"Addled Thug", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["133430"] = {
					"Venture Co. Mastermind", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["134991"] = {
					"Sandfury Stonefist", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["140038"] = {
					"Abyssal Eel", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["126848"] = {
					"Captain Eudora", -- [1]
					"Freehold", -- [2]
				},
				["138187"] = {
					"Grotesque Horror", -- [1]
					"The Underrot", -- [2]
				},
				["139800"] = {
					"Galecaller Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["129373"] = {
					"Dockhound Packmaster", -- [1]
					"Siege of Boralus", -- [2]
				},
				["135989"] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				["127124"] = {
					"Freehold Barhand", -- [1]
					"Freehold", -- [2]
				},
				["134423"] = {
					"Abyss Dweller", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["131669"] = {
					"Jagged Hound", -- [1]
					"Waycrest Manor", -- [2]
				},
				["130521"] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				["135322"] = {
					"The Golden Serpent", -- [1]
					"Kings' Rest", -- [2]
				},
				["133835"] = {
					"Feral Bloodswarmer", -- [1]
					"The Underrot", -- [2]
				},
				["129598"] = {
					"Freehold Pack Mule", -- [1]
					"Freehold", -- [2]
				},
				["132481"] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				["137473"] = {
					"Guard Captain Atu", -- [1]
					"Kings' Rest", -- [2]
				},
				["144071"] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				["137521"] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				["134041"] = {
					"Infected Peasant", -- [1]
					"Waycrest Manor", -- [2]
				},
				["128649"] = {
					"Sergeant Bainbridge", -- [1]
					"Siege of Boralus", -- [2]
				},
				["134069"] = {
					"Vol'zith the Whisperer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["134629"] = {
					"Scaled Krolusk Rider", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["135167"] = {
					"Spectral Berserker", -- [1]
					"Kings' Rest", -- [2]
				},
				["128435"] = {
					"Toxic Saurid", -- [1]
					"Atal'Dazar", -- [2]
				},
				["132530"] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				["129371"] = {
					"Riptide Shredder", -- [1]
					"Siege of Boralus", -- [2]
				},
				["127879"] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				["130437"] = {
					"Mine Rat", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["133361"] = {
					"Wasting Servant", -- [1]
					"Waycrest Manor", -- [2]
				},
				["134139"] = {
					"Shrine Templar", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["134599"] = {
					"Imbued Stormcaller", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[154240] = {
					"Azshara's Devoted", -- [1]
					"The Eternal Palace", -- [2]
				},
				["131849"] = {
					"Crazed Marksman", -- [1]
					"Waycrest Manor", -- [2]
				},
				["141495"] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				["129599"] = {
					"Cutwater Knife Juggler", -- [1]
					"Freehold", -- [2]
				},
				["136470"] = {
					"Refreshment Vendor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["131858"] = {
					"Thornguard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[153091] = {
					"Serena Scarscale", -- [1]
					"The Eternal Palace", -- [2]
				},
				["130024"] = {
					"Soggy Shiprat", -- [1]
					"Freehold", -- [2]
				},
				["136076"] = {
					"Agitated Nimbus", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["122986"] = {
					"Wild Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				["137625"] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				["133463"] = {
					"Venture Co. War Machine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["138255"] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				["128551"] = {
					"Irontide Mastiff", -- [1]
					"Freehold", -- [2]
				},
				["141566"] = {
					"Scrimshaw Gutter", -- [1]
					"Siege of Boralus", -- [2]
				},
				["131850"] = {
					"Maddened Survivalist", -- [1]
					"Waycrest Manor", -- [2]
				},
				["133007"] = {
					"Unbound Abomination", -- [1]
					"The Underrot", -- [2]
				},
				["131318"] = {
					"Elder Leaxa", -- [1]
					"The Underrot", -- [2]
				},
				["136139"] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["133593"] = {
					"Expert Technician", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["134060"] = {
					"Lord Stormsong", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["137626"] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				["133384"] = {
					"Merektha", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["141284"] = {
					"Kul Tiran Wavetender", -- [1]
					"Siege of Boralus", -- [2]
				},
				["141285"] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				["131825"] = {
					"Sister Briar", -- [1]
					"Waycrest Manor", -- [2]
				},
				[153092] = {
					"Venna Seastorm", -- [1]
					"The Eternal Palace", -- [2]
				},
				["130012"] = {
					"Irontide Ravager", -- [1]
					"Freehold", -- [2]
				},
				["138247"] = {
					"Irontide Marauder", -- [1]
					"Siege of Boralus", -- [2]
				},
				["137478"] = {
					"Queen Wasi", -- [1]
					"Kings' Rest", -- [2]
				},
				["129527"] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[153090] = {
					"Lady Venomtongue", -- [1]
					"The Eternal Palace", -- [2]
				},
				["133870"] = {
					"Diseased Lasher", -- [1]
					"The Underrot", -- [2]
				},
				["133852"] = {
					"Living Rot", -- [1]
					"The Underrot", -- [2]
				},
				["130489"] = {
					"Dazarian Stalker", -- [1]
					"Freehold", -- [2]
				},
				["139626"] = {
					"Dredged Sailor", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["129517"] = {
					"Reanimated Raptor", -- [1]
					"Atal'Dazar", -- [2]
				},
				["135475"] = {
					"Kula the Butcher", -- [1]
					"Kings' Rest", -- [2]
				},
				["131586"] = {
					"Banquet Steward", -- [1]
					"Waycrest Manor", -- [2]
				},
				["136160"] = {
					"King Dazar", -- [1]
					"Kings' Rest", -- [2]
				},
				["141939"] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				["129559"] = {
					"Cutwater Duelist", -- [1]
					"Freehold", -- [2]
				},
				["133379"] = {
					"Adderis", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["130635"] = {
					"Stonefury", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["122965"] = {
					"Vol'kaal", -- [1]
					"Atal'Dazar", -- [2]
				},
				[154565] = {
					"Loyal Myrmidon", -- [1]
					"The Eternal Palace", -- [2]
				},
				["126918"] = {
					"Irontide Crackshot", -- [1]
					"Freehold", -- [2]
				},
				["135406"] = {
					"Animated Gold", -- [1]
					"Kings' Rest", -- [2]
				},
				["137233"] = {
					"Plague Toad", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["131823"] = {
					"Sister Malady", -- [1]
					"Waycrest Manor", -- [2]
				},
				["134612"] = {
					"Grasping Tentacles", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["134701"] = {
					"Blood Effigy", -- [1]
					"The Underrot", -- [2]
				},
				["126928"] = {
					"Irontide Corsair", -- [1]
					"Freehold", -- [2]
				},
				["135192"] = {
					"Honored Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				["126847"] = {
					"Captain Raoul", -- [1]
					"Freehold", -- [2]
				},
				["135761"] = {
					"Thundering Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				["128651"] = {
					"Hadal Darkfathom", -- [1]
					"Siege of Boralus", -- [2]
				},
				["129526"] = {
					"Bilge Rat Swabby", -- [1]
					"Freehold", -- [2]
				},
				["128434"] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				["131383"] = {
					"Sporecaller Zancha", -- [1]
					"The Underrot", -- [2]
				},
				["130404"] = {
					"Vermin Trapper", -- [1]
					"Freehold", -- [2]
				},
				["134600"] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["135474"] = {
					"Thistle Acolyte", -- [1]
					"Waycrest Manor", -- [2]
				},
				["129547"] = {
					"Blacktooth Knuckleduster", -- [1]
					"Freehold", -- [2]
				},
				["135052"] = {
					"Blight Toad", -- [1]
					"Waycrest Manor", -- [2]
				},
				[155845] = {
					"Crushing Depths", -- [1]
					"The Eternal Palace", -- [2]
				},
				["134056"] = {
					"Aqu'sirr", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["135007"] = {
					"Orb Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["139949"] = {
					"Plague Doctor", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["138369"] = {
					"Footbomb Hooligan", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["138740"] = {
					"Musashitake", -- [1]
					"The Underrot", -- [2]
				},
				["122970"] = {
					"Shadowblade Stalker", -- [1]
					"Atal'Dazar", -- [2]
				},
				["134024"] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				["134338"] = {
					"Tidesage Enforcer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["133935"] = {
					"Animated Guardian", -- [1]
					"Kings' Rest", -- [2]
				},
				["133482"] = {
					"Crawler Mine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["122968"] = {
					"Yazma", -- [1]
					"Atal'Dazar", -- [2]
				},
				["134158"] = {
					"Shadow-Borne Champion", -- [1]
					"Kings' Rest", -- [2]
				},
			},
			["aura_frame1_anchor"] = {
				["y"] = 15.9,
				["side"] = 1,
			},
			["cast_statusbar_spark_offset"] = -13,
			["aura_grow_direction"] = 3,
			["extra_icon_height"] = 16,
			["health_selection_overlay_alpha"] = 0.2999999821186066,
			["indicator_rare"] = false,
			["aura_cooldown_reverse"] = false,
			["minor_height_scale"] = 0.9999999403953552,
			["color_override_colors"] = {
				[3] = {
					nil, -- [1]
					0.2784313, -- [2]
					0.2078431, -- [3]
				},
				[4] = {
					1, -- [1]
					0.83921568627451, -- [2]
					0, -- [3]
				},
				[5] = {
					0.29019607843137, -- [1]
					1, -- [2]
					0.19607843137255, -- [3]
				},
			},
			["not_affecting_combat_alpha"] = 0.799999,
			["aura_alpha"] = 0.84999996423721,
			["health_statusbar_texture"] = "Smooth v2",
			["cast_statusbar_bgtexture"] = "PlaterBackground",
			["news_frame"] = {
				["PlaterNewsFrame"] = {
					["scale"] = 1,
				},
			},
			["aura_height"] = 14,
			["cast_statusbar_spark_half"] = true,
			["aura_padding"] = 2,
			["target_highlight_alpha"] = 1,
			["aura2_x_offset"] = 0,
			["target_indicator"] = "NONE",
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
					["PlaterCore"] = 1,
					["Time"] = 1551825291,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["LastHookEdited"] = "Constructor",
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
					["Name"] = "Hide Neutral Units [Plater]",
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
					["Time"] = 1553450458,
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
					["Name"] = "Players Targeting a Target [Plater]",
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
						["affix"] = {
						},
						["role"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Time"] = 1551825362,
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
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
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
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["PlaterCore"] = 1,
					["Time"] = 1552354619,
					["Icon"] = 878211,
					["LastHookEdited"] = "",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 190,
					["HooksTemp"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
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
						["spec"] = {
							["103"] = true,
							["Enabled"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["PlaterCore"] = 1,
					["Time"] = 1551825317,
					["Icon"] = 135426,
					["LastHookEdited"] = "Constructor",
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
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["PlaterCore"] = 1,
					["Time"] = 1551825335,
					["Icon"] = 133689,
					["LastHookEdited"] = "Constructor",
				}, -- [6]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    local bf1Anchor = Plater.db.profile.aura_frame1_anchor\n    Plater.SetAnchor (buffFrame1, {side = bf1Anchor.side, x = bf1Anchor.x, y = bf1Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura_grow_direction or 2) == 2)\n    \n    local bf2Anchor = Plater.db.profile.aura_frame2_anchor\n    Plater.SetAnchor (buffFrame2, {side = bf2Anchor.side, x = bf2Anchor.x, y = bf2Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura2_grow_direction or 2) == 2)\n    \nend\n\n\n",
					},
					["Time"] = 1596791840,
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
					["url"] = "",
					["Icon"] = 574574,
					["Enabled"] = false,
					["Revision"] = 93,
					["semver"] = "",
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Name"] = "Reorder Nameplate [Plater]",
					["PlaterCore"] = 1,
					["version"] = -1,
					["HooksTemp"] = {
					},
					["Options"] = {
					},
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
						["affix"] = {
						},
						["role"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["PlaterCore"] = 1,
					["Time"] = 1551825317,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["LastHookEdited"] = "Constructor",
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
					["Name"] = "Advanced Execute Range",
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
					["Time"] = 1551825289,
					["Icon"] = 135358,
					["LastHookEdited"] = "Constructor",
				}, -- [9]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n    \n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        local horizontalLength = (-padding or 0)\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 1, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == 1) then\n                        auraIcon:SetPoint (\"bottomleft\", anchorPoint, \"bottomleft\", 0, 0)\n                    elseif (i % framersPerRow == 0) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding or 0)\n                        framersPerRow = framersPerRow + framersPerRow\n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                    horizontalLength = horizontalLength + auraIcon:GetWidth() + padding\n                end\n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 1, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == 1) then\n                        auraIcon:SetPoint (\"bottomright\", anchorPoint, \"bottomright\", 0, 0)\n                    elseif (i % framersPerRow == 0) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding or 0)\n                        framersPerRow = framersPerRow + framersPerRow\n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                    horizontalLength = horizontalLength + auraIcon:GetWidth() + padding\n                end                    \n            end\n            \n            --set the size of the buff frame\n            anchorPoint:SetWidth (horizontalLength)\n            anchorPoint:SetHeight (firstIcon:GetHeight())\n            \n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 2\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
					},
					["Time"] = 1596741775,
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
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Enabled"] = false,
					["Revision"] = 295,
					["semver"] = "",
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Name"] = "Aura Reorder [Plater]",
					["PlaterCore"] = 1,
					["version"] = -1,
					["HooksTemp"] = {
					},
					["Options"] = {
					},
				}, -- [10]
				{
					["Enabled"] = false,
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
						["race"] = {
						},
						["encounter_ids"] = {
							["1"] = 2281,
							["Enabled"] = true,
						},
						["affix"] = {
						},
					},
					["PlaterCore"] = 1,
					["Time"] = 1551894760,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["LastHookEdited"] = "Constructor",
				}, -- [11]
				{
					["Enabled"] = false,
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
					["Name"] = "Stormwall Encounter [Plater]",
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
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
							["1"] = 2280,
							["Enabled"] = true,
						},
						["affix"] = {
						},
					},
					["Time"] = 1551887545,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["LastHookEdited"] = "Constructor",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 58,
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
					["PlaterCore"] = 1,
					["Time"] = 1552962607,
					["Icon"] = 133006,
					["LastHookEdited"] = "Constructor",
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
						["affix"] = {
						},
						["role"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["PlaterCore"] = 1,
					["Time"] = 1551825334,
					["Icon"] = 136207,
					["LastHookEdited"] = "Constructor",
				}, -- [14]
				{
					["Enabled"] = false,
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
							["Enabled"] = true,
							["117"] = true,
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Time"] = 1579030189,
					["LastHookEdited"] = "Constructor",
					["Icon"] = 2446016,
					["PlaterCore"] = 1,
				}, -- [15]
				{
					["Enabled"] = false,
					["Revision"] = 35,
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
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["PlaterCore"] = 1,
					["Time"] = 1553450703,
					["Icon"] = 413580,
					["LastHookEdited"] = "Constructor",
				}, -- [16]
				{
					["Enabled"] = false,
					["Revision"] = 43,
					["HooksTemp"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.CheckIfCanShowNameplate (unitFrame)\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.CheckIfCanShowNameplate (unitFrame)\n    \nend\n\n\n",
						["Zone Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.CheckIfCanShowNameplate (unitFrame)\n    \nend\n\n\n",
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.CheckIfCanShowNameplate (unitFrame)\n    \nend\n\n\n",
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
					["PlaterCore"] = 1,
					["Time"] = 1551825361,
					["Icon"] = 135473,
					["LastHookEdited"] = "Constructor",
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
					["Time"] = 1553450716,
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
					["Time"] = 1553450705,
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
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["Name"] = "Npc Colors Tag",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\radio_64",
					["LastHookEdited"] = "Constructor",
				}, -- [19]
				{
					["Enabled"] = true,
					["Revision"] = 42,
					["LastHookEdited"] = "Constructor",
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Change the color of the aura timer by it's time left",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auras = unitFrame.BuffFrame.PlaterBuffList\n    \n    for _, auraIcon in ipairs (auras) do\n        if (auraIcon:IsVisible()) then\n            if (auraIcon.RemainingTime < envTable.Timers.critical) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.critical)\n                \n            elseif (auraIcon.RemainingTime < envTable.Timers.warning) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.warning)\n                \n            else\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.okay)\n            end \n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --colors for each time bracket\n    envTable.Colors = {\n        critical = \"red\",\n        warning = \"yellow\",\n        okay = \"white\",\n    }\n    \n    --time amount to enter in warning or critical state\n    envTable.Timers = {\n        critical = 4.9,\n        warning = 8,\n    }\n    \nend\n\n\n",
					},
					["Prio"] = 99,
					["Time"] = 1579030177,
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
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --colors for each time bracket\n    envTable.Colors = {\n        critical = \"red\",\n        warning = \"yellow\",\n        okay = \"white\",\n    }\n    \n    --time amount to enter in warning or critical state\n    envTable.Timers = {\n        critical = 4.9,\n        warning = 8,\n    }\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auras = unitFrame.BuffFrame.PlaterBuffList\n    \n    for _, auraIcon in ipairs (auras) do\n        if (auraIcon:IsVisible()) then\n            if (auraIcon.RemainingTime < envTable.Timers.critical) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.critical)\n                \n            elseif (auraIcon.RemainingTime < envTable.Timers.warning) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.warning)\n                \n            else\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.okay)\n            end \n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Name"] = "Paint Aura Timers",
					["Icon"] = "Interface\\Timer\\Challenges-Logo",
					["PlaterCore"] = 1,
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
					["PlaterCore"] = 1,
					["Time"] = 1553450719,
					["Icon"] = 133006,
					["LastHookEdited"] = "Nameplate Updated",
				}, -- [21]
				{
					["Enabled"] = false,
					["Revision"] = 35,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIndicator (unitFrame, unitId)\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIndicator (unitFrame, unitId)\n    \nend\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    function envTable.UpdateIndicator (unitFrame, unitId)\n        local unitClassification = UnitClassification (unitId)\n        local unitName = UnitName (unitId)\n        unitName = unitName or UNKNOWN\n        \n        if (unitClassification == \"rareelite\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\AddOns\\\\Plater\\\\media\\\\star_full_64:12:12:0:0:64:64:0:64:0:64|t\" .. \"|TInterface\\\\GLUES\\\\CharacterSelect\\\\Glues-AddOn-Icons:12:12:0:0:64:16:48:64:0:16|t \" .. unitName)\n            \n        elseif (unitClassification == \"rare\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\AddOns\\\\Plater\\\\media\\\\star_full_64:12:12:0:0:64:64:0:64:0:64|t\" .. unitName)\n            \n        elseif (unitClassification == \"elite\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\GLUES\\\\CharacterSelect\\\\Glues-AddOn-Icons:12:12:0:0:64:16:48:64:0:16|t\" .. unitName)\n            \n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Author"] = "�r��ne-Kel'thuzad",
					["Desc"] = "Show yellow star for elite; Silver star for rares",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIndicator (unitFrame, unitId)\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIndicator (unitFrame, unitId)\n    \nend\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    function envTable.UpdateIndicator (unitFrame, unitId)\n        local unitClassification = UnitClassification (unitId)\n        local unitName = UnitName (unitId)\n        unitName = unitName or UNKNOWN\n        \n        if (unitClassification == \"rareelite\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\AddOns\\\\Plater\\\\media\\\\star_full_64:12:12:0:0:64:64:0:64:0:64|t\" .. \"|TInterface\\\\GLUES\\\\CharacterSelect\\\\Glues-AddOn-Icons:12:12:0:0:64:16:48:64:0:16|t \" .. unitName)\n            \n        elseif (unitClassification == \"rare\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\AddOns\\\\Plater\\\\media\\\\star_full_64:12:12:0:0:64:64:0:64:0:64|t\" .. unitName)\n            \n        elseif (unitClassification == \"elite\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\GLUES\\\\CharacterSelect\\\\Glues-AddOn-Icons:12:12:0:0:64:16:48:64:0:16|t\" .. unitName)\n            \n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Name"] = "Rarity in the Name",
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
					["PlaterCore"] = 1,
					["Time"] = 1551825364,
					["Icon"] = "Interface\\AddOns\\Plater\\media\\star_full_64",
					["LastHookEdited"] = "Constructor",
				}, -- [22]
				{
					["Enabled"] = true,
					["Revision"] = 65,
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
					["Prio"] = 99,
					["Time"] = 1579030500,
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
					["Name"] = "Aggro Indicator",
					["Icon"] = 132344,
					["LastHookEdited"] = "Constructor",
				}, -- [23]
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
					["Name"] = "Change All Fonts",
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
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["Time"] = 1551825316,
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
					["PlaterCore"] = 1,
					["Time"] = 1553450521,
					["Icon"] = 1375677,
					["LastHookEdited"] = "Constructor",
				}, -- [25]
				{
					["Enabled"] = true,
					["Revision"] = 131,
					["LastHookEdited"] = "Constructor",
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Move the icon of the spell cast to the left or right side of the nameplate.",
					["Hooks"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    --show cast icon\n    envTable.ShowIcon = true\n    --anchor icon on what side\n    envTable.IconAnchor = \"left\" --accep 'left' 'right'\n    --fine tune the size of the icon\n    envTable.IconSizeOffset = 1\n    \n    --shield for non interruptible casts\n    envTable.ShowShield = false\n    envTable.ShieldTexture = [[Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON]]\n    envTable.ShieldDesaturated = true\n    envTable.ShieldColor = {1, 1, 1 ,1}\n    envTable.ShieldSize = {10, 12}\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local shield = castBar.BorderShield\n        \n        if (envTable.ShowIcon) then\n            icon:ClearAllPoints()\n            \n            if (envTable.IconAnchor == \"left\") then\n                icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -1, 0)    \n                \n            elseif (envTable.IconAnchor == \"right\") then\n                icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", 1, 0)\n                \n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n            \n        else\n            icon:Hide()\n            \n        end\n        \n        if (envTable.ShowShield and not castBar.canInterrupt) then\n            shield:Show()\n            shield:SetAlpha (1)\n            shield:SetTexCoord (0, 1, 0, 1)\n            shield:SetVertexColor (1, 1, 1, 1)\n            \n            shield:SetTexture (envTable.ShieldTexture)\n            shield:SetDesaturated (envTable.ShieldDesaturated)\n            \n            if (not envTable.ShieldDesaturated) then\n                shield:SetVertexColor (DetailsFramework:ParseColors (envTable.ShieldColor))\n            end\n            \n            shield:SetSize (unpack (envTable.ShieldSize))\n            \n            shield:ClearAllPoints()\n            shield:SetPoint (\"center\", castBar, \"left\", 0, 0)\n            \n        else\n            shield:Hide()\n            \n        end\n        \n    end\nend",
					},
					["Prio"] = 99,
					["Time"] = 1579035896,
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
					["HooksTemp"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    --show cast icon\n    envTable.ShowIcon = true\n    --anchor icon on what side\n    envTable.IconAnchor = \"left\" --accep 'left' 'right'\n    --fine tune the size of the icon\n    envTable.IconSizeOffset = 1\n    \n    --shield for non interruptible casts\n    envTable.ShowShield = false\n    envTable.ShieldTexture = [[Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON]]\n    envTable.ShieldDesaturated = true\n    envTable.ShieldColor = {1, 1, 1 ,1}\n    envTable.ShieldSize = {10, 12}\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local shield = castBar.BorderShield\n        \n        if (envTable.ShowIcon) then\n            icon:ClearAllPoints()\n            \n            if (envTable.IconAnchor == \"left\") then\n                icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -1, 0)    \n                \n            elseif (envTable.IconAnchor == \"right\") then\n                icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", 1, 0)\n                \n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n            \n        else\n            icon:Hide()\n            \n        end\n        \n        if (envTable.ShowShield and not castBar.canInterrupt) then\n            shield:Show()\n            shield:SetAlpha (1)\n            shield:SetTexCoord (0, 1, 0, 1)\n            shield:SetVertexColor (1, 1, 1, 1)\n            \n            shield:SetTexture (envTable.ShieldTexture)\n            shield:SetDesaturated (envTable.ShieldDesaturated)\n            \n            if (not envTable.ShieldDesaturated) then\n                shield:SetVertexColor (DetailsFramework:ParseColors (envTable.ShieldColor))\n            end\n            \n            shield:SetSize (unpack (envTable.ShieldSize))\n            \n            shield:ClearAllPoints()\n            shield:SetPoint (\"center\", castBar, \"left\", 0, 0)\n            \n        else\n            shield:Hide()\n            \n        end\n        \n    end\nend",
					},
					["Name"] = "Cast Icon Anchor",
					["Icon"] = "Interface\\Buttons\\UI-Quickslot2",
					["PlaterCore"] = 1,
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
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BuildFrames (unitFrame)\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.castBar.IconOverlayFrame) then\n        unitFrame.castBar.IconOverlayFrame:Hide()\n    end\n    \nend\n\n\n\n\n",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BuildFrames (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.AnchorSide = \"left\"\n    envTable.BorderThickness = 1\n    envTable.BorderColor = \"black\"\n    \n    --private\n    function envTable.BuildFrames (unitFrame)\n        local castBar = unitFrame.castBar\n        \n        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\n        castBar.IconBorder:SetVertexColor (r, g, b, a)\n        \n        local size = envTable.BorderThickness\n        castBar.IconBorder:SetBorderSizes (size, size, size, size)\n        castBar.IconBorder:UpdateSizes()\n        \n        local icon = castBar.Icon\n        if (envTable.AnchorSide == \"left\") then\n            icon:ClearAllPoints()\n            icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, 0)\n            icon:SetPoint (\"bottomright\", castBar, \"bottomleft\", -1, 0)\n            icon:SetWidth (icon:GetHeight())\n            \n        elseif (envTable.AnchorSide == \"right\") then\n            icon:ClearAllPoints()\n            icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, 0)\n            icon:SetPoint (\"bottomleft\", castBar, \"bottomright\", 1, 0)\n            icon:SetWidth (icon:GetHeight())\n            \n        end\n        \n        icon:Show()\n        castBar.IconOverlayFrame:Show()\n    end\n    \n    if (not unitFrame.castBar.IconOverlayFrame) then\n        --icon support frame\n        unitFrame.castBar.IconOverlayFrame = CreateFrame (\"frame\", nil, unitFrame.castBar)\n        unitFrame.castBar.IconOverlayFrame:SetPoint (\"topleft\", unitFrame.castBar.Icon, \"topleft\")\n        unitFrame.castBar.IconOverlayFrame:SetPoint (\"bottomright\", unitFrame.castBar.Icon, \"bottomright\")\n        \n        unitFrame.castBar.IconBorder = CreateFrame (\"frame\", nil,  unitFrame.castBar.IconOverlayFrame, \"NamePlateFullBorderTemplate\")\n    end    \n    \nend\n\n\n\n\n",
					},
					["Prio"] = 99,
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
					["Time"] = 1579031533,
					["LastHookEdited"] = "Constructor",
					["Icon"] = 133004,
					["PlaterCore"] = 1,
				}, -- [27]
				{
					["Enabled"] = true,
					["Revision"] = 85,
					["LastHookEdited"] = "Constructor",
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
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["HooksTemp"] = {
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder:Hide()\n    end    \nend",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    \n    --hide the icon of the spell, may require /reload after changing\n    envTable.HideIcon = false\n    \n    --border settings\n    envTable.BorderThickness = 1\n    envTable.BorderColor = \"black\"\n    \n    --private\n    --create the border\n    if (not unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder = CreateFrame (\"frame\", nil, unitFrame.castBar, \"NamePlateFullBorderTemplate\")\n    end    \n    \n    --update the border\n    function envTable.UpdateBorder (unitFrame)\n        local castBar = unitFrame.castBar\n        \n        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\n        castBar.CastBarBorder:SetVertexColor (r, g, b, a)\n        \n        local size = envTable.BorderThickness\n        castBar.CastBarBorder:SetBorderSizes (size, size, size, size)\n        castBar.CastBarBorder:UpdateSizes()        \n        \n        if (envTable.HideIcon) then\n            castBar.Icon:Hide()\n        end\n        \n        castBar.CastBarBorder:Show()\n    end\n    \nend\n\n\n\n\n",
					},
					["Name"] = "Cast Bar Border",
					["Icon"] = 133004,
					["PlaterCore"] = 1,
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
						["race"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["role"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["PlaterCore"] = 1,
					["Time"] = 1551894761,
					["Icon"] = 609811,
					["LastHookEdited"] = "Constructor",
				}, -- [29]
				{
					["Enabled"] = true,
					["Revision"] = 81,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --    if false then return end\n    \n    for _, iconFrame in ipairs (unitFrame.ExtraIconFrame.IconPool) do\n        \n        unitFrame.ExtraIconFrame.options.show_text = true\n        \n        local profile = Plater.db.profile\n        \n        Plater.SetAnchor (iconFrame.CountdownText, profile.aura_timer_text_anchor)\n        Plater:SetFontSize (iconFrame.CountdownText, profile.aura_timer_text_size)\n        Plater:SetFontFace (iconFrame.CountdownText, profile.aura_timer_text_font)\n        \n        Plater.SetFontOutlineAndShadow (iconFrame.CountdownText, profile.aura_timer_text_outline, profile.aura_timer_text_shadow_color, profile.aura_timer_text_shadow_color_offset[1], profile.aura_timer_text_shadow_color_offset[2])\n        \n        iconFrame.Cooldown:SetEdgeTexture (profile.aura_cooldown_edge_texture)\n        iconFrame.Cooldown:SetReverse (profile.aura_cooldown_reverse)\n        iconFrame.Cooldown:SetDrawSwipe (profile.aura_cooldown_show_swipe)        \n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    \nend\n\n\n",
					},
					["Author"] = "?????-Illidan",
					["Desc"] = "Format Buff Special icons like the regular aura icons.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --    if false then return end\n    \n    for _, iconFrame in ipairs (unitFrame.ExtraIconFrame.IconPool) do\n        \n        unitFrame.ExtraIconFrame.options.show_text = true\n        \n        local profile = Plater.db.profile\n        \n        Plater.SetAnchor (iconFrame.CountdownText, profile.aura_timer_text_anchor)\n        Plater:SetFontSize (iconFrame.CountdownText, profile.aura_timer_text_size)\n        Plater:SetFontFace (iconFrame.CountdownText, profile.aura_timer_text_font)\n        \n        Plater.SetFontOutlineAndShadow (iconFrame.CountdownText, profile.aura_timer_text_outline, profile.aura_timer_text_shadow_color, profile.aura_timer_text_shadow_color_offset[1], profile.aura_timer_text_shadow_color_offset[2])\n        \n        iconFrame.Cooldown:SetEdgeTexture (profile.aura_cooldown_edge_texture)\n        iconFrame.Cooldown:SetReverse (profile.aura_cooldown_reverse)\n        iconFrame.Cooldown:SetDrawSwipe (profile.aura_cooldown_show_swipe)        \n        \n    end\n    \nend",
					},
					["Name"] = "Buff Special Mod",
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
					["PlaterCore"] = 1,
					["Time"] = 1552962644,
					["Icon"] = 136139,
					["LastHookEdited"] = "Nameplate Updated",
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
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["PlaterCore"] = 1,
					["Time"] = 1551887544,
					["Icon"] = "Interface\\AddOns\\Plater\\media\\arrow_right_64",
					["LastHookEdited"] = "Player Talent Update",
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
					["Time"] = 1551894756,
					["Icon"] = 237377,
					["LastHookEdited"] = "Target Changed",
				}, -- [32]
				{
					["Enabled"] = true,
					["Revision"] = 22,
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
					["Time"] = 1579035959,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\spark6",
					["LastHookEdited"] = "Cast Update",
				}, -- [33]
				{
					["Enabled"] = true,
					["Revision"] = 69,
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --power bar options:\n    \n    --for which units it should\n    envTable.ShowForEnemyPlayers = true\n    envTable.ShowForEnemyNpcs = false\n    \n    --specific npcs, can be the npc name or npcId\n    --this list work even if the ShowForEnemyNpcs is false\n    envTable.SpecificNpcs = {\n        [\"the rock\"] = true, --npc name\n        [225] = true, --npcId\n    }\n    \n    --anchor the power bar to\n    envTable.Anchor = {\n        side = 13, --inside the healthbar, bottom side\n        x = 0, \n        y = 0,\n    }\n    \n    --power bar height\n    envTable.Height = 1\n    \n    --power bar percent text\n    envTable.PercentTextEnabled = false\n    envTable.PercentTextAnchor = {\n        side = 7, --top right\n        x = 2, \n        y = 0,\n    }\n    \n    \n    --private\n    function envTable.ShowPowerbar (unitFrame)\n        unitFrame.powerBar:SetUnit (unitFrame.unit)\n        envTable.UpdatePowerbar (unitFrame)\n    end\n    \n    function envTable.UpdatePowerbar (unitFrame)\n        local powerBar = unitFrame.powerBar\n        Plater.SetAnchor (powerBar, envTable.Anchor, unitFrame.healthBar)\n        powerBar:SetSize (unitFrame.healthBar:GetWidth(), envTable.Height)\n        \n        envTable.SavePowerBarSize (unitFrame, envTable.Height)\n        \n        if (envTable.PercentTextEnabled) then\n            powerBar.percentText:Show()\n            --copy the font from the health percent\n            Plater:SetFontFace (powerBar.percentText, Plater.GetConfig (unitFrame).percent_text_font)\n            Plater:SetFontSize (powerBar.percentText, Plater.GetConfig (unitFrame).percent_text_size)\n            Plater.SetAnchor (powerBar.percentText, envTable.PercentTextAnchor)\n        else\n            powerBar.percentText:Hide()\n        end\n    end\n    \n    function envTable.CanShowPowerBarForUnit (unitFrame)\n        --check if the is in the special list to force show\n        local forceShowPowerBar = envTable.SpecificNpcs [unitFrame.namePlateNpcId] or envTable.SpecificNpcs [unitFrame.namePlateUnitName] or envTable.SpecificNpcs [unitFrame.namePlateUnitNameLower]\n        if (forceShowPowerBar) then\n            envTable.ShowPowerbar (unitFrame)\n            \n            --check if the unit is a enemy player\n        elseif (unitFrame.ActorType == \"enemyplayer\") then\n            if (envTable.ShowForEnemyPlayers) then\n                envTable.ShowPowerbar (unitFrame)\n            end\n            \n            --check if the unit is a enemy npc\n        elseif (unitFrame.ActorType == \"enemynpc\") then\n            if (envTable.ShowForEnemyNpcs) then\n                envTable.ShowPowerbar (unitFrame)\n            end\n        end\n    end\n    \n    function envTable.SavePowerBarSize (unitFrame, height)\n        local plateConfigs = Plater.db.profile.plate_config [unitFrame.ActorType]\n        plateConfigs.mana[1] = plateConfigs.health[1]\n        plateConfigs.mana[2] = height\n        plateConfigs.mana_incombat[1] = plateConfigs.health_incombat[1]\n        plateConfigs.mana_incombat[2] = height\n    end\nend\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShowPowerBarForUnit (unitFrame)    \nend",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show power bar for some units.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --power bar options:\n    \n    --for which units it should\n    envTable.ShowForEnemyPlayers = true\n    envTable.ShowForEnemyNpcs = false\n    \n    --specific npcs, can be the npc name or npcId\n    --this list work even if the ShowForEnemyNpcs is false\n    envTable.SpecificNpcs = {\n        [\"the rock\"] = true, --npc name\n        [225] = true, --npcId\n    }\n    \n    --anchor the power bar to\n    envTable.Anchor = {\n        side = 13, --inside the healthbar, bottom side\n        x = 0, \n        y = 0,\n    }\n    \n    --power bar height\n    envTable.Height = 1\n    \n    --power bar percent text\n    envTable.PercentTextEnabled = false\n    envTable.PercentTextAnchor = {\n        side = 7, --top right\n        x = 2, \n        y = 0,\n    }\n    \n    \n    --private\n    function envTable.ShowPowerbar (unitFrame)\n        unitFrame.powerBar:SetUnit (unitFrame.unit)\n        envTable.UpdatePowerbar (unitFrame)\n    end\n    \n    function envTable.UpdatePowerbar (unitFrame)\n        local powerBar = unitFrame.powerBar\n        Plater.SetAnchor (powerBar, envTable.Anchor, unitFrame.healthBar)\n        powerBar:SetSize (unitFrame.healthBar:GetWidth(), envTable.Height)\n        \n        envTable.SavePowerBarSize (unitFrame, envTable.Height)\n        \n        if (envTable.PercentTextEnabled) then\n            powerBar.percentText:Show()\n            --copy the font from the health percent\n            Plater:SetFontFace (powerBar.percentText, Plater.GetConfig (unitFrame).percent_text_font)\n            Plater:SetFontSize (powerBar.percentText, Plater.GetConfig (unitFrame).percent_text_size)\n            Plater.SetAnchor (powerBar.percentText, envTable.PercentTextAnchor)\n        else\n            powerBar.percentText:Hide()\n        end\n    end\n    \n    function envTable.CanShowPowerBarForUnit (unitFrame)\n        --check if the is in the special list to force show\n        local forceShowPowerBar = envTable.SpecificNpcs [unitFrame.namePlateNpcId] or envTable.SpecificNpcs [unitFrame.namePlateUnitName] or envTable.SpecificNpcs [unitFrame.namePlateUnitNameLower]\n        if (forceShowPowerBar) then\n            envTable.ShowPowerbar (unitFrame)\n            \n            --check if the unit is a enemy player\n        elseif (unitFrame.ActorType == \"enemyplayer\") then\n            if (envTable.ShowForEnemyPlayers) then\n                envTable.ShowPowerbar (unitFrame)\n            end\n            \n            --check if the unit is a enemy npc\n        elseif (unitFrame.ActorType == \"enemynpc\") then\n            if (envTable.ShowForEnemyNpcs) then\n                envTable.ShowPowerbar (unitFrame)\n            end\n        end\n    end\n    \n    function envTable.SavePowerBarSize (unitFrame, height)\n        local plateConfigs = Plater.db.profile.plate_config [unitFrame.ActorType]\n        plateConfigs.mana[1] = plateConfigs.health[1]\n        plateConfigs.mana[2] = height\n        plateConfigs.mana_incombat[1] = plateConfigs.health_incombat[1]\n        plateConfigs.mana_incombat[2] = height\n    end\nend\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShowPowerBarForUnit (unitFrame)    \nend",
					},
					["Prio"] = 99,
					["Name"] = "Power Bar",
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
					["Time"] = 1579030177,
					["LastHookEdited"] = "Constructor",
					["Icon"] = "Interface/Addons/Plater/Media/fire_64",
					["PlaterCore"] = 1,
				}, -- [34]
				{
					["Enabled"] = false,
					["Revision"] = 250,
					["Options"] = {
						{
							["Type"] = 5,
							["Key"] = "option4",
							["Value"] = "Icon Settings:",
							["Name"] = "Icon Settings",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 4,
							["Key"] = "showIcon",
							["Value"] = true,
							["Name"] = "Show Icon",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show the castbar icon when enabled",
						}, -- [2]
						{
							["Type"] = 4,
							["Key"] = "iconOnLeftSide",
							["Value"] = true,
							["Name"] = "Icon on Left Side",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled it anchor the icon on the left side, right otherwise",
						}, -- [3]
						{
							["Type"] = 4,
							["Name"] = "Use Big Icon",
							["Value"] = false,
							["Key"] = "useFullSize",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled the icon has the size of the cast bar plus the healthbar",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 5,
							["Desc"] = "Fine tune the icon size",
							["Min"] = 0,
							["Name"] = "Icon Size Offset",
							["Value"] = 0,
							["Key"] = "iconSizeOffset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 5,
							["Desc"] = "Space between the icon and the cast bar",
							["Min"] = -5,
							["Key"] = "iconPadding",
							["Value"] = 0,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Icon Padding",
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option6",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 5,
							["Key"] = "option5",
							["Value"] = "Can't Interrupt Texture:",
							["Name"] = "Interrupt Texture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 4,
							["Key"] = "showTexture",
							["Value"] = true,
							["Name"] = "Show Texture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled show a texture to tell the cast can't be interrupted",
						}, -- [9]
						{
							["Type"] = 3,
							["Key"] = "iconTexturePath",
							["Value"] = "Interface\\\\GROUPFRAME\\\\UI-GROUP-MAINTANKICON",
							["Name"] = "Texture Path",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_text",
							["Desc"] = "Insert the path for the texture",
						}, -- [10]
						{
							["Type"] = 4,
							["Key"] = "desaturatedTexture",
							["Value"] = true,
							["Name"] = "Texture Desaturated",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enbaled, texture is shown in black & white",
						}, -- [11]
						{
							["Type"] = 1,
							["Key"] = "textureColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.3056715726852417, -- [4]
							},
							["Name"] = "Texture Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Select the color of the texture",
						}, -- [12]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Adjust the texture width",
							["Min"] = 1,
							["Name"] = "Texture Width",
							["Value"] = 10,
							["Key"] = "textureWidth",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [13]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Adjust the texture height",
							["Min"] = 1,
							["Key"] = "textureHeight",
							["Value"] = 12,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Texture Height",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Adjust the texture position",
							["Min"] = -32,
							["Name"] = "Texture Position",
							["Value"] = 0,
							["Key"] = "texturePosition",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Adjust the texture transparency",
							["Min"] = 0,
							["Fraction"] = true,
							["Value"] = 1,
							["Name"] = "Texture Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "textureAlpha",
						}, -- [16]
					},
					["HooksTemp"] = {
					},
					["Time"] = 1596670932,
					["Author"] = "Ditador-Azralon",
					["Name"] = "Cast Bar Icon Settings [P]",
					["Desc"] = "Move the icon of the spell cast to the left or right side of the nameplate.",
					["Hooks"] = {
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    unitFrame.castBar.BorderShield:SetDrawLayer(\"artwork\")\n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable, modTable)\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local noInterruptTexture = castBar.BorderShield\n        \n        if (modTable.config.showIcon) then\n            icon:ClearAllPoints()\n            \n            if (modTable.config.iconOnLeftSide) then\n                if (modTable.config.useFullSize) then\n                    icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -modTable.config.iconPadding, 0)\n                else\n                    icon:SetPoint (\"topright\", unitFrame.castBar, \"topleft\", -1, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -modTable.config.iconPadding, 0)\n                end\n            else\n                if (modTable.config.useFullSize) then\n                    icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, 0)\n                else\n                    icon:SetPoint (\"topleft\", unitFrame.castBar, \"topright\", 1, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, 0)\n                end\n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n        else\n            icon:Hide()\n        end\n        \n        if (modTable.config.showTexture and not castBar.canInterrupt) then\n            noInterruptTexture:Show()\n            noInterruptTexture:SetTexture (modTable.config.iconTexturePath)\n            noInterruptTexture:SetTexCoord (0, 1, 0, 1)\n            noInterruptTexture:SetVertexColor (1, 1, 1, 1)            \n            \n            if (modTable.config.desaturatedTexture) then\n                noInterruptTexture:SetDesaturated (modTable.config.desaturatedTexture)\n            else\n                noInterruptTexture:SetVertexColor (DetailsFramework:ParseColors (modTable.config.textureColor))\n            end\n            \n            noInterruptTexture:SetSize (modTable.config.textureWidth, modTable.config.textureHeight)\n            noInterruptTexture:ClearAllPoints()\n            noInterruptTexture:SetPoint (\"center\", castBar, \"left\", modTable.config.texturePosition, 0)\n            noInterruptTexture:SetAlpha (modTable.config.textureAlpha)\n        else\n            noInterruptTexture:Hide()\n        end\n    end\nend",
					},
					["PlaterCore"] = 1,
					["version"] = -1,
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
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\castbar_icon",
					["semver"] = "",
				}, -- [35]
			},
			["last_news_time"] = 1551553489,
			["tank"] = {
				["colors"] = {
					["pulling"] = {
						nil, -- [1]
						0.91372549019608, -- [2]
						0.99607843137255, -- [3]
						1, -- [4]
					},
				},
			},
			["cast_statusbar_fadeout_time"] = 0.4899999797344208,
			["cast_statusbar_color"] = {
				nil, -- [1]
				0.85882352941176, -- [2]
				nil, -- [3]
				0.96000000089407, -- [4]
			},
			["use_health_animation"] = true,
			["castbar_target_text_size"] = 8,
			["target_shady_alpha"] = 0.59999996423721,
			["semver"] = "1.0.4",
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "0.99999994039536",
				["nameplateShowSelf"] = "0",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateGlobalScale"] = "1.0",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateMinScale"] = "1",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateSelfAlpha"] = "0.75",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateOtherTopInset"] = "0.085",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["NamePlateHorizontalScale"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfTopInset"] = "0.5",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["NamePlateVerticalScale"] = "1",
			},
			["aura_width"] = 22,
			["aura_height2"] = 14,
			["castbar_target_font"] = "Accidental Presidency",
			["health_statusbar_bgcolor"] = {
				0.0431372, -- [1]
				0.0431372, -- [2]
				0.0431372, -- [3]
				1, -- [4]
			},
			["captured_spells"] = {
				[196414] = {
					["type"] = "DEBUFF",
					["source"] = "Judaasx",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262652] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1022] = {
					["encounterID"] = 2299,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198589] = {
					["encounterID"] = 2299,
					["source"] = "Andruw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187464] = {
					["type"] = "DEBUFF",
					["source"] = "Durantye",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2050] = {
					["encounterID"] = 2299,
					["source"] = "Itsyellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300761] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295137] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223143] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279793] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1044] = {
					["encounterID"] = 2299,
					["source"] = "Numberz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113746] = {
					["type"] = "DEBUFF",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279028] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236060] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[527] = {
					["encounterID"] = 2299,
					["source"] = "Itsyellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279029] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228260] = {
					["encounterID"] = 2299,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6262] = {
					["encounterID"] = 2299,
					["source"] = "Evanpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48018] = {
					["type"] = "BUFF",
					["source"] = "Judaasx",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[152175] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[133] = {
					["encounterID"] = 2299,
					["source"] = "Arnbjorn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279033] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269571] = {
					["type"] = "BUFF",
					["source"] = "Shallow",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231843] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271107] = {
					["type"] = "BUFF",
					["source"] = "Choplo",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314585] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[60103] = {
					["encounterID"] = 2299,
					["source"] = "Yukios-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194249] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87023] = {
					["type"] = "DEBUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313310] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[14914] = {
					["encounterID"] = 2299,
					["source"] = "Itsyellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147193] = {
					["encounterID"] = 2299,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272903] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162794] = {
					["encounterID"] = 2299,
					["source"] = "Andruw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279810] = {
					["type"] = "BUFF",
					["source"] = "Paxington-Illidan",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[96231] = {
					["encounterID"] = 2299,
					["source"] = "Numberz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188370] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184662] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313571] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5487] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196555] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8936] = {
					["encounterID"] = 2299,
					["source"] = "Papatranq-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[214202] = {
					["type"] = "BUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1122] = {
					["encounterID"] = 2299,
					["source"] = "Judaasx",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298739] = {
					["source"] = "Cyranus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153060,
				},
				[274443] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299251] = {
					["type"] = "DEBUFF",
					["source"] = "Queen Azshara",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152910,
				},
				[289277] = {
					["source"] = "Greasetruck-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299252] = {
					["type"] = "DEBUFF",
					["source"] = "Queen Azshara",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152910,
				},
				[303345] = {
					["type"] = "BUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51505] = {
					["encounterID"] = 2299,
					["source"] = "Toshaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299254] = {
					["type"] = "DEBUFF",
					["source"] = "Queen Azshara",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152910,
				},
				[192082] = {
					["type"] = "BUFF",
					["source"] = "Wind Rush Totem",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 97285,
				},
				[299255] = {
					["type"] = "DEBUFF",
					["source"] = "Queen Azshara",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152910,
				},
				[88625] = {
					["encounterID"] = 2299,
					["source"] = "Itsyellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33763] = {
					["encounterID"] = 2299,
					["source"] = "Papatranq-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260881] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34914] = {
					["encounterID"] = 2299,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273685] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264735] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69943,
				},
				[318187] = {
					["type"] = "DEBUFF",
					["source"] = "Toshaman",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11366] = {
					["encounterID"] = 2299,
					["source"] = "Arnbjorn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[301308] = {
					["encounterID"] = 2299,
					["source"] = "Papatranq-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117526] = {
					["type"] = "DEBUFF",
					["source"] = "Paxington-Illidan",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24858] = {
					["type"] = "BUFF",
					["source"] = "Eau-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[589] = {
					["encounterID"] = 2299,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279572] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119381] = {
					["encounterID"] = 2299,
					["source"] = "Scitama-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292361] = {
					["source"] = "Durantye",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300801] = {
					["type"] = "BUFF",
					["source"] = "Evanpal",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298756] = {
					["type"] = "DEBUFF",
					["source"] = "Cyranus",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153060,
				},
				[115098] = {
					["encounterID"] = 2299,
					["source"] = "Choplo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48438] = {
					["encounterID"] = 2299,
					["source"] = "Papatranq-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[26297] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[143625] = {
					["source"] = "Numberz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268836] = {
					["type"] = "BUFF",
					["source"] = "Shallow",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20271] = {
					["encounterID"] = 2299,
					["source"] = "Shallow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300551] = {
					["type"] = "BUFF",
					["source"] = "Queen Azshara",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152910,
				},
				[221886] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235313] = {
					["type"] = "BUFF",
					["source"] = "Delpi",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121557] = {
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201427] = {
					["encounterID"] = 2299,
					["source"] = "Andruw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228537] = {
					["encounterID"] = 2299,
					["source"] = "Andruw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45242] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272679] = {
					["encounterID"] = 2299,
					["source"] = "Paxington-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[138130] = {
					["type"] = "BUFF",
					["source"] = "Earth Spirit",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69792,
				},
				[299789] = {
					["type"] = "BUFF",
					["source"] = "Choplo",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295186] = {
					["encounterID"] = 2299,
					["source"] = "Arnbjorn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187874] = {
					["encounterID"] = 2299,
					["source"] = "Yukios-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[107428] = {
					["encounterID"] = 2299,
					["source"] = "Scitama-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308742] = {
					["source"] = "Toshaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115804] = {
					["type"] = "DEBUFF",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296211] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8921] = {
					["encounterID"] = 2299,
					["source"] = "Oxclamation",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204883] = {
					["encounterID"] = 2299,
					["source"] = "Itsyellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[219589] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197211] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77762] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232633] = {
					["encounterID"] = 2299,
					["source"] = "Itsyellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[100780] = {
					["encounterID"] = 2299,
					["source"] = "Choplo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188389] = {
					["encounterID"] = 2299,
					["source"] = "Toshaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288800] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[633] = {
					["encounterID"] = 2299,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187878] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228287] = {
					["type"] = "DEBUFF",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301078] = {
					["encounterID"] = 2299,
					["source"] = "Cyranus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153060,
				},
				[303380] = {
					["type"] = "BUFF",
					["source"] = "Evanpal",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268854] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319237] = {
					["source"] = "Dahaympster",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288803] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273714] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214222] = {
					["type"] = "DEBUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268856] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318216] = {
					["type"] = "BUFF",
					["source"] = "Eau-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155145] = {
					["encounterID"] = 2299,
					["source"] = "Numberz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298014] = {
					["encounterID"] = 2299,
					["source"] = "Aethanel",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153059,
				},
				[210643] = {
					["encounterID"] = 2299,
					["source"] = "Toshaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[25771] = {
					["type"] = "DEBUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267325] = {
					["type"] = "BUFF",
					["source"] = "Paxington-Illidan",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267326] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267327] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196834] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90361] = {
					["encounterID"] = 2299,
					["source"] = "Gara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 88708,
				},
				[62124] = {
					["encounterID"] = 2299,
					["source"] = "Evanpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298018] = {
					["type"] = "DEBUFF",
					["source"] = "Aethanel",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153059,
				},
				[267329] = {
					["type"] = "BUFF",
					["source"] = "Paxington-Illidan",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298787] = {
					["encounterID"] = 2299,
					["source"] = "Queen Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152910,
				},
				[221771] = {
					["encounterID"] = 2299,
					["source"] = "Scitama-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116768] = {
					["type"] = "BUFF",
					["source"] = "Choplo",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298021] = {
					["encounterID"] = 2299,
					["source"] = "Aethanel",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153059,
				},
				[147732] = {
					["type"] = "DEBUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287280] = {
					["type"] = "DEBUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100784] = {
					["encounterID"] = 2299,
					["source"] = "Scitama-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202719] = {
					["encounterID"] = 2299,
					["source"] = "Andruw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12654] = {
					["type"] = "DEBUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192106] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116705] = {
					["encounterID"] = 2299,
					["source"] = "Scitama-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Delpi",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315161] = {
					["type"] = "DEBUFF",
					["source"] = "Choplo",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194153] = {
					["encounterID"] = 2299,
					["source"] = "Oxclamation",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[176890] = {
					["encounterID"] = 2299,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17364] = {
					["encounterID"] = 2299,
					["source"] = "Yukios-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275779] = {
					["encounterID"] = 2299,
					["source"] = "Evanpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190319] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[326419] = {
					["source"] = "Christinà-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[64843] = {
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45438] = {
					["type"] = "BUFF",
					["source"] = "Delpi",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200166] = {
					["encounterID"] = 2299,
					["source"] = "Andruw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287802] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300334] = {
					["encounterID"] = 2299,
					["source"] = "Queen Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152910,
				},
				[268877] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273481] = {
					["type"] = "DEBUFF",
					["source"] = "Shallow",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108843] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306474] = {
					["type"] = "DEBUFF",
					["source"] = "Judaasx",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294966] = {
					["source"] = "Pearanoia-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[691] = {
					["source"] = "Judaasx",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34026] = {
					["encounterID"] = 2299,
					["source"] = "Thunderrz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[348] = {
					["encounterID"] = 2299,
					["source"] = "Judaasx",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[64844] = {
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270674] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[137639] = {
					["type"] = "BUFF",
					["source"] = "Choplo",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273232] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122783] = {
					["type"] = "BUFF",
					["source"] = "Choplo",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312107] = {
					["source"] = "Pearanoia-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287811] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216411] = {
					["type"] = "BUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272979] = {
					["type"] = "BUFF",
					["source"] = "Evanpal",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["source"] = "Kraeg",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267611] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216413] = {
					["type"] = "BUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202347] = {
					["encounterID"] = 2299,
					["source"] = "Eau-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267612] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274774] = {
					["type"] = "BUFF",
					["source"] = "Choplo",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108271] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58867] = {
					["encounterID"] = 2299,
					["source"] = "Spirit Wolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 100820,
				},
				[268893] = {
					["type"] = "BUFF",
					["source"] = "Judaasx",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296003] = {
					["type"] = "BUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301886] = {
					["type"] = "BUFF",
					["source"] = "Judaasx",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5740] = {
					["encounterID"] = 2299,
					["source"] = "Judaasx",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184575] = {
					["encounterID"] = 2299,
					["source"] = "Numberz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16870] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246851] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Paxington-Illidan",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268898] = {
					["type"] = "BUFF",
					["source"] = "Shallow",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32375] = {
					["encounterID"] = 2299,
					["source"] = "Itsyellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268899] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246852] = {
					["type"] = "BUFF",
					["source"] = "Paxington-Illidan",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210152] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1459] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116841] = {
					["type"] = "BUFF",
					["source"] = "Choplo",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85256] = {
					["encounterID"] = 2299,
					["source"] = "Shallow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297035] = {
					["source"] = "Delpi",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193530] = {
					["type"] = "BUFF",
					["source"] = "Paxington-Illidan",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26573] = {
					["encounterID"] = 2299,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268904] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2948] = {
					["encounterID"] = 2299,
					["source"] = "Arnbjorn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279902] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268905] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[740] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295248] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313918] = {
					["type"] = "BUFF",
					["source"] = "Delpi",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116011] = {
					["encounterID"] = 2299,
					["source"] = "Arnbjorn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297039] = {
					["source"] = "Royalty",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36107] = {
					["encounterID"] = 2299,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300620] = {
					["encounterID"] = 2299,
					["source"] = "Serena Scarscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153091,
				},
				[108211] = {
					["source"] = "Bougie-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1490] = {
					["type"] = "DEBUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231895] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8042] = {
					["encounterID"] = 2299,
					["source"] = "Toshaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261947] = {
					["encounterID"] = 2299,
					["source"] = "Scitama-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279397] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201846] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280165] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34861] = {
					["encounterID"] = 2299,
					["source"] = "Itsyellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298836] = {
					["source"] = "Yukios-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116844] = {
					["encounterID"] = 2299,
					["source"] = "Scitama-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298837] = {
					["source"] = "Arnbjorn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251463] = {
					["encounterID"] = 2299,
					["source"] = "Thunderrz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53595] = {
					["encounterID"] = 2299,
					["source"] = "Evanpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295258] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78674] = {
					["encounterID"] = 2299,
					["source"] = "Eau-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304722] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198013] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298841] = {
					["source"] = "Royalty",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227041] = {
					["source"] = "Papatranq-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[768] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183436] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78675] = {
					["encounterID"] = 2299,
					["source"] = "Eau-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20484] = {
					["encounterID"] = 2299,
					["source"] = "Oxclamation",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258883] = {
					["type"] = "DEBUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124007] = {
					["encounterID"] = 2299,
					["source"] = "Xuen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 63508,
				},
				[774] = {
					["encounterID"] = 2299,
					["source"] = "Papatranq-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61684] = {
					["type"] = "BUFF",
					["source"] = "JiKun",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69712,
				},
				[193796] = {
					["encounterID"] = 2299,
					["source"] = "Yukios-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280177] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300893] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157736] = {
					["type"] = "DEBUFF",
					["source"] = "Judaasx",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[781] = {
					["encounterID"] = 2299,
					["source"] = "Paxington-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[312915] = {
					["type"] = "BUFF",
					["source"] = "Delpi",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190984] = {
					["encounterID"] = 2299,
					["source"] = "Oxclamation",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Eau-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317265] = {
					["type"] = "DEBUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186254] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124009] = {
					["type"] = "BUFF",
					["source"] = "Xuen",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 63508,
				},
				[2139] = {
					["encounterID"] = 2299,
					["source"] = "Arnbjorn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196741] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298343] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109304] = {
					["encounterID"] = 2299,
					["source"] = "Thunderrz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157228] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196742] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292463] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313948] = {
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200196] = {
					["type"] = "DEBUFF",
					["source"] = "Itsyellowy",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31850] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286587] = {
					["type"] = "BUFF",
					["source"] = "Choplo",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300142] = {
					["encounterID"] = 2299,
					["source"] = "Arnbjorn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197385] = {
					["type"] = "DEBUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19750] = {
					["encounterID"] = 2299,
					["source"] = "Slurpinho",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299890] = {
					["encounterID"] = 2299,
					["source"] = "Azshara's Devoted",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154240,
				},
				[82326] = {
					["encounterID"] = 2299,
					["source"] = "Slurpinho",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[186263] = {
					["encounterID"] = 2299,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[191634] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316007] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296059] = {
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186265] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280205] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316522] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184092] = {
					["encounterID"] = 2299,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268953] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272790] = {
					["encounterID"] = 2299,
					["source"] = "Thunderrz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205448] = {
					["encounterID"] = 2299,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268955] = {
					["type"] = "BUFF",
					["source"] = "Choplo",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53600] = {
					["encounterID"] = 2299,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57724] = {
					["source"] = "Greasetruck-Dalaran",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268956] = {
					["type"] = "BUFF",
					["source"] = "Eau-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58875] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188443] = {
					["encounterID"] = 2299,
					["source"] = "Toshaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203277] = {
					["source"] = "Burnerz-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102342] = {
					["encounterID"] = 2299,
					["source"] = "Papatranq-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Oxclamation",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3408] = {
					["source"] = "Bougie-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294027] = {
					["type"] = "BUFF",
					["source"] = "Evanpal",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109248] = {
					["encounterID"] = 2299,
					["source"] = "Thunderrz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298121] = {
					["encounterID"] = 2299,
					["source"] = "Aethanel",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153059,
				},
				[279709] = {
					["type"] = "BUFF",
					["source"] = "Eau-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295310] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185123] = {
					["encounterID"] = 2299,
					["source"] = "Andruw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116858] = {
					["encounterID"] = 2299,
					["source"] = "Judaasx",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6940] = {
					["type"] = "BUFF",
					["source"] = "Evanpal",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203538] = {
					["source"] = "Numberz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Delpi",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274598] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299662] = {
					["source"] = "Papatranq-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300174] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224127] = {
					["type"] = "BUFF",
					["source"] = "Spirit Wolf",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100820,
				},
				[118905] = {
					["encounterID"] = 2299,
					["source"] = "Capacitor Totem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61245,
				},
				[152262] = {
					["type"] = "BUFF",
					["source"] = "Evanpal",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273323] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297108] = {
					["encounterID"] = 2299,
					["source"] = "Scitama-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316801] = {
					["type"] = "BUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[883] = {
					["source"] = "Paxington-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17962] = {
					["encounterID"] = 2299,
					["source"] = "Judaasx",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300691] = {
					["type"] = "BUFF",
					["source"] = "Evanpal",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123254] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232698] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210320] = {
					["type"] = "BUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188070] = {
					["encounterID"] = 2299,
					["source"] = "Yukios-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297371] = {
					["encounterID"] = 2299,
					["source"] = "Queen Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152910,
				},
				[269239] = {
					["type"] = "BUFF",
					["source"] = "Judaasx",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297372] = {
					["encounterID"] = 2299,
					["source"] = "Queen Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152910,
				},
				[317065] = {
					["encounterID"] = 2299,
					["source"] = "Arnbjorn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302999] = {
					["type"] = "DEBUFF",
					["source"] = "Queen Azshara",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152910,
				},
				[116670] = {
					["encounterID"] = 2299,
					["source"] = "Scitama-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285978] = {
					["source"] = "Moonsboo",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270070] = {
					["source"] = "Bougie-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31821] = {
					["type"] = "BUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285976] = {
					["source"] = "Chronite-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115008] = {
					["encounterID"] = 2299,
					["source"] = "Scitama-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315681] = {
					["source"] = "Jôhn-Trollbane",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Jôhn-Trollbane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192225] = {
					["source"] = "Choplo",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212800] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315176] = {
					["type"] = "DEBUFF",
					["source"] = "Delpi",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300519] = {
					["encounterID"] = 2299,
					["source"] = "Queen Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152910,
				},
				[162243] = {
					["encounterID"] = 2299,
					["source"] = "Andruw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194084] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164545] = {
					["type"] = "BUFF",
					["source"] = "Eau-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316814] = {
					["source"] = "Papatranq-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212653] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[65081] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200389] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57984] = {
					["encounterID"] = 2299,
					["source"] = "Greater Fire Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 95061,
				},
				[257946] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287063] = {
					["type"] = "BUFF",
					["source"] = "Choplo",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124280] = {
					["type"] = "DEBUFF",
					["source"] = "Choplo",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207640] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[145205] = {
					["encounterID"] = 2299,
					["source"] = "Papatranq-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287790] = {
					["type"] = "BUFF",
					["source"] = "Eau-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300001] = {
					["type"] = "DEBUFF",
					["source"] = "Queen Azshara",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152910,
				},
				[277943] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29166] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279648] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164547] = {
					["type"] = "BUFF",
					["source"] = "Oxclamation",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192077] = {
					["encounterID"] = 2299,
					["source"] = "Toshaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302141] = {
					["encounterID"] = 2299,
					["source"] = "Queen Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152910,
				},
				[297972] = {
					["encounterID"] = 2299,
					["source"] = "Aethanel",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153059,
				},
				[297126] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111400] = {
					["type"] = "BUFF",
					["source"] = "Judaasx",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2643] = {
					["encounterID"] = 2299,
					["source"] = "Thunderrz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207386] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48020] = {
					["type"] = "BUFF",
					["source"] = "Judaasx",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87024] = {
					["type"] = "DEBUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277179] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108853] = {
					["encounterID"] = 2299,
					["source"] = "Arnbjorn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204018] = {
					["encounterID"] = 2299,
					["source"] = "Evanpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265202] = {
					["encounterID"] = 2299,
					["source"] = "Itsyellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[254474] = {
					["type"] = "BUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[41425] = {
					["type"] = "DEBUFF",
					["source"] = "Delpi",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298152] = {
					["type"] = "BUFF",
					["source"] = "Delpi",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[642] = {
					["type"] = "BUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277181] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303672] = {
					["encounterID"] = 2299,
					["source"] = "Queen Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152910,
				},
				[147362] = {
					["encounterID"] = 2299,
					["source"] = "Paxington-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117952] = {
					["encounterID"] = 2299,
					["source"] = "Choplo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1850] = {
					["type"] = "BUFF",
					["source"] = "Eau-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297898] = {
					["type"] = "DEBUFF",
					["source"] = "Queen Azshara",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152910,
				},
				[152108] = {
					["encounterID"] = 2299,
					["source"] = "Judaasx",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113656] = {
					["type"] = "BUFF",
					["source"] = "Choplo",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303657] = {
					["encounterID"] = 2299,
					["source"] = "Queen Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152910,
				},
				[585] = {
					["encounterID"] = 2299,
					["source"] = "Itsyellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299178] = {
					["encounterID"] = 2299,
					["source"] = "Queen Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152910,
				},
				[54149] = {
					["type"] = "BUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319241] = {
					["type"] = "DEBUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20473] = {
					["encounterID"] = 2299,
					["source"] = "Slurpinho",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48107] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274346] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277185] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295855] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188592] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297168] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101545] = {
					["encounterID"] = 2299,
					["source"] = "Choplo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295856] = {
					["encounterID"] = 2299,
					["source"] = "Guardian of Azeroth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152396,
				},
				[226757] = {
					["type"] = "DEBUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132403] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300502] = {
					["type"] = "BUFF",
					["source"] = "Queen Azshara",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152910,
				},
				[73325] = {
					["encounterID"] = 2299,
					["source"] = "Itsyellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157982] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15407] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Pearanoia-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275773] = {
					["encounterID"] = 2299,
					["source"] = "Slurpinho",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280170] = {
					["source"] = "Thunderrz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287062] = {
					["type"] = "BUFF",
					["source"] = "Choplo",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102417] = {
					["source"] = "Oxclamation",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313663] = {
					["type"] = "DEBUFF",
					["source"] = "Toshaman",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318219] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[93402] = {
					["encounterID"] = 2299,
					["source"] = "Oxclamation",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47788] = {
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298781] = {
					["type"] = "DEBUFF",
					["source"] = "Queen Azshara",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152910,
				},
				[299253] = {
					["type"] = "DEBUFF",
					["source"] = "Queen Azshara",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152910,
				},
				[299249] = {
					["type"] = "DEBUFF",
					["source"] = "Queen Azshara",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152910,
				},
				[299250] = {
					["encounterID"] = 2299,
					["source"] = "Queen Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152910,
				},
				[165961] = {
					["source"] = "Eau-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18562] = {
					["encounterID"] = 2299,
					["source"] = "Oxclamation",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201754] = {
					["encounterID"] = 2299,
					["source"] = "Gara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 88708,
				},
				[299094] = {
					["encounterID"] = 2299,
					["source"] = "Queen Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152910,
				},
				[315787] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48108] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280433] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193455] = {
					["encounterID"] = 2299,
					["source"] = "Paxington-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[119085] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297034] = {
					["source"] = "Yukios-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[181089] = {
					["type"] = "BUFF",
					["source"] = "Overzealous Hulk",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153064,
				},
				[188499] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29722] = {
					["encounterID"] = 2299,
					["source"] = "Judaasx",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194223] = {
					["type"] = "BUFF",
					["source"] = "Eau-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317859] = {
					["type"] = "BUFF",
					["source"] = "Shallow",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Oxclamation",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109132] = {
					["encounterID"] = 2299,
					["source"] = "Choplo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[121536] = {
					["encounterID"] = 2299,
					["source"] = "Itsyellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268756] = {
					["type"] = "DEBUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300714] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[168657] = {
					["type"] = "BUFF",
					["source"] = "Eau-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[72968] = {
					["source"] = "Greasetruck-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316823] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117828] = {
					["type"] = "BUFF",
					["source"] = "Judaasx",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281721] = {
					["type"] = "DEBUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101546] = {
					["encounterID"] = 2299,
					["source"] = "Choplo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19574] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33076] = {
					["encounterID"] = 2299,
					["source"] = "Itsyellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267685] = {
					["type"] = "BUFF",
					["source"] = "Delpi",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122470] = {
					["type"] = "BUFF",
					["source"] = "Choplo",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303797] = {
					["encounterID"] = 2299,
					["source"] = "Queen Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152910,
				},
				[278954] = {
					["type"] = "BUFF",
					["source"] = "Evanpal",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53385] = {
					["encounterID"] = 2299,
					["source"] = "Numberz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204242] = {
					["type"] = "DEBUFF",
					["source"] = "Evanpal",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48045] = {
					["encounterID"] = 2299,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108366] = {
					["type"] = "BUFF",
					["source"] = "Judaasx",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2823] = {
					["source"] = "Bougie-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19483] = {
					["type"] = "BUFF",
					["source"] = "Infernal",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 89,
				},
				[164815] = {
					["type"] = "DEBUFF",
					["source"] = "Oxclamation",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266091] = {
					["type"] = "BUFF",
					["source"] = "Judaasx",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205648] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268769] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261769] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304056] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115080] = {
					["encounterID"] = 2299,
					["source"] = "Scitama-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304267] = {
					["type"] = "BUFF",
					["source"] = "Aethanel",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153059,
				},
				[6788] = {
					["type"] = "DEBUFF",
					["source"] = "Durantye",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[27827] = {
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31935] = {
					["encounterID"] = 2299,
					["source"] = "Evanpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298431] = {
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193786] = {
					["encounterID"] = 2299,
					["source"] = "Yukios-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268887] = {
					["type"] = "BUFF",
					["source"] = "Judaasx",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105809] = {
					["type"] = "BUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[853] = {
					["encounterID"] = 2299,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272090] = {
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307128] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35395] = {
					["encounterID"] = 2299,
					["source"] = "Shallow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85222] = {
					["encounterID"] = 2299,
					["source"] = "Slurpinho",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198300] = {
					["type"] = "BUFF",
					["source"] = "Yukios-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300802] = {
					["type"] = "BUFF",
					["source"] = "Scitama-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122] = {
					["encounterID"] = 2299,
					["source"] = "Arnbjorn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197937] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116014] = {
					["type"] = "BUFF",
					["source"] = "Arnbjorn",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269279] = {
					["type"] = "BUFF",
					["source"] = "Evanpal",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313088] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297412] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31884] = {
					["type"] = "BUFF",
					["source"] = "Evanpal",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274395] = {
					["type"] = "BUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318378] = {
					["type"] = "BUFF",
					["source"] = "Paxington-Illidan",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295367] = {
					["type"] = "DEBUFF",
					["source"] = "Royalty",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16827] = {
					["encounterID"] = 2299,
					["source"] = "Unknown",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 69943,
				},
				[246853] = {
					["type"] = "BUFF",
					["source"] = "Paxington-Illidan",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205351] = {
					["encounterID"] = 2299,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295368] = {
					["type"] = "DEBUFF",
					["source"] = "Evanpal",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198067] = {
					["encounterID"] = 2299,
					["source"] = "Toshaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300693] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197277] = {
					["type"] = "DEBUFF",
					["source"] = "Shallow",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295840] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295842] = {
					["type"] = "BUFF",
					["source"] = "Evanpal",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113858] = {
					["type"] = "BUFF",
					["source"] = "Judaasx",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258920] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120517] = {
					["encounterID"] = 2299,
					["source"] = "Itsyellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314040] = {
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192058] = {
					["encounterID"] = 2299,
					["source"] = "Toshaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[296138] = {
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102359] = {
					["encounterID"] = 2299,
					["source"] = "Oxclamation",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297907] = {
					["type"] = "DEBUFF",
					["source"] = "Queen Azshara",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152910,
				},
				[193456] = {
					["source"] = "Pearanoia-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297162] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204079] = {
					["type"] = "DEBUFF",
					["source"] = "Royalty",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162264] = {
					["type"] = "BUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24275] = {
					["encounterID"] = 2299,
					["source"] = "Numberz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2645] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295373] = {
					["encounterID"] = 2299,
					["source"] = "Evanpal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295838] = {
					["type"] = "DEBUFF",
					["source"] = "Andruw",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[129597] = {
					["encounterID"] = 2299,
					["source"] = "Choplo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195072] = {
					["encounterID"] = 2299,
					["source"] = "Andruw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188196] = {
					["encounterID"] = 2299,
					["source"] = "Toshaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267330] = {
					["type"] = "BUFF",
					["source"] = "Paxington-Illidan",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303344] = {
					["type"] = "BUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224126] = {
					["type"] = "BUFF",
					["source"] = "Spirit Wolf",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100820,
				},
				[300490] = {
					["encounterID"] = 2299,
					["source"] = "Serena Scarscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153091,
				},
				[211881] = {
					["encounterID"] = 2299,
					["source"] = "Andruw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[21562] = {
					["encounterID"] = 2299,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118455] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300491] = {
					["encounterID"] = 2299,
					["source"] = "Serena Scarscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153091,
				},
				[246152] = {
					["type"] = "BUFF",
					["source"] = "Thunderrz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313148] = {
					["encounterID"] = 2299,
					["source"] = "Toshaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278931] = {
					["type"] = "BUFF",
					["source"] = "Judaasx",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300492] = {
					["encounterID"] = 2299,
					["source"] = "Venna Seastorm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153092,
				},
				[270058] = {
					["source"] = "Pearanoia-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275429] = {
					["type"] = "BUFF",
					["source"] = "Judaasx",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77489] = {
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295378] = {
					["type"] = "BUFF",
					["source"] = "Evanpal",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270661] = {
					["type"] = "BUFF",
					["source"] = "Slurpinho",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8004] = {
					["encounterID"] = 2299,
					["source"] = "Toshaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117405] = {
					["type"] = "DEBUFF",
					["source"] = "Paxington-Illidan",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264689] = {
					["source"] = "Dahaympster",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197561] = {
					["type"] = "BUFF",
					["source"] = "Evanpal",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297937] = {
					["type"] = "DEBUFF",
					["source"] = "Cyranus",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153060,
				},
				[298569] = {
					["encounterID"] = 2299,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190784] = {
					["encounterID"] = 2299,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102383] = {
					["encounterID"] = 2299,
					["source"] = "Oxclamation",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81262] = {
					["type"] = "BUFF",
					["source"] = "Efflorescence",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 47649,
				},
				[254473] = {
					["type"] = "BUFF",
					["source"] = "Numberz",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[139] = {
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22842] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[596] = {
					["encounterID"] = 2299,
					["source"] = "Itsyellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[4987] = {
					["encounterID"] = 2299,
					["source"] = "Slurpinho",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304475] = {
					["encounterID"] = 2299,
					["source"] = "Queen Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152910,
				},
				[183752] = {
					["encounterID"] = 2299,
					["source"] = "Andruw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299276] = {
					["type"] = "DEBUFF",
					["source"] = "Queen Azshara",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152910,
				},
				[49821] = {
					["encounterID"] = 2299,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[217200] = {
					["encounterID"] = 2299,
					["source"] = "Thunderrz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255937] = {
					["encounterID"] = 2299,
					["source"] = "Shallow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22812] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270576] = {
					["type"] = "BUFF",
					["source"] = "Eau-Kil'jaeden",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295384] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132603] = {
					["encounterID"] = 2299,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80240] = {
					["encounterID"] = 2299,
					["source"] = "Judaasx",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260734] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187650] = {
					["encounterID"] = 2299,
					["source"] = "Paxington-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303825] = {
					["encounterID"] = 2299,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51533] = {
					["encounterID"] = 2299,
					["source"] = "Yukios-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267331] = {
					["type"] = "BUFF",
					["source"] = "Paxington-Illidan",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197721] = {
					["type"] = "BUFF",
					["source"] = "Papatranq-Mal'Ganis",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Oxclamation",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57994] = {
					["encounterID"] = 2299,
					["source"] = "Yukios-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[41635] = {
					["type"] = "BUFF",
					["source"] = "Itsyellowy",
					["encounterID"] = 2299,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335150] = {
					["source"] = "Scitama-Kil'jaeden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
			},
			["version"] = 5,
			["login_counter"] = 41,
			["extra_icon_caster_name"] = false,
			["aura_cooldown_show_swipe"] = false,
			["pet_width_scale"] = 0.9999999403953552,
			["range_check_alpha"] = 0.5,
			["castbar_target_anchor"] = {
				["side"] = 11,
			},
			["quick_hide"] = true,
			["ui_parent_cast_strata"] = "DIALOG",
			["extra_icon_auras_mine"] = {
				["224991"] = true,
			},
			["patch_version"] = 12,
			["aura_stack_font"] = "Friz Quadrata TT",
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
			["no_spellname_length_limit"] = true,
			["aura_timer_text_font"] = "Friz Quadrata TT",
			["aura_timer_text_size"] = 10,
			["extra_icon_show_timer"] = false,
			["extra_icon_anchor"] = {
				["y"] = 0,
				["x"] = 4,
			},
			["number_region_first_run"] = true,
			["target_highlight_height"] = 18,
			["aura_width2"] = 22,
			["resources"] = {
				["scale"] = 0.79999995231628,
				["y_offset"] = 1,
				["y_offset_target"] = 9,
			},
			["click_space"] = {
				115, -- [1]
			},
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["aura2_grow_direction"] = 1,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["castbar_target_outline"] = "NONE",
			["aura_stack_anchor"] = {
				["y"] = -8,
				["side"] = 1,
			},
			["indicator_raidmark_scale"] = 0.699999988079071,
			["dps"] = {
				["colors"] = {
					["aggro"] = {
						nil, -- [1]
						0.047058823529412, -- [2]
						nil, -- [3]
						1, -- [4]
					},
					["pulling"] = {
						nil, -- [1]
						0.96078431372549, -- [2]
						0.95294117647059, -- [3]
						1, -- [4]
					},
				},
			},
			["cast_statusbar_bgcolor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.79781, -- [4]
			},
			["aura_frame2_anchor"] = {
				["y"] = 15.9,
				["side"] = 7,
			},
			["extra_icon_show_enrage"] = true,
			["ui_parent_scale_tune"] = 1.562500034924597,
			["cast_statusbar_texture"] = "Smooth v2",
			["update_throttle"] = 0.09999999403953552,
			["aura_consolidate"] = true,
			["npc_colors"] = {
				["125977"] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				["134284"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["132491"] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				["122969"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["122984"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["131677"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["134417"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["137516"] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				["133432"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["129370"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["131666"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["136549"] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				["128435"] = {
					false, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				["129559"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["134418"] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				["136006"] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				["131436"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["135365"] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				["134157"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["136249"] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				["122973"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["131670"] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				["137486"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["137484"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["127106"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["129600"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["135329"] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				["139425"] = {
					false, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["136934"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["134599"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["127315"] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				["136005"] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				["139422"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["129369"] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				["134012"] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				["135474"] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				["122971"] = {
					false, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				["137103"] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				["135263"] = {
					true, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				["126918"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["133685"] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				["134150"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["131817"] = {
					false, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				["134990"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["128969"] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				["136214"] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				["132532"] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				["134144"] = {
					true, -- [1]
					false, -- [2]
					"lightgreen", -- [3]
				},
				["134331"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["136295"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["132126"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["134232"] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				["137713"] = {
					true, -- [1]
					false, -- [2]
					"paleturquoise", -- [3]
				},
				["133345"] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				["135239"] = {
					true, -- [1]
					false, -- [2]
					"paleturquoise", -- [3]
				},
				["130488"] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				["134364"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["130435"] = {
					false, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				["138187"] = {
					true, -- [1]
					false, -- [2]
					"paleturquoise", -- [3]
				},
				["137511"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["133835"] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				["135258"] = {
					false, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["144071"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["134514"] = {
					true, -- [1]
					false, -- [2]
					"lightgreen", -- [3]
				},
				["137521"] = {
					true, -- [1]
					false, -- [2]
					"cornflowerblue", -- [3]
				},
				["138061"] = {
					false, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				["134629"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["135167"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["134139"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["126919"] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				["131858"] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				["131685"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["138255"] = {
					true, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				["136076"] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				["133593"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["136139"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["138063"] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				["141284"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["141285"] = {
					true, -- [1]
					false, -- [2]
					"lightgreen", -- [3]
				},
				["134251"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["137478"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["133912"] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				["130661"] = {
					true, -- [1]
					false, -- [2]
					"lightgreen", -- [3]
				},
				["133870"] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				["133852"] = {
					true, -- [1]
					false, -- [2]
					"olivedrab", -- [3]
				},
				["133482"] = {
					true, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				["130436"] = {
					false, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				["128967"] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				["127111"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["131586"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["134137"] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				["133430"] = {
					true, -- [1]
					false, -- [2]
					"cornflowerblue", -- [3]
				},
				["131492"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["129366"] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				["129529"] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				["133436"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["131587"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["134174"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["130485"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["135241"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["131818"] = {
					false, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				["126928"] = {
					false, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["134701"] = {
					true, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				["138465"] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				["135235"] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				["122972"] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				["134600"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["130404"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["129227"] = {
					false, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				["128434"] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				["129788"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["127757"] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				["137830"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["129367"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["129547"] = {
					true, -- [1]
					false, -- [2]
					"olivedrab", -- [3]
				},
				["134338"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["135204"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["136470"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["135007"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["139949"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["137517"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["136353"] = {
					true, -- [1]
					false, -- [2]
					"royalblue", -- [3]
				},
				["138064"] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				["136186"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["141283"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["137716"] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				["131585"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["129602"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["134158"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
			},
			["cast_statusbar_spark_width"] = 25,
			["cast_statusbar_spark_color"] = {
				0.98823529411765, -- [1]
				[3] = 0.94117647058823,
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
					["Time"] = 1548349245,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["Revision"] = 387,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Name"] = "Cast - Small Alert [Plater]",
					["PlaterCore"] = 1,
					["Enabled"] = true,
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
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Time"] = 1541263726,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Revision"] = 108,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["PlaterCore"] = 1,
					["Enabled"] = true,
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
				}, -- [2]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Time"] = 1551467254,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["Revision"] = 432,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Name"] = "Aura - Buff Alert [Plater]",
					["PlaterCore"] = 1,
					["Enabled"] = true,
					["Desc"] = "Add the buff name in the trigger box.",
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
				}, -- [3]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1548349245,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["Revision"] = 399,
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Very Important [Plater]",
					["PlaterCore"] = 1,
					["Enabled"] = true,
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
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
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
				}, -- [4]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1551466091,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["Revision"] = 247,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Aura - Debuff Alert [Plater]",
					["PlaterCore"] = 1,
					["Enabled"] = true,
					["Desc"] = "Add the debuff name in the trigger box.",
					["SpellIds"] = {
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["Revision"] = 192,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["Temp_UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["PlaterCore"] = 1,
					["Enabled"] = true,
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
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
				}, -- [6]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Time"] = 1550595071,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["Revision"] = 197,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Name"] = "Fixate [Plater]",
					["PlaterCore"] = 1,
					["Enabled"] = true,
					["Desc"] = "Show above the nameplate who is the player fixated",
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
					},
					["Icon"] = 1029718,
				}, -- [7]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Time"] = 1547158828,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["Revision"] = 135,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Name"] = "UnitPower [Plater]",
					["PlaterCore"] = 1,
					["Enabled"] = true,
					["Desc"] = "Show the energy amount above the nameplate",
					["SpellIds"] = {
					},
					["Icon"] = 136048,
				}, -- [8]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1595728836,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["Icon"] = 135996,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
					["Revision"] = 164,
					["Options"] = {
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["Enabled"] = true,
					["Prio"] = 99,
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
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["Revision"] = 581,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Big Alert [Plater]",
					["PlaterCore"] = 1,
					["Enabled"] = true,
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
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
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
				}, -- [10]
				{
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        \n        [288038] = \"Marked Target\", --marine jaina encounter on battle of dazar'alor\n        [282209] = \"Mark of Prey\", --ravenous stalker conclave encounter on battle of dazar'alor\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n146753: Kul Tiran Marine from jaina encounter on battle of dazar'alor\n144807: Ravenous Stalker conclave encounter on battle of dazar'alor\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1548105751,
					["Temp_ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        \n        [288038] = \"Marked Target\", --marine jaina encounter\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n146753: kul tiran marine from jaina encounter\n--]=]\n\n\n\n\n",
					["Icon"] = 841383,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["Revision"] = 208,
					["Author"] = "Tecno-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Name"] = "Fixate On You [Plater]",
					["PlaterCore"] = 1,
					["Enabled"] = true,
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
						"146753", -- [10]
						"144807", -- [11]
					},
				}, -- [11]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"pink\" \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    \nend\n\n\n",
					["Time"] = 1595728828,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"pink\" \n    \nend\n\n\n",
					["Icon"] = "INTERFACE\\ICONS\\Achievement_PVP_P_01",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Revision"] = 46,
					["Options"] = {
					},
					["Author"] = "抹了油的大叔-白银之手",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Enabled"] = false,
					["Prio"] = 99,
					["Name"] = "NameplaterColor with Special Buff ID",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						277242, -- [1]
					},
					["Desc"] = "NameplaterColor with Special Buff ID",
					["NpcNames"] = {
					},
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    \nend\n\n\n",
				}, -- [12]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3 --increases the size of the healthBar\n    envTable.GlowAlpha = 0.45 --from zero to one, is the percent of transparency of the glowing border\n    envTable.ShowArrow = true --or 'false' to hide the arrow above the healthBar\n    envTable.ArrowAlpha = 0.45 --transparent of the arrow above the healthBar\n    envTable.HealthBarColor = \"orange\" --color of the healthBar\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["Time"] = 1550589212,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3 --increases the size of the healthBar\n    envTable.GlowAlpha = 0.45 --from zero to one, is the percent of transparency of the glowing border\n    envTable.ShowArrow = true --or 'false' to hide the arrow above the healthBar\n    envTable.ArrowAlpha = 0.45 --transparent of the arrow above the healthBar\n    envTable.HealthBarColor = \"orange\" --color of the healthBar\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = 2175503,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["Revision"] = 335,
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["Name"] = "Explosion Affix M+ [Plater]",
					["PlaterCore"] = 1,
					["Enabled"] = true,
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["NpcNames"] = {
					},
				}, -- [13]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Time"] = 1548349253,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["Icon"] = 135024,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["Revision"] = 67,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Name"] = "Color Change [Plater]",
					["PlaterCore"] = 1,
					["Enabled"] = true,
					["SpellIds"] = {
					},
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["NpcNames"] = {
						"141851", -- [1]
					},
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["Revision"] = 46,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Name"] = "Aura - Border Color [Plater]",
					["PlaterCore"] = 1,
					["Enabled"] = false,
					["SpellIds"] = {
					},
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["NpcNames"] = {
					},
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["Revision"] = 164,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["PlaterCore"] = 1,
					["Enabled"] = true,
					["SpellIds"] = {
					},
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["NpcNames"] = {
					},
				}, -- [16]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["OnHideCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local isTanking = UnitDetailedThreatSituation (\"player\", unitId)\n    if (not isTanking) then \n        Plater.SetNameplateColor (unitFrame, \"pink\") \n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1595728829,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
						"surf darter", -- [1]
					},
					["Enabled"] = false,
					["Revision"] = 7,
					["Options"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["OnShowCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Prio"] = 99,
					["Name"] = "New Script",
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Desc"] = "",
					["SpellIds"] = {
					},
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local isTanking = UnitDetailedThreatSituation (\"player\", unitId)\n    if (not isTanking) then \n        Plater.SetNameplateColor (unitFrame, \"pink\") \n    end\n    \nend\n\n\n\n\n",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetWidth (envTable.OriginalWidth)\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n        envTable.OriginalWidth = nil\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					["Revision"] = 1382,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    Plater.SetCastBarBorderColor (self, 1, 0, 0, 0.4)\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetWidth (envTable.OriginalWidth)\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    \n    --increase the cast bar size\n    envTable.OriginalHeight = self:GetHeight()\n    envTable.OriginalWidth = self:GetWidth()\n    local width = Plater.db.profile.plate_config.enemynpc.cast_incombat[1]\n    local height = Plater.db.profile.plate_config.enemynpc.cast_incombat[2]\n    \n    self:SetWidth (width)\n    self:SetHeight (height * envTable.CastBarHeightAdd)\n    \n    print (envTable.glowEffect:GetAlpha())\n    \nend",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "M+ Important Spells [Plater]",
					["PlaterCore"] = 1,
					["Enabled"] = false,
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
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
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
					["Icon"] = 132221,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:Hide() \nend\n\n\n",
					["Revision"] = 33,
					["Author"] = "Kastfall-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:Show() \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.JadeFireGlowEffect:SetAlpha (.5)\nend\n\n\n",
					["Name"] = "Jadefire [BOD] - Fire Shield",
					["PlaterCore"] = 1,
					["Enabled"] = true,
					["SpellIds"] = {
						286425, -- [1]
					},
					["Desc"] = "Alert when the unit has the Fire Shield to be broken.",
					["NpcNames"] = {
					},
				}, -- [19]
			},
			["castbar_target_outline"] = "NONE",
			["aura_cache_by_name"] = {
				["weakened soul"] = {
					6788, -- [1]
					126921, -- [2]
				},
			},
			["url"] = "https://wago.io/g-jp-v2zw/5",
			["extra_icon_caster_name"] = false,
			["cast_statusbar_bgtexture"] = "PlaterBackground",
			["aura_stack_anchor"] = {
				["y"] = -8,
				["side"] = 1,
			},
			["cast_statusbar_fadein_time"] = 0.02081192471087,
			["indicator_raidmark_scale"] = 0.69999998807907,
			["cast_statusbar_spark_alpha"] = 0.71999996900559,
			["aura2_y_offset"] = 15.9,
			["aura_timer_text_anchor"] = {
				["y"] = 8,
				["x"] = 1,
				["side"] = 5,
			},
			["castbar_framelevel"] = 0,
			["plate_config"] = {
				["player"] = {
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["power_percent_text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
					["level_text_font"] = "Accidental Presidency",
					["actorname_text_font"] = "Accidental Presidency",
					["power_percent_text_size"] = 8,
					["big_actortitle_text_font"] = "Accidental Presidency",
					["spellname_text_font"] = "Friz Quadrata TT",
					["click_through"] = true,
					["power_percent_text_font"] = "Friz Quadrata TT",
					["percent_show_health"] = false,
					["percent_text_size"] = 8,
					["percent_text_font"] = "Friz Quadrata TT",
					["big_actorname_text_font"] = "Accidental Presidency",
				},
				["friendlyplayer"] = {
					["big_actorname_text_size"] = 10,
					["spellpercent_text_font"] = "Accidental Presidency",
					["level_text_size"] = 8,
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
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["only_thename"] = true,
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
					["spellname_text_size"] = 9,
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
					["big_actorname_text_font"] = "Accidental Presidency",
					["spellname_text_font"] = "Accidental Presidency",
					["big_actorname_text_outline"] = "OUTLINE",
					["spellname_text_color"] = {
						0.95294117647059, -- [1]
						[3] = 0.9921568627451,
					},
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["mana"] = {
						nil, -- [1]
						4, -- [2]
					},
					["power_percent_text_font"] = "Accidental Presidency",
					["spellpercent_text_size"] = 9,
					["big_actortitle_text_size"] = 10,
					["level_text_alpha"] = 0.29999998211861,
					["percent_text_size"] = 8,
					["percent_text_font"] = "Accidental Presidency",
					["buff_frame_y_offset"] = 0,
					["percent_text_outline"] = "NONE",
					["spellpercent_text_enabled"] = true,
					["quest_enabled"] = true,
					["health_incombat"] = {
						120, -- [1]
						12, -- [2]
					},
					["health"] = {
						120, -- [1]
						12, -- [2]
					},
					["actorname_text_anchor"] = {
						["y"] = -3,
						["x"] = -1,
						["side"] = 1,
					},
					["percent_show_health"] = true,
					["actorname_text_size"] = 11,
					["percent_text_enabled"] = true,
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
						0.95294117647059, -- [1]
						[3] = 0.9921568627451,
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
					["only_names"] = false,
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["actorname_text_size"] = 11,
					["power_percent_text_font"] = "Accidental Presidency",
					["big_actortitle_text_size"] = 10,
					["percent_text_ooc"] = true,
					["percent_show_health"] = true,
					["spellpercent_text_enabled"] = true,
					["percent_text_font"] = "Accidental Presidency",
					["spellname_text_size"] = 9,
					["percent_text_outline"] = "NONE",
					["actorname_text_font"] = "Accidental Presidency",
					["big_actorname_text_font"] = "Accidental Presidency",
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
					["percent_text_size"] = 8,
					["percent_text_enabled"] = true,
					["level_text_alpha"] = 0.29999998211861,
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
						0.95294117647059, -- [1]
						[3] = 0.9921568627451,
					},
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
					["big_actortitle_text_font"] = "Accidental Presidency",
					["spellpercent_text_size"] = 9,
					["level_text_anchor"] = {
						["x"] = 1,
						["side"] = 5,
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
					["spellname_text_font"] = "Accidental Presidency",
					["actorname_text_font"] = "Accidental Presidency",
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["mana"] = {
						120, -- [1]
						1, -- [2]
					},
					["big_actorname_text_font"] = "Accidental Presidency",
					["big_actortitle_text_size"] = 10,
					["big_actorname_text_size"] = 10,
					["level_text_alpha"] = 0.29999998211861,
					["percent_text_size"] = 8,
					["percent_text_font"] = "Accidental Presidency",
					["quest_enabled"] = true,
					["health_incombat"] = {
						nil, -- [1]
						12, -- [2]
					},
					["health"] = {
						120, -- [1]
					},
					["power_percent_text_font"] = "Accidental Presidency",
					["actorname_text_anchor"] = {
						["y"] = -3,
						["x"] = -1,
						["side"] = 1,
					},
					["percent_text_outline"] = "NONE",
					["actorname_text_size"] = 11,
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
					["actorname_text_font"] = "Accidental Presidency",
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
					["big_actorname_text_font"] = "Accidental Presidency",
					["power_percent_text_font"] = "Accidental Presidency",
					["spellpercent_text_size"] = 9,
					["actorname_text_anchor"] = {
						["y"] = -3,
						["x"] = -1,
						["side"] = 1,
					},
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
					["level_text_alpha"] = 0.29999998211861,
					["spellname_text_color"] = {
						0.95294117647059, -- [1]
						[3] = 0.9921568627451,
					},
				},
			},
			["aura_y_offset"] = 15.9,
			["use_ui_parent"] = true,
			["cast_statusbar_color_nointerrupt"] = {
				0.49411764705882, -- [1]
				0.49803921568628, -- [2]
				0.50196078431373, -- [3]
				0.96000000089407, -- [4]
			},
			["color_override_colors"] = {
				[3] = {
					nil, -- [1]
					0.2784313, -- [2]
					0.2078431, -- [3]
				},
				[4] = {
					1, -- [1]
					0.83921568627451, -- [2]
					0, -- [3]
				},
				[5] = {
					0.29019607843137, -- [1]
					1, -- [2]
					0.19607843137255, -- [3]
				},
			},
			["news_frame"] = {
				["PlaterNewsFrame"] = {
					["scale"] = 1,
				},
			},
			["health_animation_time_dilatation"] = 2.8699998855591,
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
				["137474"] = {
					"King Timalji", -- [1]
					"Kings' Rest", -- [2]
				},
				[153065] = {
					"Voidbound Ravager", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				["126969"] = {
					"Trothak", -- [1]
					"Freehold", -- [2]
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
				[158437] = {
					"Fallen Taskmaster", -- [1]
					"Horrific Vision of Stormwind", -- [2]
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
				[161124] = {
					"Urg'roth, Breaker of Heroes", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[131585] = {
					"Enthralled Guard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[153196] = {
					"Scrapbone Grunter", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[131009] = {
					"Spirit of Gold", -- [1]
					"Atal'Dazar", -- [2]
				},
				["135231"] = {
					"Spectral Brute", -- [1]
					"Kings' Rest", -- [2]
				},
				[158056] = {
					"Rat", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[131586] = {
					"Banquet Steward", -- [1]
					"Waycrest Manor", -- [2]
				},
				["129208"] = {
					"Dread Captain Lockwood", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144246] = {
					"K.U.-J.0.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[156650] = {
					"Dark Manifestation", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["134686"] = {
					"Mature Krolusk", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["129227"] = {
					"Azerokk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[161510] = {
					"Mindrend Tentacle", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[156523] = {
					"Maut", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135552] = {
					"Deathtouched Slaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				[162534] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144248] = {
					"Head Machinist Sparkflux", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[135169] = {
					"Spirit Drain Totem", -- [1]
					"The Underrot", -- [2]
				},
				["137486"] = {
					"Queen Patlaa", -- [1]
					"Kings' Rest", -- [2]
				},
				[158315] = {
					"Eye of Chaos", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[144249] = {
					"Omega Buster", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["135169"] = {
					"Spirit Drain Totem", -- [1]
					"The Underrot", -- [2]
				},
				["136552"] = {
					"Kao-Tien Marauder", -- [1]
					"Atal'Dazar", -- [2]
				},
				["135329"] = {
					"Matron Bryndle", -- [1]
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
				["135552"] = {
					"Deathtouched Slaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				[156143] = {
					"Voidcrazed Hulk", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131847] = {
					"Waycrest Reveler", -- [1]
					"Waycrest Manor", -- [2]
				},
				["131849"] = {
					"Crazed Marksman", -- [1]
					"Waycrest Manor", -- [2]
				},
				[138369] = {
					"Footbomb Hooligan", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["129369"] = {
					"Irontide Raider", -- [1]
					"Siege of Boralus", -- [2]
				},
				["140447"] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				["134137"] = {
					"Temple Attendant", -- [1]
					"Shrine of the Storm", -- [2]
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
					"Horrific Vision of Stormwind", -- [2]
				},
				[131849] = {
					"Crazed Marksman", -- [1]
					"Waycrest Manor", -- [2]
				},
				[163690] = {
					"Shath'Yar Scribe", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["131527"] = {
					"Lord Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				["126918"] = {
					"Irontide Crackshot", -- [1]
					"Freehold", -- [2]
				},
				[156146] = {
					"Voidbound Shieldbearer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				["126023"] = {
					"Harbor Saurid", -- [1]
					"The Underrot", -- [2]
				},
				[131850] = {
					"Maddened Survivalist", -- [1]
					"Waycrest Manor", -- [2]
				},
				["128651"] = {
					"Hadal Darkfathom", -- [1]
					"Siege of Boralus", -- [2]
				},
				[127497] = {
					"Ashvane Warden", -- [1]
					"Tol Dagor", -- [2]
				},
				[163947] = {
					"Psychophage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["131817"] = {
					"Cragmaw the Infested", -- [1]
					"The Underrot", -- [2]
				},
				["132532"] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
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
				["132126"] = {
					"Gilded Priestess", -- [1]
					"Atal'Dazar", -- [2]
				},
				["137716"] = {
					"Bottom Feeder", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["137713"] = {
					"Big Money Crab", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157812] = {
					"Billibub Cogspinner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[159219] = {
					"Umbral Seer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["135192"] = {
					"Honored Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[158452] = {
					"Mindtwist Tendril", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[150396] = {
					"Aerial Unit R-21/X", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[157813] = {
					"Sprite Jumpsprocket", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["141283"] = {
					"Kul Tiran Halberd", -- [1]
					"Siege of Boralus", -- [2]
				},
				[162417] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150397] = {
					"King Mechagon", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["144232"] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["129232"] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[150142] = {
					"Scrapbone Trashtosser", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[133007] = {
					"Unbound Abomination", -- [1]
					"The Underrot", -- [2]
				},
				["137511"] = {
					"Bilge Rat Cutthroat", -- [1]
					"Siege of Boralus", -- [2]
				},
				[129802] = {
					"Earthrager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[158327] = {
					"Crackling Shard", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["135258"] = {
					"Irontide Marauder", -- [1]
					"Siege of Boralus", -- [2]
				},
				["134514"] = {
					"Abyssal Cultist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[158328] = {
					"Il'gynoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131858] = {
					"Thornguard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[156794] = {
					"SI:7 Light-Hunter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["131667"] = {
					"Soulbound Goliath", -- [1]
					"Waycrest Manor", -- [2]
				},
				["132051"] = {
					"Blood Tick", -- [1]
					"The Underrot", -- [2]
				},
				[159224] = {
					"Gryth'ax the Executioner", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[162933] = {
					"Thought Harvester", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134417] = {
					"Deepsea Ritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["137614"] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[150146] = {
					"Scrapbone Shaman", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["126919"] = {
					"Irontide Stormcaller", -- [1]
					"Freehold", -- [2]
				},
				["135406"] = {
					"Animated Gold", -- [1]
					"Kings' Rest", -- [2]
				},
				[152704] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134418] = {
					"Drowned Depthbringer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["136483"] = {
					"Ashvane Deckhand", -- [1]
					"Siege of Boralus", -- [2]
				},
				[160249] = {
					"Spike Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["137029"] = {
					"Ordnance Specialist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[149508] = {
					"Ice Blocked Nathanos", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[122963] = {
					"Rezan", -- [1]
					"Atal'Dazar", -- [2]
				},
				["129550"] = {
					"Bilge Rat Padfoot", -- [1]
					"Freehold", -- [2]
				},
				["137487"] = {
					"Skeletal Hunting Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[150276] = {
					"Heavy Scrapbot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["138063"] = {
					"Posh Vacationer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[127503] = {
					"Overseer Korgus", -- [1]
					"Tol Dagor", -- [2]
				},
				["134251"] = {
					"Seneschal M'bara", -- [1]
					"Kings' Rest", -- [2]
				},
				["133963"] = {
					"Test Subject", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131863] = {
					"Raal the Gluttonous", -- [1]
					"Waycrest Manor", -- [2]
				},
				[136083] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["136330"] = {
					"Soul Thorns", -- [1]
					"Waycrest Manor", -- [2]
				},
				[151812] = {
					"Detect-o-Bot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["130436"] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157439] = {
					"Fury of N'Zoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["142454"] = {
					"Ashtail Bandicoon", -- [1]
					"Freehold", -- [2]
				},
				["144231"] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["129366"] = {
					"Bilge Rat Buccaneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				["131492"] = {
					"Devout Blood Priest", -- [1]
					"The Underrot", -- [2]
				},
				["130522"] = {
					"Freehold Shipmate", -- [1]
					"Freehold", -- [2]
				},
				[122965] = {
					"Vol'kaal", -- [1]
					"Atal'Dazar", -- [2]
				},
				["138281"] = {
					"Faceless Corruptor", -- [1]
					"The Underrot", -- [2]
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
				[157825] = {
					"Crazed Tormenter", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				["136976"] = {
					"T'zala", -- [1]
					"Kings' Rest", -- [2]
				},
				["138048"] = {
					"Training Dummy", -- [1]
					"Waycrest Manor", -- [2]
				},
				["129788"] = {
					"Irontide Bonesaw", -- [1]
					"Freehold", -- [2]
				},
				[157442] = {
					"Gaze of Madness", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[163708] = {
					"Umbral Gatekeeper", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[163836] = {
					"Psychophage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["128455"] = {
					"T'lonja", -- [1]
					"Atal'Dazar", -- [2]
				},
				["142199"] = {
					"Alpine Hawk", -- [1]
					"Freehold", -- [2]
				},
				[150154] = {
					"Saurolisk Bonenipper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["129640"] = {
					"Snarling Dockhound", -- [1]
					"Siege of Boralus", -- [2]
				},
				[129552] = {
					"Monzumi", -- [1]
					"Atal'Dazar", -- [2]
				},
				[154758] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["130909"] = {
					"Fetid Maggot", -- [1]
					"The Underrot", -- [2]
				},
				[162303] = {
					"Aqir Swarmkeeper", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["134173"] = {
					"Animated Droplet", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[157700] = {
					"Agustus Moulaine", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[122967] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
				},
				["130653"] = {
					"Wanton Sapper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[162432] = {
					"Awakened Terror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[132126] = {
					"Gilded Priestess", -- [1]
					"Atal'Dazar", -- [2]
				},
				["122969"] = {
					"Zanchuli Witch-Doctor", -- [1]
					"Atal'Dazar", -- [2]
				},
				["134058"] = {
					"Galecaller Faye", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[162305] = {
					"Aqir Heartpiercer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[163712] = {
					"Dying Voidspawn", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["135562"] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["137516"] = {
					"Ashvane Invader", -- [1]
					"Siege of Boralus", -- [2]
				},
				["131863"] = {
					"Raal the Gluttonous", -- [1]
					"Waycrest Manor", -- [2]
				},
				[162306] = {
					"Aqir Drone", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["136391"] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["138489"] = {
					"Shadow of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				["138254"] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				["141938"] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[150159] = {
					"King Gobbamak", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["129559"] = {
					"Cutwater Duelist", -- [1]
					"Freehold", -- [2]
				},
				["136160"] = {
					"King Dazar", -- [1]
					"Kings' Rest", -- [2]
				},
				[122969] = {
					"Zanchuli Witch-Doctor", -- [1]
					"Atal'Dazar", -- [2]
				},
				["129598"] = {
					"Freehold Pack Mule", -- [1]
					"Freehold", -- [2]
				},
				[150160] = {
					"Scrapbone Bully", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[127381] = {
					"Silt Crab", -- [1]
					"Tol Dagor", -- [2]
				},
				["140038"] = {
					"Abyssal Eel", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["136297"] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[152718] = {
					"Alleria Windrunner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["131436"] = {
					"Chosen Blood Matron", -- [1]
					"The Underrot", -- [2]
				},
				["133836"] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[122970] = {
					"Shadowblade Stalker", -- [1]
					"Atal'Dazar", -- [2]
				},
				["134994"] = {
					"Spectral Headhunter", -- [1]
					"Kings' Rest", -- [2]
				},
				[131492] = {
					"Devout Blood Priest", -- [1]
					"The Underrot", -- [2]
				},
				[136735] = {
					"Ashvane Marine", -- [1]
					"Tol Dagor", -- [2]
				},
				[157451] = {
					"Iron-Willed Enforcer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["144286"] = {
					"Asset Manager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["127019"] = {
					"Training Dummy", -- [1]
					"Freehold", -- [2]
				},
				[135329] = {
					"Matron Bryndle", -- [1]
					"Waycrest Manor", -- [2]
				},
				[161416] = {
					"Aqir Shadowcrafter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157452] = {
					"Nightmare Antigen", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["135234"] = {
					"Diseased Mastiff", -- [1]
					"Waycrest Manor", -- [2]
				},
				["127106"] = {
					"Irontide Officer", -- [1]
					"Freehold", -- [2]
				},
				[122971] = {
					"Dazar'ai Juggernaut", -- [1]
					"Atal'Dazar", -- [2]
				},
				[158092] = {
					"Fallen Heartpiercer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[150292] = {
					"Mechagon Cavalry", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[152722] = {
					"Fallen Voidspeaker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["129699"] = {
					"Ludwig Von Tortollan", -- [1]
					"Freehold", -- [2]
				},
				["133944"] = {
					"Aspix", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["127315"] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[131112] = {
					"Cutwater Striker", -- [1]
					"Tol Dagor", -- [2]
				},
				["130635"] = {
					"Stonefury", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["139110"] = {
					"Spark Channeler", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["134012"] = {
					"Taskmaster Askari", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[148120] = {
					"Kul Tiran Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[158478] = {
					"Corruption Tumor", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[136100] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["138064"] = {
					"Posh Vacationer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[149144] = {
					"Jaina's Tide Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				["133436"] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[122973] = {
					"Dazar'ai Confessor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[150168] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["135235"] = {
					"Spectral Beastmaster", -- [1]
					"Kings' Rest", -- [2]
				},
				["134150"] = {
					"Runecarver Sorn", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[156818] = {
					"Wrathion", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155156] = {
					"Jaina Proudmoore", -- [1]
					"The Eternal Palace", -- [2]
				},
				[150169] = {
					"Toxic Lurker", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[150297] = {
					"Mechagon Renormalizer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[159632] = {
					"Cultist Shadowblade", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["136214"] = {
					"Windspeaker Heldis", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["134739"] = {
					"Purification Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				["134331"] = {
					"King Rahu'ai", -- [1]
					"Kings' Rest", -- [2]
				},
				[159633] = {
					"Cultist Executioner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[156820] = {
					"Dod", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["134232"] = {
					"Hired Assassin", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[152089] = {
					"Thrall", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				["134617"] = {
					"Krolusk Hatchling", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[156949] = {
					"Armsmaster Terenson", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["132713"] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157461] = {
					"Mycelial Cyst", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134060] = {
					"Lord Stormsong", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[151579] = {
					"Shield Generator", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["137233"] = {
					"Plague Toad", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["134364"] = {
					"Faithless Tender", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["136083"] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[159764] = {
					"Jesh'ra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[152987] = {
					"Faceless Willbreaker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["126848"] = {
					"Captain Eudora", -- [1]
					"Freehold", -- [2]
				},
				["138187"] = {
					"Grotesque Horror", -- [1]
					"The Underrot", -- [2]
				},
				["135989"] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[153755] = {
					"Naeno Megacrash", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[152988] = {
					"Faceless Shadowcaller", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[155162] = {
					"Lor'themar Theron", -- [1]
					"The Eternal Palace", -- [2]
				},
				["135322"] = {
					"The Golden Serpent", -- [1]
					"Kings' Rest", -- [2]
				},
				[159510] = {
					"Eye of the Depths", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144293] = {
					"Waste Processing Unit", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["137473"] = {
					"Guard Captain Atu", -- [1]
					"Kings' Rest", -- [2]
				},
				["144071"] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[161173] = {
					"Abyssal Watcher", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["134069"] = {
					"Vol'zith the Whisperer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[144294] = {
					"Mechagon Tinkerer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[159767] = {
					"Sanguimar", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[121571] = {
					"Smytten", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[26125] = {
					"Spinegrinder", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144295] = {
					"Mechagon Mechanic", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[159768] = {
					"Deresh of the Nothingness", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153119] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[157467] = {
					"Void Ascendant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144296] = {
					"Spider Tank", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[88708] = {
					"Gara", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["137625"] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				["138255"] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[159514] = {
					"Blood of Ny'alotha", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["130012"] = {
					"Irontide Ravager", -- [1]
					"Freehold", -- [2]
				},
				[153760] = {
					"Enthralled Footman", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135474] = {
					"Thistle Acolyte", -- [1]
					"Waycrest Manor", -- [2]
				},
				["131825"] = {
					"Sister Briar", -- [1]
					"Waycrest Manor", -- [2]
				},
				["134060"] = {
					"Lord Stormsong", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["122986"] = {
					"Wild Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				["133384"] = {
					"Merektha", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[131383] = {
					"Sporecaller Zancha", -- [1]
					"The Underrot", -- [2]
				},
				[156575] = {
					"Dark Inquisitor Xanesh", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["129371"] = {
					"Riptide Shredder", -- [1]
					"Siege of Boralus", -- [2]
				},
				["133852"] = {
					"Living Rot", -- [1]
					"The Underrot", -- [2]
				},
				["130489"] = {
					"Dazarian Stalker", -- [1]
					"Freehold", -- [2]
				},
				["139626"] = {
					"Dredged Sailor", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["132481"] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144300] = {
					"Mechagon Citizen", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[130653] = {
					"Wanton Sapper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[162331] = {
					"Corrupted Neuron", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[158367] = {
					"Basher Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135989] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[162715] = {
					"Fanatical Cultist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133432] = {
					"Venture Co. Alchemist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[160904] = {
					"Image of Absolution", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157602] = {
					"Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[161437] = {
					"Explosive Scarab", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[125828] = {
					"Dragvo", -- [1]
					"Atal'Dazar", -- [2]
				},
				[162716] = {
					"Spellbound Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[148522] = {
					"Ice Block", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134284] = {
					"Fallen Deathspeaker", -- [1]
					"The Underrot", -- [2]
				},
				["129526"] = {
					"Bilge Rat Swabby", -- [1]
					"Freehold", -- [2]
				},
				["128434"] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[24207] = {
					"Army of the Dead", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["122972"] = {
					"Dazar'ai Augur", -- [1]
					"Atal'Dazar", -- [2]
				},
				[163612] = {
					"Voidspawn Annihilator", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[162717] = {
					"Sinister Soulcarver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[129553] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				["135052"] = {
					"Blight Toad", -- [1]
					"Waycrest Manor", -- [2]
				},
				["136005"] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[148907] = {
					"Prismatic Image", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[151657] = {
					"Bomb Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["139949"] = {
					"Plague Doctor", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["138369"] = {
					"Footbomb Hooligan", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[162718] = {
					"Iron-Willed Enforcer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[158690] = {
					"Cultist Tormenter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[130655] = {
					"Bobby Howlis", -- [1]
					"Tol Dagor", -- [2]
				},
				["129231"] = {
					"Rixxa Fluxflame", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[122968] = {
					"Yazma", -- [1]
					"Atal'Dazar", -- [2]
				},
				[159266] = {
					"Portal Master", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["122968"] = {
					"Yazma", -- [1]
					"Atal'Dazar", -- [2]
				},
				["136250"] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[162719] = {
					"Void Ascendant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[154663] = {
					"Gnome-Eating Droplet", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[129232] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133436] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133430] = {
					"Venture Co. Mastermind", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[155161] = {
					"Shandris Feathermoon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157349] = {
					"Void Boar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[155158] = {
					"First Arcanist Thalyssra", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157605] = {
					"Burrowing Appendage", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				["131669"] = {
					"Jagged Hound", -- [1]
					"Waycrest Manor", -- [2]
				},
				[161895] = {
					"Thing From Beyond", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["139269"] = {
					"Gloom Horror", -- [1]
					"Waycrest Manor", -- [2]
				},
				[134056] = {
					"Aqu'sirr", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[153130] = {
					"Greater Void Elemental", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134423] = {
					"Abyss Dweller", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["131677"] = {
					"Heartsbane Runeweaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				["127757"] = {
					"Reanimated Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				["133663"] = {
					"Fanatical Headhunter", -- [1]
					"The Underrot", -- [2]
				},
				[122984] = {
					"Dazar'ai Colossus", -- [1]
					"Atal'Dazar", -- [2]
				},
				[154240] = {
					"Azshara's Devoted", -- [1]
					"The Eternal Palace", -- [2]
				},
				[153090] = {
					"Lady Venomtongue", -- [1]
					"The Eternal Palace", -- [2]
				},
				["133432"] = {
					"Venture Co. Alchemist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[150190] = {
					"HK-8 Aerial Oppression Unit", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[161571] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157607] = {
					"Faceless Shadowcaller", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136470] = {
					"Refreshment Vendor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[150165] = {
					"Slime Elemental", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["139799"] = {
					"Ironhull Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["122967"] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
				},
				[156642] = {
					"Enthralled Laborer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[158375] = {
					"Corruptor Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[161312] = {
					"Crushing Tendril", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[163746] = {
					"Walkie Shockie X1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["126928"] = {
					"Irontide Corsair", -- [1]
					"Freehold", -- [2]
				},
				[156653] = {
					"Coagulated Horror", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[130635] = {
					"Stonefury", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[127879] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[129227] = {
					"Azerokk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[158376] = {
					"Psychus", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157604] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[157609] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153091] = {
					"Serena Scarscale", -- [1]
					"The Eternal Palace", -- [2]
				},
				[155657] = {
					"Huffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				["136006"] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["129553"] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134701] = {
					"Blood Effigy", -- [1]
					"The Underrot", -- [2]
				},
				["131864"] = {
					"Gorak Tul", -- [1]
					"Waycrest Manor", -- [2]
				},
				[144298] = {
					"Defense Bot Mk III", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[157610] = {
					"K'thir Dominator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153060] = {
					"Cyranus", -- [1]
					"The Eternal Palace", -- [2]
				},
				["134157"] = {
					"Shadow-Borne Warrior", -- [1]
					"Kings' Rest", -- [2]
				},
				[158567] = {
					"Tormented Kor'kron Annihilator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[156161] = {
					"Inquisitor Gnshal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[138281] = {
					"Faceless Corruptor", -- [1]
					"The Underrot", -- [2]
				},
				["1860"] = {
					"Graz'krast", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["131586"] = {
					"Banquet Steward", -- [1]
					"Waycrest Manor", -- [2]
				},
				[160663] = {
					"Essence of Nightmare", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["131670"] = {
					"Heartsbane Vinetwister", -- [1]
					"Waycrest Manor", -- [2]
				},
				[134338] = {
					"Tidesage Enforcer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["128652"] = {
					"Viq'Goth", -- [1]
					"Siege of Boralus", -- [2]
				},
				[134069] = {
					"Vol'zith the Whisperer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[158588] = {
					"Gamon", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[150195] = {
					"Gnome-Eating Slime", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[153059] = {
					"Aethanel", -- [1]
					"The Eternal Palace", -- [2]
				},
				["134691"] = {
					"Static-charged Dervish", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[135234] = {
					"Diseased Mastiff", -- [1]
					"Waycrest Manor", -- [2]
				},
				[160937] = {
					"Night Terror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[130435] = {
					"Addled Thug", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["137969"] = {
					"Interment Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[159275] = {
					"Portal Keeper", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[153097] = {
					"Voidbound Shaman", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				["139425"] = {
					"Crazed Incubator", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[157613] = {
					"Maw of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135975] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[69712] = {
					"JiKun", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155951] = {
					"Ruffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131527] = {
					"Lord Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				[155656] = {
					"Misha", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[156795] = {
					"SI:7 Informant", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[157486] = {
					"Horrific Hemorrhage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[151476] = {
					"Blastatron X-80", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[149558] = {
					"Jaina's Tide Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				["139422"] = {
					"Scaled Krolusk Tamer", -- [1]
					"Temple of Sethraliss", -- [2]
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
				[130661] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[127757] = {
					"Reanimated Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[145967] = {
					"Ooga", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135365] = {
					"Matron Alma", -- [1]
					"Waycrest Manor", -- [2]
				},
				[155953] = {
					"C'Thuffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[89] = {
					"Infernal", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[136006] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131785] = {
					"Buzzing Drone", -- [1]
					"Tol Dagor", -- [2]
				},
				["135263"] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144303] = {
					"G.U.A.R.D.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["133835"] = {
					"Feral Bloodswarmer", -- [1]
					"The Underrot", -- [2]
				},
				[135366] = {
					"Blacktooth Arsonist", -- [1]
					"Tol Dagor", -- [2]
				},
				[131402] = {
					"Underrot Tick", -- [1]
					"The Underrot", -- [2]
				},
				["127799"] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[153141] = {
					"Endless Hunger Totem", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				["133463"] = {
					"Venture Co. War Machine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[137029] = {
					"Ordnance Specialist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["133685"] = {
					"Befouled Spirit", -- [1]
					"The Underrot", -- [2]
				},
				[161241] = {
					"Voidweaver Mal'thir", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[150712] = {
					"Trixie Tazer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["137989"] = {
					"Embalming Fluid", -- [1]
					"Kings' Rest", -- [2]
				},
				[161198] = {
					"Warpweaver Dushar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				["131824"] = {
					"Sister Solena", -- [1]
					"Waycrest Manor", -- [2]
				},
				[150547] = {
					"Scrapbone Grunter", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[157608] = {
					"Faceless Willbreaker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153526] = {
					"Aqir Swarmer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				["134990"] = {
					"Charged Dust Devil", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[133663] = {
					"Fanatical Headhunter", -- [1]
					"The Underrot", -- [2]
				},
				["136076"] = {
					"Agitated Nimbus", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["131545"] = {
					"Lady Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				["128551"] = {
					"Irontide Mastiff", -- [1]
					"Freehold", -- [2]
				},
				["133912"] = {
					"Bloodsworn Defiler", -- [1]
					"The Underrot", -- [2]
				},
				[127315] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				["136295"] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["129372"] = {
					"Blacktar Bomber", -- [1]
					"Siege of Boralus", -- [2]
				},
				[139800] = {
					"Galecaller Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[156980] = {
					"Essence of Void", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[136688] = {
					"Fanatical Driller", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131445] = {
					"Block Warden", -- [1]
					"Tol Dagor", -- [2]
				},
				[133835] = {
					"Feral Bloodswarmer", -- [1]
					"The Underrot", -- [2]
				},
				[133963] = {
					"Test Subject", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157620] = {
					"Prophet Skitra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137103] = {
					"Blood Visage", -- [1]
					"The Underrot", -- [2]
				},
				["127111"] = {
					"Irontide Oarsman", -- [1]
					"Freehold", -- [2]
				},
				[148797] = {
					"Magus of the Dead", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135048] = {
					"Gorestained Piglet", -- [1]
					"Waycrest Manor", -- [2]
				},
				["131858"] = {
					"Thornguard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[133836] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[153401] = {
					"K'thir Dominator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[416] = {
					"Jubnam", -- [1]
					"The Eternal Palace", -- [2]
				},
				[136005] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[158343] = {
					"Organ of Corruption", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["130488"] = {
					"Mech Jockey", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[417] = {
					"Sruuzun", -- [1]
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
				[136353] = {
					"Colossal Tentacle", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[130025] = {
					"Irontide Thug", -- [1]
					"Tol Dagor", -- [2]
				},
				["131585"] = {
					"Enthralled Guard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[135706] = {
					"Bilge Rat Looter", -- [1]
					"Tol Dagor", -- [2]
				},
				[146753] = {
					"Kul Tiran Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136330] = {
					"Soul Thorns", -- [1]
					"Waycrest Manor", -- [2]
				},
				["137626"] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				["132530"] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[130087] = {
					"Irontide Raider", -- [1]
					"Tol Dagor", -- [2]
				},
				[153531] = {
					"Aqir Bonecrusher", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[151613] = {
					"Anti-Personnel Squirrel", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[138187] = {
					"Grotesque Horror", -- [1]
					"The Underrot", -- [2]
				},
				[134041] = {
					"Infected Peasant", -- [1]
					"Waycrest Manor", -- [2]
				},
				[156089] = {
					"Aqir Venomweaver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[159320] = {
					"Amahtet", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135699] = {
					"Ashvane Jailer", -- [1]
					"Tol Dagor", -- [2]
				},
				["135472"] = {
					"Zanazal the Wise", -- [1]
					"Kings' Rest", -- [2]
				},
				[130026] = {
					"Bilge Rat Seaspeaker", -- [1]
					"Tol Dagor", -- [2]
				},
				[158136] = {
					"Inquisitor Darkspeak", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["125977"] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				["134629"] = {
					"Scaled Krolusk Rider", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[160182] = {
					"Void Initiate", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131666] = {
					"Coven Thornshaper", -- [1]
					"Waycrest Manor", -- [2]
				},
				["138061"] = {
					"Venture Co. Longshoreman", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130909] = {
					"Fetid Maggot", -- [1]
					"The Underrot", -- [2]
				},
				[149441] = {
					"Frozen Ballista", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134024] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				["137521"] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				["135245"] = {
					"Bilge Rat Demolisher", -- [1]
					"Siege of Boralus", -- [2]
				},
				[153022] = {
					"Snang", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131667] = {
					"Soulbound Goliath", -- [1]
					"Waycrest Manor", -- [2]
				},
				[159416] = {
					"Spiked Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[138061] = {
					"Venture Co. Longshoreman", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130027] = {
					"Ashvane Marine", -- [1]
					"Tol Dagor", -- [2]
				},
				[135240] = {
					"Soul Essence", -- [1]
					"Waycrest Manor", -- [2]
				},
				[158774] = {
					"Broken Citizen", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["129548"] = {
					"Blacktooth Brute", -- [1]
					"Freehold", -- [2]
				},
				[156577] = {
					"Therum Deepforge", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["131819"] = {
					"Coven Diviner", -- [1]
					"Waycrest Manor", -- [2]
				},
				[159417] = {
					"Demented Knife-Twister", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[161335] = {
					"Void Horror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["136186"] = {
					"Tidesage Spiritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["128967"] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				["131685"] = {
					"Runic Disciple", -- [1]
					"Waycrest Manor", -- [2]
				},
				["132491"] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[145185] = {
					"Gnomercy 4.U.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[131669] = {
					"Jagged Hound", -- [1]
					"Waycrest Manor", -- [2]
				},
				[161286] = {
					"Dark Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[122972] = {
					"Dazar'ai Augur", -- [1]
					"Atal'Dazar", -- [2]
				},
				[130028] = {
					"Ashvane Priest", -- [1]
					"Tol Dagor", -- [2]
				},
				["134174"] = {
					"Shadow-Borne Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				["135470"] = {
					"Aka'ali the Conqueror", -- [1]
					"Kings' Rest", -- [2]
				},
				["131823"] = {
					"Sister Malady", -- [1]
					"Waycrest Manor", -- [2]
				},
				[127484] = {
					"Jes Howlis", -- [1]
					"Tol Dagor", -- [2]
				},
				[131670] = {
					"Heartsbane Vinetwister", -- [1]
					"Waycrest Manor", -- [2]
				},
				["133430"] = {
					"Venture Co. Mastermind", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133972] = {
					"Heavy Cannon", -- [1]
					"Tol Dagor", -- [2]
				},
				[129517] = {
					"Reanimated Raptor", -- [1]
					"Atal'Dazar", -- [2]
				},
				["134390"] = {
					"Sand-crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["132056"] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133870] = {
					"Diseased Lasher", -- [1]
					"The Underrot", -- [2]
				},
				[134612] = {
					"Grasping Tentacles", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[162647] = {
					"Willing Sacrifice", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[136249] = {
					"Guardian Elemental", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[154744] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["129527"] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[158781] = {
					"Shredded Psyche", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134173] = {
					"Animated Droplet", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["136470"] = {
					"Refreshment Vendor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["130400"] = {
					"Irontide Crusher", -- [1]
					"Freehold", -- [2]
				},
				["130404"] = {
					"Vermin Trapper", -- [1]
					"Freehold", -- [2]
				},
				["135365"] = {
					"Matron Alma", -- [1]
					"Waycrest Manor", -- [2]
				},
				[157475] = {
					"Synthesis Growth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[132056] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["127124"] = {
					"Freehold Barhand", -- [1]
					"Freehold", -- [2]
				},
				["133345"] = {
					"Feckless Assistant", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133463] = {
					"Venture Co. War Machine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131545] = {
					"Lady Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				["128649"] = {
					"Sergeant Bainbridge", -- [1]
					"Siege of Boralus", -- [2]
				},
				[162828] = {
					"Corrosive Digester", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["131587"] = {
					"Bewitched Captain", -- [1]
					"Waycrest Manor", -- [2]
				},
				["130575"] = {
					"Wandering Axebeak", -- [1]
					"Atal'Dazar", -- [2]
				},
				[135254] = {
					"Irontide Raider", -- [1]
					"Tol Dagor", -- [2]
				},
				[144299] = {
					"Workshop Defender", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["128435"] = {
					"Toxic Saurid", -- [1]
					"Atal'Dazar", -- [2]
				},
				["135048"] = {
					"Gorestained Piglet", -- [1]
					"Waycrest Manor", -- [2]
				},
				["136643"] = {
					"Azerite Extractor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["134991"] = {
					"Sandfury Stonefist", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["131847"] = {
					"Waycrest Reveler", -- [1]
					"Waycrest Manor", -- [2]
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
				[160291] = {
					"Ashwalker Assassin", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133593] = {
					"Expert Technician", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[158371] = {
					"Zardeth of the Black Claw", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["130896"] = {
					"Blackout Barrel", -- [1]
					"Freehold", -- [2]
				},
				[157447] = {
					"Fanatical Cultist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[154565] = {
					"Loyal Myrmidon", -- [1]
					"The Eternal Palace", -- [2]
				},
				["122973"] = {
					"Dazar'ai Confessor", -- [1]
					"Atal'Dazar", -- [2]
				},
				["131402"] = {
					"Underrot Tick", -- [1]
					"The Underrot", -- [2]
				},
				["134338"] = {
					"Tidesage Enforcer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[158146] = {
					"Fallen Riftwalker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["130485"] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[159425] = {
					"Occult Shadowmender", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[158035] = {
					"Magister Umbric", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["133379"] = {
					"Adderis", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["135975"] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[155845] = {
					"Crushing Depths", -- [1]
					"The Eternal Palace", -- [2]
				},
				["138493"] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[152009] = {
					"Malfunctioning Scrapbot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[131677] = {
					"Heartsbane Runeweaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				[153377] = {
					"Goop", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["135765"] = {
					"Torrent Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				["137830"] = {
					"Pallid Gorger", -- [1]
					"Waycrest Manor", -- [2]
				},
				["130661"] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136665] = {
					"Ashvane Spotter", -- [1]
					"Tol Dagor", -- [2]
				},
				["134284"] = {
					"Fallen Deathspeaker", -- [1]
					"The Underrot", -- [2]
				},
				[161217] = {
					"Aqir Skitterer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157253] = {
					"Ka'zir", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133852] = {
					"Living Rot", -- [1]
					"The Underrot", -- [2]
				},
				[128434] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				["130521"] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				["133361"] = {
					"Wasting Servant", -- [1]
					"Waycrest Manor", -- [2]
				},
				["137204"] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[133482] = {
					"Crawler Mine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[161218] = {
					"Aqir Crusher", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157254] = {
					"Tek'ris", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["122984"] = {
					"Dazar'ai Colossus", -- [1]
					"Atal'Dazar", -- [2]
				},
				["137405"] = {
					"Gripping Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				["134417"] = {
					"Deepsea Ritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["129599"] = {
					"Cutwater Knife Juggler", -- [1]
					"Freehold", -- [2]
				},
				["129758"] = {
					"Irontide Grenadier", -- [1]
					"Freehold", -- [2]
				},
				["134024"] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				[78116] = {
					"Water Elemental", -- [1]
					"Shrine of the Storm", -- [2]
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
				[136934] = {
					"Weapons Tester", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["141565"] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				["131666"] = {
					"Coven Thornshaper", -- [1]
					"Waycrest Manor", -- [2]
				},
				["131383"] = {
					"Sporecaller Zancha", -- [1]
					"The Underrot", -- [2]
				},
				["134144"] = {
					"Living Current", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[157256] = {
					"Aqir Darter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["129529"] = {
					"Blacktooth Scrapper", -- [1]
					"Freehold", -- [2]
				},
				["134063"] = {
					"Brother Ironhull", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["135971"] = {
					"Faithless Conscript", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[150249] = {
					"Pistonhead Scrapper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[162508] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[136541] = {
					"Bile Oozeling", -- [1]
					"Waycrest Manor", -- [2]
				},
				[131818] = {
					"Marked Sister", -- [1]
					"Waycrest Manor", -- [2]
				},
				["136984"] = {
					"Reban", -- [1]
					"Kings' Rest", -- [2]
				},
				["130011"] = {
					"Irontide Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[132713] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[127477] = {
					"Saltwater Snapper", -- [1]
					"Tol Dagor", -- [2]
				},
				["134418"] = {
					"Drowned Depthbringer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[133345] = {
					"Feckless Assistant", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[152910] = {
					"Queen Azshara", -- [1]
					"The Eternal Palace", -- [2]
				},
				[159303] = {
					"Monstrous Behemoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["134005"] = {
					"Shalebiter", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[135903] = {
					"Manifestation of the Deep", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[150253] = {
					"Weaponized Crawler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["133870"] = {
					"Diseased Lasher", -- [1]
					"The Underrot", -- [2]
				},
				["137940"] = {
					"Safety Shark", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["134993"] = {
					"Mchimba the Embalmer", -- [1]
					"Kings' Rest", -- [2]
				},
				["139097"] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["136249"] = {
					"Guardian Elemental", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["127119"] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[131812] = {
					"Heartsbane Soulcharmer", -- [1]
					"Waycrest Manor", -- [2]
				},
				[150295] = {
					"Tank Buster MK1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["135204"] = {
					"Spectral Hex Priest", -- [1]
					"Kings' Rest", -- [2]
				},
				["133943"] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[144301] = {
					"Living Waste", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[131436] = {
					"Chosen Blood Matron", -- [1]
					"The Underrot", -- [2]
				},
				[155090] = {
					"Anodized Coilbearer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[131685] = {
					"Runic Disciple", -- [1]
					"Waycrest Manor", -- [2]
				},
				[158411] = {
					"Unstable Servant", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["137484"] = {
					"King A'akul", -- [1]
					"Kings' Rest", -- [2]
				},
				[134144] = {
					"Living Current", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["137485"] = {
					"Bloodsworn Agent", -- [1]
					"Kings' Rest", -- [2]
				},
				["129600"] = {
					"Bilge Rat Brinescale", -- [1]
					"Freehold", -- [2]
				},
				["134616"] = {
					"Krolusk Pup", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["136264"] = {
					"Half-Finished Mummy", -- [1]
					"Kings' Rest", -- [2]
				},
				[158284] = {
					"Craggle Wobbletop", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["131009"] = {
					"Spirit of Gold", -- [1]
					"Atal'Dazar", -- [2]
				},
				["135764"] = {
					"Explosive Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				["136934"] = {
					"Weapons Tester", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["138740"] = {
					"Musashitake", -- [1]
					"The Underrot", -- [2]
				},
				["139946"] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[158286] = {
					"Reprogrammed Warbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[158157] = {
					"Overlord Mathias Shaw", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[159308] = {
					"Zealous Adherent", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["138247"] = {
					"Irontide Marauder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[158285] = {
					"Tinkered Shieldbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[127799] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				["122963"] = {
					"Rezan", -- [1]
					"Atal'Dazar", -- [2]
				},
				[161408] = {
					"Malicious Growth", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["134599"] = {
					"Imbued Stormcaller", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[158158] = {
					"Forge-Guard Hurrul", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[159309] = {
					"Leeching Parasite", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[127479] = {
					"The Sand Queen", -- [1]
					"Tol Dagor", -- [2]
				},
				[130485] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[127480] = {
					"Stinging Parasite", -- [1]
					"Tol Dagor", -- [2]
				},
				["130024"] = {
					"Soggy Shiprat", -- [1]
					"Freehold", -- [2]
				},
				["122971"] = {
					"Dazar'ai Juggernaut", -- [1]
					"Atal'Dazar", -- [2]
				},
				["136541"] = {
					"Bile Oozeling", -- [1]
					"Waycrest Manor", -- [2]
				},
				["137103"] = {
					"Blood Visage", -- [1]
					"The Underrot", -- [2]
				},
				["125828"] = {
					"Zetapally", -- [1]
					"Atal'Dazar", -- [2]
				},
				[131817] = {
					"Cragmaw the Infested", -- [1]
					"The Underrot", -- [2]
				},
				["134828"] = {
					"Aqualing", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[159305] = {
					"Maddened Conscript", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["141282"] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[157904] = {
					"Aqir Scarab", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				["129214"] = {
					"Coin-Operated Crowd Pummeler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[161229] = {
					"Aqir Venomweaver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["135903"] = {
					"Manifestation of the Deep", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["126983"] = {
					"Harlan Sweete", -- [1]
					"Freehold", -- [2]
				},
				[158279] = {
					"Haywire Clockwork Rocket Bot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["135241"] = {
					"Bilge Rat Pillager", -- [1]
					"Siege of Boralus", -- [2]
				},
				["138464"] = {
					"Ashvane Deckhand", -- [1]
					"Siege of Boralus", -- [2]
				},
				["136353"] = {
					"Colossal Tentacle", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["135049"] = {
					"Dreadwing Raven", -- [1]
					"Waycrest Manor", -- [2]
				},
				["129602"] = {
					"Irontide Enforcer", -- [1]
					"Freehold", -- [2]
				},
				[159312] = {
					"Living Blood", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131819] = {
					"Coven Diviner", -- [1]
					"Waycrest Manor", -- [2]
				},
				["142587"] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				[136347] = {
					"Tidesage Initiate", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[136295] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["128969"] = {
					"Ashvane Commander", -- [1]
					"Siege of Boralus", -- [2]
				},
				[153942] = {
					"Annihilator Lak'hal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[150143] = {
					"Scrapbone Grinder", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[137830] = {
					"Pallid Gorger", -- [1]
					"Waycrest Manor", -- [2]
				},
				["129367"] = {
					"Bilge Rat Tempest", -- [1]
					"Siege of Boralus", -- [2]
				},
				["135761"] = {
					"Thundering Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[127482] = {
					"Sewer Vicejaw", -- [1]
					"Tol Dagor", -- [2]
				},
				["133935"] = {
					"Animated Guardian", -- [1]
					"Kings' Rest", -- [2]
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
				[157268] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131821] = {
					"Faceless Maiden", -- [1]
					"Waycrest Manor", -- [2]
				},
				[134828] = {
					"Aqualing", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[135052] = {
					"Blight Toad", -- [1]
					"Waycrest Manor", -- [2]
				},
				[136297] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[163841] = {
					"Amalgamation of Flesh", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["135846"] = {
					"Sand-Crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				["138019"] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				["141939"] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[157612] = {
					"Eye of Drest'agath", -- [1]
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
				["131818"] = {
					"Marked Sister", -- [1]
					"Waycrest Manor", -- [2]
				},
				["135239"] = {
					"Spectral Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				["129802"] = {
					"Earthrager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[160061] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["136347"] = {
					"Tidesage Initiate", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[131823] = {
					"Sister Malady", -- [1]
					"Waycrest Manor", -- [2]
				},
				["134612"] = {
					"Grasping Tentacles", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[161746] = {
					"Ossirat", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["130435"] = {
					"Addled Thug", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157354] = {
					"Vexiona", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[130582] = {
					"Despondent Scallywag", -- [1]
					"Tol Dagor", -- [2]
				},
				["129370"] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[123731] = {
					"Horse", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131824] = {
					"Sister Solena", -- [1]
					"Waycrest Manor", -- [2]
				},
				["139800"] = {
					"Galecaller Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["129373"] = {
					"Dockhound Packmaster", -- [1]
					"Siege of Boralus", -- [2]
				},
				["137517"] = {
					"Ashvane Destroyer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[151773] = {
					"Junkyard D.0.G.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["134423"] = {
					"Abyss Dweller", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[155098] = {
					"Rexxar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[160341] = {
					"Sewer Beastling", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[131825] = {
					"Sister Briar", -- [1]
					"Waycrest Manor", -- [2]
				},
				[131864] = {
					"Gorak Tul", -- [1]
					"Waycrest Manor", -- [2]
				},
				["134056"] = {
					"Aqu'sirr", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[152669] = {
					"Void Globule", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				["129552"] = {
					"Monzumi", -- [1]
					"Atal'Dazar", -- [2]
				},
				[139626] = {
					"Dredged Sailor", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[132051] = {
					"Blood Tick", -- [1]
					"The Underrot", -- [2]
				},
				["134041"] = {
					"Infected Peasant", -- [1]
					"Waycrest Manor", -- [2]
				},
				[160183] = {
					"Void Fanatic", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[161334] = {
					"Gnashing Terror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[127485] = {
					"Bilge Rat Looter", -- [1]
					"Tol Dagor", -- [2]
				},
				["135167"] = {
					"Spectral Berserker", -- [1]
					"Kings' Rest", -- [2]
				},
				[133361] = {
					"Wasting Servant", -- [1]
					"Waycrest Manor", -- [2]
				},
				[158041] = {
					"N'Zoth the Corruptor", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153532] = {
					"Aqir Mindhunter", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				["127879"] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				["130437"] = {
					"Mine Rat", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["135240"] = {
					"Soul Essence", -- [1]
					"Waycrest Manor", -- [2]
				},
				["134139"] = {
					"Shrine Templar", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[157614] = {
					"Tentacle of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157450] = {
					"Spellbound Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[58959] = {
					"Wikpik", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["141495"] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[159321] = {
					"Khateph", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150293] = {
					"Mechagon Prowler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[136139] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[127486] = {
					"Ashvane Officer", -- [1]
					"Tol Dagor", -- [2]
				},
				[151649] = {
					"Defense Bot Mk I", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[157365] = {
					"Crackling Stalker", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134514] = {
					"Abyssal Cultist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[152033] = {
					"Inconspicuous Plant", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[139799] = {
					"Ironhull Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[153527] = {
					"Aqir Swarmleader", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[159578] = {
					"Exposed Synapse", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["141566"] = {
					"Scrimshaw Gutter", -- [1]
					"Siege of Boralus", -- [2]
				},
				["131850"] = {
					"Maddened Survivalist", -- [1]
					"Waycrest Manor", -- [2]
				},
				[131318] = {
					"Elder Leaxa", -- [1]
					"The Underrot", -- [2]
				},
				["131318"] = {
					"Elder Leaxa", -- [1]
					"The Underrot", -- [2]
				},
				[69943] = {
					"Ralph", -- [1]
					"The Eternal Palace", -- [2]
				},
				["133593"] = {
					"Expert Technician", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["136139"] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["133007"] = {
					"Unbound Abomination", -- [1]
					"The Underrot", -- [2]
				},
				[142587] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				["141284"] = {
					"Kul Tiran Wavetender", -- [1]
					"Siege of Boralus", -- [2]
				},
				["141285"] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[134063] = {
					"Brother Ironhull", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[137713] = {
					"Big Money Crab", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["135474"] = {
					"Thistle Acolyte", -- [1]
					"Waycrest Manor", -- [2]
				},
				[154524] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				["137478"] = {
					"Queen Wasi", -- [1]
					"Kings' Rest", -- [2]
				},
				[146409] = {
					"Lady Jaina Proudmoore", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[120651] = {
					"Explosives", -- [1]
					"The Underrot", -- [2]
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
					"Operation: Mechagon", -- [2]
				},
				[134058] = {
					"Galecaller Faye", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["129517"] = {
					"Reanimated Raptor", -- [1]
					"Atal'Dazar", -- [2]
				},
				["135475"] = {
					"Kula the Butcher", -- [1]
					"Kings' Rest", -- [2]
				},
				[127488] = {
					"Ashvane Flamecaster", -- [1]
					"Tol Dagor", -- [2]
				},
				[125977] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[152699] = {
					"Voidbound Berserker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153244] = {
					"Oblivion Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[161244] = {
					"Blood of the Corruptor", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[156406] = {
					"Voidbound Honor Guard", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				["122965"] = {
					"Vol'kaal", -- [1]
					"Atal'Dazar", -- [2]
				},
				["136549"] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[156641] = {
					"Enthralled Weaponsmith", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[157449] = {
					"Sinister Soulcarver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140038] = {
					"Abyssal Eel", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[134519] = {
					"Grizz", -- [1]
					"The Eternal Palace", -- [2]
				},
				[137716] = {
					"Bottom Feeder", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				["134701"] = {
					"Blood Effigy", -- [1]
					"The Underrot", -- [2]
				},
				["138465"] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[157594] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				["126847"] = {
					"Captain Raoul", -- [1]
					"Freehold", -- [2]
				},
				[148631] = {
					"Unexploded Ordnance", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[157603] = {
					"Void Globule", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				["137591"] = {
					"Healing Tide Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[152874] = {
					"Vez'okk the Lightless", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[144286] = {
					"Asset Manager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[161502] = {
					"Ravenous Fleshfiend", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["134600"] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[134137] = {
					"Temple Attendant", -- [1]
					"Shrine of the Storm", -- [2]
				},
				["129547"] = {
					"Blacktooth Knuckleduster", -- [1]
					"Freehold", -- [2]
				},
				[153092] = {
					"Venna Seastorm", -- [1]
					"The Eternal Palace", -- [2]
				},
				[164188] = {
					"Horrific Figment", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[69946] = {
					"Bake", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				["135007"] = {
					"Orb Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[150250] = {
					"Pistonhead Blaster", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[131587] = {
					"Bewitched Captain", -- [1]
					"Waycrest Manor", -- [2]
				},
				[127490] = {
					"Knight Captain Valyri", -- [1]
					"Tol Dagor", -- [2]
				},
				["122970"] = {
					"Shadowblade Stalker", -- [1]
					"Atal'Dazar", -- [2]
				},
				[149535] = {
					"Icebound Image", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[69947] = {
					"Shake", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153064] = {
					"Overzealous Hulk", -- [1]
					"The Eternal Palace", -- [2]
				},
				["133482"] = {
					"Crawler Mine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[150251] = {
					"Pistonhead Mechanic", -- [1]
					"Operation: Mechagon", -- [2]
				},
				["134158"] = {
					"Shadow-Borne Champion", -- [1]
					"Kings' Rest", -- [2]
				},
			},
			["resources"] = {
				["y_offset"] = 1,
				["y_offset_target"] = 9,
				["scale"] = 0.79999995231628,
			},
			["cast_statusbar_spark_offset"] = -13,
			["health_selection_overlay_alpha"] = 0.29999998211861,
			["minor_height_scale"] = 0.99999994039536,
			["cast_statusbar_spark_half"] = true,
			["aura_padding"] = 2,
			["hook_data"] = {
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
					["LastHookEdited"] = "Constructor",
					["Time"] = 1551825291,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["PlaterCore"] = 1,
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
					["Name"] = "Hide Neutral Units [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["Time"] = 1553450458,
					["Icon"] = 1990989,
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
					["Name"] = "Players Targeting a Target [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["Time"] = 1551825362,
					["Icon"] = 1966587,
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
						["role"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
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
					["LastHookEdited"] = "",
					["Time"] = 1552354619,
					["Icon"] = 878211,
					["PlaterCore"] = 1,
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 190,
					["HooksTemp"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
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
							["103"] = true,
							["Enabled"] = true,
						},
					},
					["LastHookEdited"] = "Constructor",
					["Time"] = 1551825317,
					["Icon"] = 135426,
					["PlaterCore"] = 1,
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
					["LastHookEdited"] = "Constructor",
					["Time"] = 1551825335,
					["Icon"] = 133689,
					["PlaterCore"] = 1,
				}, -- [6]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    local bf1Anchor = Plater.db.profile.aura_frame1_anchor\n    Plater.SetAnchor (buffFrame1, {side = bf1Anchor.side, x = bf1Anchor.x, y = bf1Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura_grow_direction or 2) == 2)\n    \n    local bf2Anchor = Plater.db.profile.aura_frame2_anchor\n    Plater.SetAnchor (buffFrame2, {side = bf2Anchor.side, x = bf2Anchor.x, y = bf2Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura2_grow_direction or 2) == 2)\n    \nend\n\n\n",
					},
					["Time"] = 1596791840,
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
					["url"] = "",
					["Icon"] = 574574,
					["Enabled"] = false,
					["Revision"] = 93,
					["semver"] = "",
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Name"] = "Reorder Nameplate [Plater]",
					["PlaterCore"] = 1,
					["version"] = -1,
					["HooksTemp"] = {
					},
					["Options"] = {
					},
				}, -- [7]
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
						["role"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["LastHookEdited"] = "Constructor",
					["Time"] = 1551825317,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["PlaterCore"] = 1,
				}, -- [8]
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
					["Name"] = "Advanced Execute Range",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["Time"] = 1551825289,
					["Icon"] = 135358,
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
				}, -- [9]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n    \n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        local horizontalLength = (-padding or 0)\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 1, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == 1) then\n                        auraIcon:SetPoint (\"bottomleft\", anchorPoint, \"bottomleft\", 0, 0)\n                    elseif (i % framersPerRow == 0) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding or 0)\n                        framersPerRow = framersPerRow + framersPerRow\n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                    horizontalLength = horizontalLength + auraIcon:GetWidth() + padding\n                end\n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 1, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == 1) then\n                        auraIcon:SetPoint (\"bottomright\", anchorPoint, \"bottomright\", 0, 0)\n                    elseif (i % framersPerRow == 0) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding or 0)\n                        framersPerRow = framersPerRow + framersPerRow\n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                    horizontalLength = horizontalLength + auraIcon:GetWidth() + padding\n                end                    \n            end\n            \n            --set the size of the buff frame\n            anchorPoint:SetWidth (horizontalLength)\n            anchorPoint:SetHeight (firstIcon:GetHeight())\n            \n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 2\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
					},
					["Time"] = 1596741775,
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
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Enabled"] = false,
					["Revision"] = 295,
					["semver"] = "",
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Name"] = "Aura Reorder [Plater]",
					["PlaterCore"] = 1,
					["version"] = -1,
					["HooksTemp"] = {
					},
					["Options"] = {
					},
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 237,
					["Options"] = {
					},
					["HooksTemp"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["LastHookEdited"] = "",
					["Desc"] = "Script for the Jaina encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
					},
					["Prio"] = 99,
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
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
							["1"] = 2281,
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["PlaterCore"] = 1,
					["Time"] = 1595728833,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["OptionsValues"] = {
					},
				}, -- [11]
				{
					["Enabled"] = false,
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
					["Name"] = "Stormwall Encounter [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["Time"] = 1551887545,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
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
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
							["1"] = 2280,
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
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
					["LastHookEdited"] = "Constructor",
					["Time"] = 1552962607,
					["Icon"] = 133006,
					["PlaterCore"] = 1,
				}, -- [13]
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
						["spec"] = {
						},
						["role"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["LastHookEdited"] = "Constructor",
					["Time"] = 1551825334,
					["Icon"] = 136207,
					["PlaterCore"] = 1,
				}, -- [14]
				{
					["Enabled"] = false,
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
						["race"] = {
						},
						["affix"] = {
							["Enabled"] = true,
							["117"] = true,
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["Icon"] = 2446016,
					["Time"] = 1579030189,
				}, -- [15]
				{
					["Enabled"] = false,
					["Revision"] = 35,
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
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "Constructor",
					["Time"] = 1553450703,
					["Icon"] = 413580,
					["PlaterCore"] = 1,
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
					["LastHookEdited"] = "Constructor",
					["Time"] = 1551825361,
					["Icon"] = 135473,
					["PlaterCore"] = 1,
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
					["LastHookEdited"] = "Constructor",
					["Time"] = 1553450716,
					["Icon"] = "Interface\\AddOns\\Plater\\media\\exclamation_64",
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
					["Time"] = 1553450705,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["Name"] = "Npc Colors Tag",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\radio_64",
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
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
				}, -- [19]
				{
					["Enabled"] = true,
					["Revision"] = 42,
					["LastHookEdited"] = "Constructor",
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Change the color of the aura timer by it's time left",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --colors for each time bracket\n    envTable.Colors = {\n        critical = \"red\",\n        warning = \"yellow\",\n        okay = \"white\",\n    }\n    \n    --time amount to enter in warning or critical state\n    envTable.Timers = {\n        critical = 4.9,\n        warning = 8,\n    }\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auras = unitFrame.BuffFrame.PlaterBuffList\n    \n    for _, auraIcon in ipairs (auras) do\n        if (auraIcon:IsVisible()) then\n            if (auraIcon.RemainingTime < envTable.Timers.critical) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.critical)\n                \n            elseif (auraIcon.RemainingTime < envTable.Timers.warning) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.warning)\n                \n            else\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.okay)\n            end \n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Prio"] = 99,
					["Time"] = 1579030177,
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
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["PlaterCore"] = 1,
					["Name"] = "Paint Aura Timers",
					["Icon"] = "Interface\\Timer\\Challenges-Logo",
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auras = unitFrame.BuffFrame.PlaterBuffList\n    \n    for _, auraIcon in ipairs (auras) do\n        if (auraIcon:IsVisible()) then\n            if (auraIcon.RemainingTime < envTable.Timers.critical) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.critical)\n                \n            elseif (auraIcon.RemainingTime < envTable.Timers.warning) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.warning)\n                \n            else\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.okay)\n            end \n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --colors for each time bracket\n    envTable.Colors = {\n        critical = \"red\",\n        warning = \"yellow\",\n        okay = \"white\",\n    }\n    \n    --time amount to enter in warning or critical state\n    envTable.Timers = {\n        critical = 4.9,\n        warning = 8,\n    }\n    \nend\n\n\n",
					},
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
					["LastHookEdited"] = "Nameplate Updated",
					["Time"] = 1553450719,
					["Icon"] = 133006,
					["PlaterCore"] = 1,
				}, -- [21]
				{
					["Enabled"] = false,
					["Revision"] = 35,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIndicator (unitFrame, unitId)\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIndicator (unitFrame, unitId)\n    \nend\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    function envTable.UpdateIndicator (unitFrame, unitId)\n        local unitClassification = UnitClassification (unitId)\n        local unitName = UnitName (unitId)\n        unitName = unitName or UNKNOWN\n        \n        if (unitClassification == \"rareelite\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\AddOns\\\\Plater\\\\media\\\\star_full_64:12:12:0:0:64:64:0:64:0:64|t\" .. \"|TInterface\\\\GLUES\\\\CharacterSelect\\\\Glues-AddOn-Icons:12:12:0:0:64:16:48:64:0:16|t \" .. unitName)\n            \n        elseif (unitClassification == \"rare\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\AddOns\\\\Plater\\\\media\\\\star_full_64:12:12:0:0:64:64:0:64:0:64|t\" .. unitName)\n            \n        elseif (unitClassification == \"elite\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\GLUES\\\\CharacterSelect\\\\Glues-AddOn-Icons:12:12:0:0:64:16:48:64:0:16|t\" .. unitName)\n            \n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Author"] = "�r��ne-Kel'thuzad",
					["Desc"] = "Show yellow star for elite; Silver star for rares",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIndicator (unitFrame, unitId)\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIndicator (unitFrame, unitId)\n    \nend\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    function envTable.UpdateIndicator (unitFrame, unitId)\n        local unitClassification = UnitClassification (unitId)\n        local unitName = UnitName (unitId)\n        unitName = unitName or UNKNOWN\n        \n        if (unitClassification == \"rareelite\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\AddOns\\\\Plater\\\\media\\\\star_full_64:12:12:0:0:64:64:0:64:0:64|t\" .. \"|TInterface\\\\GLUES\\\\CharacterSelect\\\\Glues-AddOn-Icons:12:12:0:0:64:16:48:64:0:16|t \" .. unitName)\n            \n        elseif (unitClassification == \"rare\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\AddOns\\\\Plater\\\\media\\\\star_full_64:12:12:0:0:64:64:0:64:0:64|t\" .. unitName)\n            \n        elseif (unitClassification == \"elite\") then\n            unitFrame.unitName:SetText (\"|TInterface\\\\GLUES\\\\CharacterSelect\\\\Glues-AddOn-Icons:12:12:0:0:64:16:48:64:0:16|t\" .. unitName)\n            \n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Name"] = "Rarity in the Name",
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
					["LastHookEdited"] = "Constructor",
					["Time"] = 1551825364,
					["Icon"] = "Interface\\AddOns\\Plater\\media\\star_full_64",
					["PlaterCore"] = 1,
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
					["Time"] = 1579030500,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["Name"] = "Aggro Indicator",
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
				}, -- [23]
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
					["Name"] = "Change All Fonts",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["Time"] = 1551825316,
					["Icon"] = 134331,
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
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
				}, -- [24]
				{
					["Enabled"] = false,
					["Revision"] = 50,
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
					["LastHookEdited"] = "Constructor",
					["Time"] = 1553450521,
					["Icon"] = 1375677,
					["PlaterCore"] = 1,
				}, -- [25]
				{
					["Enabled"] = true,
					["Revision"] = 131,
					["LastHookEdited"] = "Constructor",
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Move the icon of the spell cast to the left or right side of the nameplate.",
					["Hooks"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    --show cast icon\n    envTable.ShowIcon = true\n    --anchor icon on what side\n    envTable.IconAnchor = \"left\" --accep 'left' 'right'\n    --fine tune the size of the icon\n    envTable.IconSizeOffset = 1\n    \n    --shield for non interruptible casts\n    envTable.ShowShield = false\n    envTable.ShieldTexture = [[Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON]]\n    envTable.ShieldDesaturated = true\n    envTable.ShieldColor = {1, 1, 1 ,1}\n    envTable.ShieldSize = {10, 12}\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local shield = castBar.BorderShield\n        \n        if (envTable.ShowIcon) then\n            icon:ClearAllPoints()\n            \n            if (envTable.IconAnchor == \"left\") then\n                icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -1, 0)    \n                \n            elseif (envTable.IconAnchor == \"right\") then\n                icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", 1, 0)\n                \n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n            \n        else\n            icon:Hide()\n            \n        end\n        \n        if (envTable.ShowShield and not castBar.canInterrupt) then\n            shield:Show()\n            shield:SetAlpha (1)\n            shield:SetTexCoord (0, 1, 0, 1)\n            shield:SetVertexColor (1, 1, 1, 1)\n            \n            shield:SetTexture (envTable.ShieldTexture)\n            shield:SetDesaturated (envTable.ShieldDesaturated)\n            \n            if (not envTable.ShieldDesaturated) then\n                shield:SetVertexColor (DetailsFramework:ParseColors (envTable.ShieldColor))\n            end\n            \n            shield:SetSize (unpack (envTable.ShieldSize))\n            \n            shield:ClearAllPoints()\n            shield:SetPoint (\"center\", castBar, \"left\", 0, 0)\n            \n        else\n            shield:Hide()\n            \n        end\n        \n    end\nend",
					},
					["Prio"] = 99,
					["Time"] = 1579035896,
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
					["PlaterCore"] = 1,
					["Name"] = "Cast Icon Anchor",
					["Icon"] = "Interface\\Buttons\\UI-Quickslot2",
					["HooksTemp"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    --show cast icon\n    envTable.ShowIcon = true\n    --anchor icon on what side\n    envTable.IconAnchor = \"left\" --accep 'left' 'right'\n    --fine tune the size of the icon\n    envTable.IconSizeOffset = 1\n    \n    --shield for non interruptible casts\n    envTable.ShowShield = false\n    envTable.ShieldTexture = [[Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON]]\n    envTable.ShieldDesaturated = true\n    envTable.ShieldColor = {1, 1, 1 ,1}\n    envTable.ShieldSize = {10, 12}\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local shield = castBar.BorderShield\n        \n        if (envTable.ShowIcon) then\n            icon:ClearAllPoints()\n            \n            if (envTable.IconAnchor == \"left\") then\n                icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -1, 0)    \n                \n            elseif (envTable.IconAnchor == \"right\") then\n                icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", 1, 0)\n                \n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n            \n        else\n            icon:Hide()\n            \n        end\n        \n        if (envTable.ShowShield and not castBar.canInterrupt) then\n            shield:Show()\n            shield:SetAlpha (1)\n            shield:SetTexCoord (0, 1, 0, 1)\n            shield:SetVertexColor (1, 1, 1, 1)\n            \n            shield:SetTexture (envTable.ShieldTexture)\n            shield:SetDesaturated (envTable.ShieldDesaturated)\n            \n            if (not envTable.ShieldDesaturated) then\n                shield:SetVertexColor (DetailsFramework:ParseColors (envTable.ShieldColor))\n            end\n            \n            shield:SetSize (unpack (envTable.ShieldSize))\n            \n            shield:ClearAllPoints()\n            shield:SetPoint (\"center\", castBar, \"left\", 0, 0)\n            \n        else\n            shield:Hide()\n            \n        end\n        \n    end\nend",
					},
				}, -- [26]
				{
					["Enabled"] = true,
					["Revision"] = 62,
					["HooksTemp"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BuildFrames (unitFrame)\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.castBar.IconOverlayFrame) then\n        unitFrame.castBar.IconOverlayFrame:Hide()\n    end\n    \nend\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BuildFrames (unitFrame)\n    \nend\n\n\n",
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
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["Icon"] = 133004,
					["Time"] = 1579031533,
				}, -- [27]
				{
					["Enabled"] = true,
					["Revision"] = 85,
					["LastHookEdited"] = "Constructor",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Adds a pixels perfect border around the cast bar.",
					["Hooks"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder:Hide()\n    end    \nend",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    \n    --hide the icon of the spell, may require /reload after changing\n    envTable.HideIcon = false\n    \n    --border settings\n    envTable.BorderThickness = 1\n    envTable.BorderColor = \"black\"\n    \n    --private\n    --create the border\n    if (not unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder = CreateFrame (\"frame\", nil, unitFrame.castBar, \"NamePlateFullBorderTemplate\")\n    end    \n    \n    --update the border\n    function envTable.UpdateBorder (unitFrame)\n        local castBar = unitFrame.castBar\n        \n        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\n        castBar.CastBarBorder:SetVertexColor (r, g, b, a)\n        \n        local size = envTable.BorderThickness\n        castBar.CastBarBorder:SetBorderSizes (size, size, size, size)\n        castBar.CastBarBorder:UpdateSizes()        \n        \n        if (envTable.HideIcon) then\n            castBar.Icon:Hide()\n        end\n        \n        castBar.CastBarBorder:Show()\n    end\n    \nend\n\n\n\n\n",
					},
					["Prio"] = 99,
					["Time"] = 1579035954,
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
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["PlaterCore"] = 1,
					["Name"] = "Cast Bar Border",
					["Icon"] = 133004,
					["HooksTemp"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder:Hide()\n    end    \nend",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    \n    --hide the icon of the spell, may require /reload after changing\n    envTable.HideIcon = false\n    \n    --border settings\n    envTable.BorderThickness = 1\n    envTable.BorderColor = \"black\"\n    \n    --private\n    --create the border\n    if (not unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder = CreateFrame (\"frame\", nil, unitFrame.castBar, \"NamePlateFullBorderTemplate\")\n    end    \n    \n    --update the border\n    function envTable.UpdateBorder (unitFrame)\n        local castBar = unitFrame.castBar\n        \n        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\n        castBar.CastBarBorder:SetVertexColor (r, g, b, a)\n        \n        local size = envTable.BorderThickness\n        castBar.CastBarBorder:SetBorderSizes (size, size, size, size)\n        castBar.CastBarBorder:UpdateSizes()        \n        \n        if (envTable.HideIcon) then\n            castBar.Icon:Hide()\n        end\n        \n        castBar.CastBarBorder:Show()\n    end\n    \nend\n\n\n\n\n",
					},
				}, -- [28]
				{
					["Enabled"] = true,
					["Revision"] = 43,
					["Options"] = {
					},
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --minimum time left to take effect\n    envTable.MinTime = 9.999\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    for index, auraIcon in ipairs (unitFrame.BuffFrame.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            if (auraIcon.RemainingTime < envTable.MinTime) then\n                auraIcon.TimerText:SetText (format (\"%.1f\", auraIcon.RemainingTime))\n            end\n        end\n    end\n    \n    for index, auraIcon in ipairs (unitFrame.BuffFrame2.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            if (auraIcon.RemainingTime < envTable.MinTime) then            \n                auraIcon.TimerText:SetText (format (\"%.1f\", auraIcon.RemainingTime))\n            end\n        end        \n    end    \nend",
					},
					["Author"] = "????????-Illidan",
					["OptionsValues"] = {
					},
					["Desc"] = "Debuff timer show decimal values",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    for index, auraIcon in ipairs (unitFrame.BuffFrame.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            if (auraIcon.RemainingTime < envTable.MinTime) then\n                auraIcon.TimerText:SetText (format (\"%.1f\", auraIcon.RemainingTime))\n            end\n        end\n    end\n    \n    for index, auraIcon in ipairs (unitFrame.BuffFrame2.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            if (auraIcon.RemainingTime < envTable.MinTime) then            \n                auraIcon.TimerText:SetText (format (\"%.1f\", auraIcon.RemainingTime))\n            end\n        end        \n    end    \nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --minimum time left to take effect\n    envTable.MinTime = 9.999\n    \nend",
					},
					["Prio"] = 99,
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
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["role"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["LastHookEdited"] = "",
					["Time"] = 1595728997,
					["Icon"] = 609811,
					["PlaterCore"] = 1,
				}, -- [29]
				{
					["Enabled"] = true,
					["Revision"] = 81,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --    if false then return end\n    \n    for _, iconFrame in ipairs (unitFrame.ExtraIconFrame.IconPool) do\n        \n        unitFrame.ExtraIconFrame.options.show_text = true\n        \n        local profile = Plater.db.profile\n        \n        Plater.SetAnchor (iconFrame.CountdownText, profile.aura_timer_text_anchor)\n        Plater:SetFontSize (iconFrame.CountdownText, profile.aura_timer_text_size)\n        Plater:SetFontFace (iconFrame.CountdownText, profile.aura_timer_text_font)\n        \n        Plater.SetFontOutlineAndShadow (iconFrame.CountdownText, profile.aura_timer_text_outline, profile.aura_timer_text_shadow_color, profile.aura_timer_text_shadow_color_offset[1], profile.aura_timer_text_shadow_color_offset[2])\n        \n        iconFrame.Cooldown:SetEdgeTexture (profile.aura_cooldown_edge_texture)\n        iconFrame.Cooldown:SetReverse (profile.aura_cooldown_reverse)\n        iconFrame.Cooldown:SetDrawSwipe (profile.aura_cooldown_show_swipe)        \n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    \nend\n\n\n",
					},
					["Author"] = "?????-Illidan",
					["Desc"] = "Format Buff Special icons like the regular aura icons.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --    if false then return end\n    \n    for _, iconFrame in ipairs (unitFrame.ExtraIconFrame.IconPool) do\n        \n        unitFrame.ExtraIconFrame.options.show_text = true\n        \n        local profile = Plater.db.profile\n        \n        Plater.SetAnchor (iconFrame.CountdownText, profile.aura_timer_text_anchor)\n        Plater:SetFontSize (iconFrame.CountdownText, profile.aura_timer_text_size)\n        Plater:SetFontFace (iconFrame.CountdownText, profile.aura_timer_text_font)\n        \n        Plater.SetFontOutlineAndShadow (iconFrame.CountdownText, profile.aura_timer_text_outline, profile.aura_timer_text_shadow_color, profile.aura_timer_text_shadow_color_offset[1], profile.aura_timer_text_shadow_color_offset[2])\n        \n        iconFrame.Cooldown:SetEdgeTexture (profile.aura_cooldown_edge_texture)\n        iconFrame.Cooldown:SetReverse (profile.aura_cooldown_reverse)\n        iconFrame.Cooldown:SetDrawSwipe (profile.aura_cooldown_show_swipe)        \n        \n    end\n    \nend",
					},
					["Name"] = "Buff Special Mod",
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
					["LastHookEdited"] = "Nameplate Updated",
					["Time"] = 1552962644,
					["Icon"] = 136139,
					["PlaterCore"] = 1,
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
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "Player Talent Update",
					["Time"] = 1551887544,
					["Icon"] = "Interface\\AddOns\\Plater\\media\\arrow_right_64",
					["PlaterCore"] = 1,
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
					["LastHookEdited"] = "Target Changed",
					["Time"] = 1551894756,
					["Icon"] = 237377,
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
				}, -- [32]
				{
					["Enabled"] = true,
					["Revision"] = 22,
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
					["LastHookEdited"] = "Cast Update",
					["Time"] = 1579035959,
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
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShowPowerBarForUnit (unitFrame)    \nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --power bar options:\n    \n    --for which units it should\n    envTable.ShowForEnemyPlayers = true\n    envTable.ShowForEnemyNpcs = false\n    \n    --specific npcs, can be the npc name or npcId\n    --this list work even if the ShowForEnemyNpcs is false\n    envTable.SpecificNpcs = {\n        [\"the rock\"] = true, --npc name\n        [225] = true, --npcId\n    }\n    \n    --anchor the power bar to\n    envTable.Anchor = {\n        side = 13, --inside the healthbar, bottom side\n        x = 0, \n        y = 0,\n    }\n    \n    --power bar height\n    envTable.Height = 1\n    \n    --power bar percent text\n    envTable.PercentTextEnabled = false\n    envTable.PercentTextAnchor = {\n        side = 7, --top right\n        x = 2, \n        y = 0,\n    }\n    \n    \n    --private\n    function envTable.ShowPowerbar (unitFrame)\n        unitFrame.powerBar:SetUnit (unitFrame.unit)\n        envTable.UpdatePowerbar (unitFrame)\n    end\n    \n    function envTable.UpdatePowerbar (unitFrame)\n        local powerBar = unitFrame.powerBar\n        Plater.SetAnchor (powerBar, envTable.Anchor, unitFrame.healthBar)\n        powerBar:SetSize (unitFrame.healthBar:GetWidth(), envTable.Height)\n        \n        envTable.SavePowerBarSize (unitFrame, envTable.Height)\n        \n        if (envTable.PercentTextEnabled) then\n            powerBar.percentText:Show()\n            --copy the font from the health percent\n            Plater:SetFontFace (powerBar.percentText, Plater.GetConfig (unitFrame).percent_text_font)\n            Plater:SetFontSize (powerBar.percentText, Plater.GetConfig (unitFrame).percent_text_size)\n            Plater.SetAnchor (powerBar.percentText, envTable.PercentTextAnchor)\n        else\n            powerBar.percentText:Hide()\n        end\n    end\n    \n    function envTable.CanShowPowerBarForUnit (unitFrame)\n        --check if the is in the special list to force show\n        local forceShowPowerBar = envTable.SpecificNpcs [unitFrame.namePlateNpcId] or envTable.SpecificNpcs [unitFrame.namePlateUnitName] or envTable.SpecificNpcs [unitFrame.namePlateUnitNameLower]\n        if (forceShowPowerBar) then\n            envTable.ShowPowerbar (unitFrame)\n            \n            --check if the unit is a enemy player\n        elseif (unitFrame.ActorType == \"enemyplayer\") then\n            if (envTable.ShowForEnemyPlayers) then\n                envTable.ShowPowerbar (unitFrame)\n            end\n            \n            --check if the unit is a enemy npc\n        elseif (unitFrame.ActorType == \"enemynpc\") then\n            if (envTable.ShowForEnemyNpcs) then\n                envTable.ShowPowerbar (unitFrame)\n            end\n        end\n    end\n    \n    function envTable.SavePowerBarSize (unitFrame, height)\n        local plateConfigs = Plater.db.profile.plate_config [unitFrame.ActorType]\n        plateConfigs.mana[1] = plateConfigs.health[1]\n        plateConfigs.mana[2] = height\n        plateConfigs.mana_incombat[1] = plateConfigs.health_incombat[1]\n        plateConfigs.mana_incombat[2] = height\n    end\nend\n\n\n\n\n\n",
					},
					["Prio"] = 99,
					["Name"] = "Power Bar",
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
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["Icon"] = "Interface/Addons/Plater/Media/fire_64",
					["Time"] = 1579030177,
				}, -- [34]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "Player Logon",
					["Hooks"] = {
						["Player Logon"] = "function (self, unitId, unitFrame, envTable)\n    \n    --after editing this script, save it and /reload\n    \n    --adds two target indicators in arrow format\n    --to change the texture you may replace the path with another texture path\n    --or you can copy and paste more options here\n    \n    Plater.TargetIndicators    [\"SmallArrow\"] = {\n        path = [[Interface\\MONEYFRAME\\Arrow-Right-Up]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 12,\n        height = 12,\n        x = 8,\n        y = 0,\n        blend = \"ADD\",\n    }\n    \n    Plater.TargetIndicators    [\"BigArrow\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\arrow_right_64]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 18,\n        height = 16,\n        x = 24,\n        y = 0,\n        blend = \"ADD\",\n        color = \"yellow\",\n    }\n    \n    Plater.TargetIndicators    [\"DoubleArrow\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\arrow_double_right_64]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 20,\n        height = 16,\n        x = 28,\n        y = 0,\n        blend = \"ADD\",\n    }\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1595818995,
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
					["url"] = "https://wago.io/kSaeYFRu2/5",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\arrow_right_64",
					["Enabled"] = true,
					["Revision"] = 41,
					["semver"] = "1.0.4",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Adds two arrows into the target indicators options.",
					["Prio"] = 99,
					["version"] = 5,
					["PlaterCore"] = 1,
					["Name"] = "Arrow Target Indicators",
					["HooksTemp"] = {
						["Player Logon"] = "function (self, unitId, unitFrame, envTable)\n    \n    --after editing this script, save it and /reload\n    \n    --adds two target indicators in arrow format\n    --to change the texture you may replace the path with another texture path\n    --or you can copy and paste more options here\n    \n    Plater.TargetIndicators    [\"SmallArrow\"] = {\n        path = [[Interface\\MONEYFRAME\\Arrow-Right-Up]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 12,\n        height = 12,\n        x = 8,\n        y = 0,\n        blend = \"ADD\",\n    }\n    \n    Plater.TargetIndicators    [\"BigArrow\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\arrow_right_64]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 18,\n        height = 16,\n        x = 24,\n        y = 0,\n        blend = \"ADD\",\n        color = \"yellow\",\n    }\n    \n    Plater.TargetIndicators    [\"DoubleArrow\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\arrow_double_right_64]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 20,\n        height = 16,\n        x = 28,\n        y = 0,\n        blend = \"ADD\",\n    }\n    \nend\n\n\n\n\n",
					},
					["Options"] = {
					},
				}, -- [35]
				{
					["Enabled"] = false,
					["Revision"] = 250,
					["Options"] = {
						{
							["Type"] = 5,
							["Key"] = "option4",
							["Value"] = "Icon Settings:",
							["Name"] = "Icon Settings",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 4,
							["Key"] = "showIcon",
							["Value"] = true,
							["Name"] = "Show Icon",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show the castbar icon when enabled",
						}, -- [2]
						{
							["Type"] = 4,
							["Key"] = "iconOnLeftSide",
							["Value"] = true,
							["Name"] = "Icon on Left Side",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled it anchor the icon on the left side, right otherwise",
						}, -- [3]
						{
							["Type"] = 4,
							["Name"] = "Use Big Icon",
							["Value"] = false,
							["Key"] = "useFullSize",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled the icon has the size of the cast bar plus the healthbar",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 5,
							["Desc"] = "Fine tune the icon size",
							["Min"] = 0,
							["Name"] = "Icon Size Offset",
							["Value"] = 0,
							["Key"] = "iconSizeOffset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 5,
							["Desc"] = "Space between the icon and the cast bar",
							["Min"] = -5,
							["Key"] = "iconPadding",
							["Value"] = 0,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Icon Padding",
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option6",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 5,
							["Key"] = "option5",
							["Value"] = "Can't Interrupt Texture:",
							["Name"] = "Interrupt Texture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 4,
							["Key"] = "showTexture",
							["Value"] = true,
							["Name"] = "Show Texture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled show a texture to tell the cast can't be interrupted",
						}, -- [9]
						{
							["Type"] = 3,
							["Key"] = "iconTexturePath",
							["Value"] = "Interface\\\\GROUPFRAME\\\\UI-GROUP-MAINTANKICON",
							["Name"] = "Texture Path",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_text",
							["Desc"] = "Insert the path for the texture",
						}, -- [10]
						{
							["Type"] = 4,
							["Key"] = "desaturatedTexture",
							["Value"] = true,
							["Name"] = "Texture Desaturated",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enbaled, texture is shown in black & white",
						}, -- [11]
						{
							["Type"] = 1,
							["Key"] = "textureColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.3056715726852417, -- [4]
							},
							["Name"] = "Texture Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Select the color of the texture",
						}, -- [12]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Adjust the texture width",
							["Min"] = 1,
							["Name"] = "Texture Width",
							["Value"] = 10,
							["Key"] = "textureWidth",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [13]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Adjust the texture height",
							["Min"] = 1,
							["Key"] = "textureHeight",
							["Value"] = 12,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Texture Height",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Adjust the texture position",
							["Min"] = -32,
							["Name"] = "Texture Position",
							["Value"] = 0,
							["Key"] = "texturePosition",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Adjust the texture transparency",
							["Min"] = 0,
							["Fraction"] = true,
							["Value"] = 1,
							["Name"] = "Texture Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "textureAlpha",
						}, -- [16]
					},
					["HooksTemp"] = {
					},
					["Time"] = 1596670932,
					["Author"] = "Ditador-Azralon",
					["Name"] = "Cast Bar Icon Settings [P]",
					["Desc"] = "Move the icon of the spell cast to the left or right side of the nameplate.",
					["Hooks"] = {
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    unitFrame.castBar.BorderShield:SetDrawLayer(\"artwork\")\n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable, modTable)\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local noInterruptTexture = castBar.BorderShield\n        \n        if (modTable.config.showIcon) then\n            icon:ClearAllPoints()\n            \n            if (modTable.config.iconOnLeftSide) then\n                if (modTable.config.useFullSize) then\n                    icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -modTable.config.iconPadding, 0)\n                else\n                    icon:SetPoint (\"topright\", unitFrame.castBar, \"topleft\", -1, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -modTable.config.iconPadding, 0)\n                end\n            else\n                if (modTable.config.useFullSize) then\n                    icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, 0)\n                else\n                    icon:SetPoint (\"topleft\", unitFrame.castBar, \"topright\", 1, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, 0)\n                end\n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n        else\n            icon:Hide()\n        end\n        \n        if (modTable.config.showTexture and not castBar.canInterrupt) then\n            noInterruptTexture:Show()\n            noInterruptTexture:SetTexture (modTable.config.iconTexturePath)\n            noInterruptTexture:SetTexCoord (0, 1, 0, 1)\n            noInterruptTexture:SetVertexColor (1, 1, 1, 1)            \n            \n            if (modTable.config.desaturatedTexture) then\n                noInterruptTexture:SetDesaturated (modTable.config.desaturatedTexture)\n            else\n                noInterruptTexture:SetVertexColor (DetailsFramework:ParseColors (modTable.config.textureColor))\n            end\n            \n            noInterruptTexture:SetSize (modTable.config.textureWidth, modTable.config.textureHeight)\n            noInterruptTexture:ClearAllPoints()\n            noInterruptTexture:SetPoint (\"center\", castBar, \"left\", modTable.config.texturePosition, 0)\n            noInterruptTexture:SetAlpha (modTable.config.textureAlpha)\n        else\n            noInterruptTexture:Hide()\n        end\n    end\nend",
					},
					["PlaterCore"] = 1,
					["version"] = -1,
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
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\castbar_icon",
					["semver"] = "",
				}, -- [36]
			},
			["last_news_time"] = 1551553489,
			["cast_statusbar_fadeout_time"] = 0.48999997973442,
			["aura_width"] = 22,
			["aura_height2"] = 14,
			["health_statusbar_bgcolor"] = {
				0.0431372, -- [1]
				0.0431372, -- [2]
				0.0431372, -- [3]
				1, -- [4]
			},
			["pet_width_scale"] = 0.99999994039536,
			["ui_parent_cast_strata"] = "DIALOG",
			["quick_hide"] = true,
			["hook_data_trash"] = {
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    -- /RELOAD AFTER IMPORTING OR CHANGING THE SCRIPT\n    -- SELECT THE INDICATOR AT THE TARGET TAB\n    \n    Plater.TargetIndicators    [\"Double Arrows\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\arrow_double_right_64]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 20,\n        height = 16,\n        x = 28,\n        y = 0,\n        blend = \"ADD\",\n        color = \"white\",\n    }    \n    \nend\n\n\n",
					},
					["__TrashAt"] = 1595729060,
					["Time"] = 1595728994,
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
					["url"] = "https://wago.io/f5itAXjQq/1",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\arrow_double_right_64",
					["Enabled"] = true,
					["Revision"] = 71,
					["semver"] = "1.0.0",
					["Author"] = "�r��ne-Kel'thuzad",
					["Desc"] = "Adds double arrow as a target indicators option",
					["Prio"] = 99,
					["Name"] = "Double Arrow Target",
					["PlaterCore"] = 1,
					["version"] = 1,
					["HooksTemp"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    -- /RELOAD AFTER IMPORTING OR CHANGING THE SCRIPT\n    -- SELECT THE INDICATOR AT THE TARGET TAB\n    \n    Plater.TargetIndicators    [\"Double Arrows\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\arrow_double_right_64]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 20,\n        height = 16,\n        x = 28,\n        y = 0,\n        blend = \"ADD\",\n        color = \"white\",\n    }    \n    \nend\n\n\n",
					},
					["Options"] = {
					},
				}, -- [1]
			},
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
			["range_check_alpha"] = 0.5,
			["click_space"] = {
				115, -- [1]
			},
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["castbar_target_font"] = "Accidental Presidency",
			["semver"] = "1.0.4",
			["aura_frame2_anchor"] = {
				["y"] = 15.9,
				["side"] = 7,
			},
			["extra_icon_show_enrage"] = true,
			["cast_statusbar_texture"] = "Smooth v2",
			["cast_statusbar_spark_color"] = {
				0.98823529411765, -- [1]
				[3] = 0.94117647058823,
			},
			["aura_cooldown_edge_texture"] = "Interface\\GLUES\\loadingOld",
			["extra_icon_height"] = 16,
			["aura_x_offset"] = 0,
			["first_run3"] = true,
			["castbar_target_anchor"] = {
				["side"] = 11,
			},
			["ui_parent_scale_tune"] = 1.562500034924597,
			["ui_parent_buff_strata"] = "LOW",
			["healthbar_framelevel"] = 0,
			["aura_consolidate"] = true,
			["health_statusbar_bgtexture"] = "PlaterBackground",
			["indicator_raidmark_anchor"] = {
				["x"] = -40,
			},
			["extra_icon_width"] = 22,
			["tank"] = {
				["colors"] = {
					["pulling"] = {
						nil, -- [1]
						0.91372549019608, -- [2]
						0.99607843137255, -- [3]
						1, -- [4]
					},
				},
			},
			["aura_tracker"] = {
				["buff_banned"] = {
					["206150"] = true,
					["61574"] = true,
					["61573"] = true,
				},
				["debuff_banned"] = {
					[6788] = true,
				},
				["debuff"] = {
					224991, -- [1]
					277950, -- [2]
				},
				["buff_tracked"] = {
					["280001"] = true,
				},
			},
			["hook_auto_imported"] = {
				["Color Automation"] = 1,
				["Blockade Encounter"] = 1,
				["Cast Bar Icon Config"] = 1,
				["Hide Neutral Units"] = 1,
				["Aura Reorder"] = 2,
				["Reorder Nameplate"] = 4,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Bwonsamdi Reaping"] = 1,
				["Jaina Encounter"] = 6,
				["Attacking Specific Unit"] = 1,
				["Extra Border"] = 2,
				["Combo Points"] = 3,
				["Execute Range"] = 1,
				["Target Color"] = 3,
				["Targetting Alpha"] = 3,
				["Monk Statue"] = 2,
			},
			["castbar_target_show"] = true,
			["cast_statusbar_color"] = {
				nil, -- [1]
				0.85882352941176, -- [2]
				nil, -- [3]
				0.96000000089407, -- [4]
			},
			["update_throttle"] = 0.099999994039535,
			["minor_width_scale"] = 0.99999994039536,
			["castbar_target_text_size"] = 8,
			["captured_spells"] = {
				[164815] = {
					["type"] = "DEBUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306474] = {
					["type"] = "DEBUFF",
					["source"] = "Toshpriest",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316711] = {
					["encounterID"] = 2344,
					["source"] = "Psychus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158376,
				},
				[315176] = {
					["type"] = "DEBUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312107] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255909] = {
					["type"] = "DEBUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281404] = {
					["source"] = "Heritor-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[153561] = {
					["encounterID"] = 2344,
					["source"] = "Agg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270661] = {
					["type"] = "BUFF",
					["source"] = "Kodyseeker-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275779] = {
					["encounterID"] = 2344,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116858] = {
					["encounterID"] = 2344,
					["source"] = "Scibolt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[200389] = {
					["type"] = "BUFF",
					["source"] = "Toshdruid",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194249] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[310073] = {
					["type"] = "DEBUFF",
					["source"] = "Mindgrasp Stalker",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161411,
				},
				[57934] = {
					["type"] = "BUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232633] = {
					["encounterID"] = 2344,
					["source"] = "Yuffio-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203720] = {
					["encounterID"] = 2344,
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194509] = {
					["encounterID"] = 2344,
					["source"] = "Toshpriest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313663] = {
					["type"] = "DEBUFF",
					["source"] = "Durantye",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273238] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188370] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199373] = {
					["encounterID"] = 2344,
					["source"] = "Army of the Dead",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24207,
				},
				[64844] = {
					["type"] = "BUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267612] = {
					["type"] = "BUFF",
					["source"] = "Bluearruwu",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295248] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203981] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280409] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5217] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5225] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Race",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279902] = {
					["type"] = "BUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298837] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[226757] = {
					["type"] = "DEBUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307026] = {
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204242] = {
					["type"] = "DEBUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279397] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309592] = {
					["type"] = "BUFF",
					["source"] = "Basher Tentacle",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158367,
				},
				[185311] = {
					["type"] = "BUFF",
					["source"] = "Slimonade-Tichondrius",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312155] = {
					["type"] = "BUFF",
					["source"] = "N'Zoth the Corruptor",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158041,
				},
				[132603] = {
					["encounterID"] = 2344,
					["source"] = "Toshpriest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19574] = {
					["type"] = "BUFF",
					["source"] = "Bluearruwu",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313184] = {
					["type"] = "BUFF",
					["source"] = "Psychus",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158376,
				},
				[48792] = {
					["type"] = "BUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147193] = {
					["encounterID"] = 2344,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2098] = {
					["encounterID"] = 2344,
					["source"] = "Race",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[527] = {
					["encounterID"] = 2344,
					["source"] = "Yuffio-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202719] = {
					["encounterID"] = 2344,
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12654] = {
					["type"] = "DEBUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298357] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317292] = {
					["encounterID"] = 2344,
					["source"] = "N'Zoth the Corruptor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162480,
				},
				[102417] = {
					["encounterID"] = 2344,
					["source"] = "Hakkem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[145152] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319346] = {
					["type"] = "DEBUFF",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118922] = {
					["type"] = "BUFF",
					["source"] = "Bluearruwu",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[585] = {
					["encounterID"] = 2344,
					["source"] = "Yuffio-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[589] = {
					["encounterID"] = 2344,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16953] = {
					["encounterID"] = 2344,
					["source"] = "Muffaasa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[596] = {
					["encounterID"] = 2344,
					["source"] = "Yuffio-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315772] = {
					["type"] = "BUFF",
					["source"] = "N'Zoth the Corruptor",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158041,
				},
				[34914] = {
					["encounterID"] = 2344,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272790] = {
					["encounterID"] = 2344,
					["source"] = "Bluearruwu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316801] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275351] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288146] = {
					["type"] = "BUFF",
					["source"] = "Race",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311176] = {
					["encounterID"] = 2344,
					["source"] = "N'Zoth the Corruptor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158041,
				},
				[176890] = {
					["encounterID"] = 2344,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[25046] = {
					["encounterID"] = 2344,
					["source"] = "Race",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315787] = {
					["type"] = "BUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131347] = {
					["encounterID"] = 2344,
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267685] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316814] = {
					["type"] = "BUFF",
					["source"] = "Toshdruid",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53595] = {
					["encounterID"] = 2344,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49821] = {
					["encounterID"] = 2344,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288158] = {
					["type"] = "BUFF",
					["source"] = "Race",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[135700] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[698] = {
					["source"] = "Scibolt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295838] = {
					["type"] = "DEBUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61336] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295840] = {
					["type"] = "BUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193530] = {
					["type"] = "BUFF",
					["source"] = "Daedalis-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204021] = {
					["encounterID"] = 2344,
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316823] = {
					["type"] = "BUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295842] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16827] = {
					["encounterID"] = 2344,
					["source"] = "Rukhmar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 83746,
				},
				[33702] = {
					["type"] = "BUFF",
					["source"] = "Evojai-Mal'Ganis",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113942] = {
					["type"] = "DEBUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269239] = {
					["type"] = "BUFF",
					["source"] = "Scibolt",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187650] = {
					["encounterID"] = 2344,
					["source"] = "Daedalis-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[93985] = {
					["encounterID"] = 2344,
					["source"] = "Muffaasa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[139546] = {
					["encounterID"] = 2344,
					["source"] = "Race",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317859] = {
					["type"] = "BUFF",
					["source"] = "Pier",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[310184] = {
					["encounterID"] = 2344,
					["source"] = "Psychus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158376,
				},
				[295856] = {
					["encounterID"] = 2344,
					["source"] = "Guardian of Azeroth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152396,
				},
				[774] = {
					["source"] = "Toshdruid",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47585] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3110] = {
					["encounterID"] = 2344,
					["source"] = "Niptoc",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 58959,
				},
				[781] = {
					["encounterID"] = 2344,
					["source"] = "Bluearruwu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[783] = {
					["encounterID"] = 2344,
					["source"] = "Hakkem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155158] = {
					["type"] = "DEBUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318378] = {
					["type"] = "BUFF",
					["source"] = "Slimonade-Tichondrius",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111771] = {
					["encounterID"] = 2344,
					["source"] = "Scibolt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8690] = {
					["source"] = "Race",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19483] = {
					["type"] = "BUFF",
					["source"] = "Infernal",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 89,
				},
				[102560] = {
					["type"] = "BUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194310] = {
					["type"] = "DEBUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190984] = {
					["encounterID"] = 2344,
					["source"] = "Hakkem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274373] = {
					["type"] = "BUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319919] = {
					["type"] = "BUFF",
					["source"] = "Healchain-BleedingHollow",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200196] = {
					["type"] = "DEBUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304056] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15407] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298431] = {
					["type"] = "BUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53600] = {
					["encounterID"] = 2344,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15487] = {
					["encounterID"] = 2344,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34026] = {
					["encounterID"] = 2344,
					["source"] = "Bluearruwu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Scibolt",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303044] = {
					["type"] = "BUFF",
					["source"] = "Zaraksh-Mal'Ganis",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295368] = {
					["type"] = "DEBUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309698] = {
					["encounterID"] = 2344,
					["source"] = "Basher Tentacle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158367,
				},
				[263642] = {
					["encounterID"] = 2344,
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77489] = {
					["type"] = "BUFF",
					["source"] = "Dëvotion-Barthilas",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295373] = {
					["encounterID"] = 2344,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203277] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263648] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24858] = {
					["type"] = "BUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295378] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269279] = {
					["type"] = "BUFF",
					["source"] = "Daedalis-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312782] = {
					["encounterID"] = 2344,
					["source"] = "N'Zoth the Corruptor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158041,
				},
				[132403] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3714] = {
					["type"] = "BUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295384] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157736] = {
					["type"] = "DEBUFF",
					["source"] = "Scibolt",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275429] = {
					["type"] = "BUFF",
					["source"] = "Scibolt",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184092] = {
					["encounterID"] = 2344,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[152108] = {
					["encounterID"] = 2344,
					["source"] = "Scibolt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203795] = {
					["encounterID"] = 2344,
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304603] = {
					["type"] = "DEBUFF",
					["source"] = "Kodyseeker-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[88625] = {
					["encounterID"] = 2344,
					["source"] = "Yuffio-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157228] = {
					["type"] = "BUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265202] = {
					["encounterID"] = 2344,
					["source"] = "Yuffio-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31224] = {
					["type"] = "BUFF",
					["source"] = "Slimonade-Tichondrius",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314843] = {
					["encounterID"] = 2344,
					["source"] = "N'Zoth the Corruptor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158041,
				},
				[304612] = {
					["type"] = "DEBUFF",
					["source"] = "Kodyseeker-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201754] = {
					["encounterID"] = 2344,
					["source"] = "Rukhmar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 83746,
				},
				[111400] = {
					["type"] = "BUFF",
					["source"] = "Scibolt",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115750] = {
					["encounterID"] = 2344,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207640] = {
					["type"] = "BUFF",
					["source"] = "Toshdruid",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197919] = {
					["type"] = "BUFF",
					["source"] = "Healchain-BleedingHollow",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304619] = {
					["type"] = "DEBUFF",
					["source"] = "Kodyseeker-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274426] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108843] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193315] = {
					["encounterID"] = 2344,
					["source"] = "Race",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193316] = {
					["type"] = "BUFF",
					["source"] = "Race",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2139] = {
					["encounterID"] = 2344,
					["source"] = "Agg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[43308] = {
					["type"] = "BUFF",
					["source"] = "Kremee",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1122] = {
					["encounterID"] = 2344,
					["source"] = "Evojai-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272903] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318449] = {
					["type"] = "BUFF",
					["source"] = "N'Zoth the Corruptor",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158041,
				},
				[116011] = {
					["encounterID"] = 2344,
					["source"] = "Agg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81340] = {
					["type"] = "BUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274443] = {
					["type"] = "BUFF",
					["source"] = "Daedalis-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48107] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2383] = {
					["type"] = "BUFF",
					["source"] = "Daedalis-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195627] = {
					["type"] = "BUFF",
					["source"] = "Race",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205351] = {
					["encounterID"] = 2344,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85948] = {
					["encounterID"] = 2344,
					["source"] = "Brutang-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47788] = {
					["encounterID"] = 2344,
					["source"] = "Yuffio-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48108] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296971] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279572] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308742] = {
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203819] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202028] = {
					["encounterID"] = 2344,
					["source"] = "Muffaasa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[236060] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33076] = {
					["encounterID"] = 2344,
					["source"] = "Dëvotion-Barthilas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314889] = {
					["encounterID"] = 2344,
					["source"] = "Exposed Synapse",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 159578,
				},
				[197937] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48045] = {
					["encounterID"] = 2344,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2643] = {
					["encounterID"] = 2344,
					["source"] = "Daedalis-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204079] = {
					["type"] = "DEBUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278559] = {
					["source"] = "Bluearruwu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108853] = {
					["encounterID"] = 2344,
					["source"] = "Agg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[14914] = {
					["encounterID"] = 2344,
					["source"] = "Yuffio-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155722] = {
					["type"] = "DEBUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204596] = {
					["encounterID"] = 2344,
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272940] = {
					["type"] = "BUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204598] = {
					["type"] = "DEBUFF",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["type"] = "BUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47536] = {
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1490] = {
					["type"] = "DEBUFF",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2983] = {
					["type"] = "BUFF",
					["source"] = "Krueltyok-Zul'jin",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190784] = {
					["encounterID"] = 2344,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[312866] = {
					["type"] = "BUFF",
					["source"] = "Deathwing",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 160665,
				},
				[268856] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196414] = {
					["type"] = "DEBUFF",
					["source"] = "Scibolt",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[69070] = {
					["encounterID"] = 2344,
					["source"] = "Toshpriest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267325] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276025] = {
					["type"] = "BUFF",
					["source"] = "Healchain-BleedingHollow",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267326] = {
					["type"] = "BUFF",
					["source"] = "Daedalis-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267327] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205629] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118455] = {
					["type"] = "BUFF",
					["source"] = "Daedalis-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267329] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267330] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267331] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187464] = {
					["type"] = "DEBUFF",
					["source"] = "Toshpriest",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235313] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59628] = {
					["type"] = "BUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316463] = {
					["encounterID"] = 2344,
					["source"] = "Mindgate",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158374,
				},
				[268877] = {
					["type"] = "BUFF",
					["source"] = "Daedalis-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313400] = {
					["encounterID"] = 2344,
					["source"] = "Corruptor Tentacle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158375,
				},
				[20707] = {
					["type"] = "BUFF",
					["source"] = "Scibolt",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309307] = {
					["encounterID"] = 2344,
					["source"] = "Agg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[62124] = {
					["encounterID"] = 2344,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[296003] = {
					["type"] = "BUFF",
					["source"] = "Healchain-BleedingHollow",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6788] = {
					["type"] = "DEBUFF",
					["source"] = "Durantye",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193356] = {
					["type"] = "BUFF",
					["source"] = "Race",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280653] = {
					["type"] = "BUFF",
					["source"] = "Slimonade-Tichondrius",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193357] = {
					["type"] = "BUFF",
					["source"] = "Krueltyok-Zul'jin",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280654] = {
					["type"] = "BUFF",
					["source"] = "Slimonade-Tichondrius",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313918] = {
					["type"] = "BUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193358] = {
					["type"] = "BUFF",
					["source"] = "Race",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47540] = {
					["encounterID"] = 2344,
					["source"] = "Toshpriest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268887] = {
					["type"] = "BUFF",
					["source"] = "Scibolt",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193359] = {
					["type"] = "BUFF",
					["source"] = "Krueltyok-Zul'jin",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297035] = {
					["type"] = "BUFF",
					["source"] = "Rencey-Haomarush",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1766] = {
					["encounterID"] = 2344,
					["source"] = "Emosong-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275544] = {
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272986] = {
					["type"] = "DEBUFF",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297039] = {
					["type"] = "BUFF",
					["source"] = "Race",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268893] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78674] = {
					["encounterID"] = 2344,
					["source"] = "Hakkem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5221] = {
					["encounterID"] = 2344,
					["source"] = "Muffaasa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1822] = {
					["encounterID"] = 2344,
					["source"] = "Muffaasa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268898] = {
					["type"] = "BUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298068] = {
					["source"] = "Emosong-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1850] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55090] = {
					["encounterID"] = 2344,
					["source"] = "Brutang-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287835] = {
					["type"] = "BUFF",
					["source"] = "Healchain-BleedingHollow",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31935] = {
					["encounterID"] = 2344,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268904] = {
					["type"] = "BUFF",
					["source"] = "Krueltyok-Zul'jin",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312915] = {
					["type"] = "BUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268905] = {
					["type"] = "BUFF",
					["source"] = "Dëvotion-Barthilas",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106951] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121536] = {
					["encounterID"] = 2344,
					["source"] = "Dëvotion-Barthilas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318219] = {
					["type"] = "BUFF",
					["source"] = "Healchain-BleedingHollow",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119085] = {
					["type"] = "BUFF",
					["source"] = "Healchain-BleedingHollow",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285979] = {
					["type"] = "BUFF",
					["source"] = "Scibolt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316744] = {
					["type"] = "BUFF",
					["source"] = "Rodsmonk-Zul'jin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278244] = {
					["source"] = "Woesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285424] = {
					["source"] = "Slimonade-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11366] = {
					["encounterID"] = 2344,
					["source"] = "Agg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318976] = {
					["type"] = "DEBUFF",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45181] = {
					["type"] = "DEBUFF",
					["source"] = "Race",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[642] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118699] = {
					["type"] = "DEBUFF",
					["source"] = "Evojai-Mal'Ganis",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246287] = {
					["encounterID"] = 2344,
					["source"] = "Toshpriest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308996] = {
					["type"] = "DEBUFF",
					["source"] = "N'Zoth the Corruptor",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158041,
				},
				[313948] = {
					["type"] = "BUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317066] = {
					["encounterID"] = 2344,
					["source"] = "Thought Harvester",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162933,
				},
				[274420] = {
					["type"] = "BUFF",
					["source"] = "Evojai-Mal'Ganis",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117828] = {
					["type"] = "BUFF",
					["source"] = "Woesong",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246851] = {
					["type"] = "BUFF",
					["source"] = "Bluearruwu",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232698] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296072] = {
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311392] = {
					["type"] = "DEBUFF",
					["source"] = "Mindgrasp Stalker",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161411,
				},
				[53365] = {
					["type"] = "BUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13877] = {
					["type"] = "BUFF",
					["source"] = "Slimonade-Tichondrius",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315675] = {
					["type"] = "BUFF",
					["source"] = "Basher Tentacle",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158367,
				},
				[246852] = {
					["type"] = "BUFF",
					["source"] = "Daedalis-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315927] = {
					["encounterID"] = 2344,
					["source"] = "N'Zoth the Corruptor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158041,
				},
				[41635] = {
					["type"] = "BUFF",
					["source"] = "Dëvotion-Barthilas",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299624] = {
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246853] = {
					["type"] = "BUFF",
					["source"] = "Daedalis-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[310331] = {
					["type"] = "BUFF",
					["source"] = "Mind's Eye",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158122,
				},
				[288800] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246854] = {
					["type"] = "BUFF",
					["source"] = "Daedalis-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292463] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[178740] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296138] = {
					["type"] = "BUFF",
					["source"] = "Dëvotion-Barthilas",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300142] = {
					["encounterID"] = 2344,
					["source"] = "Agg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[191587] = {
					["type"] = "DEBUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313960] = {
					["type"] = "BUFF",
					["source"] = "Sylvanas Windrunner",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 160671,
				},
				[281721] = {
					["type"] = "DEBUFF",
					["source"] = "Slimonade-Tichondrius",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[133] = {
					["encounterID"] = 2344,
					["source"] = "Agg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316522] = {
					["type"] = "BUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49376] = {
					["encounterID"] = 2344,
					["source"] = "Muffaasa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45242] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295855] = {
					["type"] = "BUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106830] = {
					["encounterID"] = 2344,
					["source"] = "Muffaasa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[139] = {
					["encounterID"] = 2344,
					["source"] = "Yuffio-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8936] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108366] = {
					["type"] = "BUFF",
					["source"] = "Scibolt",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268955] = {
					["type"] = "BUFF",
					["source"] = "Krueltyok-Zul'jin",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199754] = {
					["type"] = "BUFF",
					["source"] = "Race",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212036] = {
					["source"] = "Toshpriest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194153] = {
					["encounterID"] = 2344,
					["source"] = "Hakkem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[90328] = {
					["type"] = "BUFF",
					["source"] = "Ban'thalos",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 54320,
				},
				[61684] = {
					["type"] = "BUFF",
					["source"] = "Deepglider",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152291,
				},
				[6789] = {
					["encounterID"] = 2344,
					["source"] = "Scibolt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280204] = {
					["type"] = "BUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1079] = {
					["encounterID"] = 2344,
					["source"] = "Muffaasa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295367] = {
					["type"] = "DEBUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13750] = {
					["type"] = "BUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316541] = {
					["type"] = "DEBUFF",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190319] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190831] = {
					["type"] = "BUFF",
					["source"] = "Pier",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316542] = {
					["type"] = "DEBUFF",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297034] = {
					["type"] = "BUFF",
					["source"] = "Scibolt",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294027] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278931] = {
					["type"] = "BUFF",
					["source"] = "Evojai-Mal'Ganis",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268953] = {
					["type"] = "BUFF",
					["source"] = "Race",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[93402] = {
					["encounterID"] = 2344,
					["source"] = "Hakkem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[225788] = {
					["type"] = "BUFF",
					["source"] = "Daedalis-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268956] = {
					["type"] = "BUFF",
					["source"] = "Krueltyok-Zul'jin",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186257] = {
					["type"] = "BUFF",
					["source"] = "Bluearruwu",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45182] = {
					["type"] = "BUFF",
					["source"] = "Race",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80353] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296059] = {
					["type"] = "BUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2061] = {
					["encounterID"] = 2344,
					["source"] = "Dëvotion-Barthilas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317065] = {
					["type"] = "BUFF",
					["source"] = "Krueltyok-Zul'jin",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202137] = {
					["encounterID"] = 2344,
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80354] = {
					["type"] = "DEBUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297108] = {
					["encounterID"] = 2344,
					["source"] = "Krueltyok-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289362] = {
					["type"] = "DEBUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[853] = {
					["encounterID"] = 2344,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300693] = {
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26573] = {
					["encounterID"] = 2344,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48265] = {
					["type"] = "BUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292361] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8921] = {
					["encounterID"] = 2344,
					["source"] = "Hakkem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204157] = {
					["encounterID"] = 2344,
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279715] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17962] = {
					["encounterID"] = 2344,
					["source"] = "Woesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[106839] = {
					["encounterID"] = 2344,
					["source"] = "Muffaasa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263852] = {
					["encounterID"] = 2344,
					["source"] = "Rukhmar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 83746,
				},
				[147362] = {
					["encounterID"] = 2344,
					["source"] = "Bluearruwu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183752] = {
					["encounterID"] = 2344,
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264878] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[768] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[21562] = {
					["type"] = "BUFF",
					["source"] = "Dëvotion-Barthilas",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22568] = {
					["encounterID"] = 2344,
					["source"] = "Muffaasa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31884] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193538] = {
					["type"] = "BUFF",
					["source"] = "Krueltyok-Zul'jin",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[710] = {
					["encounterID"] = 2344,
					["source"] = "Scibolt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19236] = {
					["type"] = "BUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195457] = {
					["encounterID"] = 2344,
					["source"] = "Slimonade-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298146] = {
					["type"] = "BUFF",
					["source"] = "Krueltyok-Zul'jin",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214621] = {
					["encounterID"] = 2344,
					["source"] = "Toshpriest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[217200] = {
					["encounterID"] = 2344,
					["source"] = "Bluearruwu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5782] = {
					["encounterID"] = 2344,
					["source"] = "Evojai-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47541] = {
					["encounterID"] = 2344,
					["source"] = "Brutang-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268769] = {
					["type"] = "BUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268756] = {
					["type"] = "DEBUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297126] = {
					["type"] = "BUFF",
					["source"] = "Krueltyok-Zul'jin",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202770] = {
					["type"] = "BUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2948] = {
					["encounterID"] = 2344,
					["source"] = "Agg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204255] = {
					["encounterID"] = 2344,
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298152] = {
					["type"] = "BUFF",
					["source"] = "Scibolt",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[152262] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199804] = {
					["encounterID"] = 2344,
					["source"] = "Race",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[120517] = {
					["encounterID"] = 2344,
					["source"] = "Yuffio-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300714] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274598] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276154] = {
					["type"] = "BUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121557] = {
					["type"] = "BUFF",
					["source"] = "Dëvotion-Barthilas",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73325] = {
					["encounterID"] = 2344,
					["source"] = "Toshpriest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6262] = {
					["encounterID"] = 2344,
					["source"] = "Evojai-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[65081] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317102] = {
					["encounterID"] = 2344,
					["source"] = "N'Zoth the Corruptor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158041,
				},
				[268998] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207744] = {
					["type"] = "DEBUFF",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6673] = {
					["type"] = "BUFF",
					["source"] = "Kremee",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116014] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268899] = {
					["type"] = "BUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29722] = {
					["encounterID"] = 2344,
					["source"] = "Scibolt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314040] = {
					["type"] = "BUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277706] = {
					["type"] = "BUFF",
					["source"] = "Scibolt",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186254] = {
					["type"] = "BUFF",
					["source"] = "Daedalis-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317112] = {
					["type"] = "DEBUFF",
					["source"] = "N'Zoth the Corruptor",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158041,
				},
				[208772] = {
					["type"] = "DEBUFF",
					["source"] = "Toshpriest",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[96231] = {
					["encounterID"] = 2344,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[104773] = {
					["type"] = "BUFF",
					["source"] = "Scibolt",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205448] = {
					["encounterID"] = 2344,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[266091] = {
					["type"] = "BUFF",
					["source"] = "Scibolt",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228477] = {
					["encounterID"] = 2344,
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204883] = {
					["encounterID"] = 2344,
					["source"] = "Dëvotion-Barthilas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[186258] = {
					["type"] = "BUFF",
					["source"] = "Bluearruwu",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202636] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225919] = {
					["encounterID"] = 2344,
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297162] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245686] = {
					["type"] = "BUFF",
					["source"] = "Scibolt",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80240] = {
					["encounterID"] = 2344,
					["source"] = "Evojai-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[225921] = {
					["encounterID"] = 2344,
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272090] = {
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315161] = {
					["type"] = "DEBUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297168] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271071] = {
					["type"] = "BUFF",
					["source"] = "Healchain-BleedingHollow",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277724] = {
					["type"] = "BUFF",
					["source"] = "Slimonade-Tichondrius",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186263] = {
					["encounterID"] = 2344,
					["source"] = "Toshpriest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36107] = {
					["encounterID"] = 2344,
					["source"] = "Royalty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[87023] = {
					["type"] = "DEBUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293664] = {
					["type"] = "BUFF",
					["source"] = "Damonhawk-Thunderhorn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288882] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[72968] = {
					["type"] = "BUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51460] = {
					["type"] = "BUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288988] = {
					["type"] = "BUFF",
					["source"] = "Slimonade-Tichondrius",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87024] = {
					["type"] = "DEBUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[69369] = {
					["type"] = "BUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300761] = {
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119905] = {
					["encounterID"] = 2344,
					["source"] = "Scibolt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185245] = {
					["encounterID"] = 2344,
					["source"] = "Evandh-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212653] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298836] = {
					["type"] = "BUFF",
					["source"] = "Slimonade-Tichondrius",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34861] = {
					["encounterID"] = 2344,
					["source"] = "Yuffio-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[167898] = {
					["type"] = "BUFF",
					["source"] = "Toshdruid",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11426] = {
					["type"] = "BUFF",
					["source"] = "Heritor-Zul'jin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314585] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297037] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313148] = {
					["encounterID"] = 2344,
					["source"] = "Toshpriest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270576] = {
					["type"] = "BUFF",
					["source"] = "Krueltyok-Zul'jin",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["type"] = "BUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296962] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81782] = {
					["type"] = "BUFF",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33763] = {
					["source"] = "Toshdruid",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[25771] = {
					["type"] = "DEBUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275699] = {
					["encounterID"] = 2344,
					["source"] = "Brutang-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185763] = {
					["type"] = "BUFF",
					["source"] = "Race",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313571] = {
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281843] = {
					["type"] = "BUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309990] = {
					["type"] = "DEBUFF",
					["source"] = "N'Zoth the Corruptor",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158041,
				},
				[281844] = {
					["type"] = "BUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309991] = {
					["type"] = "DEBUFF",
					["source"] = "Psychus",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158376,
				},
				[246152] = {
					["type"] = "BUFF",
					["source"] = "Bluearruwu",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113900] = {
					["encounterID"] = 2344,
					["source"] = "Demonic Gateway",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 59271,
				},
				[315624] = {
					["type"] = "DEBUFF",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58180] = {
					["type"] = "DEBUFF",
					["source"] = "Muffaasa",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271103] = {
					["type"] = "BUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303344] = {
					["type"] = "BUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[129250] = {
					["encounterID"] = 2344,
					["source"] = "Toshpriest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303345] = {
					["type"] = "BUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2050] = {
					["encounterID"] = 2344,
					["source"] = "Dëvotion-Barthilas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17] = {
					["type"] = "BUFF",
					["source"] = "Durantye",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205473] = {
					["type"] = "BUFF",
					["source"] = "Heritor-Zul'jin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113899] = {
					["encounterID"] = 2344,
					["source"] = "Demonic Gateway",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 59262,
				},
				[279810] = {
					["type"] = "BUFF",
					["source"] = "Daedalis-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313088] = {
					["type"] = "BUFF",
					["source"] = "Race",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113858] = {
					["type"] = "BUFF",
					["source"] = "Evojai-Mal'Ganis",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298343] = {
					["type"] = "BUFF",
					["source"] = "Krueltyok-Zul'jin",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318193] = {
					["type"] = "BUFF",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301308] = {
					["encounterID"] = 2344,
					["source"] = "Race",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271115] = {
					["type"] = "BUFF",
					["source"] = "Evojai-Mal'Ganis",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[63619] = {
					["encounterID"] = 2344,
					["source"] = "Shadowfiend",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 67235,
				},
				[204197] = {
					["encounterID"] = 2344,
					["source"] = "Toshpriest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288803] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["type"] = "BUFF",
					["source"] = "Healchain-BleedingHollow",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48707] = {
					["type"] = "BUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268854] = {
					["type"] = "BUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318714] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158367,
				},
				[32375] = {
					["encounterID"] = 2344,
					["source"] = "Toshpriest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193455] = {
					["encounterID"] = 2344,
					["source"] = "Bluearruwu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[221886] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196782] = {
					["type"] = "DEBUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187827] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281402] = {
					["source"] = "Agg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[319237] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194384] = {
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313609] = {
					["type"] = "DEBUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164545] = {
					["type"] = "BUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199600] = {
					["type"] = "BUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318216] = {
					["type"] = "BUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319241] = {
					["type"] = "DEBUFF",
					["source"] = "Race",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[64901] = {
					["type"] = "BUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312078] = {
					["encounterID"] = 2344,
					["source"] = "Spike Tentacle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 160249,
				},
				[164547] = {
					["type"] = "BUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228260] = {
					["encounterID"] = 2344,
					["source"] = "Durantye",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223143] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285981] = {
					["type"] = "BUFF",
					["source"] = "Kodyseeker-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199603] = {
					["type"] = "BUFF",
					["source"] = "Emosong-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198069] = {
					["type"] = "BUFF",
					["source"] = "Toshpriest",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[64843] = {
					["type"] = "BUFF",
					["source"] = "Yuffio-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[348] = {
					["encounterID"] = 2344,
					["source"] = "Scibolt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318227] = {
					["type"] = "BUFF",
					["source"] = "Brutang-Kil'jaeden",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288546] = {
					["encounterID"] = 2344,
					["source"] = "Magus of the Dead",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148797,
				},
				[257946] = {
					["type"] = "BUFF",
					["source"] = "Bluearruwu",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272987] = {
					["type"] = "BUFF",
					["source"] = "Evandh-Illidan",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288548] = {
					["encounterID"] = 2344,
					["source"] = "Magus of the Dead",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148797,
				},
				[204213] = {
					["type"] = "DEBUFF",
					["source"] = "Toshpriest",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315672] = {
					["type"] = "BUFF",
					["source"] = "Corruptor Tentacle",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158375,
				},
				[197561] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77575] = {
					["encounterID"] = 2344,
					["source"] = "Brutang-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[86659] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109304] = {
					["encounterID"] = 2344,
					["source"] = "Daedalis-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1459] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[63560] = {
					["encounterID"] = 2344,
					["source"] = "Brutang-Kil'jaeden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Hakkem",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280177] = {
					["type"] = "BUFF",
					["source"] = "Agg",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[62618] = {
					["encounterID"] = 2344,
					["source"] = "Toshpriest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[310565] = {
					["type"] = "BUFF",
					["source"] = "Royalty",
					["encounterID"] = 2344,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
			},
			["aura_frame1_anchor"] = {
				["y"] = 15.9,
				["side"] = 1,
			},
			["aura2_grow_direction"] = 1,
			["indicator_rare"] = false,
			["not_affecting_combat_alpha"] = 0.799999,
			["aura_height"] = 14,
			["use_health_animation"] = true,
			["target_highlight_alpha"] = 1,
			["aura2_x_offset"] = 0,
			["target_indicator"] = "DoubleArrow",
			["target_shady_alpha"] = 0.59999996423721,
			["target_highlight_height"] = 18,
			["login_counter"] = 662,
			["version"] = 5,
			["aura_cooldown_show_swipe"] = false,
			["extra_icon_auras_mine"] = {
				["224991"] = true,
			},
			["pet_height_scale"] = 0.99999994039536,
			["aura_stack_font"] = "Friz Quadrata TT",
			["patch_version"] = 12,
			["no_spellname_length_limit"] = true,
			["aura_timer_text_size"] = 10,
			["extra_icon_show_timer"] = false,
			["hover_highlight_alpha"] = 0.29999998211861,
			["number_region_first_run"] = true,
			["health_statusbar_texture"] = "Smooth v2",
			["cast_statusbar_bgcolor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.79781, -- [4]
			},
			["first_run2"] = true,
			["aura_grow_direction"] = 3,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["aura_timer_text_font"] = "Friz Quadrata TT",
			["aura_alpha"] = 0.84999996423721,
			["dps"] = {
				["colors"] = {
					["aggro"] = {
						nil, -- [1]
						0.047058823529412, -- [2]
						nil, -- [3]
						1, -- [4]
					},
					["pulling"] = {
						nil, -- [1]
						0.96078431372549, -- [2]
						0.95294117647059, -- [3]
						1, -- [4]
					},
				},
			},
			["npc_colors"] = {
				["125977"] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				["128967"] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				["132491"] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				["122969"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["122984"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["131677"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["134417"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["137516"] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				["133432"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["134174"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["131666"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["136549"] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				["128435"] = {
					false, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				["129559"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["134418"] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				["136006"] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				["129227"] = {
					false, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				["135365"] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				["134157"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["136249"] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				["135204"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["131670"] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				["137486"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["137484"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["127106"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["129600"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["135329"] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				["139425"] = {
					false, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["136934"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["134599"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["127315"] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				["136005"] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				["139422"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["129369"] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				["134012"] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				["134137"] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				["122971"] = {
					false, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				["137103"] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				["135263"] = {
					true, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				["126918"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["133685"] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				["134150"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["131817"] = {
					false, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				["134990"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["128969"] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				["136214"] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				["132532"] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				["134144"] = {
					true, -- [1]
					false, -- [2]
					"lightgreen", -- [3]
				},
				["134331"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["136295"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["132126"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["134232"] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				["137713"] = {
					true, -- [1]
					false, -- [2]
					"paleturquoise", -- [3]
				},
				["127111"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["135239"] = {
					true, -- [1]
					false, -- [2]
					"paleturquoise", -- [3]
				},
				["130488"] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				["134364"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["130435"] = {
					false, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				["138187"] = {
					true, -- [1]
					false, -- [2]
					"paleturquoise", -- [3]
				},
				["137511"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["133835"] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				["135258"] = {
					false, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["144071"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["134514"] = {
					true, -- [1]
					false, -- [2]
					"lightgreen", -- [3]
				},
				["137521"] = {
					true, -- [1]
					false, -- [2]
					"cornflowerblue", -- [3]
				},
				["138061"] = {
					false, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				["134629"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["135167"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["134139"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["126919"] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				["131858"] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				["131685"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["138255"] = {
					true, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				["136076"] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				["133593"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["137517"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["138063"] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				["141284"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["141285"] = {
					true, -- [1]
					false, -- [2]
					"lightgreen", -- [3]
				},
				["134251"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["137478"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["129367"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["135235"] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				["133870"] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				["133852"] = {
					true, -- [1]
					false, -- [2]
					"olivedrab", -- [3]
				},
				["129602"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["130436"] = {
					false, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				["133436"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["133912"] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				["131586"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["131585"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["137716"] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				["131492"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["129366"] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				["136353"] = {
					true, -- [1]
					false, -- [2]
					"royalblue", -- [3]
				},
				["135474"] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				["131587"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["129370"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["135007"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["138064"] = {
					false, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				["131436"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["136139"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["134701"] = {
					true, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				["138465"] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				["136470"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["122973"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["137830"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["127757"] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				["134338"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["128434"] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				["129788"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["130404"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["134600"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["122972"] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				["129547"] = {
					true, -- [1]
					false, -- [2]
					"olivedrab", -- [3]
				},
				["126928"] = {
					false, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["131818"] = {
					false, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				["135241"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["130485"] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				["139949"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["133430"] = {
					true, -- [1]
					false, -- [2]
					"cornflowerblue", -- [3]
				},
				["129529"] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				["141283"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				["136186"] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				["133345"] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				["134284"] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				["133482"] = {
					true, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				["130661"] = {
					true, -- [1]
					false, -- [2]
					"lightgreen", -- [3]
				},
				["134158"] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
			},
			["aura_cooldown_reverse"] = false,
			["aura_width2"] = 22,
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "0.99999994039536",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateGlobalScale"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateShowSelf"] = "0",
				["nameplateSelfTopInset"] = "0.5",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateOtherTopInset"] = "0.085",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfScale"] = "0.79999995231628",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["NamePlateHorizontalScale"] = "1",
				["nameplateSelfAlpha"] = "1",
				["nameplateMinScale"] = "1",
				["nameplateShowEnemyMinions"] = "1",
				["NamePlateVerticalScale"] = "1",
			},
			["cast_statusbar_spark_width"] = 25,
		},
	},
}
