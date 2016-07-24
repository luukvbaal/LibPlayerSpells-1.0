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
lib:__RegisterSpells("WARRIOR", 70000, 4, {
	COOLDOWN = {
		   6544, -- Heroic Leap
		 202168, -- Impending Victory
		 209577, -- Warbreaker (Arms artifact)
		[  6552] = "INTERRUPT", -- Pummel
		AURA = {
			PERSONAL = {
				  18499, -- Berserker Rage
				  23920, -- Spell Reflection
				 122510, -- Ultimatum
				 132404, -- Shield Block
				 188783, -- Might of the Vrykul (Protection artifact)
				 188923, -- Cleave
				 202164, -- Bounding Stride
				 209484, -- Tactical Advance (Arms artifact)
				 209706, -- Shattered Defenses (Arms artifact)
				 227847, -- Bladestorm
				BURST = {
					  1719, -- Battle Cry
					107574, -- Avatar
				},
				SURVIVAL = {
					   871, -- Shield Wall
					 12975, -- Last Stand
					118038, -- Die by the Sword
					197690, -- Defensive Stance
					203524, -- Neltharion's Fury (Protection artifact)
					227744, -- Ravager
				},
			},
			HELPFUL = {
				 97463, -- Commanding Shout
				223658, -- Safeguard
			},
			HARMFUL = {
				   355, -- Taunt (taunt)
				  1160, -- Demoralizing Shout
				  6343, -- Thunder Clap (slow)
				--115804, -- Mortal Wounds -- FIXME: see LibPlayerSpells-1.0/issues/83
				208086, -- Colossus Smash
				CROWD_CTL = {
					  5246, -- Intimidating Shout (disorient)
					  7922, -- Warbringer Stun (stun)
					132168, -- Shockwave (stun)
					132169, -- Storm Bolt (stun)
				},
			},
		},
	},
	AURA = {
		HELPFUL = {
			147833, -- Intervene
		},
		HARMFUL = {
			   772, -- Rend
			  1715, -- Hamstring (slow)
			115767, -- Deep Wounds
			215537, -- Trauma
			CROWD_CTL = {
				105771, -- Charge (root)
			},
		},
		PERSONAL = {
			 32216, -- Victorious
			 60503, -- Overpower!
			202289, -- Renewed Fury
			202573, -- Vengeance: Focused Rage
			202574, -- Vengeance: Ignore Pain
			203581, -- Dragon Scales (Protection artifact)
			204488, -- Focused Rage (Protection)
			207982, -- Focused Rage (Arms)
			SURVIVAL = {
				190456, -- Ignore Pain
			},
		},
	},
}, {
	-- Map aura to provider(s)
	[  7922] = 103828, -- Warbringer (stun)
	[ 32216] = { -- Victorious
		 34428, -- Victory Rush
		202168, -- Impending Victory
	},
	[ 60503] = 7384, -- Overpower! <- Overpower
	[ 97463] = 97462, -- Commanding Shout
	[105771] = { -- Charge (root)
		   100, -- Charge
		198304, -- Intercept
	},
	[115767] = 115768, -- Deep Wounds
	-- [115804] = 12294, -- Mortal Wounds <- Mortal Strike -- FIXME: see LibPlayerSpells-1.0/issues/83
	[122510] = 122509, -- Ultimatum
	[132168] = 46968, -- Shockwave (stun)
	[132169] = 107570, -- Storm Bolt (stun)
	[132404] = 2565, -- Shield Block
	[147833] = 198304, -- Intervene <- Intercept
	[188783] = 188778, -- Might of the Vrykul (Protection artifact)
	[188923] = 845, -- Cleave
	[197690] = 212520, -- Defensive Stance
	[215537] = 215538, -- Trauma
	[202164] = 202163, -- Bounding Stride
	[202289] = 202288, -- Renewed Fury
	[202573] = 202572, -- Vengeance: Focused Rage <- Vengeance
	[202574] = 202572, -- Vengeance: Ignore Pain <- Vengeance
	[203581] = 203576, -- Dragon Scales (Protection artifact)
	[208086] = { -- Colossus Smash
		167105, -- Colossus Smash
		209577, -- Warbreaker (Arms artifact)
	},
	[209484] = 209483, -- Tactical Advance (Arms artifact)
	[209706] = 209574, -- Shattered Defenses (Arms artifact)
	[227744] = 228920, -- Ravager
	[223658] = 198304, -- Safeguard <- Intercept
}, {
	-- map aura to modified spell(s)
	[  7922] = 198304, -- Warbringer (stun) -> Intercept
	[115767] = { -- Deep Wounds
		 6572, -- Revenge
		20243, -- Devastate
	},
	[122510] = 204488, -- Ultimatum -> Focused Rage
	[188783] = { -- Might of the Vrykul (Protection artifact)
		 6572, -- Revenge
		23922, -- Shield Slam
	},
	[188923] = 1680, -- Cleave -> Whirlwind
	[215537] = { -- Trauma
		1464, -- Slam
		1680, -- Whirlwind
	},
	[202164] = 6544, -- Bounding Stride -> Heroic Leap
	[202289] = 190456, -- Renewed Fury -> Ignore Pain
	[202573] = 204488, -- Vengeance: Focused Rage -> Focused Rage
	[202574] = 190456, -- Vengeance: Ignore Pain -> Ignore Pain
	[203581] = 190456, -- Dragon Scales (Protection artifact) -> Ignore Pain
	[204488] = 23922, -- Focused Rage (Protection) -> Shield Slam
	[207982] = 12294, -- Focused Rage (Arms) -> Mortal Strike
	[209484] = 6544, -- Tactical Advance -> Heroic Leap (Arms artifact)
	[209706] = { -- Shattered Defenses (Arms artifact)
		 12294, -- Mortal Strike
		163201, -- Execute
	},
})
