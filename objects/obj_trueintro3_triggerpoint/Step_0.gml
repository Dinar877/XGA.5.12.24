/// @description Insert description here
// You can write your code in this editor
if (global.cutsceneID[cutsceneID] > 0)
{
	instance_destroy()
	exit;
}

if (place_meeting(x,y,obj_player))
{	
	global.cutsceneID[cutsceneID] = 1
	instance_create_layer(328,272,layer_get_id("Inst_healthui_mapborder"),obj_block2)
	instance_create_layer(328,288,layer_get_id("Inst_healthui_mapborder"),obj_block2)
	instance_create_layer(328,304,layer_get_id("Inst_healthui_mapborder"),obj_block2)
	instance_create_layer(328,320,layer_get_id("Inst_healthui_mapborder"),obj_block2)
	instance_destroy()
	exit;
}