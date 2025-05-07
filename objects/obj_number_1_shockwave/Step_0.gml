/// @description Insert description here
// You can write your code in this editor
if (global.shockwave_available <= 0)
{
	exit;	
}

if (global.shockwave_ammo > 0)
{
	image_index = global.shockwave_ammo mod 10
}
else if (global.shockwave_ammo <= 0)
{
	image_index = 0
}