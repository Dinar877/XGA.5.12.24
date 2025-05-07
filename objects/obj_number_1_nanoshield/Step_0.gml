/// @description Insert description here
// You can write your code in this editor
if (global.nanoshield_available <= 0)
{
	exit;	
}

if (global.nanoshield_ammo > 0)
{
	image_index = global.nanoshield_ammo mod 10
}
else if (global.nanoshield_ammo <= 0)
{
	image_index = 0
}