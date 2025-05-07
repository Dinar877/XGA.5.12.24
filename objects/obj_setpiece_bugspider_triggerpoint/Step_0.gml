/// @description Insert description here
// You can write your code in this editor
if (global.bossblockers[2] > 0)
{
	instance_destroy();
	exit
}

if (place_meeting(x,y,obj_player)) && (instance_exists(obj_setpiece_bugspider_hitbox))
{
	with(obj_setpiece_bugspider_hitbox)
	{
		on = 1	
	}
}