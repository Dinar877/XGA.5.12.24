/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_player))
{
	exit;	
}

if (obj_player.state != Dashing2_begin)
&& (obj_player.state != Dashing2_turning)
&& (obj_player.state != Dashing2_use)
{
	instance_destroy();
	exit;
}

if (instance_exists(obj_player))
{
	x = obj_player.x
	y = obj_player.y	
}

if (image_index >= image_number-1)
{
	instance_destroy()
}