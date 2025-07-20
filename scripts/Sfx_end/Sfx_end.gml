// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sfx_end(){
	
	//ends random sfx after room transition
	audio_stop_sound(snd_beehive)
	audio_stop_sound(snd_grassrustle)
	audio_stop_sound(snd_airplane_flight)
	audio_stop_sound(snd_wind)
	audio_stop_sound(snd_bug_crawling)
	audio_stop_sound(snd_kingstalker_snoring)
	audio_stop_sound(snd_underwater_moving)
	
	audio_stop_sound(snd_portal_nearby)
	audio_stop_sound(snd_ticking)
	
	audio_stop_sound(snd_drill)
	audio_stop_sound(snd_metalrolling)
	audio_stop_sound(snd_metalbang)
	audio_stop_sound(snd_metalcrash)
	audio_stop_sound(snd_metalcrash1)
	audio_stop_sound(snd_metalcrash2)
	
	audio_stop_sound(snd_tram_departing)
	audio_stop_sound(snd_tram_going)
	
	audio_stop_sound(snd_swordswoosh)
	audio_stop_sound(snd_dash_spark)
	audio_stop_sound(snd_xga_amb1)
	audio_stop_sound(snd_xga_amb2)
	audio_stop_sound(snd_xga_amb3)
	audio_stop_sound(snd_xga_amb4)
	
	audio_stop_sound(snd_hydromachine)
	audio_stop_sound(snd_magma)
	
	//temprarily disable all sfx
	audio_group_set_gain(audiogroup_sfx, 0, 0)
}