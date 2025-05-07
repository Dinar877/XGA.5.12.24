/// @description Insert description here
// You can write your code in this editor
//xga intro effect
if (image_alpha <= 1) && (instance_exists(obj_player)) && (global.cutscene = 0)
{
	image_alpha += (1/room_speed)/2
}
else if (image_alpha >= 1) && (global.cutscene = 1)
{
	image_alpha = 0
}

if (global.shoot_ammo > 0)
{
	image_index = global.shoot_ammo div 100
}
else image_index = 0