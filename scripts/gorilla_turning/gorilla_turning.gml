function gorilla_turning() {
	if ((sprite_index = spr_gorilla_stand_left) or (sprite_index = spr_gorilla_walk_left)) 
	&& (state = gorilla_turning)
	{
		sprite_index = spr_gorilla_turn_L2R;	
	}
	else if (sprite_index = spr_gorilla_turn_L2R) && (image_index >= image_number-1)
	{
		State_machine_switch_state(gorilla_idle);
		sprite_index = spr_gorilla_stand_right;	
		facing = 1;
	}

	if ((sprite_index = spr_gorilla_stand_right) or (sprite_index = spr_gorilla_walk_right))
	&& (state = gorilla_turning)
	{
		sprite_index = spr_gorilla_turn_R2L;	
	}
	else if (sprite_index = spr_gorilla_turn_R2L) && (image_index >= image_number-1)
	{
		State_machine_switch_state(gorilla_idle);
		sprite_index = spr_gorilla_stand_left;	
		facing = -1;
	}

	//sound
		if (floor(image_index) == 0)
		{
			var snd1 = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
			audio_sound_set_track_position(snd1,0.6)
			//audio_sound_gain(snd1,0.5,0)
			audio_sound_gain(snd1,0,500)
		}


}
