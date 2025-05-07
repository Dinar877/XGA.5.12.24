function turtle_turning() {
	if (sprite_index = spr_boss_turtle_left) && (state = turtle_turning)
	{
		sprite_index = spr_boss_turtle_turningl2r;	
	}
	else if (sprite_index = spr_boss_turtle_turningl2r) && (image_index >= image_number-1)
	{
		State_machine_switch_state(turtle_idle);
		sprite_index = spr_boss_turtle_right;	
		facing = 1;
	}

	if (sprite_index = spr_boss_turtle_right) && (state = turtle_turning)
	{
		sprite_index = spr_boss_turtle_turningr2l;	
	}
	else if (sprite_index = spr_boss_turtle_turningr2l) && (image_index >= image_number-1)
	{
		State_machine_switch_state(turtle_idle);
		sprite_index = spr_boss_turtle_left;	
		facing = -1;
	}

	//sound
		if (floor(image_index) == 1) && (!audio_is_playing(snd_swordswoosh))
		{
			snd1 = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
			audio_sound_set_track_position(snd1,0.6)	
			audio_sound_gain(snd1,0,500)
		}
		else if (audio_is_playing(snd_swordswoosh)) && (audio_sound_get_gain(snd1) <= 0)
		{
			audio_stop_sound(snd_swordswoosh)
		}


}
