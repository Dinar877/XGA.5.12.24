// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerLandingSFX(){
	
	if (!audio_is_playing(snd_player_land))
	{
		//create random pitch
		var randy = random_range(-0.015,0.015);
		//play landing sfx
		var sndy = audio_play_sound(snd_player_land,1000,false);
		audio_sound_gain(sndy,global.sfx_volume,0)
		audio_sound_gain(sndy,0,1000) //fade out
		audio_sound_pitch(sndy,1+randy);
	}
	else if (audio_is_playing(snd_player_land))
	{
		audio_stop_sound(snd_player_land)
		//create random pitch
		var randy = random_range(-0.015,0.015);
		//play landing sfx
		var sndy = audio_play_sound(snd_player_land,1000,false,global.sfx_volume,0,1+randy);
		audio_sound_gain(sndy,0,0)
		audio_sound_gain(sndy,global.sfx_volume,0)
		audio_sound_gain(sndy,global.sfx_volume,1000) //fade out
		audio_sound_pitch(sndy,1+randy);
	}
}