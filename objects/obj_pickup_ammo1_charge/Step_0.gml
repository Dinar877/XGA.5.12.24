/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player))
{
	if (global.invisibility_ammo < global.invisibility_limit)
	{
		global.invisibility_ammo += 4;
	}
	if (global.invisibility_ammo + 4 > global.invisibility_limit)
	{
		global.invisibility_ammo = global.invisibility_limit;
	}
	with(obj_ability_invisibility)
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