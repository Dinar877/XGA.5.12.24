function Sword3() {
	with(object_player2_0_sprites)
	{
			if (global.facingDir > 0) && (round(image_index) == 2) && (sprite_index == spr_stand_newsword_right_part3)
			{
				instance_create_depth(id.x,id.y,id.depth,obj_player_sword_hitbox)
			
				with(obj_player_sword_hitbox)
				{
					sprite_index = spr_stand_sword_right_swordhitbox
				}
			
				audio_stop_sound(snd_saber1)
			
				snd = audio_play_sound(snd_saber2,1000,false,global.sfx_volume)	
				audio_sound_gain(snd,0,1000)
				audio_sound_pitch(snd, random_range(0.995,1.005))
			}
			else if (global.facingDir < 0) && (round(image_index) == 2) && (sprite_index == spr_stand_newsword_left_part3)
			{
				instance_create_depth(id.x,id.y,id.depth,obj_player_sword_hitbox)
			
				with(obj_player_sword_hitbox)
				{
					sprite_index = spr_stand_sword_left_swordhitbox	
				}
				
				audio_stop_sound(snd_saber1)
			
				snd = audio_play_sound(snd_saber2,1000,false,global.sfx_volume)	
				audio_sound_gain(snd,0,1000)
				audio_sound_pitch(snd, random_range(0.995,1.005))
			}
			else if (round(image_index) != 2)
			{
				if (instance_exists(obj_player_sword_hitbox))
				{
					instance_destroy(obj_player_sword_hitbox)
				}
			}
		
			if (global.facingDir > 0) && (sprite_index != spr_stand_newsword_right_part3)
			{
				sprite_index = spr_stand_newsword_right_part3
				image_index = 0
			}
			else if (global.facingDir > 0) && (sprite_index = spr_stand_newsword_right_part3) && (image_index >= image_number-1)
			{
				with(obj_player)
				{
					State_machine_switch_state(Idle)	
				}
			}

		
			if (global.facingDir < 0) && (sprite_index != spr_stand_newsword_left_part3)
			{
				sprite_index = spr_stand_newsword_left_part3
				image_index = 0
			}
			else if (global.facingDir < 0) && (sprite_index = spr_stand_newsword_left_part3) && (image_index >= image_number-1)
			{
				with(obj_player)
				{
					State_machine_switch_state(Idle)	
				}
			}
	}


}
