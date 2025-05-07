function Sword_crouch() {
	sprite_index = spr_player_crouch;
	global.crouching = 1;

	//if no health, reset game
	if (global.health1 <= 0)
	{
	    sprite_index = spr_player;
		with(obj_camera)
			{
				yspin -= 4;
			}
	    y -= 4;
	    global.crouching = 0;
	    State_machine_switch_state(Dead);
	}

	//if less health, go to hurt state
	if (global.hurt = 1)
	{
		with(obj_camera)
			{
				yspin -= 4;
			}
		sprite_index = spr_player;
	    y -= 4;
	    global.crouching = 0;
	    State_machine_switch_state(Hurt);
	}


	with(object_player2_0_sprites)
	{
			//sword 2 hitbox
			if (global.facingDir > 0) && (round(image_index) == 7) && (sprite_index == spr_crouch_sword2_right)
			{
				instance_create_depth(id.x,id.y,id.depth,obj_player_sword_hitbox)
			
				with(obj_player_sword_hitbox)
				{
					sprite_index = spr_crouch_sword2_hitbox_right
				}
			
				audio_stop_sound(snd_saber2)
			
				snd = audio_play_sound(snd_saber1,1000,false,global.sfx_volume)	
				audio_sound_gain(snd,0,800)
			}
			else if (global.facingDir < 0) && (round(image_index) == 7) && (sprite_index == spr_crouch_sword2_left)
			{
				instance_create_depth(id.x,id.y,id.depth,obj_player_sword_hitbox)
			
				with(obj_player_sword_hitbox)
				{
					sprite_index = spr_crouch_sword2_hitbox_left	
				}
			
				audio_stop_sound(snd_saber2)
			
				snd = audio_play_sound(snd_saber1,1000,false,global.sfx_volume)	
				audio_sound_gain(snd,0,800)
			}
			else if (round(image_index) != 7)
			{
				if (instance_exists(obj_player_sword_hitbox))
				{
					instance_destroy(obj_player_sword_hitbox)
				}
			}
			
			//sword 2 sfx
			if (global.facingDir > 0) && (sprite_index == spr_crouch_sword2_right)
			{
				if (round(image_index) == 1)
				{
					audio_stop_sound(snd_player_spinjump_shorter)
			
					snd = audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)	
					audio_sound_gain(snd,0,800)
				}
				else if (round(image_index) == 7)
				{
					audio_stop_sound(snd_player_spinjump_shorter)
					audio_stop_sound(snd_saber2)
			
					snd = audio_play_sound(snd_saber1,1000,false,global.sfx_volume)	
					audio_sound_gain(snd,0,800)
				}
			}
			else if (global.facingDir < 0) && (sprite_index == spr_crouch_sword2_left)
			{
				if (round(image_index) == 1)
				{
					audio_stop_sound(snd_player_spinjump_shorter)
			
					snd = audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)	
					audio_sound_gain(snd,0,800)
				}
				else if (round(image_index) == 7)
				{
					audio_stop_sound(snd_player_spinjump_shorter)
					audio_stop_sound(snd_saber2)
			
					snd = audio_play_sound(snd_saber1,1000,false,global.sfx_volume)	
					audio_sound_gain(snd,0,800)
				}
			}
			
			
		
			//init sword 2
			if (global.facingDir > 0) && (sprite_index != spr_crouch_sword2_right)
			{
				sprite_index = spr_crouch_sword2_right
				image_index = 0
			}
			else if (global.facingDir > 0) && (sprite_index = spr_crouch_sword2_right) && (image_index >= image_number-1)
			{
				with(obj_player)
				{
					State_machine_switch_state(Crouching)	
				}
			}
		
			//init sword2
			if (global.facingDir < 0) && (sprite_index != spr_crouch_sword2_left)
			{
				sprite_index = spr_crouch_sword2_left
				image_index = 0
			}
			else if (global.facingDir < 0) && (sprite_index = spr_crouch_sword2_left) && (image_index >= image_number-1)
			{
				with(obj_player)
				{
					State_machine_switch_state(Crouching)	
				}
			}
	}


}
