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

//play sfx properly
if (!audio_is_playing(emitter_player))
{
	emitter_player = audio_play_sound_at(snd_magma,x,y,0,20,100,1,true,1000,global.sfx_volume)
}


dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
audio_sound_gain(emitter_player, (20/dist) * global.sfx_volume,0)