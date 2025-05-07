function petalblade_idle() {
	if (global.invisibility = 0) && (inst_player > 0) && (timer >= 1) && (inst_player)
		{
			State_machine_switch_state(petalblade_shoot);
			sprite_index = spr_petalblade_prep;
			image_index = 0
			timer = 0;
			timer2burst = 0
			dir = 0
			spawnerlimit = 0
			dist = 0
			
			
			//sfx
			if (!audio_is_playing(snd_grassrustle))
			{
				audio_play_sound(snd_grassrustle,1000,false,global.sfx_volume)	
			}
			else if (audio_is_playing(snd_grassrustle))
			{
				audio_stop_sound(snd_grassrustle)
				audio_play_sound(snd_grassrustle,1000,false,global.sfx_volume)	
			}
		}
	
	if (global.invisibility = 0) && (inst_player > 0) && (timer2burst >= 1)
		{
			State_machine_switch_state(petalblade_shoot_burst);
			sprite_index = spr_petalblade_prep_2;
			image_index = 0
			timer2burst = 0
			timer = 0
			dir = 0
			spawnerlimit = 0
			dist = 0
			
			//sfx
			if (!audio_is_playing(snd_grassrustle))
			{
				audio_play_sound(snd_grassrustle,1000,false,global.sfx_volume)	
			}
			else if (audio_is_playing(snd_grassrustle))
			{
				audio_stop_sound(snd_grassrustle)
				audio_play_sound(snd_grassrustle,1000,false,global.sfx_volume)	
			}
		}

	if (inst_player)
	{
		timer += random_range(((1/room_speed)),((1/room_speed)*2));
	}

	if (inst_player)
	{
		timer2burst += random_range(((1/room_speed)),((1/room_speed)*2));
	}


}
