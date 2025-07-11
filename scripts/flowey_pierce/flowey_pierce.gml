function flowey_pierce() {
	
	if (round(image_index) == 9) && (!audio_is_playing(snd_player_spinjump_shorter))
	{
		snd = audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)	
	}
	
	if (round(image_index) == 20) && (!audio_is_playing(snd_player_spinjump_shorter))
	{
		snd = audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)	
	}
	
	if (round(image_index) == 23) && (!audio_is_playing(snd_xga_stab_effect))
	{
		snd = audio_play_sound(snd_xga_stab_effect,1000,false,global.sfx_volume)	
	}
	
	
	
	if (sprite_index = spr_flowey_pierce) && (image_index >= image_number-1)
	{
		 sprite_index = spr_flowey_idle;
		 image_index = 0;
		 State_machine_switch_state(flowey_idle)
	}


}
