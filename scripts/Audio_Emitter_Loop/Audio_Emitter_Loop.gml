// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Audio_Emitter_Loop(){
	
	if (global.pause_transition = 1)
	or (global.pause_map = 1)
	or (global.upgrade_process = 1)
	or (!instance_exists(obj_player))
	or (!variable_instance_exists(self,"emitter_player"))
	or (!variable_instance_exists(self,"dist"))
	{
		exit;	
	}

	//audio
	if (!audio_is_playing(emitter_player))
	{
		emitter_player = audio_play_sound_at(argument0,id.x,id.y,0,argument1,argument2,argument3,argument4,argument5,global.sfx_volume,0,argument6);
	}

	dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
	audio_sound_gain(emitter_player,(argument1/dist) * global.sfx_volume,0)


}