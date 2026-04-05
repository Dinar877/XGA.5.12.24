 /// @description Insert description here
// You can write your code in this editor



//audio
if (!audio_is_playing(emitter_player)) && (activated = false)
{
	emitter_player = audio_play_sound_at(snd_portal_nearby,id.x,id.y,0,20,100,1,true,1000);
}

dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
audio_sound_gain(emitter_player,(40/dist) * global.sfx_volume,0)



image_angle += 20;



if (place_meeting(x,y,obj_player)) && (activated = false)
{
	activated = true
	
	global.cutscene = 1
	global.cutscene_suit = 1
	global.charging = 0
	global.charge_ready = 0
	global.nanoshield = 0
	global.invisibility = 0
	global.nuclearblast = 0
	global.shockwave = 0
			
	global.dash2 = 0
	global.dash2_spark = 0
	global.dashbegin2 = 0
		
	audio_stop_sound(snd_portal_use);
	audio_stop_sound(snd_portal_nearby);
	audio_stop_sound(emitter_player)
	audio_stop_sound(snd_player_spacejump);
	audio_stop_sound(snd_player_spinjump);
	audio_stop_sound(snd_player_spinjump_shorter);
	
	audio_play_sound(snd_sc_escaped,1000,false,global.sfx_volume);
		
	instance_destroy(obj_sc_clock_manager)
	instance_create_layer(obj_camera.x,obj_camera.y,layer_get_id("Inst_healthui"),obj_sc_deathscreennuke)
}
