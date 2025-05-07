function turtle_spin() {
	
	//LEFT
	//START SPIN
	if (sprite_index = spr_boss_turtle_left) && (state = turtle_spin)
	{
		sprite_index = spr_boss_turtle_left_spinning_begin;	
	}
	else if (sprite_index = spr_boss_turtle_left_spinning_begin) && (image_index >= image_number-1)
	{
		sprite_index = spr_boss_turtle_left_spinning_active;
		stopper1 = 0;
		instance_create_layer(x,y,layer_get_id("Inst_doors"),obj_boss_turtle_wind)
		with(obj_player)
		{
			if (global.boss_warning == 0)
			{
				if (x > obj_boss_turtle_hitbox.x)
				{
					hspd_enemy = -4;
				
					with(object_player2_0_sprites)
					{
						y = obj_player.y+1;
				        x = obj_player.x;	
					}
				}
				else if (x < obj_boss_turtle_hitbox.x)
				{
					hspd_enemy = 4;
				
					with(object_player2_0_sprites)
					{
						y = obj_player.y+1;
				        x = obj_player.x;	
					}
				}
			}
		}
	}
	else if (sprite_index = spr_boss_turtle_left_spinning_active) && (stopper1 < 1) //LEFT SPINNING
	{
		stopper1 += (1/room_speed)/6;
	
		if (!audio_is_playing(snd_wind))
		{
			snd = audio_play_sound(snd_wind,1000,false,global.sfx_volume)	
			//audio_sound_gain(snd,0.5,0)
		}
	
		with(obj_player)
		{
			if (global.boss_warning == 0)
			{
				if (x > obj_boss_turtle_hitbox.x)
				{
					hspd_enemy = -4;
				
					with(object_player2_0_sprites)
					{
						y = obj_player.y+1;
				        x = obj_player.x;	
					}
				}
				else if (x < obj_boss_turtle_hitbox.x)
				{
					hspd_enemy = 4;
				
					with(object_player2_0_sprites)
					{
						y = obj_player.y+1;
				        x = obj_player.x;	
					}
				}
			}
		}
	}
	else if (sprite_index = spr_boss_turtle_left_spinning_active) && (stopper1 >= 1) && (image_index >= image_number-1)
	{
		with(obj_boss_turtle_wind)
		{
			instance_destroy()	
		}
		with(obj_player)
		{
				hspd_enemy = 0;
		}
		sprite_index = spr_boss_turtle_left_spinning_end;
	}
	else if (sprite_index = spr_boss_turtle_left_spinning_end) && (image_index >= image_number-1)
	{
		sprite_index = spr_boss_turtle_left;
		audio_stop_sound(snd_wind)
		State_machine_switch_state(turtle_idle)
	}





	if (sprite_index = spr_boss_turtle_right) && (state = turtle_spin)
	{
		sprite_index = spr_boss_turtle_right_spinning_begin;	
	}
	else if (sprite_index = spr_boss_turtle_right_spinning_begin) && (image_index >= image_number-1)
	{
		sprite_index = spr_boss_turtle_right_spinning_active;
		stopper1 = 0;
		instance_create_layer(x,y,layer_get_id("Inst_doors"),obj_boss_turtle_wind)
		with(obj_player)
		{
			if (global.boss_warning == 0)
			{
				if (x > obj_boss_turtle_hitbox.x)
				{
					hspd_enemy = -4;
				
					with(object_player2_0_sprites)
					{
						y = obj_player.y+1;
				        x = obj_player.x;	
					}
				}
				else if (x < obj_boss_turtle_hitbox.x)
				{
					hspd_enemy = 4;
				
					with(object_player2_0_sprites)
					{
						y = obj_player.y+1;
				        x = obj_player.x;	
					}
				}
			}
		}
	}
	else if (sprite_index = spr_boss_turtle_right_spinning_active) && (stopper1 < 1)
	{
		stopper1 += (1/room_speed)/6;
	
		if (!audio_is_playing(snd_wind))
		{
			snd = audio_play_sound(snd_wind,1000,false,global.sfx_volume)	
			//audio_sound_gain(snd,0.5,0)
		}
	
		with(obj_player)
		{
			if (global.boss_warning == 0)
			{
				if (x > obj_boss_turtle_hitbox.x)
				{
					hspd_enemy = -4;
				
					with(object_player2_0_sprites)
					{
						y = obj_player.y+1;
				        x = obj_player.x;	
					}
				}
				else if (x < obj_boss_turtle_hitbox.x)
				{
					hspd_enemy = 4;
				
					with(object_player2_0_sprites)
					{
						y = obj_player.y+1;
				        x = obj_player.x;	
					}
				}
			}
		}
	}
	else if (sprite_index = spr_boss_turtle_right_spinning_active) && (stopper1 >= 1) && (image_index >= image_number-1)
	{
		with(obj_boss_turtle_wind)
		{
			instance_destroy()	
		}
		with(obj_player)
		{
				hspd_enemy = 0;
		}
		sprite_index = spr_boss_turtle_right_spinning_end;
	}
	else if (sprite_index = spr_boss_turtle_right_spinning_end) && (image_index >= image_number-1)
	{
		sprite_index = spr_boss_turtle_right;
		audio_stop_sound(snd_wind)
		State_machine_switch_state(turtle_idle)
	}


}
