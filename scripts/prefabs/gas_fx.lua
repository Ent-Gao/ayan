require "prefabutil"

local assets=
{
	Asset("ANIM", "anim/gas_fx.zip"),
}

local prefabs = {}

local function onsave(inst,data)
	data.gasnumber=inst.gasnumber
end

local function onload(inst,data)
	if data then
		inst.gasnumber=data.gasnumber
	end
end

local function fn(Sim)
	local inst = CreateEntity()
	local trans = inst.entity:AddTransform()
	local anim = inst.entity:AddAnimState()
	inst.gasnumber=nil
	
	--inst:AddComponent("inspectable")
	
	anim:SetBank("gasfx")
	anim:SetBuild("gas_fx")
	anim:PlayAnimation("off")
	
	inst:AddTag("fx")
	
	inst:SetStateGraph("SGgas_fx")
	
	--MakeObstaclePhysics(inst, )
	
	inst.OnSave = onsave
	inst.OnLoad = onload
	
	
	
	return inst
end

return Prefab("common/fx/gas_fx",fn,assets,prefabs)