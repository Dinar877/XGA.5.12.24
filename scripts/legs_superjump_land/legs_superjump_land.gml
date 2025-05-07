function legs_superjump_land() {
	with(obj_boss_spider_legs)
	{
		sprite_index = spr_boss_spider_superjump_land;
		x = obj_boss_spider_hitbox.x;
		y = obj_boss_spider_hitbox.y+5;
		audio_stop_sound(snd_swordswoosh)
	
		if (floor(image_index) == 0) && (!audio_is_playing(snd_metalcrash)) && (!audio_is_playing(snd_metalcrash1))
		{
			var snd = audio_play_sound(snd_metalcrash,1000,false,global.sfx_volume)	
			
			//screen shake
			with(obj_camera)
			{
				if (yshake <= 0)
				{
					yshake = 6;
					yshakeno = 3;
					audio_stop_sound(snd_metalbang)
					var snd = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
					snd = audio_sound_gain(snd,global.sfx_volume,0)
				}
			}
		}
	
		if (image_index >= image_number-1)
		{
			with(obj_boss_spider_hitbox)
			{
				statetimer2jump = 0;
				statetimer2stamp = 0;
				State_machine_switch_state(legs_idle)
			}
			sprite_index = spr_boss_spider_idle;
		}
	}


}
