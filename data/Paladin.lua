--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013-2014 Adirelle (adirelle@gmail.com)

This file is part of LibPlayerSpells-1.0.

LibPlayerSpells-1.0 is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

LibPlayerSpells-1.0 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with LibPlayerSpells-1.0.  If not, see <http://www.gnu.org/licenses/>.
--]]

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end
lib:__RegisterSpells("PALADIN", 70000, 4, {
	COOLDOWN = {
		  20271, -- Judgement
		  20473, -- Holy Shock
		  35395, -- Crusader Strike
		  53595, -- Hammer of the Righteous
		  85222, -- Light of Dawn
		 114158, -- Light's Hammer
		 114165, -- Holy Prism
		 184575, -- Blade of Justice
		 198034, -- Divine Hammer
		 210220, -- Holy Wrath
		 213652, -- Hand of the Protector
		[ 96231] = "INTERRUPT", -- Rebuke
		[204035] = "SURVIVAL", -- Bastion of Light
		DISPEL = {
			HELPFUL = {
				  4987, -- Cleanse
				213644, -- Cleanse Toxins
			},
		},
		AURA = {
			HELPFUL = {
				   1044, -- Blessing of Freedom
				 200025, -- Beacon of Virtue
				 200652, -- Tyr's Deliverance (HoT) (Holy artifact)
				 200654, -- Tyr's Deliverance (Holy artifact)
				 204018, -- Blessing of Spellwarding
				 209540, -- Light of the Titans (Protection artifact)
				 223306, -- Bestow Faith
				[ 25771] = "INVERT_AURA", -- Forbearance
				SURVIVAL = {
					  1022, -- Blessing of Protection
					  6940, -- Blessing of Sacrifice
				},
			},
			HARMFUL = {
				 31935, -- Avenger's Shield -- NOTE: non-player only INTERRUPT and silence
				 62124, -- Hand of Reckoning (taunt)
				183218, -- Hand of Hindrance (slow)
				196941, -- Judgement of Light
				197277, -- Judgement (Retribution)
				202270, -- Blade of Wrath
				204077, -- Final Stand (taunt)
				204242, -- Consecration
				204301, -- Blessed Hammer
				205273, -- Wake of Ashes (Retribution artifact) (slow)
				209202, -- Eye of Tyr (Protection artifact)
				213757, -- Execution Sentence
				214222, -- Judgement (Holy)
				CROWD_CTL = {
					   853, -- Hammer of Justice (stun)
					 20066, -- Repentance (incapacitate)
					105421, -- Blinding Light (disorient)
					205290, -- Wake of Ashes (Retribution artifact) (stun)
				},
			},
			PERSONAL = {
				 31821, -- Aura Mastery
				 54149, -- Infusion of Light
				152262, -- Seraphim
				188370, -- Consecration (Protection)
				200376, -- Vindicator (Holy artifact)
				209388, -- Bulwark of Order (Protection artifact)
				211422, -- Knight of the Silver Hand (Holy artifact)
				214202, -- Rule of Law
				216411, -- Divine Purpose (Holy - Holy Shock)
				216413, -- Divine Purpose (Holy - Light of Dawn)
				217020, -- Zeal -- NOTE: the buff charges overlay the spell charges
				221883, -- Divine Steed
				BURST = {
					 31842, -- Avenging Wrath (Holy)
					 31884, -- Avenging Wrath
					105809, -- Holy Avenger
					224668, -- Crusade
				},
				SURVIVAL = {
					   498, -- Divine Protection
					   642, -- Divine Shield
					 31850, -- Ardent Defender
					 86659, -- Guardian of Ancient Kings
					132403, -- Shield of the Righteous
					184662, -- Shield of Vengeance
					204150, -- Aegis of Light
					205191, -- Eye for an Eye
				},
			},
		},
	},
	AURA = {
		HELPFUL = {
			 53563, -- Beacon of Light
			156910, -- Beacon of Faith
			203528, -- Greater Blessing of Might
			203538, -- Greater Blessing of Kings
			203539, -- Greater Blessing of Might
		},
		PERSONAL = {
			202273, -- Seal of Light
			223316, -- Fervent Martyr
			223819, -- Divine Purpose (Retribution)
		},
	},
}, {
	-- map aura to provider(s)
	[ 25771] = { -- Forbearance
		   633, -- Lay on Hands
		   642, -- Divine Shield
		  1022, -- Blessing of Protection
		204018, -- Blassing of Spellwarding
	},
	[ 54149] = 53576, -- Infusion of Light
	[105421] = 115750, -- Blinding Light (disorient)
	[132403] = 53600, -- Shield of the Righteous
	[188370] = 26573, -- Consecration (Protection)
	[196941] = 183778, -- Judgement of Light
	[197277] = 20271, -- Judgement
	[200376] = 200373, -- Vindicator (Holy artifact)
	[200654] = 200652, -- Tyr's Deliverance (Holy artifact)
	[204242] = { -- Consecration
		 26573, -- Consecration (Protection)
		205228, -- Consecration (Retribution)
	},
	[204301] = 204019, -- Blessed Hammer
	[205290] = 205273, -- Wake of Ashes (Retribution artifact) (stun)
	[209388] = 209389, -- Bulwark of Order (Protection artifact)
	[209540] = 209539, -- Light of the Titans (Protection artifact)
	[211422] = 200302, -- Knight of the Silver Hand (Holy artifact)
	[214222] = 20271, -- Judgement (Holy)
	[216411] = 197646, -- Divine Purpose (Holy - Holy Shock)
	[216413] = 197646, -- Divine Purpose (Holy - Light of Dawn)
	[221883] = { -- Divine Steed
		190784, -- Divine Steed (Protection)
		205656, -- Divine Steed (Retribution)
	},
	[223316] = 196923, -- Fervent Martyr
	[223819] = 223817, -- Divine Purpose (Retribution)
}, {
	-- map aura to modified spell(s)
	[ 54149] = { -- Infusion of Light
		19750, -- Flash of Light
		82326, -- Holy Light
	},
	[196941] = 20271, -- Judgement of Light -> Judgement
	[200376] = 31842, -- Vindicator (Holy artifact) -> Avenging Wrath
	[204077] = 642, -- Final Stand (taunt) -> Divine Shield
	[209388] = 31935, -- Bulwark of Order (Protection artifact) -> Avenger's Shield
	[209540] = { -- Light of the Titans (Protection artifact)
		184092, -- Light of the Protector
		213652, -- Hand of the Protector
	},
	[211422] = 20271, -- Knight of the Silver Hand (Holy artifact) -> Judgement
	[216411] = 20473, -- Divine Purpose (Holy) -> Holy Shock
	[216413] = 85222, -- Divine Purpose (Holy) -> Light of Dawn
	[223316] = 183998, -- Fervent Martyr -> Light of the Martyr
	[223819] = { -- Divine Purpose (Retribution)
		 53385, -- Divine Storm
		 85256, -- Templar's Verdict
		202273, -- Seal of Light
		210191, -- Word of Glory
		213757, -- Execution Sentence
		215661, -- Judicar's Vengeance
	},
})
