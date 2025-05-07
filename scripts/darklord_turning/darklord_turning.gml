function darklord_turning() {
	if ((sprite_index = spr_darklord_stand_left) or (sprite_index = spr_darklord_walk_left))
	&& (state = darklord_turning)
	{
		image_index = 0
		sprite_index = spr_darklord_turn_l2r;	
	}
	else if (sprite_index = spr_darklord_turn_l2r) && (image_index >= image_number-1)
	{
		State_machine_switch_state(darklord_idle);
		sprite_index = spr_darklord_stand_right;	
		facing = 1;
	}

	if ((sprite_index = spr_darklord_stand_right) or (sprite_index = spr_darklord_walk_right))
	&& (state = darklord_turning)
	{
		image_index = 0
		sprite_index = spr_darklord_turn_r2l;	
	}
	else if (sprite_index = spr_darklord_turn_r2l) && (image_index >= image_number-1)
	{
		State_machine_switch_state(darklord_idle);
		sprite_index = spr_darklord_stand_left;	
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
