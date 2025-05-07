function legs_walking() {
	if (place_meeting(x+sprite_width,y,obj_block))
	{
		State_machine_switch_state(legs_jumping_backingaway_left)	
		exit
	}
	else if (place_meeting(x-sprite_width,y,obj_block))
	{
		State_machine_switch_state(legs_jumping_backingaway_right)	
		exit
	}

	if (obj_player.x > self.x) && (!place_meeting(x+1,y,obj_block)) && (!place_meeting(x+sprite_width,y,obj_block2_invisible_bossdoor))
	 && (obj_boss_spider_eye.state != spider_shooting) && (obj_boss_spider_eye.state != spider_charging)
	{
		hspd = 1;
		script_execute(Moving_slow_right)
		with(obj_boss_spider_legs)
		{
		sprite_index = spr_boss_spider_walkright;
		}
	}
	else if (obj_player.x < self.x) && (!place_meeting(x-1,y,obj_block)) && (!place_meeting(x-sprite_width,y,obj_block2_invisible_bossdoor))
	 && (obj_boss_spider_eye.state != spider_shooting) && (obj_boss_spider_eye.state != spider_charging)
	{
		hspd = -1;
		with(obj_boss_spider_legs)
		{
		sprite_index = spr_boss_spider_walkleft;
		}
		script_execute(Moving_slow_left)
	}
	else if (obj_boss_spider_eye.state == spider_turning) && (obj_boss_spider_eye.state != spider_shooting) && (obj_boss_spider_eye.state != spider_charging)
	{
		State_machine_switch_state(legs_idle)
		with(obj_boss_spider_legs)
		{
		sprite_index = spr_boss_spider_idle;
		}
		hspd = 0
	}



	if (statetimer2stamp >= 1) && (obj_boss_spider_eye.state != spider_shooting) && (obj_boss_spider_eye.state != spider_charging)
	{
		hspd = 0;
		State_machine_switch_state(legs_stamping)
		with(obj_boss_spider_legs)
		{
		image_index = 0;
		statetimer2stamp = 1;
		}
	}
	if (statetimer2jump >= 1) && (obj_boss_spider_eye.state != spider_shooting) && (obj_boss_spider_eye.state != spider_charging)
	{
		hspd = 0;
		State_machine_switch_state(legs_jumping)	
	}

	with(obj_boss_spider_legs)
	{
		if (floor(image_index) == 5) or (floor(image_index) == 6) or (floor(image_index) == 8) or (floor(image_index) == 11) or (floor(image_index) == 12)
		{
			with(obj_camera)
			{
				if (yshake <= 0)
				{
					yshake = 2;
					yshakeno = 3;
					audio_stop_sound(snd_metalbang)
					var snd = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
					snd = audio_sound_gain(snd,global.sfx_volume,0)
				}
			}
		}
	}

	statetimer2stamp += random_range(0,0.03);
	statetimer2jump += random_range(0,0.03);


}
