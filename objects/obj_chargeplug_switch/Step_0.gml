/// @description Insert description here
// You can write your code in this editor
if (global.doors_redblocker[redblockerID] > 0) && (instance_exists(obj_chargelock)) && (active <= 0)
{
	active = 1	
	sprite_index = spr_chargeplug_switch_on
	exit
}