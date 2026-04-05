/// @description Insert description here
// You can write your code in this editor
if(layer_exists(layer_get_id("Inst_level_0")))
{
    layer=layer_get_id("Inst_level_0");
}

room_persistent = false;

if (global.loading_random_room = 1)
{
	Positioning_Player_Loading_Anyroom()
	
	global.loading_random_room = 0
}