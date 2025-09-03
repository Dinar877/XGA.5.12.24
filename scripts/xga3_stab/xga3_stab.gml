function xga3_stab() {
	
	if (round(image_index) == 6) && (!audio_is_playing(snd_tentacles))
	{
		snd = audio_play_sound(snd_tentacles,1000,false,global.sfx_volume)	
		audio_sound_gain(snd,0,0)
		audio_sound_gain(snd,1,2000)
	}
	
	if (round(image_index) == 22) && (!audio_is_playing(snd_xga_stab_effect))
	{
		audio_stop_sound(snd_tentacles)
		snd = audio_play_sound(snd_xga_stab_effect,1000,false,global.sfx_volume)
		audio_sound_pitch(snd,random_range(0.95,1.05))
		snd = audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)
		audio_sound_pitch(snd,0.4)
	}
	
	if (round(image_index) == 29) && (!audio_is_playing(snd_player_spinjump_shorter))
	{
		snd = audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)
		audio_sound_pitch(snd,0.5)
	}
	
	
	//reset
	if (sprite_index = spr_xga3_stabh_left) && (image_index >= image_number-1)
	{
		 sprite_index = spr_xga3_idle_left;
		 image_index = 0;
		 State_machine_switch_state(xga3_idle)
	}
	else if (sprite_index = spr_xga3_stabh_right) && (image_index >= image_number-1)
	{
		 sprite_index = spr_xga3_idle_right;
		 image_index = 0;
		 State_machine_switch_state(xga3_idle)
	}


}
