function turtle_jumping_backoffright() {
	with(obj_boss_turtle_sprites)
	{
		if (facing = -1)
		{
		sprite_index = spr_boss_turtle_left_jump;	
		}
		else if (facing = 1)
		{
		sprite_index = spr_boss_turtle_right_jump;	
		}
	
		//sound
		if (floor(image_index) == 15) && (!audio_is_playing(snd_swordswoosh))
		{
			snd1 = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
			audio_sound_set_track_position(snd1,0.6)	
			audio_sound_gain(snd1,0,500)
		}
		else if (audio_is_playing(snd_swordswoosh)) && (audio_sound_get_gain(snd1) <= 0)
		{
			audio_stop_sound(snd_swordswoosh)
		}
	
		if (floor(image_index) == 26) && (!audio_is_playing(snd_metalcrash))
		{
			snd = audio_play_sound(snd_metalcrash,1000,false,global.sfx_volume)	
			audio_sound_gain(snd,1,0)
		}
		else if (floor(image_index) == 26) && (audio_is_playing(snd_metalcrash))
		{
			audio_stop_sound(snd_metalcrash)
			snd = audio_play_sound(snd_metalcrash,1000,false,global.sfx_volume)	
			audio_sound_gain(snd,1,0)
		}
	
		if (image_index >= 15)
		{
			with(obj_boss_turtle_hitbox)
			{
				hspd = 4
				vspdKiller += 0.1;
			
				if (!place_meeting(x+hspd,y,obj_block)) && (!place_meeting(x+hspd,y,obj_block2_invisible_bossdoor))
				{
					x += hspd;
				}
			
				if (!place_meeting(x,y+vspd,obj_block)) && (!place_meeting(x,y+vspd,obj_block2_invisible_bossdoor))
				{
					vspd = -4 + floor(vspdKiller);
					vspdKiller += 0.15;
					y += vspd;
				}
			
				if (obj_boss_turtle_sprites.image_index >= 27) && (vspdKiller < 1) && (!place_meeting(x,y+vspd,obj_block))
				{
					obj_boss_turtle_sprites.image_speed = 0;
					
					audio_stop_sound(snd_metalcrash)
				}
			
			
			}
		}
	
		if (image_index >= 26)
		{
			with(obj_boss_turtle_hitbox)
			{
				if (hspd != 0)
				{
					instance_create_depth(bbox_left,bbox_bottom,id.depth-1,obj_explosion2);
					instance_create_depth(bbox_right,bbox_bottom,id.depth-1,obj_explosion2);	
				}
				hspd = 0;	
			}
		}
	
		with(obj_boss_turtle_hitbox)
		{
			if (place_meeting(x,y+vspd,obj_block)) && (vspdKiller >= 0) 
			{
				while (!position_meeting(x,bbox_bottom+1,obj_block))
				{
					y ++;	
				}
				with(obj_boss_turtle_sprites)
				{
					if (image_index >= 26)
					{
						if (facing = -1)
						{
							sprite_index = spr_boss_turtle_left;	
						}
						else if (facing = 1)
						{
							sprite_index = spr_boss_turtle_right;	
						}
						with(obj_boss_turtle_hitbox)
						{
							vspd = 0;
							hspd = 0;
							vspdKiller = 0;
						}
						audio_stop_sound(snd_swordswoosh)
						//audio_stop_sound(snd_metalcrash)
						State_machine_switch_state(turtle_idle)
					}
				}
			}
		}
	}


}
