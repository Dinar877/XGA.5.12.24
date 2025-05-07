/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player))
{
	if (global.nanoshield_ammo < global.nanoshield_limit)
	{
	global.nanoshield_ammo += 4;
	}
	if (global.nanoshield_ammo + 4 > global.nanoshield_limit)
	{
	global.nanoshield_ammo = global.nanoshield_limit;
	}
	with(obj_ability_nanoshield)
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