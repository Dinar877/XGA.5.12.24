/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (global.doors_redblocker[BossblockerID] > 0)
{	
	instance_destroy()
	exit;
}

if (instance_place(id.x,id.y,obj_bullet))
{
	var bullety = instance_place(id.x,id.y,obj_bullet)
	
	if (bullety.charge <= 0)
	{
		bullet_hurtenemycode_noeffect()
	}
}

if (image_index >= image_number-1)
{
	image_speed = 0	
}

if (shoottimer >= 1)
{
	if (image_index >= image_number-1)
	{
		image_speed = 0	
	}
	else image_speed = 1
	
	//getting hurt by shit
	var inst4 = (instance_nearest(x,y,obj_bullet))

	enemy_hurt_player_code(1)
}