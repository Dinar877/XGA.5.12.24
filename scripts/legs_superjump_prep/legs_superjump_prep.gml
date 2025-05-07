function legs_superjump_prep() {
	with(obj_boss_spider_legs)
	{
		sprite_index = spr_boss_spider_superjump_prep;
	
		if (floor(image_index) == 2) && (!audio_is_playing(snd_electricity))
		{
			var snd = audio_play_sound(snd_electricity,1000,false,global.sfx_volume)
			audio_sound_set_track_position(snd,2)
			audio_sound_gain(snd,0,600)
		}

		if (image_index >= image_number-1) && (sprite_index = spr_boss_spider_superjump_prep)
		{
			instance_create_layer(x-3,y-230,layer_get_id("Inst_level_0"),obj_landingbox)
			y = 0;
			with(obj_boss_spider_hitbox)
			{
				y = 0;	
				State_machine_switch_state(Freeze)
			}
			with(obj_boss_spider_eye)
			{
				y = 0;	
			}
		
			var snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
			audio_sound_set_track_position(snd,0.6)	
			audio_sound_gain(snd,0,500)
		
			audio_stop_sound(snd_electricity)
		}
	}


}
