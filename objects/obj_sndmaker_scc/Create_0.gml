/// @description Insert description here
// You can write your code in this editor
sndID = snd_scc_area
BossblockerID = 0
sndswitch = 0

//destroy and don't play music if being chased by xga
if (global.darkeater_active == true)
{
	instance_destroy();	
}
else if (global.cutsceneID[Cutscenes.scc_active] == true)
{
	instance_destroy();	
	if (audio_is_playing(snd_scc_area))
	{
		audio_stop_sound(snd_scc_area)
		global.sector_music = -1
	}
}

