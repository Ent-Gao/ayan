local assets =
{
	Asset("ANIM", "anim/ruler.zip"),
	Asset("ANIM", "anim/swap_ruler.zip"),
	Asset("ATLAS", "images/inventoryimages/ruler.xml"),
    Asset("IMAGE", "images/inventoryimages/ruler.tex"),
}

local prefabs = {
}

local function OnEquip(inst, owner) 
	owner.AnimState:OverrideSymbol("swap_object", "swap_ruler", "swap_ruler")
	owner.AnimState:Show("ARM_carry") 
	owner.AnimState:Hide("ARM_normal") 
end

local function OnUnequip(inst, owner) 
	owner.AnimState:Hide("ARM_carry") 
	owner.AnimState:Show("ARM_normal") 
end

local function fn(colour)
	local inst = CreateEntity()
    inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()
	inst.entity:AddMiniMapEntity()

	MakeInventoryPhysics(inst)
	MakeInventoryFloatable(inst, "med", 0.05, {1.1, 0.5, 1.1}, true, -9)

    inst.AnimState:SetBank("ruler")
	inst.AnimState:SetBuild("ruler")
	inst.AnimState:PlayAnimation("idle")

    --inst.MiniMapEntity:SetIcon("images/inventoryimages/ruler.tex")

	if not TheWorld.ismastersim then     
		return inst
	end

    inst.entity:SetPristine()
	inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(TUNING.SPIKE_DAMAGE * 0.9)

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.imagename = "ruler"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/ruler.xml"

	inst:AddComponent("finiteuses")
	inst.components.finiteuses:SetMaxUses(TUNING.SPIKE_USES*0.5)
	inst.components.finiteuses:SetUses(TUNING.SPIKE_USES*0.5)

	inst:AddComponent("equippable")
	inst.components.equippable:SetOnEquip(OnEquip)
	inst.components.equippable:SetOnUnequip(OnUnequip)

	return inst
end

return Prefab("ruler", fn, assets)