require "behaviours/wander"
require "behaviours/faceentity"
require "behaviours/panic"
require "behaviours/follow"
require "behaviours/runaway"
require "behaviours/doaction"
require "behaviours/chaseandattack"


local MIN_FOLLOW_DIST = 0
local MAX_FOLLOW_DIST = 8
local TARGET_FOLLOW_DIST = 4

local COMBAT_TOO_CLOSE_DIST = 5                 -- distance for find enitities check
local COMBAT_SAFE_TO_WATCH_FROM_DIST = 8        -- will run to this distance and watch if was too close

local MAX_WANDER_DIST =5


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
--******************************************************************************************普通大脑
--***************************************************************************************************
local student_brain = Class(Brain, function(self, inst)
    Brain._ctor(self, inst)
end)

function student_brain:OnStart()
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
				if self.inst.components.mystand:IsCurrentlyStaying() then
					return true
				end
			end, "Stay area",
			PriorityNode(
			{
				WhileNode(function()
					if distsq(self.inst:GetPosition(),self.inst.components.mystand.location)>900 then
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
		WhileNode(function() 
				if not self.inst.components.mystand:IsCurrentlyStaying() then
					return true
				end
			end, "has leader",
			Follow(self.inst, GetFaceTargetFn, MIN_FOLLOW_DIST, TARGET_FOLLOW_DIST, MAX_FOLLOW_DIST)
		),
		FaceEntity(self.inst,GetFaceTargetFn, KeepFaceTargetFn)
        --StandStill(self.inst, function() return true end),
    }, .5)
    
    self.bt = BT(self.inst, root)
    
end

return student_brain
