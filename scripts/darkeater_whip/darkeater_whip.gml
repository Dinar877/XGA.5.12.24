function darkeater_whip() {
	
	state1 = darkeater_whip
	
	if (obj_darkeater_sprites.sprite_index != spr_darkeater_whip_left) && (state = darkeater_whip) && (facing = -1)
		{
			obj_darkeater_sprites.image_index = 0
			obj_darkeater_sprites.sprite_index = spr_darkeater_whip_left;	
		}
	else if (obj_darkeater_sprites.sprite_index = spr_darkeater_whip_left) && (obj_darkeater_sprites.image_index >= obj_darkeater_sprites.image_number-1)
		{
			State_machine_switch_state(darkeater_idle);
			obj_darkeater_sprites.sprite_index = spr_darkeater_idle_left;
			snd = -1
			attack_state = 0;
			exit
		}

	if (obj_darkeater_sprites.sprite_index != spr_darkeater_whip_right) && (state = darkeater_whip) && (facing = 1)
		{
			obj_darkeater_sprites.image_index = 0
			obj_darkeater_sprites.sprite_index = spr_darkeater_whip_right;	
		}
	else if (obj_darkeater_sprites.sprite_index = spr_darkeater_whip_right) && (obj_darkeater_sprites.image_index >= obj_darkeater_sprites.image_number-1)
		{
			State_machine_switch_state(darkeater_idle);
			obj_darkeater_sprites.sprite_index = spr_darkeater_idle_right;
			snd = -1
			attack_state = 0;
			exit
		}

	if (round(obj_darkeater_sprites.image_index) == 7)
	{
		if (!audio_is_playing(snd_swordswoosh))
		{
			snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)
			audio_sound_set_track_position(snd,0.6)
			
			audio_sound_pitch(snd, 1 + random_range(0.05,-0.05))
		}
		else if (audio_is_playing(snd_swordswoosh))
		{
			audio_stop_sound(snd_swordswoosh)
			snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)
			audio_sound_set_track_position(snd,0.6)
			
			audio_sound_pitch(snd, 1 + random_range(0.05,-0.05))
		}
	}
	else if (round(obj_darkeater_sprites.image_index) == 21)
	{
		if (!audio_is_playing(snd_xga_whip))
		{
			snd = audio_play_sound(snd_xga_whip,1000,false,global.sfx_volume)
			
			audio_sound_pitch(snd, 1 + random_range(0.05,-0.05))
		}
		else if (audio_is_playing(snd_xga_whip))
		{
			audio_stop_sound(snd_xga_whip)
			snd = audio_play_sound(snd_xga_whip,1000,false,global.sfx_volume)
			
			audio_sound_pitch(snd, 1 + random_range(0.05,-0.05))
		}
	}


}
