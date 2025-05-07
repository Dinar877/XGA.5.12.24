/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player))
{
	if (global.nuclearblast_ammo < global.nuclearblast_limit)
	{
	global.nuclearblast_ammo += 4;
	}
	if (global.nuclearblast_ammo + 4 > global.nuclearblast_limit)
	{
	global.nuclearblast_ammo = global.nuclearblast_limit;
	}
	with(obj_ability_nuclearblast)
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