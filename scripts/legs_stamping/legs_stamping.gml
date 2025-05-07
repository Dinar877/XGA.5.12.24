function legs_stamping() {
	with(obj_boss_spider_legs)
	{
		if (obj_player.x > self.x)
		{
			sprite_index = spr_boss_spider_stampright;	
		}
		else if (obj_player.x < self.x)
		{
			sprite_index = spr_boss_spider_stampleft;
		}


		if (floor(image_index) == 9) && (!audio_is_playing(snd_electricity))
		{
			var snd = audio_play_sound(snd_electricity,1000,false,global.sfx_volume)
			audio_sound_set_track_position(snd,2)
			audio_sound_gain(snd,0,600)
		}

		if (floor(image_index) == 18)
		{
			with(obj_camera)
			{
				if (yshake <= 0)
				{
					yshake = 3;
					yshakeno = 3;
					audio_stop_sound(snd_metalbang)
					var snd = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
					snd = audio_sound_gain(snd,global.sfx_volume,0)
				}
			}
		}

	}

	with(obj_boss_spider_legs)
	{
		if (sprite_index = spr_boss_spider_stampright) && (image_index >= 20) && (statetimer2stamp != 0)
		{
			instance_create_layer(x+55,y+28,layer_get_id("Inst_scrn"),obj_harmful_electricity_boss_right)
			statetimer2stamp = 0
		}
		else if (sprite_index = spr_boss_spider_stampleft) && (image_index >= 20) && (statetimer2stamp != 0)
		{
			instance_create_layer(x-55,y+28,layer_get_id("Inst_scrn"),obj_harmful_electricity_boss_left)
			statetimer2stamp = 0
		}

		if (image_index >= image_number - 1) && (statetimer2stamp = 0)
		{
			audio_stop_sound(snd_electricity)
		
			with(obj_boss_spider_hitbox)
			{
				statetimer2stamp = 0;
				State_machine_switch_state(legs_idle)
				with(obj_boss_spider_legs)
				{
					image_index = 0;	
					sprite_index = spr_boss_spider_idle;
				}
			}
		}

	}


}
