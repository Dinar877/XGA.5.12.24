/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_boss_turtle_hitbox))
{
	if (place_meeting(x,y,obj_player)) && (obj_boss_turtle_hitbox.x > obj_player.x)
	{
		with(obj_player)
		{
			hspd_enemy = 1		
		}
	}
	else if (place_meeting(x,y,obj_player)) && (obj_boss_turtle_hitbox.x < obj_player.x)
	{
		with(obj_player)
		{
			hspd_enemy = -1		
		}
	}
}
else if (!instance_exists(obj_boss_turtle_hitbox))
{
	with(obj_player)
		{
			hspd_enemy = 0;
		}
}