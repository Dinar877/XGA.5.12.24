/// @description Insert description here
// You can write your code in this editor
if (global.pause_map = 1)
or (global.pause = 1)
or (global.pause_player = 1)
or (global.upgrade_process_data = 1)
{
	exit
}

if (sprite_index > 0) && (instance_exists(obj_number_ammo_bg))
{
	draw_set_alpha(image_alpha)
	draw_self();
	x = obj_number_ammo_bg.x+10;
	y = obj_number_ammo_bg.y+2;
	draw_set_alpha(1)
}
