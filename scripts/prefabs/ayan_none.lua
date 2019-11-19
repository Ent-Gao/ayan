local assets =
{
	Asset( "ANIM", "anim/ayan.zip" ),
	Asset( "ANIM", "anim/ghost_ayan_build.zip" ),
}

local skins =
{
	normal_skin = "ayan",
	ghost_skin = "ghost_ayan_build",
}

local base_prefab = "ayan"

local tags = {"AYAN", "CHARACTER"}

return CreatePrefabSkin("ayan_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})