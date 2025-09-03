function xga3_upvomit() {
	
	if (round(image_index) == 3) && (!audio_is_playing(snd_xga_swallow))
	{
		snd = audio_play_sound(snd_xga_swallow,1000,false,global.sfx_volume)
	}
	
	if (round(image_index) == 18)
	&& (!audio_is_playing(snd_xga3_vomit1)) && (!audio_is_playing(snd_xga3_vomit2)) && (!audio_is_playing(snd_xga3_vomit3))
	{
		audio_stop_sound(snd_xga_swallow)
		
		var randy = round(random_range(0,2))
		
		if (randy == 0)
		{
			snd = audio_play_sound(snd_xga3_vomit1,1000,false,global.sfx_volume)		
		}
		else if (randy == 1)
		{
			snd = audio_play_sound(snd_xga3_vomit2,1000,false,global.sfx_volume)		
		}
		if (randy == 2)
		{
			snd = audio_play_sound(snd_xga3_vomit3,1000,false,global.sfx_volume)		
		}
	}
	else if (round(image_index) == 18)
	&& ((audio_is_playing(snd_xga3_vomit1)) or (audio_is_playing(snd_xga3_vomit2)) or (audio_is_playing(snd_xga3_vomit3)))
	{
		audio_stop_sound(snd_xga_swallow)
		audio_stop_sound(snd_xga3_vomit1)
		audio_stop_sound(snd_xga3_vomit2)
		audio_stop_sound(snd_xga3_vomit3)
		
		var randy = round(random_range(0,2))
		
		if (randy == 0)
		{
			snd = audio_play_sound(snd_xga3_vomit1,1000,false,global.sfx_volume)		
		}
		else if (randy == 1)
		{
			snd = audio_play_sound(snd_xga3_vomit2,1000,false,global.sfx_volume)		
		}
		if (randy == 2)
		{
			snd = audio_play_sound(snd_xga3_vomit3,1000,false,global.sfx_volume)		
		}
	}

	
	
	//reset
	if (sprite_index = spr_xga3_upvomit_left) && (image_index >= image_number-1)
	{
		 sprite_index = spr_xga3_idle_left;
		 image_index = 0;
		 
		 //audio_stop_sound(snd_xga3_vomit1)
		 //audio_stop_sound(snd_xga3_vomit2)
		 //audio_stop_sound(snd_xga3_vomit3)
		 
		 State_machine_switch_state(xga3_idle)
	}
	else if (sprite_index = spr_xga3_upvomit_right) && (image_index >= image_number-1)
	{
		 sprite_index = spr_xga3_idle_right;
		 image_index = 0;
		 
		 //audio_stop_sound(snd_xga3_vomit1)
		 //audio_stop_sound(snd_xga3_vomit2)
		 //audio_stop_sound(snd_xga3_vomit3)
		 
		 State_machine_switch_state(xga3_idle)
	}


}
