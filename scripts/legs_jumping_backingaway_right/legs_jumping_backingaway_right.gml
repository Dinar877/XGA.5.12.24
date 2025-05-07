function legs_jumping_backingaway_right() {
	with(obj_boss_spider_legs)
	{
		sprite_index = spr_boss_spider_jump;	
	
		if (image_index > 21)
		{
			vspd = 1;
			with(obj_boss_spider_hitbox)
			{
				hspd = 4
				
				if (!place_meeting(x+hspd,y-5,obj_block)) && (vspd = 0)
				{
					vspd = -5+vspdKiller;
					vspdKiller += 0.2;
					x += hspd;
					y += vspd;
				}
				if (!place_meeting(x+hspd,y+vspd,obj_block)) && (vspdKiller > 0)
				{
					vspd = -5+vspdKiller;
					vspdKiller += 0.2;
					x += hspd;
					y += vspd;
				}
			
			
			}
		}
	
		if (floor(image_index) == 20) && (!audio_is_playing(snd_swordswoosh))
		{
			var snd1 = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
			audio_sound_set_track_position(snd1,0.6)	
			audio_sound_gain(snd1,0,500)
		}
	
		if (floor(image_index) == 36) && (!audio_is_playing(snd_metalcrash))
		{
			audio_play_sound(snd_metalcrash,1000,false,global.sfx_volume)	
			
			//screen shake
			with(obj_camera)
			{
				if (yshake <= 0)
				{
					yshake = 2;
					yshakeno = 3;
				}
			}
		}
	
		if (image_index >= image_number - 1)
		{
			sprite_index = spr_boss_spider_idle;
			audio_stop_sound(snd_swordswoosh)
			
			vspd = 0;
			with(obj_boss_spider_hitbox)
			{
				vspd = 0;
				hspd = 0;
				vspdKiller = 0;
				State_machine_switch_state(legs_idle);
			}
		}
	}


}
