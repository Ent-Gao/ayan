require("stategraphs/commonstates")

local actionhandlers = {}

local events = {}


local states =
{
     State{
        name = "up",
        tags = {"busy"},

        onenter = function(inst)
            inst.AnimState:PlayAnimation("up")
        end,


        events =
        {
            EventHandler("animover", function(inst) 
		local chance = math.random()*10
		if chance<=2 then
			inst.sg:GoToState("left")
		elseif chance >2 and chance <=4 then
			inst.sg:GoToState("horizontal")
		elseif chance >4 and chance <=6 then
			inst.sg:GoToState("vertical")
		elseif chance >6 and chance <8 then
			inst.sg:GoToState("right")
		else
			inst.sg:GoToState("up")
		end
	end),
        }
    },
    
     State{
        name = "horizontal",
        tags = {"busy"},

        onenter = function(inst)
            inst.AnimState:PlayAnimation("horizontal")
        end,


        events =
        {
            EventHandler("animover", function(inst) 
		local chance = math.random()*10
		if chance<=2 then
			inst.sg:GoToState("left")
		elseif chance >2 and chance <=4 then
			inst.sg:GoToState("horizontal")
		elseif chance >4 and chance <=6 then
			inst.sg:GoToState("vertical")
		elseif chance >6 and chance <8 then
			inst.sg:GoToState("right")
		else
			inst.sg:GoToState("up")
		end
	end),
        }
     },
    
     State{
        name = "vertical",
        tags = {"busy"},

        onenter = function(inst)
            inst.AnimState:PlayAnimation("vertical")
        end,


        events =
        {
            EventHandler("animover", function(inst) 
		local chance = math.random()*10
		if chance<=2 then
			inst.sg:GoToState("left")
		elseif chance >2 and chance <=4 then
			inst.sg:GoToState("horizontal")
		elseif chance >4 and chance <=6 then
			inst.sg:GoToState("vertical")
		elseif chance >6 and chance <8 then
			inst.sg:GoToState("right")
		else
			inst.sg:GoToState("up")
		end
	end),
        }
    },
    
     State{
        name = "right",
        tags = {"busy"},

        onenter = function(inst)
            inst.AnimState:PlayAnimation("right")
        end,


        events =
        {
            EventHandler("animover", function(inst) 
		local chance = math.random()*10
		if chance<=2 then
			inst.sg:GoToState("left")
		elseif chance >2 and chance <=4 then
			inst.sg:GoToState("horizontal")
		elseif chance >4 and chance <=6 then
			inst.sg:GoToState("vertical")
		elseif chance >6 and chance <8 then
			inst.sg:GoToState("right")
		else
			inst.sg:GoToState("up")
		end
	end),
        }
    },
    
     State{
        name = "left",
        tags = {"busy"},

        onenter = function(inst)
            inst.AnimState:PlayAnimation("left")
        end,


        events =
        {
            EventHandler("animover", function(inst) 
		local chance = math.random()*10
		if chance<=2 then
			inst.sg:GoToState("left")
		elseif chance >2 and chance <=4 then
			inst.sg:GoToState("horizontal")
		elseif chance >4 and chance <=6 then
			inst.sg:GoToState("vertical")
		elseif chance >6 and chance <8 then
			inst.sg:GoToState("right")
		else
			inst.sg:GoToState("up")
		end
	end),
        }
    },
    
    
    
     State{
        name = "off",
        tags = {"idle"},

        onenter = function(inst)
            inst.AnimState:PlayAnimation("off")
        end,


        events =
        {
            EventHandler("animover", function(inst) inst.sg:GoToState("up") end),
        }
    },
}

return StateGraph("gas_fx", states, events, "off", actionhandlers)