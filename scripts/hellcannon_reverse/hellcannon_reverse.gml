// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hellcannon_reverse(){
	
	//sfx
	if (!audio_is_playing(snd_rollingwheels))
	{
		audio_play_sound(snd_rollingwheels,1000,false,global.sfx_volume);
	}

}