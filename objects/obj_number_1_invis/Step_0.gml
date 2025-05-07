/// @description Insert description here
// You can write your code in this editor
if (global.invisibility_available <= 0)
{
	exit;	
}

if (global.invisibility_ammo > 0)
{
	image_index = global.invisibility_ammo mod 10
}
else if (global.invisibility_ammo <= 0)
{
	image_index = 0
}