function turtle_shooting_punching() {
	//LEFT
	if (sprite_index = spr_boss_turtle_left)
	{
		sprite_index = spr_boss_turtle_left_punching_begin;	
	}
	else if (sprite_index = spr_boss_turtle_left_punching_begin) && (image_index >= image_number-1)
	{
		sprite_index = spr_boss_turtle_left_punching_active;	
	}


	//foot stamp SFX
	if ((sprite_index = spr_boss_turtle_left_punching_begin) or (sprite_index = spr_boss_turtle_right_punching_begin))
	&& (round(image_index) == 4)
	{
		//sfx effect
		audio_stop_sound(snd_grass_landing)
		snd = audio_play_sound(snd_grass_landing,1000,false,global.sfx_volume*2)
		audio_sound_pitch(snd, 1 + round(random_range(-0.05,0.05)))	
	}
	

	if (sprite_index = spr_boss_turtle_left_punching_active) && (image_index < 1) && (shootbullet1 <= 0) && (punchtimer < 1)
	{
		var inst = instance_create(x-39,y-8,obj_boss_turtle_bullet_left)
		with(inst)
		{
			hspd = -8;
			vspd = 2;
		}
		shootbullet1 = 1;
		shootbullet2 = 0;	
		punchtimer += 0.08;
		
		//sfx effect
		audio_stop_sound(snd_wind_sfx)
		snd = audio_play_sound(snd_wind_sfx,1000,false,global.sfx_volume)
		audio_sound_pitch(snd, 1 + round(random_range(-0.05,0.05)))
	}
	else if (sprite_index = spr_boss_turtle_left_punching_active) && (image_index >= image_number-2) && (shootbullet2 <= 0) && (punchtimer < 1)
	{
		var inst = instance_create(x-38,y-19,obj_boss_turtle_bullet_left)
		with(inst)
		{
			hspd = -8;
			vspd = -2;
		}
		shootbullet1 = 0;
		shootbullet2 = 1;	
		punchtimer += 0.08;
		
		//sfx effect
		audio_stop_sound(snd_wind_sfx)
		snd = audio_play_sound(snd_wind_sfx,1000,false,global.sfx_volume)
		audio_sound_pitch(snd, 1 + round(random_range(-0.05,0.05)))
	}

	if (sprite_index = spr_boss_turtle_left_punching_active) && (image_index >= image_number-1) && (punchtimer >= 1)
	{
		shootbullet1 = 0;
		shootbullet2 = 0;	
		punchtimer = 0;
		sprite_index = spr_boss_turtle_left_punching_end;
	}

	if (sprite_index = spr_boss_turtle_left_punching_end) && (image_index >= image_number-1)
	{
		shootbullet1 = 0;
		shootbullet2 = 0;	
		punchtimer = 0;
		sprite_index = spr_boss_turtle_left;
		audio_stop_sound(snd_wind_sfx)
		State_machine_switch_state(turtle_idle)
	}



	//RIGHT
	if (sprite_index = spr_boss_turtle_right)
	{
		sprite_index = spr_boss_turtle_right_punching_begin;	
	}
	else if (sprite_index = spr_boss_turtle_right_punching_begin) && (image_index >= image_number-1)
	{
		sprite_index = spr_boss_turtle_right_punching_active;	
	}



	if (sprite_index = spr_boss_turtle_right_punching_active) && (image_index < 1) && (shootbullet1 <= 0) && (punchtimer < 1)
	{
		var inst = instance_create(x+39,y-8,obj_boss_turtle_bullet_right)
		with(inst)
		{
			hspd = 8;
			vspd = 2;
		}
		shootbullet1 = 1;
		shootbullet2 = 0;	
		punchtimer += 0.08;
		
		//sfx effect
		audio_stop_sound(snd_wind_sfx)
		snd = audio_play_sound(snd_wind_sfx,1000,false,global.sfx_volume)
		audio_sound_pitch(snd, 1 + round(random_range(-0.05,0.05)))
	}
	else if (sprite_index = spr_boss_turtle_right_punching_active) && (image_index >= image_number-2) && (shootbullet2 <= 0) && (punchtimer < 1)
	{
		var inst = instance_create(x+38,y-19,obj_boss_turtle_bullet_right)
		with(inst)
		{
			hspd = 8;
			vspd = -2;
		}
		shootbullet1 = 0;
		shootbullet2 = 1;	
		punchtimer += 0.08;
		
		//sfx effect
		audio_stop_sound(snd_wind_sfx)
		snd = audio_play_sound(snd_wind_sfx,1000,false,global.sfx_volume)
		audio_sound_pitch(snd, 1 + round(random_range(-0.05,0.05)))
	}


	if (sprite_index = spr_boss_turtle_right_punching_active) && (image_index >= image_number-1) && (punchtimer >= 1)
	{
		shootbullet1 = 0;
		shootbullet2 = 0;	
		punchtimer = 0;
		sprite_index = spr_boss_turtle_right_punching_end;
	}

	if (sprite_index = spr_boss_turtle_right_punching_end) && (image_index >= image_number-1)
	{
		shootbullet1 = 0;
		shootbullet2 = 0;	
		punchtimer = 0;
		sprite_index = spr_boss_turtle_right;
		audio_stop_sound(snd_wind_sfx)
		State_machine_switch_state(turtle_idle)
	}


}
