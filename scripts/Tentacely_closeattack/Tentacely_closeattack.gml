function Tentacely_closeattack() {
	if (sprite_index = spr_tentaclely_closeattack_left_prep) && (image_index >= image_number-1)
		{
			sprite_index = spr_tentaclely_closeattack_left
			image_index = 0
		}
	else if (sprite_index = spr_tentaclely_closeattack_right_prep) && (image_index >= image_number-1)
		{
			sprite_index = spr_tentaclely_closeattack_right
			image_index = 0
		}

	if (sprite_index = spr_tentaclely_closeattack_left) or (sprite_index = spr_tentaclely_closeattack_right)
	{

		if (image_index == 3) && (!audio_is_playing(snd_electricity)) && (snd <= 0)
		{
			snd = audio_play_sound(snd_electricity,1000,false,global.sfx_volume)
			audio_sound_set_track_position(snd,2)
			audio_sound_gain(snd,global.sfx_volume,0)
			audio_sound_gain(snd,0,3000)
		}


		if (image_index >= image_number-1)
		{
			if (sprite_index = spr_tentaclely_closeattack_left)
			{
				sprite_index = spr_tentaclely_idle_left
			}
			else if (sprite_index = spr_tentaclely_closeattack_right)
			{
				sprite_index = spr_tentaclely_idle_right
			}
			
			if (audio_is_playing(snd_electricity))
			{
				audio_stop_sound(snd_electricity)
			}
			
			snd = 0
	
			State_machine_switch_state(Tentacely_idle);
		}

	}



}
