require "prefabutil"

local assets = 
{
	Asset("ANIM", "anim/gas_fx.zip"),
	Asset("ANIM", "anim/gas.zip"),
	Asset("ANIM", "anim/firefighter_placement.zip"),
	Asset( "ATLAS", "images/map_icons/gasminimap.xml" ),
}

local prefabs = {}

local function onhammered(inst, worker)
	if inst:HasTag("fire") and inst.components.burnable then
		inst.components.burnable:Extinguish()
	end
	inst.SoundEmitter:KillSound("idleloop")
	inst.components.lootdropper:DropLoot()
	SpawnPrefab("collapse_small").Transform:SetPosition(inst.Transform:GetWorldPosition())
	inst.SoundEmitter:PlaySound("dontstarve/common/destroy_wood")

	inst:Remove()
end

local function onhit(inst, worker)
	if not inst:HasTag("burnt") then
		if not inst.sg:HasStateTag("busy") then
			inst.sg:GoToState("hit")
		end
	end
end

local function onsave(inst, data)
	if inst:HasTag("burnt") or inst:HasTag("fire") then
        data.burnt = true
    end
    data.on = inst.on
    data.gasnumber=inst.gasnumber
end

local function onload(inst, data)
	if data and data.burnt and inst.components.burnable and inst.components.burnable.onburnt then
        inst.components.burnable.onburnt(inst)
    end
    inst.on = data.on and data.on or false
    inst.gasnumber=data.gasnumber
end

local function onpreload(inst)
	local SEARCH_RADIUS = 4
	local x,y,z = inst.Transform:GetWorldPosition()
	local entities = TheSim:FindEntities(x,y,z, SEARCH_RADIUS,{"fx"},{})
	for k,v in pairs(entities) do
		--if v.owner1 == inst.owner1 and v.owner2 == inst.owner1 and v.owner3 == inst.owner3 then
			v:Remove()
		--end
	end
end

local function onbuilt(inst)
	inst.AnimState:PlayAnimation("place")
	local ayan = TheSim:FindFirstEntityWithTag("head teacher")
	inst.gasnumber=ayan.components.ayanstats.gasnumber
	ayan.components.ayanstats.gasnumber=ayan.components.ayanstats.gasnumber+1
end
---------------------------------------1111111
---------------------------------------222222
local function HowToPoison(inst)
	local MAX=inst.components.health.maxhealth
	local delta1=0
	local delta2=0
	local delta3=0
	
	if 0.0015*MAX > 0.12 and 0.0015*MAX < 0.3 then
		delta1 = 0.0015*MAX
	elseif 0.0015*MAX >=0.3 then
		delta1 = 0.3
	else
		delta1 = 0.12
	end
	
	if 0.0025*MAX >0.2 and 0.0025*MAX < 0.5 then
		delta2 = 0.0025*MAX
	elseif 0.0015*MAX >=0.5 then
		delta2 = 0.5
	else
		delta2 = 0.2
	end
	
	if 0.005*MAX >0.4 and 0.005*MAX < 1 then
		delta3 = 0.005*MAX
	elseif 0.0015*MAX >=1 then
		delta3 = 1
	else
		delta3 = 0.4
	end
	
	if inst.components.health:GetPercent()>0.7 then
		inst.components.health:DoDelta(-delta1,.05)
	elseif inst.components.health:GetPercent()>0.4 then
		inst.components.health:DoDelta(-delta2,.05)
	else
		inst.components.health:DoDelta(-delta3,.05)
	end
end

local function Poison(inst,radius)
	local SEARCH_RADIUS = radius
	local x,y,z = inst.Transform:GetWorldPosition()
	local entities = TheSim:FindEntities(x,y,z, SEARCH_RADIUS,nil,{"gasmask"})
	for k,v in pairs(entities) do
		if v.components.health then 
			HowToPoison(v)
		end
	end
end

local function Scatter(inst,radius)
	local SEARCH_RADIUS = radius
	local chance = math.random()
	local x,y,z = inst.Transform:GetWorldPosition()
	local entities = TheSim:FindEntities(x,y,z, SEARCH_RADIUS,{"fx"},{})
	for k,v in pairs(entities) do
		if v.gasnumber==inst.gasnumber then
			local vx,vy,vz=v.Transform:GetWorldPosition()
			local L=(vx-x)*(vx-x)+(vz-z)*(vz-z)
			if L<=4 then
				v:DoTaskInTime(2,function() v:Remove() end)
			elseif L<=9 then
					v:DoTaskInTime(1.5,function() v:Remove() end)
			elseif L<12.25 then
					v:DoTaskInTime(1,function() v:Remove() end)
			else
				v:DoTaskInTime(.5,function() v:Remove() end)
			end
		end
	end
end

local function Spawngas_fx(inst,num)
	local x,y,z = inst.Transform:GetWorldPosition()
	local l=num
	inst:DoTaskInTime(0.5,function()
		local fx1_1 = SpawnPrefab("gas_fx")
			fx1_1.gasnumber=inst.gasnumber
			fx1_1.Transform:SetPosition(x+2*l,y,z)
		local fx1_2 = SpawnPrefab("gas_fx")
			fx1_2.gasnumber=inst.gasnumber
			fx1_2.Transform:SetPosition(x-2*l,y,z)
		local fx1_3 = SpawnPrefab("gas_fx")
			fx1_3.gasnumber=inst.gasnumber
			fx1_3.Transform:SetPosition(x,y,z+2*l)
		local fx1_4 = SpawnPrefab("gas_fx")
			fx1_4.gasnumber=inst.gasnumber
			fx1_4.Transform:SetPosition(x,y,z-2*l)
	end)
	inst:DoTaskInTime(1,function()
		local fx2_1 = SpawnPrefab("gas_fx")
			fx2_1.gasnumber=inst.gasnumber
			fx2_1.Transform:SetPosition(x+2.83*l,y,z+2.83*l)
		local fx2_2 = SpawnPrefab("gas_fx")
			fx2_2.gasnumber=inst.gasnumber
			fx2_2.Transform:SetPosition(x-2.83*l,y,z-2.83*l)
		local fx2_3 = SpawnPrefab("gas_fx")
			fx2_3.gasnumber=inst.gasnumber
			fx2_3.Transform:SetPosition(x-3.86*l,y,z+1.04*l)
		local fx2_4 = SpawnPrefab("gas_fx")
			fx2_4.gasnumber=inst.gasnumber
			fx2_4.Transform:SetPosition(x+3.86*l,y,z-1.04*l)
		local fx2_5 = SpawnPrefab("gas_fx")
			fx2_5.gasnumber=inst.gasnumber
			fx2_5.Transform:SetPosition(x-1.04*l,y,z+3.86*l)
		local fx2_6 = SpawnPrefab("gas_fx")
			fx2_6.gasnumber=inst.gasnumber
			fx2_6.Transform:SetPosition(x+1.04*l,y,z-3.86*l)
	end)
	inst:DoTaskInTime(2,function()
		local fx3_1 = SpawnPrefab("gas_fx")
			fx3_1.gasnumber=inst.gasnumber
			fx3_1.Transform:SetPosition(x+5.20*l,y,z+3*l)
		local fx3_2 = SpawnPrefab("gas_fx")
			fx3_2.gasnumber=inst.gasnumber
			fx3_2.Transform:SetPosition(x+3*l,y,z+5.2*l)
		local fx3_3 = SpawnPrefab("gas_fx")
			fx3_3.gasnumber=inst.gasnumber
			fx3_3.Transform:SetPosition(x-5.20*l,y,z-3*l)
		local fx3_4 = SpawnPrefab("gas_fx")
			fx3_4.gasnumber=inst.gasnumber
			fx3_4.Transform:SetPosition(x-3*l,y,z-5.2*l)
		local fx3_5 = SpawnPrefab("gas_fx")
			fx3_5.gasnumber=inst.gasnumber
			fx3_5.Transform:SetPosition(x-5.20*l,y,z+3*l)
		local fx3_6 = SpawnPrefab("gas_fx")
			fx3_6.gasnumber=inst.gasnumber
			fx3_6.Transform:SetPosition(x-3*l,y,z+5.2*l)
		local fx3_7 = SpawnPrefab("gas_fx")
			fx3_7.gasnumber=inst.gasnumber
			fx3_7.Transform:SetPosition(x+5.20*l,y,z-3*l)
		local fx3_8 = SpawnPrefab("gas_fx")
			fx3_8.gasnumber=inst.gasnumber
			fx3_8.Transform:SetPosition(x+3*l,y,z-5.2*l)
		local fx3_9 = SpawnPrefab("gas_fx")
			fx3_9.gasnumber=inst.gasnumber
			fx3_9.Transform:SetPosition(x+6*l,y,z)
		local fx3_10 = SpawnPrefab("gas_fx")
			fx3_10.gasnumber=inst.gasnumber
			fx3_10.Transform:SetPosition(x-6*l,y,z)
		local fx3_11 = SpawnPrefab("gas_fx")
			fx3_11.gasnumber=inst.gasnumber
			fx3_11.Transform:SetPosition(x,y,z-6*l)
		local fx3_12 = SpawnPrefab("gas_fx")
			fx3_12.gasnumber=inst.gasnumber
			fx3_12.Transform:SetPosition(x,y,z+6*l)
	end)
end
		
local function OnFuelEmpty(inst)
	inst.sg:GoToState("turn_off")
end

local function getstatus(inst, viewer)
	if inst.on then
		if inst.components.fueled and (inst.components.fueled.currentfuel / inst.components.fueled.maxfuel) <= .25 then
			return "LOWFUEL"
		else
			return "ON"
		end
	else
		return "OFF"
	end
end

local function TurnOff(inst, instant)
	inst.on = false
	inst.components.fueled:StopConsuming()
	if instant then
		inst.sg:GoToState("idle_off")
	else
		inst.sg:GoToState("turn_off")
	end
end

local function TurnOn(inst, instant)
	inst.on = true
	inst.components.fueled:StartConsuming()
	if instant then
		inst.sg:GoToState("idle_on")
	else
		inst.sg:GoToState("turn_on")
	end
	Spawngas_fx(inst,0.666)
	Spawngas_fx(inst,0.5)
end


		
---------------------------------------222222
local function fn()
	local inst = CreateEntity()
	local trans = inst.entity:AddTransform()
	local anim = inst.entity:AddAnimState()
	local sound = inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()
	inst.entity:AddMiniMapEntity()

	MakeObstaclePhysics(inst, .15)
	
	
	
	anim:SetBank("gas")
	anim:SetBuild("gas")
	anim:PlayAnimation("idle_off")
	inst.on = false

	inst.MiniMapEntity:SetIcon( "gasminimap.tex" )
	
	inst:AddTag("structure")
	inst:AddTag("gashhh")

	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
        return inst
    end


	inst:AddComponent("inspectable")
	inst.components.inspectable.getstatus = getstatus

	inst:AddComponent("machine")
	inst.components.machine.turnonfn = TurnOn
	inst.components.machine.turnofffn = TurnOff
	inst.components.machine.cooldowntime = 0.5

	inst:AddComponent("fueled")
	inst.components.fueled:SetDepletedFn(OnFuelEmpty)
	inst.components.fueled.maxfuel=120
	inst.components.fueled.currentfuel=120
	inst.components.fueled.rate=0.1

	inst:AddComponent("lootdropper")
	inst:AddComponent("workable")
	inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
	inst.components.workable:SetWorkLeft(4)
	inst.components.workable:SetOnFinishCallback(onhammered)
	inst.components.workable:SetOnWorkCallback(onhit)

	inst:SetStateGraph("SGgas")
	
	inst:ListenForEvent( "onbuilt", onbuilt)

	inst.OnSave = onsave
	inst.OnPreLoad = onpreload
    inst.OnLoad = onload
   
	inst:DoPeriodicTask(.5,function()
		if inst.on and inst.components.fueled.currentfuel ~=0  then
			Poison(inst,4)
		else
			Scatter(inst,4)
		end
	end)
	 inst.SoundEmitter:PlaySound("dontstarve_DLC001/common/craftable/firesupressor")
    
	return inst
end

local function placer_postinit_fn(inst)
    --Show the flingo placer on top of the flingo range ground placer

    local placer2 = CreateEntity()

    --[[Non-networked entity]]
    placer2.entity:SetCanSleep(false)
    placer2.persists = false

    placer2.entity:AddTransform()
    placer2.entity:AddAnimState()

    placer2:AddTag("CLASSIFIED")
    placer2:AddTag("NOCLICK")
    placer2:AddTag("placer")

    local s = 1 / 0.85
    placer2.Transform:SetScale(s, s, s)

    placer2.AnimState:SetBank("gas")
    placer2.AnimState:SetBuild("gas")
    placer2.AnimState:PlayAnimation("idle_off")
    placer2.AnimState:SetLightOverride(1)

    placer2.entity:SetParent(inst.entity)

    inst.components.placer:LinkEntity(placer2)
end

return Prefab("gas",fn,assets,prefabs),
	MakePlacer("gas_placer", "firefighter_placement", "firefighter_placement", "idle", true, nil, nil,0.8, nil, nil, placer_postinit_fn)
--MakePlacer("gas_placer", "gas", "gas", "idle_off")


