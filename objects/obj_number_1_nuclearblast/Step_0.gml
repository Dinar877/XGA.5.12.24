/// @description Insert description here
// You can write your code in this editor
if (global.nuclearblast_available <= 0)
{
	exit;	
}

if (global.nuclearblast_ammo > 0)
{
	image_index = global.nuclearblast_ammo mod 10
}
else if (global.nuclearblast_ammo <= 0)
{
	image_index = 0
}