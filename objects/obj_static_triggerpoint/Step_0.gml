/// @description Insert description here
// You can write your code in this editor
if (global.cutsceneID[cutsceneID] > 0)
{
	instance_destroy()
}
else if (global.cutsceneID[cutsceneID] == 0)
{
	image_alpha = 1
}

if (place_meeting(x,y,obj_player))
{	
	global.cutsceneID[cutsceneID] = 1
	instance_create_layer(obj_camera.x,obj_camera.y,layer_get_id("Inst_healthui_mapborder"),obj_static_scrneffect)
	with(obj_static_scrneffect)
	{
		on = 1	
	}
	instance_destroy()
}