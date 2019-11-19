
local assets=
{
	Asset("ANIM","anim/wilton.zip"),
	Asset("ANIM","anim/ui_chest_3x1_ice.zip"),
	Asset("ANIM","anim/ui_chest_3x2_ice.zip"),
	Asset("ANIM","anim/ui_chest_3x3_ice.zip"),
	Asset("ANIM","anim/ui_chest_3x4_ice.zip"),
	Asset("ANIM","anim/ui_krampusbag_2x8_ice.zip"),
}

local items =
{
	AXE = "swap_axe",
	PICK = "swap_pickaxe",
	--MACHETTE = "swap_machete",
	MACHETTE = "swap_axe",
    SWORD = "swap_spear",
	SHOVEL = "swap_shovel",
	TORCH = "swap_torch",
}

local function KeepTarget(inst, target)
    return target and target:IsValid()
end

local function OnNewTarget(inst, data)
    inst.components.combat:ShareTarget(data.target, 30, function(dude) return dude:HasTag("summonedbyplayer") end, 15)
end

local function OnKeepTarget(inst, target)
    return inst.components.combat:CanTarget(target) 
end

local function NormalRetarget(inst)
    local notags = {"FX", "NOCLICK","INLIMBO", "companion", "character", "player", "structure"}
    return FindEntity(inst, 11, 
        function(guy) 
            if inst.components.combat:CanTarget(guy) then
                return (guy:HasTag("monster") or guy:HasTag("hostile") or guy.components.combat.target == ThePlayer or ThePlayer.components.combat.target == guy) and guy ~= ThePlayer
            end
    end, nil, notags)
end

local function EquipItem(inst, item)
	if item then
	    inst.AnimState:OverrideSymbol("swap_object", item, item)
	    inst.AnimState:Show("ARM_carry") 
	    inst.AnimState:Hide("ARM_normal")
	end
end

local function OnAttacked(inst, data)
    local attacker = data.attacker
    if attacker ~= ThePlayer then
		inst.components.combat:SetTarget(attacker)
	end
end

--****************************************************************************************************************************
--*************************************************************************************student的各种container的widget**********
--****************************************************************************************************************************
local function textfn(level)
    local num = 100-10*level
    return "rate  "..tostring(num).."%"
end

--3 slots

local function bp3(inst) 
	return
	{
		widget=
		{
			slotpos =
			{
				Vector3(-76, 0, 0), 
				Vector3(0, 0, 0),
				Vector3(76, 0, 0), 
			},
			animbank = "ui_chest_3x1",
			animbuild = "ui_chest_3x1",
			pos = Vector3(0, 200, 0),
			side_align_tip = 160,
		},
		type = "chest",
	}
	end
	
	local function bp3i(inst) 
	return
	{
		widget=
		{
			slotpos =
			{
				Vector3(-76, 0, 0), 
				Vector3(0, 0, 0),
				Vector3(76, 0, 0), 
			},
			animbank = "ui_chest_3x1_ice",
			animbuild = "ui_chest_3x1_ice",
			pos = Vector3(0, 200, 0),
			side_align_tip = 160,
			 buttoninfo =
			{
				text = textfn(inst.myfridgelevel),
				position = Vector3(0, -70, 0),
			}
		},
		type = "chest",
	}
	end
	
	--6 slots
	
	local function bp6(inst)
	local bp6=
	{
		widget =
		{
			slotpos = {},
			animbank = "ui_chest_3x2",
			animbuild = "ui_chest_3x2",
			pos = Vector3(0, 200, 0),
			side_align_tip = 160,
		},
		type = "chest",
	}
	for y = 1, 0, -1 do
		for x = 0, 2 do
			table.insert(bp6.widget.slotpos, Vector3(80 * (x - 1), 80 * (y - 0.5), 0))
		end
	end
	return bp6
	end
	
	local function bp6i(inst)
	local bp6i=
	{
		widget =
		{
			slotpos = {},
			animbank = "ui_chest_3x2_ice",
			animbuild = "ui_chest_3x2_ice",
			pos = Vector3(0, 200, 0),
			side_align_tip = 160,
		buttoninfo =
			{
				text = textfn(inst.myfridgelevel),
				position = Vector3(0, -100, 0),
			}
		},
		type = "chest",
	}
	for y = 1, 0, -1 do
		for x = 0, 2 do
			table.insert(bp6i.widget.slotpos, Vector3(80 * (x - 1), 80 * (y - 0.5), 0))
		end
	end
	return bp6i
	end
	--9 slots
	
	local function bp9(inst)
	local bp9 =
	{
		widget =
		{
			slotpos = {},
			animbank = "ui_chest_3x3",
			animbuild = "ui_chest_3x3",
			pos = Vector3(0, 200, 0),
			side_align_tip = 160,
		},
		type = "chest",
	}
	for y = 2, 0, -1 do
		for x = 0, 2 do
			table.insert(bp9.widget.slotpos, Vector3(80 * x - 80 * 2 + 80, 80 * y - 80 * 2 + 80, 0))
		end
	end
	return bp9
	end
	
	local function bp9i(inst)
	local bp9i =
	{
		widget =
		{
			slotpos = {},
			animbank = "ui_chest_3x3_ice",
			animbuild = "ui_chest_3x3_ice",
			pos = Vector3(0, 200, 0),
			side_align_tip = 160,
		buttoninfo =
			{
				text = textfn(inst.myfridgelevel),
				position = Vector3(0, -140, 0),
			}
		},
		type = "chest",
	}
	for y = 2, 0, -1 do
		for x = 0, 2 do
			table.insert(bp9i.widget.slotpos, Vector3(80 * x - 80 * 2 + 80, 80 * y - 80 * 2 + 80, 0))
		end
	end
	return bp9i
	end
	
	--12 slots
	
	local function bp12(inst)
	local bp12=
	{
		widget =
		{
			slotpos = {},
			animbank = "ui_chester_shadow_3x4",
			animbuild = "ui_chester_shadow_3x4",
			pos = Vector3(0, 220, 0),
			side_align_tip = 160,
		},
		type = "chest",
	}
	for y = 2.5, -0.5, -1 do
		for x = 0, 2 do
			table.insert(bp12.widget.slotpos, Vector3(75 * x - 75 * 2 + 75, 75 * y - 75 * 2 + 75, 0))
		end
	end
	return bp12
	end
	
	local function bp12i(inst)
	local bp12i=
	{
		widget =
		{
			slotpos = {},
			animbank = "ui_chest_3x4_ice",
			animbuild = "ui_chest_3x4_ice",
			pos = Vector3(0, 220, 0),
			side_align_tip = 160,
		buttoninfo =
			{
				text = textfn(inst.myfridgelevel),
				position = Vector3(0, -180, 0),
			}
		},
		type = "chest",
	}
	for y = 2.5, -0.5, -1 do
		for x = 0, 2 do
			table.insert(bp12i.widget.slotpos, Vector3(75 * x - 75 * 2 + 75, 75 * y - 75 * 2 + 75, 0))
		end
	end
	return bp12i
	end
--*************************************************************************************************************************************
--*************************************************************************************************************************************

local function changecontainer(inst)
    if inst.myfridge == false then 
        if inst.containerlevel == 0 then 
            inst.components.container:WidgetSetup(nil,bp3(inst))
        elseif inst.containerlevel == 1 then 
            inst.components.container:WidgetSetup(nil,bp6(inst))
        elseif inst.containerlevel == 2 then 
            inst.components.container:WidgetSetup(nil,bp9(inst))
        elseif inst.containerlevel == 3 then 
            inst.components.container:WidgetSetup(nil,bp12(inst))
        elseif inst.containerlevel == 4 then 
            inst.components.container:WidgetSetup(nil,bp16(inst))
        else  
            inst.components.container:WidgetSetup(nil,bp3(inst))
        end
    elseif inst.myfridge==true then
        if inst.containerlevel == 0 then 
            inst.components.container:WidgetSetup(nil,bp3i(inst))
        elseif inst.containerlevel == 1 then 
            inst.components.container:WidgetSetup(nil,bp6i(inst))
        elseif inst.containerlevel == 2 then 
            inst.components.container:WidgetSetup(nil,bp9i(inst))
        elseif inst.containerlevel == 3 then 
            inst.components.container:WidgetSetup(nil,bp12i(inst))
        elseif inst.containerlevel == 4 then 
            inst.components.container:WidgetSetup(nil,bp16i(inst))
        else  
            inst.components.container:WidgetSetup(nil,bp3i(inst))
        end
    end
end

local function changebrain(inst)
    if inst.brainnum == 0 then
	    inst:SetBrain(require"brains/student_brain")
    elseif inst.brainnum == 1 then
        inst:SetBrain(require"brains/student_fight_brain")
    elseif inst.brainnum == 2 then
        inst:SetBrain(require"brains/student_work_brain")
    elseif inst.brainnum == 3 then
        inst:SetBrain(require"brains/student_perfect_brain")
    else 
        return
    end
end

local function changeclothes(owner)
    if owner.brainnum == 1 or owner.brainnum == 3 then 
        if owner.combatlevel > 0 and owner.combatlevel <= 3 then
		    owner.AnimState:OverrideSymbol("swap_body", "armor_grass", "swap_body")
        elseif owner.combatlevel > 3 and owner.combatlevel <= 7 then
            owner.AnimState:OverrideSymbol("swap_body", "armor_wood", "swap_body")
        elseif owner.combatlevel > 7 and owner.combatlevel <= 10 then
            owner.AnimState:OverrideSymbol("swap_body", "armor_marble", "swap_body")
        end
    else
        owner.AnimState:ClearOverrideSymbol("swap_body")
    end
    if owner.brainnum == 2 or owner.brainnum == 3 then
        owner.AnimState:OverrideSymbol("swap_hat", "hat_straw",  "swap_hat")
        owner.AnimState:Show("HAT")
        owner.AnimState:Show("HAIR_HAT")
        owner.AnimState:Hide("HAIR_NOHAT")
        owner.AnimState:Hide("HAIR")
    else
        owner.AnimState:ClearOverrideSymbol("swap_hat")
        owner.AnimState:Hide("HAT")
        owner.AnimState:Hide("HAIR_HAT")
        owner.AnimState:Show("HAIR_NOHAT")
        owner.AnimState:Show("HAIR")
    end
end
--**************************************************************************************************************
--***********************************************************************************保存加载设置
--**************************************************************************************************************
local function onsave(inst,data)
	data.name = inst.name
	data.combatlevel = inst.combatlevel
	data.brainnum = inst.brainnum
	data.myfridgelevel = inst.myfridgelevel
	data.myfridge = inst.myfridge
	data.containerlevel = inst.containerlevel
	data.isstudying = inst.isstudying
	--data.leader = inst.components.follower.leader
end

local function onpreload(inst,data)
		inst.name=data.name
		--inst:AddTag(data.name)
		inst.combatlevel = data.combatlevel
		inst.myfridgelevel = data.myfridgelevel
		inst.myfridge = data.myfridge
		inst.containerlevel = data.containerlevel
		inst.brainnum = data.brainnum
		inst.isstudying = data.isstudying
end

local function onload(inst,data)
	changebrain(inst)
	changeclothes(inst)
	if inst.myfridge then
		for k,v in pairs(inst.components.container.slots) do
			if v.components.perishable then
				v.components.perishable:SetLocalMultiplier(1-0.1*inst.myfridgelevel)
			end
		end
	end
	changecontainer(inst)
	--inst.components.follower:SetLeader(TheSim:FindFirstEntityWithTag("head teacher"))
	--inst.brain:Start()
	--inst:DoTaskInTime(math.random(),)
end

--********************************************************************************************************
--********************************************************************************************************

---------------------------------------------
--fridge percent
-------------------------------------------
local function canperish(inst)
	if inst.components.perishable then
		return true
	else
		return false
	end
end

local function perishmulti(inst,level)
	if inst.components.perishable then
		inst.components.perishable:SetLocalMultiplier(1-0.1*level)
	end
end

local function OnOpen(inst)
	for k,v in pairs(inst.components.container:FindItems(canperish)) do
		perishmulti(v,0)
	end
end

local function OnClose(inst)
	if inst.myfridge == true then
		for k,v in pairs(inst.components.container:FindItems(canperish)) do
			perishmulti(v,inst.myfridgelevel)
		end
	end
end
--******************************************************************************************************************
--******************************************************************************************************************


local function fn()
	local inst = CreateEntity()

	inst.name="student"
	inst.brainnum=0                          --0：plain brain   1：fight brain   2：work brain   3：fight-work brain
	inst.myfridge=false
	inst.myfridgelevel=0
	inst.containerlevel=0
	inst.combatlevel=0
	inst.isstudying=false
	
	inst:AddTag("student")
	inst:AddTag("character")	
	inst:AddTag("notraptrigger")
	inst:AddTag("scarytoprey")
	inst:AddTag("companion")
	inst:AddTag("summonedbyplayer")
	inst:AddTag("irreplaceable")
	inst:AddTag("nosteal")
	inst:AddTag("kingdom")

	inst.entity:AddNetwork()

	inst.entity:AddMiniMapEntity()
		inst.MiniMapEntity:SetIcon( "ayan.tex" )

	local sound = inst.entity:AddSoundEmitter()
	
	local trans = inst.entity:AddTransform()
		trans:SetFourFaced()
		--trans:SetScale(0.7,0.7,0.7)

	local anim = inst.entity:AddAnimState()
		anim:SetBank("wilson")
		anim:SetBuild("wilton")
		anim:Show("ARM_normal")
		anim:Hide("ARM_carry")
		anim:PlayAnimation("idle",true)
	
	MakeCharacterPhysics(inst,10,.5)
	MakeMediumBurnableCharacter(inst, "body")
	MakeMediumFreezableCharacter(inst, "body")
	inst.components.burnable.flammability = TUNING.SPIDER_FLAMMABILITY
	
	

	inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

--**************************************************************************************************************
--**********************************************************************************components
--**************************************************************************************************************
	inst:AddComponent("mystand")

	inst:AddComponent("homeseeker")
	
	inst:AddComponent("locomotor")
	inst.components.locomotor.runspeed=6.5
	
	inst:AddComponent("follower")
		inst.components.follower:SetLeader(TheSim:FindFirstEntityWithTag("head teacher"))
		inst.components.follower:KeepLeaderOnAttacked()
		inst.components.follower.keepdeadleader = true
		inst.components.follower.keepleaderduringminigame = true

	inst:AddComponent("health")
		inst.components.health:SetMaxHealth(300)
		inst.components.health:StartRegen(1,1)
		inst.components.health.canheal = false
		inst.components.health.canmurder = false
		--[[if (IsDLCEnabled(CAPY_DLC) or IsDLCEnabled(REIGN_OF_GIANTS)) then
			inst.components.health:SetAbsorptionAmount(0.20)
		else
			inst.components.health:SetAbsorbAmount(0.20)
		end--]]
	
	inst:AddComponent("combat")
		inst.components.combat.hiteffectsymbol = "body"
		inst.components.combat:SetDefaultDamage(10)
		inst.components.combat:SetAttackPeriod(2.5)	
		inst.components.combat:SetKeepTargetFunction(OnKeepTarget)
		inst.components.combat:SetRetargetFunction(1, NormalRetarget)
	
	inst:ListenForEvent("attacked", OnAttacked)
	inst:ListenForEvent("newcombattarget", OnNewTarget)
	--inst:ListenForEvent("death", OnDeath)
	
	inst:AddComponent("container")
		inst.components.container:WidgetSetup(nil,bp3(inst))
		inst.components.container.onopenfn = OnOpen
		inst.components.container.onclosefn = OnClose

	inst:AddComponent("talker")
        inst.components.talker.fontsize = 35
        inst.components.talker.font = TALKINGFONT
        --inst.components.talker.colour = Vector3(133/255, 140/255, 167/255)
        inst.components.talker.offset = Vector3(0, -400, 0)
        inst.components.talker:MakeChatter()
--*****************************************************************************************************************	
--*****************************************************************************************************************

	inst.items = items
	inst.equipfn = EquipItem
	--EquipItem(inst)

	inst:ListenForEvent("teleported",function() 
		if inst.components.mystand.stay == true then
			inst.Physics:Teleport(inst.components.mystand.location:Get())
		end							
	end)
---------------------------------------------------------------------------------------------------
	inst:SetStateGraph("SGstudent")
	local brain = require"brains/student_brain"
	inst:SetBrain(brain)

	inst.OnSave=onsave
	inst.OnPreLoad=onpreload
	inst.OnLoad=onload

---------------------------------------------------------------------------------------------------
	return inst
end

return Prefab("student",fn,assets,nil)
	