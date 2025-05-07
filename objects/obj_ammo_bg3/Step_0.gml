/// @description Insert description here
// You can write your code in this editor
if (FadeNow > 0)
{
    FadeNow -= 0.025;
}
if (FadeNow <= 0)
{
    FadeNow = 0;
}

if (global.beam_burn_ammo <= 0)
{
	global.beam_burn_available = 0;	
	global.beam_burn_ammo = 0;
}
else global.beam_burn_available = 1;