/// @description Insert description here
// You can write your code in this editor
image_alpha = 0.5

if (global.shockwave_state = 0)
{
	sprite_index = spr_shockwave_energyrange	
}
else if (global.shockwave_state = 1)
{
	sprite_index = spr_super_shockwave_energyrange	
}

audio_play_sound(snd_electricity,1000,true,global.sfx_volume)