/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_block))
{
	instance_destroy()
	exit
}
else if (!place_meeting(x,y,obj_block))
{
	if (sprite_index == spr_gorilla_shockwave_left)
	{
		hspd = -1
		x += hspd
	}
	else if (sprite_index == spr_gorilla_shockwave_right)
	{
		hspd = 1
		x += hspd
	}
}

enemy_hurt_player_code(2)
