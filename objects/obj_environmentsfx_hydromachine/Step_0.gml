/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (!audio_emitter_exists)
{
	audio_pause_sound(snd_hydromachine)
	exit;	
}
else
{
	audio_resume_sound(snd_hydromachine)	
}

//play sfx properly
if (!audio_is_playing(emitter_player))
{
	emitter_player = audio_play_sound_at(snd_hydromachine, x, y, 0, 50, 100, 1, true, 1000)
}


dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
audio_sound_gain(emitter_player, (10/dist) * global.sfx_volume,0)