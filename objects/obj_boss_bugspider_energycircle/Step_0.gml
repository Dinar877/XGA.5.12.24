/// @description Insert description here
// You can write your code in this editor
image_alpha -= ((1/60)*2);

if (image_alpha <= 0)
{
	instance_destroy()	
}

//Getting hurt by player's bullets
var inst4 = (instance_nearest(x,y,obj_bullet))

enemy_hurt_player_code(1)

if (!place_meeting(x,y,obj_player))
{
	image_xscale += 0.15;
	image_yscale += 0.15;
}