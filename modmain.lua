PrefabFiles = 
{
	"ayan",
	"ayan_none",
	"gas",
	"gas_fx",
	"ivorytower",
	"student",
	"ayanbooks",
	"gasmask",
	"ruler",
}


Assets = {

	Asset( "IMAGE", "images/saveslot_portraits/ayan.tex" ),
	Asset( "ATLAS", "images/saveslot_portraits/ayan.xml" ),
	
	Asset( "IMAGE", "images/selectscreen_portraits/ayan.tex" ),
	Asset( "ATLAS", "images/selectscreen_portraits/ayan.xml" ),
	Asset( "IMAGE", "images/selectscreen_portraits/ayan_silho.tex" ),
	Asset( "ATLAS", "images/selectscreen_portraits/ayan_silho.xml" ),

	Asset( "IMAGE", "images/names_ayan.tex" ),
	Asset( "ATLAS", "images/names_ayan.xml" ),

	Asset( "IMAGE", "bigportraits/ayan.tex" ),
	Asset( "ATLAS", "bigportraits/ayan.xml" ),
	Asset( "IMAGE", "bigportraits/ayan_none.tex" ),
	Asset( "ATLAS", "bigportraits/ayan_none.xml" ),

	Asset( "IMAGE", "images/map_icons/ayan.tex" ),
	Asset( "ATLAS", "images/map_icons/ayan.xml" ),
	Asset( "IMAGE", "images/map_icons/ivorytowerminimap.tex" ),
	Asset( "ATLAS", "images/map_icons/ivorytowerminimap.xml" ),
	Asset( "IMAGE", "images/map_icons/gasminimap.tex" ),
	Asset( "ATLAS", "images/map_icons/gasminimap.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ayan.tex" ),
	Asset( "ATLAS", "images/avatars/avatar_ayan.xml" ),
	Asset( "IMAGE", "images/avatars/avatar_ghost_ayan.tex" ),
	Asset( "ATLAS", "images/avatars/avatar_ghost_ayan.xml" ),
	Asset( "IMAGE", "images/avatars/self_inspect_ayan.tex" ),
	Asset( "ATLAS", "images/avatars/self_inspect_ayan.xml" ),
    
	Asset("ATLAS", "images/tabs/book.xml"),
	Asset("IMAGE", "images/tabs/book.tex"),
}

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local Ingredient = GLOBAL.Ingredient
local RECIPETABS = GLOBAL.RECIPETABS
local Recipe = GLOBAL.Recipe
local TECH = GLOBAL.TECH
local ACTIONS=GLOBAL.ACTIONS
local SpawnPrefab = GLOBAL.SpawnPrefab


STRINGS.CHARACTER_TITLES.ayan = "阿严"
STRINGS.CHARACTER_NAMES.ayan = "阿严"
STRINGS.CHARACTER_DESCRIPTIONS.ayan = "*是一个化学老师\n*有一个学生\n*独特的武器"
STRINGS.CHARACTER_QUOTES.ayan = "\"宏观大局意识！\""



---------------------------------------------
STRINGS.ACTIONS.MYSTAND = {
	STAY = "停止跟随",
	COME = "开始跟随",
}

local MYSTAND = GLOBAL.Action()
	MYSTAND.str = STRINGS.ACTIONS.MYSTAND
	MYSTAND.strfn = function(act)
		if  act.target.components.mystand:IsCurrentlyStaying()==true then
			return "COME"
		else
			return "STAY"
		end
	end
	MYSTAND.id = "MYSTAND"
	MYSTAND.fn = function(act)
		local targ = act.target
		targ.components.locomotor:Stop()
		if targ.components.mystand:IsCurrentlyStaying() == false then 			
			targ.components.mystand:SetStaying(true)
			targ.components.mystand:RememberStandPos(targ:GetPosition())
			targ.components.follower:StopLeashing()
			targ.components.mystand:StartStandLeashing()
			act.doer.components.talker:Say( "呆在这里，不要走动")
			--targ:PushEvent("stayandlearn",{})
		else 
			act.doer.components.talker:Say( "快跟上！")
			targ.components.mystand:SetStaying(false)
			targ.components.mystand:RememberStandPos({})
			targ.components.follower:StartLeashing() 
			targ.components.mystand:StopStandLeashing()
		end
		return true
	end

AddAction(MYSTAND)
AddStategraphActionHandler("wilson",GLOBAL.ActionHandler(MYSTAND,"give"))
AddStategraphActionHandler("wilson_client",GLOBAL.ActionHandler(MYSTAND,"give"))
AddComponentAction("SCENE","mystand",function(inst,doer,actions,right)
				if right then
					if inst.components.mystand then
						table.insert(actions,GLOBAL.ACTIONS.MYSTAND)
					end
				end
			end)



-------------------------------------------------------------------------------
AYANtab = AddRecipeTab("AYAN'S TAB",1000, "images/tabs/book.xml","book.tex","head teacher")

local gas = AddRecipe("gas", { Ingredient("log", 2),Ingredient("bird_egg",1)}, AYANtab, GLOBAL.TECH.SCIENCE_NONE,"gas_placer", nil, nil, nil, "head teacher", "images/inventoryimages/gas.xml", "gas.tex")	
STRINGS.NAMES.GAS = "毒气"
STRINGS.RECIPE_DESC.GAS = "氯气，我喜欢~"

local gasmask = AddRecipe("gasmask",{Ingredient("charcoal",2),Ingredient("cutgrass",2),Ingredient("twigs",1)},AYANtab,GLOBAL.TECH.SCIENCE_NONE,nil,nil,nil,nil,"head teacher","images/inventoryimages/gasmask.xml", "gasmask.tex")	
STRINGS.NAMES.GASMASK = "防毒面具"
STRINGS.RECIPE_DESC.GASMASK = "\"活性炭是个好东西\""

local ruler = AddRecipe("ruler",{Ingredient("twigs",1)},AYANtab,GLOBAL.TECH.SCIENCE_NONE,nil,nil,nil,nil,"head teacher","images/inventoryimages/ruler.xml", "ruler.tex")	
STRINGS.NAMES.RULER = "戒尺"
STRINGS.RECIPE_DESC.RULER = "\"啪的一下，立马清醒\""

local ivorytower = AddRecipe("ivorytower", { Ingredient("horn", 1),Ingredient("log",4),Ingredient("rocks",2)}, AYANtab, GLOBAL.TECH.SCIENCE_NONE,"ivorytower_placer", nil, nil, nil, "head teacher", "images/inventoryimages/ivorytower.xml", "ivorytower.tex")	
STRINGS.NAMES.IVORYTOWER = "象牙塔"
STRINGS.RECIPE_DESC.IVORYTOWER = "知识的殿堂！"

local applicationform = AddRecipe("applicationform",{Ingredient("meat",4),Ingredient("papyrus",1)},AYANtab,GLOBAL.TECH.SCIENCE_NONE,nil,nil,nil,nil,"head teacher","images/inventoryimages/applicationform.xml", "applicationform.tex")	
STRINGS.NAMES.APPLICATIONFORM = "《录取通知》"
STRINGS.RECIPE_DESC.APPLICATIONFORM = "姓名：xxx\n入学时间：xxxx.xx.xx"

local backpackplus = AddRecipe("backpackplus",{Ingredient("backpack",1),Ingredient("papyrus",1)},AYANtab,GLOBAL.TECH.SCIENCE_NONE,nil,nil,nil,nil,"head teacher","images/inventoryimages/backpackplus.xml", "backpackplus.tex")	
STRINGS.NAMES.BACKPACKPLUS = "《背包扩容术》"
STRINGS.RECIPE_DESC.BACKPACKPLUS = "\"多装一点，再多装一点\""

local fridgeplus = AddRecipe("fridgeplus",{Ingredient("ice",1),Ingredient("papyrus",2)},AYANtab,GLOBAL.TECH.SCIENCE_NONE,nil,nil,nil,nil,"head teacher","images/inventoryimages/fridgeplus.xml", "fridgeplus.tex")	
STRINGS.NAMES.FRIDGEPLUS = "《保鲜技术+》"
STRINGS.RECIPE_DESC.FRIDGEPLUS = "\"摸起来凉凉的，哎，吸热反应\""

local fridgeminus = AddRecipe("fridgeminus",{Ingredient("torch",1),Ingredient("papyrus",1)},AYANtab,GLOBAL.TECH.SCIENCE_NONE,nil,nil,nil,nil,"head teacher","images/inventoryimages/fridgeminus.xml", "fridgeminus.tex")	
STRINGS.NAMES.FRIDGEMINUS = "《保鲜技术-》"
STRINGS.RECIPE_DESC.FRIDGEMINUS = "\"节约资源,保护环境\""

local fridgeswitch = AddRecipe("fridgeswitch",{Ingredient("papyrus",2)},AYANtab,GLOBAL.TECH.SCIENCE_NONE,nil,nil,nil,nil,"head teacher","images/inventoryimages/fridgeswitch.xml", "fridgeswitch.tex")	
STRINGS.NAMES.FRIDGESWITCH = "《冰箱使用说明》"
STRINGS.RECIPE_DESC.FRIDGESWITCH = "打开方式：#%￥&\n关闭方式：&￥%#"

local fightplus = AddRecipe("fightplus",{Ingredient("papyrus",1),Ingredient("spear",1)},AYANtab,GLOBAL.TECH.SCIENCE_NONE,nil,nil,nil,nil,"head teacher","images/inventoryimages/fightplus.xml", "fightplus.tex")	
STRINGS.NAMES.FIGHTPLUS = "《格斗术+》"
STRINGS.RECIPE_DESC.FIGHTPLUS = "\"上上下下，左左右右\""

local fightminus = AddRecipe("fightminus",{Ingredient("papyrus",2)},AYANtab,GLOBAL.TECH.SCIENCE_NONE,nil,nil,nil,nil,"head teacher","images/inventoryimages/fightminus.xml", "fightminus.tex")	
STRINGS.NAMES.FIGHTMINUS = "《格斗术-》"
STRINGS.RECIPE_DESC.FIGHTMINUS = "\"鄙人不善战斗\""

local fightswitch = AddRecipe("fightswitch",{Ingredient("papyrus",2)},AYANtab,GLOBAL.TECH.SCIENCE_NONE,nil,nil,nil,nil,"head teacher","images/inventoryimages/fightswitch.xml", "fightswitch.tex")	
STRINGS.NAMES.FIGHTSWITCH = "《止戈/用武》"
STRINGS.RECIPE_DESC.FIGHTSWITCH = "\"兵者，死生之地，\n不可不察也\""

local work = AddRecipe("work",{Ingredient("axe",1),Ingredient("pickaxe",1),Ingredient("papyrus",1)},AYANtab,GLOBAL.TECH.SCIENCE_NONE,nil,nil,nil,nil,"head teacher","images/inventoryimages/work.xml", "work.tex")	
STRINGS.NAMES.WORK = "《劳动最光荣》"
STRINGS.RECIPE_DESC.WORK = "\"996是福报\"\n\"好好工作，我的兄弟\""

local antiwork = AddRecipe("antiwork",{Ingredient("papyrus",2)},AYANtab,GLOBAL.TECH.SCIENCE_NONE,nil,nil,nil,nil,"head teacher","images/inventoryimages/antiwork.xml", "antiwork.tex")	
STRINGS.NAMES.ANTIWORK = "《新·资本论》"
STRINGS.RECIPE_DESC.ANTIWORK = "\"罢工！罢工！\""
----------------------------------------------------------------------------------------------------



-- Custom speech strings
STRINGS.CHARACTERS.AYAN = require "speech_ayan"

-- The character's name as appears in-game 
STRINGS.NAMES.AYAN = "阿严"
STRINGS.CHARACTER_NAMES.ayan = "阿严"
STRINGS.SKIN_DESCRIPTIONS.ayan_none = "hhh"

AddMinimapAtlas("images/map_icons/ayan.xml")
AddMinimapAtlas("images/map_icons/gasminimap.xml")
AddMinimapAtlas("images/map_icons/ivorytowerminimap.xml")
AddMinimapAtlas("images/map_icons/student.xml")

STRINGS.CHARACTER_SURVIVABILITY.wadix= "Slim"

TUNING.AYAN_HEALTH = 100
TUNING.AYAN_HUNGER = 150
TUNING.AYAN_SANITY = 300

TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.AYAN = {}
--[[
TUNING.STARTING_ITEM_IMAGE_OVERRIDE["alchemistshat"] = {
    atlas = "images/inventoryimages/alchemistshat.xml",
    image = "alchemistshat.tex",
}
--]]


AddModCharacter("ayan", "MALE")


























