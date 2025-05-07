function Tentacely_rangedattack() {
	if (round(image_index) == 21) && (!audio_is_playing(snd_swordswoosh))
	{
		snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
		audio_sound_set_track_position(snd,0.6)
	}
	
	if (round(image_index) == 33) && (!audio_is_playing(snd_swordswoosh))
	{
		snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
		audio_sound_set_track_position(snd,0.6)
	}

	if (image_index >= image_number-1)
	{
		audio_stop_sound(snd)
	
		if (sprite_index = spr_tentaclely_rangedattack_left)
		{
			sprite_index = spr_tentaclely_idle_left
		}
		else if (sprite_index = spr_tentaclely_rangedattack_right)
		{
			sprite_index = spr_tentaclely_idle_right
		}
	
		State_machine_switch_state(Tentacely_idle);
	}



}
