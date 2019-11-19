local Mystand = Class(function(self, inst)
        self.inst = inst
	self.stay = false
	self.location = {}
	self.inst:StartUpdatingComponent(self)
end)

function Mystand:IsCurrentlyStaying()
	return self.stay
end

function Mystand:SetStaying(stay)
	self.stay = stay
end


function Mystand:RememberStandPos(pos)
	self.location = pos
end

local function DoPortNearLeader(inst, self, pos)
    if inst.Physics ~= nil then
        inst.Physics:Teleport(pos:Get())
    else
        inst.Transform:SetPosition(pos:Get())
    end
end

local function NoHoles(pt)
    return not TheWorld.Map:IsPointNearHole(pt)
end

local function OnFarAway(inst)
    local init_pos = inst.components.mystand.location
	local pos = inst:GetPosition()
    if inst.components.combat ~= nil then
		inst.components.combat:SetTarget(nil)
	end
        --There's a crash if you teleport without the delay
    inst:DoTaskInTime(0.5, DoPortNearLeader, inst, init_pos)
end

function Mystand:StartStandLeashing()
        self.inst:ListenForEvent("toofar", OnFarAway)
end

function Mystand:StopStandLeashing()
        self.inst:RemoveEventCallback("toofar", OnFarAway)
end


function Mystand:OnSave()
	return 
	{
		stay=self.stay,
		locationx=self.location.x,
		locationy=self.location.y,
		locationz=self.location.z
	}
end   
   
function Mystand:OnLoad(data) 	
		self.stay = data.stay
		self.location = Vector3(data.locationx,data.locationy,data.locationz)
end
   
return Mystand


