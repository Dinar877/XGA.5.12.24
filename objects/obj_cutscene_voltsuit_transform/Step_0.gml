//sfx timings
if ((sprite_index = spr_cutscene_volt_engine_shockwave_left) or (sprite_index = spr_cutscene_volt_engine_shockwave_right))
&& (image_index < image_number-1)
{
	//sfx
	if (floor(image_index) == 5) //robot move 0
	&& (!audio_is_playing(snd_robot_move))
	{
		sndID = audio_play_sound(snd_robot_move,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 14) //player land
	&& (!audio_is_playing(snd_player_land))
	{
		sndID = audio_play_sound(snd_player_land,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 26) //tentacles + tentacles fast + explosion sfx
	&& (!audio_is_playing(snd_tentacles))
	{
		sndID = audio_play_sound(snd_tentacles,1000,true,global.sfx_volume);
		audio_sound_gain(sndID,2,3600)
		sndID = audio_play_sound(snd_tentacles_faster,1000,true,global.sfx_volume);
		audio_sound_gain(sndID,2,3600)
		sndID = audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume);
		audio_sound_pitch(sndID,2)
	}
	else if (floor(image_index) > 26) //spawn shockwave objects
	&& (floor(image_index) < 133)
	{
		sndPitch += 0.05;
	}
	else if (floor(image_index) == 133) //electricity sfxs + player scream + buzzing
	&& (!audio_is_playing(snd_player_scream))
	{
		audio_stop_sound(snd_tentacles)
		audio_stop_sound(snd_tentacles_faster)
		sndID = audio_play_sound(snd_player_scream,1000,false,global.sfx_volume);
		sndID = audio_play_sound(snd_player_corruption_buzzing,1000,true,global.sfx_volume);
		sndID = audio_play_sound(snd_electricity,1000,true,global.sfx_volume);
		sndID = audio_play_sound(snd_electricity1,1000,true,global.sfx_volume);
	}
	else if (floor(image_index) > 133) //spawn shockwave objects
	&& (floor(image_index) < 196)
	{
		if (timer < 1)
		{
			timer += 0.35;
		}
		else if (timer >= 1)
		{
			timer = 0;	
			instance_create_layer(x,y,layer_get_id("Inst_doors"),obj_cutscene_voltsuit_shockwave)
		}
	}
	else if (floor(image_index) == 196) //end buzz + spark
	{
		audio_stop_sound(snd_player_corruption_buzzing)
		audio_stop_sound(snd_electricity1)
		audio_stop_sound(snd_electricity)
	}
	else if (floor(image_index) == 210) //electricity sfxs + player scream + buzzing
	&& (!audio_is_playing(snd_electricity_short))
	{
		sndID = audio_play_sound(snd_electricity_short,1000,false,global.sfx_volume);
	}
}
else if ((sprite_index = spr_cutscene_volt_engine_shockwave_left) or (sprite_index = spr_cutscene_volt_engine_shockwave_right))
&& (image_index >= image_number-1)
{
	global.cutsceneID[Cutscenes.voltEngineGet] = true;
	global.pause_player = 0;
	global.cutscene = 0;
	global.cutscene_suit = 0;
	
	global.suit_shock = 1;
	global.suit_count = 2;

	with(object_player2_0_sprites)
	{
		image_alpha = 1;	
		cutsceneTimer = 0;
	}
	
	instance_create_depth(x,y,depth-1,obj_item_shocksuit)
	with(obj_item_shocksuit)
	{
		image_alpha = 0;	
	}

	instance_destroy();
}