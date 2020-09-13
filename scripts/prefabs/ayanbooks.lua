local assets=
{
	Asset("ANIM", "anim/ayanbooks.zip"),
	Asset("ATLAS", "images/inventoryimages/backpackplus.xml"),
    Asset("ATLAS", "images/inventoryimages/fridgeplus.xml"),
    Asset("ATLAS", "images/inventoryimages/fridgeminus.xml"),
	Asset("ATLAS", "images/inventoryimages/work.xml"),
    Asset("ATLAS", "images/inventoryimages/antiwork.xml"),
    Asset("ATLAS", "images/inventoryimages/fightplus.xml"),
    Asset("ATLAS", "images/inventoryimages/fightminus.xml"),
	Asset("ATLAS", "images/inventoryimages/fridgeswitch.xml"),
	Asset("ATLAS", "images/inventoryimages/fightswitch.xml"),
	Asset("ATLAS", "images/inventoryimages/applicationform.xml"),
}

function MakeABook(name,image)
	local function fn(Sim)
		local inst = CreateEntity()
        local trans = inst.entity:AddTransform()
        --trans:SetScale(2.5, 2.5, 2.5)

		MakeInventoryPhysics(inst)
		MakeInventoryFloatable(inst, "med", nil, 0.75)

		local anim = inst.entity:AddAnimState()
			anim:SetBank("ayanbooks")
			anim:SetBuild("ayanbooks")
			anim:PlayAnimation(image)
			
		inst:AddComponent("inspectable")

		inst:AddTag("ayanbook")
		inst:AddTag(name)

		inst.entity:SetPristine()

        if not TheWorld.ismastersim then
            return inst
        end

		inst:AddComponent("inventoryitem")
			inst.components.inventoryitem.imagename =image
			inst.components.inventoryitem.atlasname = "images/inventoryimages/"..image..".xml"
		return inst
	end
	return Prefab( "common/inventory/"..name, fn, assets)
end

return MakeABook("backpackplus","backpackplus"),
    MakeABook("fridgeplus","fridgeplus"),
    MakeABook("fridgeminus","fridgeminus"),
    MakeABook("fightplus","fightplus"),
    MakeABook("fightminus","fightminus"),
    MakeABook("work","work"),
	MakeABook("antiwork","antiwork"),
	MakeABook("applicationform","applicationform"),
	MakeABook("fridgeswitch","fridgeswitch"),
	MakeABook("fightswitch","fightswitch")







