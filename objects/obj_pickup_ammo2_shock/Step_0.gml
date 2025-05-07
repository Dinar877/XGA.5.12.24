/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player))
{
	if (global.shockwave_ammo < global.shockwave_limit)
	{
	global.shockwave_ammo += 8;
	}
	if (global.shockwave_ammo + 8 > global.shockwave_limit)
	{
	global.shockwave_ammo = global.shockwave_limit;
	}
	with(obj_ability_shockwave)
	{
		FadeNow2 = 0.5;	
	}
	instance_destroy();	
}

if FadeNow > 0 
{ 
FadeNow -= 0.01; 
}
else if FadeNow <= 0
{
FadeNow = 0.5;
}

image_angle += 6;