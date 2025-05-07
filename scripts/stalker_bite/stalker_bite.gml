function stalker_bite() {
	if ((sprite_index = spr_stalker_idleL) or (sprite_index = spr_stalker_run_left) or (sprite_index = spr_stalker_walkingL)) && (state = stalker_bite)
	{
		sprite_index = spr_stalker_bite_left;	
		exit;
	}
	else if (sprite_index = spr_stalker_bite_left) && (image_index >= image_number-1)
	{
		State_machine_switch_state(stalker_idle);
		sprite_index = spr_stalker_idleL	
		exit;
	
	}

	if ((sprite_index = spr_stalker_idleR) or (sprite_index = spr_stalker_run_right) or (sprite_index = spr_stalker_walkingR)) && (state = stalker_bite)
	{
		sprite_index = spr_stalker_bite_right;	
		exit;
	}
	else if (sprite_index = spr_stalker_bite_right) && (image_index >= image_number-1)
	{
		State_machine_switch_state(stalker_idle);
		sprite_index = spr_stalker_idleR;
		exit;
	}
	
	if (floor(image_index) = 18)
	{
		var io = round(random_range(1,2))
		
		if (io = 1) && (!audio_is_playing(snd_monsterbite_1))
		{
			audio_play_sound(snd_monsterbite_1,1000,false,global.sfx_volume)
		}
		else if (io = 2) && (!audio_is_playing(snd_monsterbite_2))
		{
			audio_play_sound(snd_monsterbite_2,1000,false,global.sfx_volume)
		}	
	}


}
