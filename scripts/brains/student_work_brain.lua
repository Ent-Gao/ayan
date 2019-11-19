require "behaviours/wander"
require "behaviours/faceentity"
require "behaviours/follow"
require "behaviours/runaway"
require "behaviours/doaction"
require "behaviours/chaseandattack"


local MIN_FOLLOW_DIST = 0
local MAX_FOLLOW_DIST = 8
local TARGET_FOLLOW_DIST = 4

local KEEP_CHOPPING_DIST = 10
local SEE_TREE_DIST = 15

local COMBAT_TOO_CLOSE_DIST = 5                 -- distance for find enitities check
local COMBAT_SAFE_TO_WATCH_FROM_DIST = 8        -- will run to this distance and watch if was too close

local MAX_WANDER_DIST =5



local function IsDeciduousTreeMonster(guy)
    return guy.monster and guy.prefab == "deciduoustree"
end

local function FindDeciduousTreeMonster(inst)
    return FindEntity(inst, SEE_TREE_DIST / 3, IsDeciduousTreeMonster, { "CHOP_workable" })
end

local function KeepLookingAction(inst)
    return inst.components.follower.leader and inst.components.follower.leader:GetDistanceSqToInst(inst) <= KEEP_CHOPPING_DIST*KEEP_CHOPPING_DIST
end

local function StartChoppingCondition(inst)
    return (inst.components.follower.leader ~= nil and
            inst.components.follower.leader.sg ~= nil and
            inst.components.follower.leader.sg:HasStateTag("chopping"))
        or FindDeciduousTreeMonster(inst) ~= nil
end

local function StartMiningCondition(inst)
    return inst.components.follower.leader and inst.components.follower.leader.sg:HasStateTag("mining") 
end

local function StartHackingCondition(inst)
    return inst.components.follower.leader and inst.components.follower.leader.sg:HasStateTag("hacking")
end

local function StartDiggingCondition(inst)
    return inst.components.follower.leader and inst.components.follower.leader.sg:HasStateTag("digging") 
end

local function FindTreeToChopAction(inst)
    local target = FindEntity(inst, SEE_TREE_DIST, nil, { "CHOP_workable" })
    if target ~= nil then
        target = FindDeciduousTreeMonster(inst) or target
        return BufferedAction(inst, target, ACTIONS.CHOP)
    end
end

local function FindRocktoMineAction(inst)
    local target = FindEntity(inst, SEE_TREE_DIST, function(item) return item.components.workable and item.components.workable.action == ACTIONS.MINE and not (item.components.pickable or item.components.childspawner) end)
    if target then
        return BufferedAction(inst, target, ACTIONS.MINE)
    end
end

local function FindStufftoHackAction(inst)
    local target = FindEntity(inst, SEE_TREE_DIST, function(item) 
		return (item.components.workable and item.components.workable.action == ACTIONS.HACK) or (item.components.hackable and item.components.hackable.hacksleft > 0) end)
    if target then
        return BufferedAction(inst, target, ACTIONS.HACK)
    end
end

local function FindStufftoDigAction(inst)
    local target = FindEntity(inst, SEE_TREE_DIST, function(item) 
		return (item.components.workable and item.components.workable.action == ACTIONS.DIG and item.components.workable.workleft > 0) and not (item.components.pickable or item.components.spawner or item.components.hackable or item.components.workable.workable == false) end)
    if target then
        return BufferedAction(inst, target, ACTIONS.DIG)
    end
end

local function GetFaceTargetFn(inst)
    return inst.components.follower.leader
end

local function KeepFaceTargetFn(inst, target)
    return inst.components.follower.leader == target
end


local function CombatAvoidanceFindEntityCheck(self)
    return function(ent)
            if ent.components.combat.target and (ent.components.combat.target:HasTag("companion") or ent.components.combat.target:HasTag("player")) then
                self.inst:PushEvent("student_avoidcombat", {avoid=true})
                self.runawayfrom = ent
                return true
            end
            return false
        end
end
--***************************************************************************************************
--******************************************************************************************普通大脑+fight
--***************************************************************************************************
local student_work_brain = Class(Brain, function(self, inst)
    Brain._ctor(self, inst)
end)

function student_work_brain:OnStart()
    local root = PriorityNode(
    {	
		WhileNode(function()
				if self.inst.components.follower.leader == nil then
					self.inst.components.follower:SetLeader(TheSim:FindFirstEntityWithTag("head teacher"))
				end
				return true
			end,"leader test",
        	RunAway(self.inst, {fn=CombatAvoidanceFindEntityCheck(self),tags={"_combat", "_health"},notags={"wall", "INLIMBO","player"},},  COMBAT_TOO_CLOSE_DIST, COMBAT_SAFE_TO_WATCH_FROM_DIST)
		),
		WhileNode(function() 
				if self.inst.components.mystand:IsCurrentlyStaying() == true then
					return true
				end
			end, "Stay area",
			PriorityNode(
			{
				WhileNode(function()
					if distsq(self.inst:GetPosition(),self.inst.components.mystand.location)>121 then
						self.inst:PushEvent("toofar")
					end 
					if self.inst.components.container:IsOpen() then
						return true
					end
				end,	"staystill",
				FaceEntity(self.inst,GetFaceTargetFn, KeepFaceTargetFn)
				),
				Wander(self.inst,function(inst) return inst.components.mystand.location end, MAX_WANDER_DIST,{minwalktime = 0.3,randwalktime = 0.5,minwaittime =  1,randwaittime = 3})
			})
        ),
        IfNode(function() return StartChoppingCondition(self.inst) end, "chop", 
			WhileNode(function() return KeepLookingAction(self.inst) end, "keep choping",
				LoopNode{ 
						DoAction(self.inst, FindTreeToChopAction )})),					
	    IfNode(function() return StartMiningCondition(self.inst) end, "mine", 
			WhileNode(function() return KeepLookingAction(self.inst) end, "keep mining",
				LoopNode{ 
						DoAction(self.inst, FindRocktoMineAction )})),	
	    IfNode(function() return StartHackingCondition(self.inst) end, "hack", 
			WhileNode(function() return KeepLookingAction(self.inst) end, "keep hacking",
				LoopNode{ 
						DoAction(self.inst, FindStufftoHackAction )})),	
	    IfNode(function() return StartDiggingCondition(self.inst) end, "hack", 
			WhileNode(function() return KeepLookingAction(self.inst) end, "keep hacking",
				LoopNode{ 
						DoAction(self.inst, FindStufftoDigAction )})),
		WhileNode(function() 
				if self.inst.components.mystand:IsCurrentlyStaying() == false then
					return true
				end
			end, "has leader",
			Follow(self.inst,GetFaceTargetFn, MIN_FOLLOW_DIST, TARGET_FOLLOW_DIST, MAX_FOLLOW_DIST)
		),
		
		FaceEntity(self.inst,GetFaceTargetFn, KeepFaceTargetFn)
        --StandStill(self.inst, function() return true end),
    }, .5)
    
    self.bt = BT(self.inst, root)
    
end

return student_work_brain