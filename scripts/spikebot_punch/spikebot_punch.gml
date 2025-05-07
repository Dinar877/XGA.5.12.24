function spikebot_punch() {
	if (round(image_index) == 12) && (snd = -1)
	{
		snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
		audio_sound_set_track_position(snd,0.6)
		audio_sound_gain(snd,global.sfx_volume,0)
		audio_sound_gain(snd,0,1000)
	}
	else if (round(image_index) == 20) && (snd = -1)
	{
		snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
		audio_sound_set_track_position(snd,0.6)
		audio_sound_gain(snd,global.sfx_volume,0)
		audio_sound_gain(snd,0,1000)
	}
	if (round(image_index) != 12) && (round(image_index) != 20)
	{
		snd = -1
	}


	if (image_index >= image_number-1)
	{
		snd = -1
		if (sprite_index = spr_spikebot_punch_left)
		{
			sprite_index = spr_spikebot_idle_left
		}
		else if (sprite_index = spr_spikebot_punch_right)
		{
			sprite_index = spr_spikebot_idle_right
		}
	
		State_machine_switch_state(spikebot_idle)
	}




}
