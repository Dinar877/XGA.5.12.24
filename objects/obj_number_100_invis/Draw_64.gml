/// @description Insert description here
// You can write your code in this editor
if (global.invisibility_available <= 0)
or (global.upgrade_process_data = 1)
{
	exit;	
}

if (global.pause_map = 0)
&& (global.pause = 0)
&& (global.pause_player = 0)
{
	draw_self();
	x = obj_ability_invisibility.x+2;
	y = obj_ability_invisibility.y+15;
}