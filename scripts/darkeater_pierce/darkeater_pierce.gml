function darkeater_pierce() {
	
	state1 = darkeater_pierce;
	
	if (obj_darkeater_sprites.sprite_index != spr_darkeater_pierce_left) && (state = darkeater_pierce) && (facing = -1)
		{
			obj_darkeater_sprites.image_index = 0;
			obj_darkeater_sprites.sprite_index = spr_darkeater_pierce_left;	
		}
	else if (obj_darkeater_sprites.sprite_index = spr_darkeater_pierce_left) && (obj_darkeater_sprites.image_index >= obj_darkeater_sprites.image_number-1)
		{
			State_machine_switch_state(darkeater_idle);
			obj_darkeater_sprites.sprite_index = spr_darkeater_idle_left;
			snd = -1;
			attack_state = 0;
			exit
		}

	if (obj_darkeater_sprites.sprite_index != spr_darkeater_pierce_right) && (state = darkeater_pierce) && (facing = 1)
		{
			obj_darkeater_sprites.image_index = 0;
			obj_darkeater_sprites.sprite_index = spr_darkeater_pierce_right;	
		}
	else if (obj_darkeater_sprites.sprite_index = spr_darkeater_pierce_right) && (obj_darkeater_sprites.image_index >= obj_darkeater_sprites.image_number-1)
		{
			State_machine_switch_state(darkeater_idle);
			obj_darkeater_sprites.sprite_index = spr_darkeater_idle_right;
			snd = -1;
			attack_state = 0;
			exit
		}

	if (round(obj_darkeater_sprites.image_index) == 21)
	{
		if (!audio_is_playing(snd_swordswoosh))
		{
			snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume);
			audio_sound_set_track_position(snd,0.6);
		}
		else if (audio_is_playing(snd_swordswoosh))
		{
			audio_stop_sound(snd_swordswoosh);
			snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume);
			audio_sound_set_track_position(snd,0.6);
		}
	}
	
	//for special death animation
	if (round(obj_darkeater_sprites.image_index) == 21) && (!instance_exists(obj_xga_pierce_hitbox))
	{
		instance_create_depth(obj_darkeater_sprites.x,obj_darkeater_sprites.y,obj_darkeater_sprites.depth-1,obj_xga_pierce_hitbox);
		
		if (obj_darkeater_sprites.sprite_index = spr_darkeater_pierce_left)
		{
			obj_xga_pierce_hitbox.sprite_index = spr_darkeater_pierce_hitbox_left;	
		}
		else if (obj_darkeater_sprites.sprite_index = spr_darkeater_pierce_right)
		{
			obj_xga_pierce_hitbox.sprite_index = spr_darkeater_pierce_hitbox_right;	
		}
	}

	if (instance_exists(obj_xga_pierce_hitbox))
	{
		if (obj_xga_pierce_hitbox.kill_player = 1)
		{	
			if (obj_darkeater_sprites.sprite_index = spr_darkeater_pierce_left)
			{
				//get correct suit version sprites
				if (global.suit_pure = 1) && (global.suit_shock = 1)
				{
					obj_darkeater_sprites.sprite_index = spr_darkeater_stabbedplayer_B_left;	
				}
				else if (global.suit_pure = 1) && (global.suit_shock = 0)
				{
					obj_darkeater_sprites.sprite_index = spr_darkeater_stabbedplayer_R_left;	
				}
				else obj_darkeater_sprites.sprite_index = spr_darkeater_stabbedplayer_left;	
				
				
				
				obj_darkeater_sprites.turning = 0;
			}
			else if (obj_darkeater_sprites.sprite_index = spr_darkeater_pierce_right)
			{
				//get correct suit version sprites
				if (global.suit_pure = 1) && (global.suit_shock = 1)
				{
					obj_darkeater_sprites.sprite_index = spr_darkeater_stabbedplayer_B_right;	
				}
				else if (global.suit_pure = 1) && (global.suit_shock = 0)
				{
					obj_darkeater_sprites.sprite_index = spr_darkeater_stabbedplayer_R_right;	
				}
				else obj_darkeater_sprites.sprite_index = spr_darkeater_stabbedplayer_right;	
				
				
				
				obj_darkeater_sprites.turning = 0;
			}
			
			audio_stop_sound(ost_xga_chasemusic);
			
			sndID2 = audio_play_sound(snd_xga_stab_effect,1000,false);
			sndID3 = audio_play_sound(snd_xga_stab_glitch,1000,false);
			sndID4 = audio_play_sound(snd_xga_stab_powerdown,1000,false);
			audio_sound_gain(sndID2,30,0);
			audio_sound_gain(sndID3,1,0);
			audio_sound_gain(sndID4,15,0);
			audio_sound_gain(sndID2,0,15000);
			audio_sound_gain(sndID3,0,15000);
			audio_sound_gain(sndID4,0,15000);
			
			global.pierce_killswitch = 1;
			
			with(obj_player)
			{
				hspd = 0;
				vspd = 0;
				State_machine_switch_state(Freeze);
			}
			
			with(object_player2_0_sprites)
			{
				surface2_alpha = 0;
				surface3alpha = 0;
				image_alpha = 0;
			}
			
			instance_destroy(obj_xga_pierce_hitbox);
			
			State_machine_switch_state(darkeater_killpierce);
			exit;
		}
	}


}
