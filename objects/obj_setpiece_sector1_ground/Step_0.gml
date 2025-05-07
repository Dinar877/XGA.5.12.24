/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (global.cutsceneID[28] > 0) or (global.bossblockers[2] > 0)
{
	instance_destroy();
	exit;
}

if (instance_place(id.x,id.y+16,obj_setpiece_sector1_ground)) && (image_speed = 1) && (image_index >= 5)
{
	with(instance_place(id.x,id.y+16,obj_setpiece_sector1_ground))
	{
		image_speed = 1
		image_index = 1
	}
}

if (image_index >= image_number-1)
{
	instance_destroy()	
}