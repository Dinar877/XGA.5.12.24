 /// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (!instance_exists(obj_player))
{
	exit;	
}

//audio
Audio_Emitter_Loop(snd_portal_nearby,20,100,1,true,100,0.7)



if (instance_exists(obj_redlazer_spawnhere))
{
	if (place_meeting(x,y,obj_player))
	{
		obj_player.x = obj_redlazer_spawnhere.x;
		obj_player.y = obj_redlazer_spawnhere.y;
		object_player2_0_sprites.x = obj_redlazer_spawnhere.x;
		object_player2_0_sprites.y = obj_redlazer_spawnhere.y;
		
		Teleport_Camera(obj_redlazer_spawnhere.x,obj_redlazer_spawnhere.y)
				
		audio_stop_sound(snd_portal_use);
		var sndlzr = audio_play_sound(snd_portal_use,1000,false,global.sfx_volume);
		audio_sound_pitch(sndlzr,0.6)
		
		instance_create_layer(obj_camera.x,obj_camera.y,layer_get_id("Inst_healthui"),obj_redlazer_scrneffect)
	}
}
