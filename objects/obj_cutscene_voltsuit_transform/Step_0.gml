//corruption 1
if (sprite_index = spr_cutscene_player_corruption1) && (image_index < image_number-1)
{
	//sfx
	if (floor(image_index) == 5) //spark
	&& (!audio_is_playing(snd_electricity_short))
	{
		sndID = audio_play_sound(snd_electricity_short,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 7) //buzz
	&& (!audio_is_playing(snd_player_corruption_buzzing))
	{
		audio_stop_sound(snd_electricity_short)
		sndID = audio_play_sound(snd_player_corruption_buzzing,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 8) //tentacle
	&& (!audio_is_playing(snd_tentacles))
	{
		sndID = audio_play_sound(snd_tentacles,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 9) //end buzz
	{
		audio_stop_sound(snd_player_corruption_buzzing)
	}
	else if (floor(image_index) == 13) //buzz
	&& (!audio_is_playing(snd_player_corruption_buzzing))
	{
		audio_stop_sound(snd_electricity_short)
		sndID = audio_play_sound(snd_player_corruption_buzzing,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 15) //end buzz
	{
		audio_stop_sound(snd_player_corruption_buzzing)
	}
	else if (floor(image_index) == 27) //spark
	&& (!audio_is_playing(snd_electricity_short))
	{
		sndID = audio_play_sound(snd_electricity_short,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 29) //buzz
	&& (!audio_is_playing(snd_tentacles))
	{
		sndID = audio_play_sound(snd_player_corruption_buzzing,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 30) //end buzz + spark
	{
		audio_stop_sound(snd_player_corruption_buzzing)
		audio_stop_sound(snd_electricity_short)
		audio_stop_sound(snd_tentacles)
	}
}
else if (sprite_index = spr_cutscene_player_corruption1) && (image_index >= image_number-1)
{
	global.cutsceneID[Cutscenes.elevatorCorruption1] = true;
	global.facingDir = -1;

	with(object_player2_0_sprites)
	{
		image_alpha = 1;	
		cutsceneTimer = 0;
	}

	instance_destroy();
}



//corruption 2
if (sprite_index = spr_cutscene_player_corruption2) && (image_index < image_number-1)
{
	//sfx
	if (floor(image_index) == 5) //spark
	&& (!audio_is_playing(snd_electricity_short))
	{
		sndID = audio_play_sound(snd_electricity_short,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 12) //tentacles
	&& (!audio_is_playing(snd_tentacles))
	{
		audio_stop_sound(snd_electricity_short)
		sndID = audio_play_sound(snd_tentacles,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 22) //buzz
	&& (!audio_is_playing(snd_player_corruption_buzzing))
	{
		sndID = audio_play_sound(snd_player_corruption_buzzing,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 23) //end buzz
	{
		audio_stop_sound(snd_player_corruption_buzzing)
	}
	else if (floor(image_index) == 24) //mini explosion
	&& (!audio_is_playing(snd_beamexplosion2))
	{
		sndID = audio_play_sound(snd_beamexplosion2,1000,false,global.sfx_volume);
		audio_sound_pitch(sndID,2);
	}
	else if (floor(image_index) == 25) //tentacles faster
	&& (!audio_is_playing(snd_tentacles_faster))
	{
		sndID = audio_play_sound(snd_tentacles_faster,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 29) //buzz
	&& (!audio_is_playing(snd_player_corruption_buzzing))
	{
		sndID = audio_play_sound(snd_player_corruption_buzzing,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 30) //end buzz
	{
		audio_stop_sound(snd_player_corruption_buzzing)
	}
	else if (floor(image_index) == 47) //buzz and spark
	&& (!audio_is_playing(snd_player_corruption_buzzing))
	{
		sndID = audio_play_sound(snd_player_corruption_buzzing,1000,false,global.sfx_volume);
		sndID = audio_play_sound(snd_electricity_short,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 51) //end buzz spark tentacles faster
	{
		audio_stop_sound(snd_player_corruption_buzzing)
		audio_stop_sound(snd_electricity_short)
		audio_stop_sound(snd_tentacles_faster)
		audio_stop_sound(snd_tentacles)
	}
	else if (floor(image_index) == 52) //buzz
	&& (!audio_is_playing(snd_player_corruption_buzzing))
	{
		sndID = audio_play_sound(snd_player_corruption_buzzing,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 53) //end buzz
	{
		audio_stop_sound(snd_player_corruption_buzzing)
	}
	else if (floor(image_index) == 64) //buzz
	&& (!audio_is_playing(snd_player_corruption_buzzing))
	{
		sndID = audio_play_sound(snd_player_corruption_buzzing,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 65) //end buzz
	{
		audio_stop_sound(snd_player_corruption_buzzing)
	}
}
else if (sprite_index = spr_cutscene_player_corruption2) && (image_index >= image_number-1)
{
	global.cutsceneID[Cutscenes.voltEngineGet] = true;

	with(object_player2_0_sprites)
	{
		image_alpha = 1;	
		cutsceneTimer = 0;
	}

	instance_destroy();
}