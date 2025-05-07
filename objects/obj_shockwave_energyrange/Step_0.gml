/// @description Insert description here
// You can write your code in this editor
if ((global.pause_transition = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)) && (audio_sound_get_gain(snd_electricity) > 0)
{
	audio_stop_sound(snd_electricity)
	exit	
}
else if (!audio_is_playing(snd_electricity)) or (audio_sound_get_gain(snd_electricity) <= 0)
{
	audio_play_sound(snd_electricity,1000,true,global.sfx_volume)
}

if (instance_exists(obj_shockwave_energycircle)) && (instance_exists(obj_player))
{
	x = obj_player.x
	y = obj_player.y
	depth = obj_player.depth+1
}