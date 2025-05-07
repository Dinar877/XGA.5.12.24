/// @description Insert description here
// You can write your code in this editor
if (global.nanoshield_available <= 0)
or (global.upgrade_process_data = 1)
{
	exit;	
}

if (global.pause_map = 0)
&& (global.pause = 0)
&& (global.pause_player = 0)
&& (instance_exists(obj_ability_nanoshield))
{
	draw_self();
	x = obj_ability_nanoshield.x+6;
	y = obj_ability_nanoshield.y+15;
}