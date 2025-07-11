/// @description Insert description here
// You can write your code in this editor
if (global.bossblockers[bossblockers.box] > 0)
{
	instance_destroy();
	audio_stop_sound(snd_kingstalker_snoring)
	exit
}

if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	audio_pause_sound(snd_kingstalker_snoring)
	exit;	
}
else
{
	audio_resume_sound(snd_kingstalker_snoring)	
}


dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
audio_emitter_gain(global.inst_audio_emitterID[inst_n], (35/dist) * global.sfx_volume)