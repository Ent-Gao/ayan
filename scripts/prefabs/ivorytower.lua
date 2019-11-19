require "prefabutil"


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
local assets =
{
    Asset("ANIM", "anim/ivorytower.zip"),
    Asset("ANIM", "anim/ui_ivorytower_1x1.zip"),
	Asset( "ATLAS", "images/map_icons/ivorytowerminimap.xml" ),
    Asset("ATLAS", "images/inventoryimages/ivorytower.xml"),
    Asset("SOUND", "sound/pig.fsb"),
}

local prefabs =
{
    "student"
}

--Client update
local function OnUpdateWindow(window, inst, snow)
    if inst:HasTag("burnt") then
        inst._windowsnow = nil
        inst._window = nil
        snow:Remove()
        window:Remove()
    elseif inst.Light:IsEnabled() and inst.AnimState:IsCurrentAnimation("lit") then
        if not window._shown then
            window._shown = true
            window:Show()
            snow:Show()
        end
    elseif window._shown then
        window._shown = false
        window:Hide()
        snow:Hide()
    end
end

local function LightsOn(inst)
    if not inst:HasTag("burnt") and not inst.lightson then
        inst.Light:Enable(true)
        inst.AnimState:PlayAnimation("lit", true)
        --inst.SoundEmitter:PlaySound("dontstarve/common/fireAddFuel")
        inst.lightson = true
        if inst._window ~= nil then
            inst._window.AnimState:PlayAnimation("windowlight_idle", true)
            inst._window:Show()
        end
        if inst._windowsnow ~= nil then
            inst._windowsnow.AnimState:PlayAnimation("windowsnow_idle", true)
            inst._windowsnow:Show()
        end
    end
end

local function LightsOff(inst)
    if not inst:HasTag("burnt") and inst.lightson then
        inst.Light:Enable(false)
        inst.AnimState:PlayAnimation("idle", true)
        --inst.SoundEmitter:PlaySound("dontstarve/common/fireAddFuel")
        inst.lightson = false
        if inst._window ~= nil then
            inst._window:Hide()
        end
        if inst._windowsnow ~= nil then
            inst._windowsnow:Hide()
        end
    end
end

--������
local function onfar(inst)
        --LightsOff(inst)
	--inst.AnimState:PlayAnimation("open", true)
	--inst.AnimState:PushAnimation("idle", true)
end
local function onnear(inst)
        --LightsOn(inst)
	--inst.AnimState:PlayAnimation("open", true)
	--inst.AnimState:PushAnimation("idle", true)
end

local function onhammered(inst, worker)
    if inst.components.burnable ~= nil and inst.components.burnable:IsBurning() then
        inst.components.burnable:Extinguish()
    end
    if inst.doortask ~= nil then
        inst.doortask:Cancel()
        inst.doortask = nil
    end
    if inst.components.spawner ~= nil and inst.components.spawner:IsOccupied() then
        inst.components.spawner:ReleaseChild()
    end
    inst.components.lootdropper:DropLoot()
    local fx = SpawnPrefab("collapse_big")
    fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
    fx:SetMaterial("wood")
    inst:Remove()
end

local function onhit(inst, worker)
    if not inst:HasTag("burnt") then 
        inst.AnimState:PlayAnimation("hit")
        if inst.lightson then
            inst.AnimState:PushAnimation("lit")
            if inst._window ~= nil then
                inst._window.AnimState:PlayAnimation("windowlight_hit")
                inst._window.AnimState:PushAnimation("windowlight_idle")
            end
            if inst._windowsnow ~= nil then
                inst._windowsnow.AnimState:PlayAnimation("windowsnow_hit")
                inst._windowsnow.AnimState:PushAnimation("windowsnow_idle")
            end
        else
            inst.AnimState:PushAnimation("idle")
        end
    end
end

local function onbuilt(inst)
    inst.AnimState:PlayAnimation("place")
    inst.AnimState:PushAnimation("idle")
end

local function onburntup(inst)
    if inst.doortask ~= nil then
        inst.doortask:Cancel()
        inst.doortask = nil
    end
    if inst.inittask ~= nil then
        inst.inittask:Cancel()
        inst.inittask = nil
    end
    if inst._window ~= nil then
        inst._window:Remove()
        inst._window = nil
    end
    if inst._windowsnow ~= nil then
        inst._windowsnow:Remove()
        inst._windowsnow = nil
    end
end

local function onoccupieddoortask(inst)
    inst.doortask = nil
    LightsOn(inst)  
end

local function onoccupied(inst, child)
    if not inst:HasTag("burnt") then 
        inst.AnimState:PlayAnimation("open", true)
        inst.SoundEmitter:PlaySound("dontstarve/common/pighouse_door")
        inst.AnimState:PushAnimation("idle",true)
        if inst.doortask ~= nil then
            inst.doortask:Cancel()
        end
        inst.doortask = inst:DoTaskInTime(.5, onoccupieddoortask)
        
    end
end

local function onvacate(inst, child)
    if not inst:HasTag("burnt") then
        if inst.doortask ~= nil then
            inst.doortask:Cancel()
            inst.doortask = nil
        end
        LightsOff(inst)
        inst.AnimState:PlayAnimation("open", true)
        inst.SoundEmitter:PlaySound("dontstarve/common/pighouse_door")
        inst.AnimState:PushAnimation("idle",true)
        if child ~= nil then
            child.components.homeseeker.home=nil
            child.isstudying = false
            if child.components.health ~= nil then
                child.components.health:SetPercent(1)
            end
			child:PushEvent("onvacatehome")
        end
    end
    inst:RemoveEventCallback("ontrapped", inst.components.spawner._onchildkilled, child)
    inst:RemoveEventCallback("death", inst.components.spawner._onchildkilled, child)
    inst:RemoveEventCallback("detachchild", inst.components.spawner._onchildkilled, child)
    inst.components.spawner.child = nil
end

local function onignite(inst)
    if inst.components.spawner ~= nil and inst.components.spawner:IsOccupied() then
        inst.components.spawner:ReleaseChild()
    end
end

--*******************************************************************************************************************************
--*************************************************************************************按下ivorytower的按钮时的操作函数
--*******************************************************************************************************************************
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

local function containerlevelplus(inst)
    if inst.containerlevel < 3 and inst.containerlevel >= 0 then
        inst.containerlevel = inst.containerlevel+1
    elseif inst.containerlevel == 3 then
        inst.containerlevel = inst.containerlevel
    else 
        inst.containerlevel = 0
    end
end

local function containerlevelminus(inst)
    if inst.containerlevel <= 3 and inst.containerlevel > 0 then
        inst.containerlevel = inst.containerlevel-1
    elseif inst.containerlevel == 0 then
        inst.containerlevel = inst.containerlevel
    else 
        inst.containerlevel = 0
    end
end

local function fridgeplus(inst)
    if inst.myfridgelevel >= 0 and inst.myfridgelevel < 10 then
        inst.myfridgelevel = inst.myfridgelevel+1
    elseif inst.myfridgelevel == 10 then
        inst.myfridgelevel = inst.myfridgelevel
    else 
        inst.myfridgelevel = 0
    end
end

local function fightplus(inst)
    if inst.combatlevel >=0 and inst.combatlevel < 10 then
        inst.combatlevel = inst.combatlevel + 1
    elseif inst.combatlevel ==10 then
        inst.combatlevel = inst.combatlevel
    else
        inst.combatlevel = 0
    end
end

local function fightminus(inst)
    if inst.combatlevel > 0 and inst.combatlevel <= 10 then
        inst.combatlevel = inst.combatlevel - 1
    elseif inst.combatlevel == 0 then
        inst.combatlevel = inst.combatlevel
    else
        inst.combatlevel = 0
    end
end

local function fridgeminus(inst)
    if inst.myfridgelevel > 0 and inst.myfridgelevel <= 10 then
        inst.myfridgelevel = inst.myfridgelevel-1
    elseif inst.myfridgelevel == 0 then
        inst.myfridgelevel = inst.myfridgelevel
    else 
        inst.myfridgelevel = 0
    end
end

local function damagenum(inst)
    local num = 10 +5*inst.combatlevel
    return num
end

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


local function study(inst)
    local stu = inst.components.spawner.child
    inst.components.spawner:GoHome(stu)
    inst:RemoveEventCallback("iscloseenough",study)

    if inst.components.container:Has("backpackplus",1)  then
        containerlevelplus(stu)
    elseif inst.components.container:Has("fridgeplus",1) then
        fridgeplus(stu)
    elseif inst.components.container:Has("fridgeminus",1) then
        fridgeminus(stu)
    elseif inst.components.container:Has("fridgeswitch",1) then
        stu.myfridge = not stu.myfridge
    elseif inst.components.container:Has("fightplus",1)  then
        fightplus(stu)
    elseif inst.components.container:Has("fightminus",1)  then
        fightminus(stu)
    elseif inst.components.container:Has("fightswitch",1)  then
        if stu.brainnum == 0 then
            stu.brainnum = 1
        elseif stu.brainnum == 1 then
            stu.brainnum = 0
        elseif stu.brainnum == 2 then
            stu.brainnum = 3
        elseif stu.brainnum == 3 then
            stu.brainnum =2 
        end
    elseif inst.components.container:Has("work",1)  then
        if stu.brainnum == 0 or stu.brainnum == 2 then
            stu.brainnum = 2
        elseif  stu.brainnum == 3 or stu.brainnum == 1 then
            stu.brainnum = 3
        end
    elseif inst.components.container:Has("antiwork",1)  then
        if stu.brainnum == 0 or stu.brainnum == 2 then
            stu.brainnum = 0
        elseif  stu.brainnum == 3 or stu.brainnum == 1 then
            stu.brainnum = 1
        end   
    end
    inst.components.container:DestroyContents()


    changecontainer(stu)
    changebrain(stu)
    changeclothes(stu)
    stu.components.combat:SetDefaultDamage(damagenum(stu))
    if stu.myfridge == true then
		for k,v in pairs(stu.components.container:FindItems(canperish)) do
			perishmulti(v,stu.myfridgelevel)
		end
	end

    inst:DoTaskInTime(5,function()
        inst.components.spawner:ReleaseChild()
    end)
end

local function ItemTestFn(container,item,slot)
    return not container.inst:HasTag("burnt") and item:HasTag("ayanbook")
end

local function ButtonInfoFn(inst)
    local stu=TheSim:FindFirstEntityWithTag("student")
    inst.components.container:Close()
    if stu and not stu.components.health:IsDead() then
        stu.isstudying = true
        inst.components.spawner:TakeOwnership(stu)
        local bufferedaction=BufferedAction(stu, stu.components.homeseeker.home, ACTIONS.GOHOME)
        stu.components.locomotor:PushAction(bufferedaction, true)
        inst:ListenForEvent("iscloseenough",study)
    elseif not stu and  inst.components.container:Has("applicationform",1) then
        inst.components.spawner:SpawnWithDelay(TUNING.TOTAL_DAY_TIME*1)
        inst.components.container:DestroyContents()
        local ayan=TheSim:FindFirstEntityWithTag("head teacher")
        ayan.components.ayanstats.isspawningstu = true
    else 
        return
    end

end

local function ButtonInfoValidFn(inst)
    local stu=TheSim:FindFirstEntityWithTag("student")
    local ayan=TheSim:FindFirstEntityWithTag("head teacher")
    if stu and not stu.components.health:IsDead() then 
        local stupos=stu:GetPosition()
        return inst.replica.container ~= nil and inst.replica.container:IsFull()
            and stu and not stu.components.mystand:IsCurrentlyStaying() and not stu.isstudying
            and inst.components.container:IsOpenedBy(ayan) and distsq(stupos,inst:GetPosition()) < 100
            and not inst.components.container:Has("applicationform",1)
    else
        return inst.replica.container ~= nil and inst.replica.container:IsFull()
            and inst.components.container:Has("applicationform",1) and inst.components.container:IsOpenedBy(ayan)
            and not inst.components.spawner.task and ayan.components.ayanstats.isspawningstu == false
    end
end

local function slot1(inst) 
return
{
	widget=
	{
		slotpos =
		{ 
			Vector3(0, -125, 0), 
		},
		animbank = "ui_ivorytower_1x1",
		animbuild = "ui_ivorytower_1x1",
		pos = Vector3(0, 360,0),
		side_align_tip = 160,
		buttoninfo =
		{
			text ="研习",
            position = Vector3(0, -180, 0),
            fn = ButtonInfoFn,
            validfn = ButtonInfoValidFn
		}
	},
	acceptsstacks = false,
    type = "chest",
    itemtestfn=ItemTestFn
}
end
--************************************************************************************************************************
--************************************************************************************************************************

local function onsave(inst, data)
    if inst:HasTag("burnt") or (inst.components.burnable ~= nil and inst.components.burnable:IsBurning()) then
        data.burnt = true
    end
end

local function onload(inst, data)
    if data ~= nil and data.burnt then
        inst.components.burnable.onburnt(inst)
    end
    if inst.components.spawner.child and inst.components.spawner.child.isstudying then
        inst:DoTaskInTime(5,function()
            inst.components.spawner:ReleaseChild()
            inst.components.spawner.child.components.homeseeker.home=nil
            inst.components.spawner.child.isstudying = false
            inst.child = nil 
        end)
    end
end



local function MakeWindow()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()

    inst:AddTag("DECOR")
   -- inst:AddTag("NOCLICK")
    --[[Non-networked entity]]
    inst.persists = false

    inst.AnimState:SetBank("ivorytower")
    inst.AnimState:SetBuild("ivorytower")
    inst.AnimState:PlayAnimation("windowlight_idle")
    inst.AnimState:SetLightOverride(.6)
    inst.AnimState:SetBloomEffectHandle("shaders/anim.ksh")
    inst.AnimState:SetFinalOffset(1)

    inst:Hide()

    return inst
end

local function MakeWindowSnow()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()

    inst:AddTag("DECOR")
    inst:AddTag("NOCLICK")
    --[[Non-networked entity]]
    inst.persists = false

    inst.AnimState:SetBank("ivorytower")
    inst.AnimState:SetBuild("ivorytower")
    inst.AnimState:PlayAnimation("windowsnow_idle")
    inst.AnimState:SetFinalOffset(2)

    inst:Hide()

    MakeSnowCovered(inst)

    return inst
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddLight()
    inst.entity:AddSoundEmitter()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddNetwork()
    inst.entity:AddLightWatcher()

    MakeObstaclePhysics(inst, 1)

--{anim="level1", sound="dontstarve/common/campfire", radius=2, intensity=.75, falloff=.33, colour = {197/255,197/255,170/255}},
    inst.Light:SetFalloff(1)
    inst.Light:SetIntensity(.5)
    inst.Light:SetRadius(1)
    inst.Light:Enable(false)
    inst.Light:SetColour(180/255, 195/255, 50/255)

    inst.AnimState:SetBank("ivorytower")
    inst.AnimState:SetBuild("ivorytower")
    inst.AnimState:PlayAnimation("idle", true)

    inst:AddTag("structure")

    MakeSnowCoveredPristine(inst)

    inst.MiniMapEntity:SetIcon( "ivorytowerminimap.tex" )

    if not TheNet:IsDedicated() then
        inst._window = MakeWindow()
        inst._window.entity:SetParent(inst.entity)
        inst._windowsnow = MakeWindowSnow()
        inst._windowsnow.entity:SetParent(inst.entity)
        if not TheWorld.ismastersim then
            inst._window:DoPeriodicTask(FRAMES, OnUpdateWindow, nil, inst, inst._windowsnow)
        end
    end

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("lootdropper")
    inst:AddComponent("workable")
    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
    inst.components.workable:SetWorkLeft(4)
    inst.components.workable:SetOnFinishCallback(onhammered)
    inst.components.workable:SetOnWorkCallback(onhit)
    
    inst:AddComponent("container")
    inst.components.container:WidgetSetup(nil,slot1(inst))

    inst:AddComponent("spawner")
    inst.components.spawner:Configure("student", TUNING.TOTAL_DAY_TIME*1)
    inst.components.spawner.onoccupied = onoccupied
    inst.components.spawner.onvacate = onvacate
    inst.components.spawner:CancelSpawning()

    inst:AddComponent("playerprox")
    inst.components.playerprox:SetDist(10, 13)
    inst.components.playerprox:SetOnPlayerNear(onnear)
    inst.components.playerprox:SetOnPlayerFar(onfar)

    inst:AddComponent("inspectable")

    --inst.components.inspectable.getstatus = getstatus

    MakeSnowCovered(inst)

    MakeMediumBurnable(inst, nil, nil, true)
    MakeLargePropagator(inst)
    inst:ListenForEvent("burntup", onburntup)
    inst:ListenForEvent("onignite", onignite)

    inst.OnSave = onsave 
    inst.OnLoad = onload

    MakeHauntableWork(inst)

    inst:ListenForEvent("onbuilt", onbuilt)

    inst:DoPeriodicTask(.5,function()
        local stu = TheSim:FindFirstEntityWithTag("student")
        if stu then
            local stupos=stu:GetPosition()
            local dist=distsq(stupos,inst:GetPosition())
            if dist < 2*2 then 
                inst:PushEvent("iscloseenough")
            end
        end
    end)
    
   -- inst.inittask = inst:DoTaskInTime(0, oninit)

    return inst
end

return Prefab("ivorytower", fn, assets, prefabs),
    MakePlacer("ivorytower_placer", "ivorytower", "ivorytower", "idle")
