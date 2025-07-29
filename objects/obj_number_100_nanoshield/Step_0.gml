/// @description Insert description here
// You can write your code in this editor
if (global.nanoshield_available <= 0)
{
	exit;	
}

//fade in from cutscenes
if (image_alpha <= 1) && (instance_exists(obj_player)) && (global.cutscene = 0)
{
	image_alpha += (1/room_speed)/2
}
else if (image_alpha >= 1) && (global.cutscene = 1)
{
	image_alpha = 0
}

image_index = global.nanoshield_ammo div 100