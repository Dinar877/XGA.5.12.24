function flowey_pierce() {
	if (round(image_index) == 22) && (!audio_is_playing(snd_swordswoosh))
	{
		snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
		audio_sound_set_track_position(snd,0.6)
	}
	
	if (sprite_index = spr_flowey_pierce) && (image_index >= image_number-1)
	{
		 sprite_index = spr_flowey_idle;
		 image_index = 0;
		 State_machine_switch_state(flowey_idle)
	}


}
