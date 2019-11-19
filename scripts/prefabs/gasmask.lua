local assets=
{
	Asset("ANIM", "anim/gasmask.zip"),
	 Asset("ATLAS", "images/inventoryimages/gasmask.xml"),
}

local prefabs={}
    
local function onequip(inst, owner)
        local build = "gasmask"
        owner.AnimState:OverrideSymbol("swap_hat", build,  "swap_hat")
        owner.AnimState:Show("HAT")
        owner.AnimState:Show("HAIR_HAT")
        owner.AnimState:Hide("HAIR_NOHAT")
        owner.AnimState:Hide("HAIR")

        if owner:HasTag("player") then
            owner.AnimState:Hide("HEAD")
            owner.AnimState:Show("HEAD_HAT")
        end
        
	if inst.components.fueled then
		inst.components.fueled:StartConsuming()        
	end
	
	owner:AddTag("gasmask")
end

local function onunequip(inst, owner)
        owner.AnimState:ClearOverrideSymbol("swap_hat")
        owner.AnimState:Hide("HAT")
        owner.AnimState:Hide("HAIR_HAT")
        owner.AnimState:Show("HAIR_NOHAT")
        owner.AnimState:Show("HAIR")

        if owner:HasTag("player") then
            owner.AnimState:Show("HEAD")
            owner.AnimState:Hide("HEAD_HAT")
        end

	if inst.components.fueled then
		inst.components.fueled:StopConsuming()        
	end
	
	owner:RemoveTag("gasmask")
	
end
    
local function fn()
        local inst = CreateEntity()
        inst.entity:AddNetwork()
        inst.entity:AddTransform()
        inst.entity:AddAnimState()
        MakeInventoryPhysics(inst)

        inst.AnimState:SetBank("gasmask")
        inst.AnimState:SetBuild("gasmask")
        inst.AnimState:PlayAnimation("anim")

        inst:AddTag("hat")
	inst:AddTag("gasmask")

        inst:AddComponent("inspectable")

        inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.imagename = "gasmask"
	inst.components.inventoryitem.atlasname = "images/inventoryimages/gasmask.xml"
       
        inst:AddComponent("tradable")

        inst:AddComponent("equippable")
        inst.components.equippable.equipslot = EQUIPSLOTS.HEAD
        inst.components.equippable:SetOnEquip(onequip)
        inst.components.equippable:SetOnUnequip(onunequip)

        inst:AddComponent("fueled")
        inst.components.fueled.fueltype = FUELTYPE.USAGE
        inst.components.fueled:InitializeFuelLevel(TUNING.STRAWHAT_PERISHTIME)
        inst.components.fueled:SetDepletedFn(--[[generic_perish]]inst.Remove)

        

        return inst
end
    
return Prefab("common/inventory/gasmask",fn,assets,prefabs)