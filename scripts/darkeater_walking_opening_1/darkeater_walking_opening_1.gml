function darkeater_walking_opening_1() {
	
	state1 = darkeater_walking_opening_1
	
	if (sprite_index = spr_darkeater_walk_left)
		{
			with(instance_place(x,y,obj_darkeater_hitbox_intro))
			{
				hspd = -1/3;
				Moving_slow_left_lessthan1()
			}
		}
	else if (sprite_index = spr_darkeater_walk_right)
		{
			with(instance_place(x,y,obj_darkeater_hitbox_intro))
			{
				hspd = 1/3;
				Moving_slow_right_lessthan1()
			}
		}

	if (sprite_index = spr_darkeater_walk_right)
	{
		if (round(image_index) == 4) or (round(image_index) == 10)
		{
			with(obj_camera_intro)
			{
				if (yshake <= 0)
				{
					yshake = 2;
					yshakeno = 3;
				}
			}
			if (!audio_is_playing(snd_xga_roar))
			{
				audio_stop_sound(snd_beamexplosion1)
				audio_play_sound_on(inst_audio_emitterID,snd_beamexplosion1,100,true, global.sfx_volume)
			}
		}
	}
	else if (sprite_index = spr_darkeater_walk_left)
	{
		if (round(image_index) == 7) or (round(image_index) == 0)
		{
			with(obj_camera_intro)
			{
				if (yshake <= 0)
				{
					yshake = 2;
					yshakeno = 3;
				}
			}
			if (!audio_is_playing(snd_xga_roar))
			{
				audio_stop_sound(snd_beamexplosion1)
				audio_play_sound_on(inst_audio_emitterID,snd_beamexplosion1,100,true, global.sfx_volume)
			}
		}
	}



}
