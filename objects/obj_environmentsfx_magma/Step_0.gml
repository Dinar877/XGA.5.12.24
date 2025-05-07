/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (!instance_exists(obj_player))
{
	audio_pause_sound(snd_magma)
	exit;	
}
else
{
	audio_resume_sound(snd_magma)	
}


dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
audio_emitter_gain(global.inst_audio_emitterID[inst_n], (30/dist) * global.sfx_volume)