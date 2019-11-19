local ayanstats = Class(function(self, inst)
	self.inst = inst
    self.gasnumber=0
    self.isspawningstu = false
end
)

function ayanstats:OnSave()
    local data = {
        gasnumber = self.gasnumber,
        isspawningstu = self.isspawningstu,
    }
    return data
end

function ayanstats:OnLoad(data)
    self.gasnumber = data.gasnumber
    self.isspawningstu = data.isspawningstu
end
    
return ayanstats