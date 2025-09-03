function xga3_turning() {
	
	if (sprite_index = spr_xga3_idle_left)
	{
		image_index = 0
		sprite_index = spr_xga3_turn_l2r;	
	}
	else if (sprite_index = spr_xga3_turn_l2r) && (image_index >= image_number-1)
	{
		State_machine_switch_state(xga3_idle);
		sprite_index = spr_xga3_idle_right;	
		facing = 1;
		audio_stop_sound(snd_swordswoosh)
		exit;
	}

	if (sprite_index = spr_xga3_idle_right)
	{
		image_index = 0
		sprite_index = spr_xga3_turn_r2l;	
	}
	else if (sprite_index = spr_xga3_turn_r2l) && (image_index >= image_number-1)
	{
		State_machine_switch_state(xga3_idle);
		sprite_index = spr_xga3_idle_left;	
		facing = -1;
		audio_stop_sound(snd_swordswoosh)
		exit;
	}

	//sound
	if (floor(image_index) == 0)
	{
		var snd1 = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
		audio_sound_set_track_position(snd1,0.6)
		audio_sound_gain(snd1,0,500)
		audio_sound_pitch(snd1,0.5)
	}


}
