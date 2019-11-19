local MakePlayerCharacter = require "prefabs/player_common"

local assets = { Asset("SCRIPT", "scripts/prefabs/player_common.lua"),}

local prefabs = {}

local start_inv = 
	{
	"student",
	}

local function onbecamehuman(inst)
	-- Set speed when reviving from ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "ayan_speed_mod", 1)
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "ayan_speed_mod")
end

-- When loading or spawning the character
local function onload(inst)
	inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
	inst:ListenForEvent("ms_becameghost", onbecameghost)

	if inst:HasTag("playerghost") then
		onbecameghost(inst)
	else
		onbecamehuman(inst)
	end
end

-- This initializes for both the server and client. Tags can be added here.
local common_postinit = function(inst) 
	-- Minimap icon
	inst.MiniMapEntity:SetIcon( "ayan.tex" )
end

-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	inst:AddTag("head teacher")
	-- choose which sounds this character will play
	inst.soundsname = "wilson"
	
	inst:AddComponent("ayanstats")
	inst:AddComponent("leader")
	
	
	-- Stats	
	inst.components.health:SetMaxHealth(100)
	inst.components.hunger:SetMax(150)
	inst.components.sanity:SetMax(300)
	--inst.components.health.fire_damage_scale = 0
	
	inst.components.locomotor.walkspeed = 4
	inst.components.locomotor.runspeed = 6
	
	--inst.components.grue:AddImmunity(2)
		
	-- Damage multiplier (optional)
	inst.components.combat.damagemultiplier = 1
	--inst.components.combat:SetDefaultDamage(9999999999*9)
	--inst.components.combat:SetAttackPeriod(0.5)
	--inst.components.combat:SetAreaDamage(10, 1)
	
	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE

	inst:DoPeriodicTask(3,function()
		local stu = TheSim:FindFirstEntityWithTag("student")
		if not stu or stu.components.health:IsDead() then
			inst.components.sanity:DoDelta(-1,0.05)
			--inst.components.sanity.ratescale = RATE_SCALE.DECREASE_HIGH 
		else
			inst.components.ayanstats.isspawningstu = false
		end
	end)
end

return MakePlayerCharacter("ayan", prefabs, assets, common_postinit, master_postinit, start_inv)

