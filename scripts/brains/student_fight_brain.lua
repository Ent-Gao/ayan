require "behaviours/wander"
require "behaviours/faceentity"
require "behaviours/follow"
require "behaviours/runaway"
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
--******************************************************************************************普通大脑+fight
--***************************************************************************************************
local student_fight_brain = Class(Brain, function(self, inst)
    Brain._ctor(self, inst)
end)

function student_fight_brain:OnStart()
    local root = PriorityNode(
    {	
        WhileNode(function() 
                if self.inst.components.follower.leader == nil then
                    local leader = TheSim:FindFirstEntityWithTag("head teacher")
					if leader then 
						self.inst.components.follower:SetLeader(leader)
					else
						self.inst:Remove()
					end
				end
			    if self.inst.components.mystand:IsCurrentlyStaying() == true then
                    return true
                end	
			end, "Stay area",
			PriorityNode(
			{
                RunAway(self.inst, {fn=CombatAvoidanceFindEntityCheck(self),tags={"_combat", "_health"},notags={"wall", "INLIMBO","player"},},  COMBAT_TOO_CLOSE_DIST, COMBAT_SAFE_TO_WATCH_FROM_DIST),
				WhileNode(function()
                    if distsq(self.inst:GetPosition(),self.inst.components.mystand.location)>121 then
                        self.inst:PushEvent("toofar")
                    end 
					if self.inst.components.container:IsOpen() or self.inst.isonboat then
						return true
					end
				end,	"staystill",
				FaceEntity(self.inst,GetFaceTargetFn, KeepFaceTargetFn)
				),
				Wander(self.inst,function(inst) return inst.components.mystand.location end, MAX_WANDER_DIST,{minwalktime = 0.3,randwalktime = 0.5,minwaittime =  1,randwaittime = 3})
			})
        ),
        WhileNode( function() return self.inst.components.combat.target == nil or not self.inst.components.combat:InCooldown() end, "AttackMomentarily",
			ChaseAndAttack(self.inst, 12, 20)),		
		WhileNode( function() return self.inst.components.combat.target and self.inst.components.combat:InCooldown() end, "Dodge",
			RunAway(self.inst, function() return self.inst.components.combat.target end, 6, 9)),
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

return student_fight_brain