function legs_idle() {
	if (place_meeting(x+sprite_width,y,obj_block2_invisible_bossdoor))
	{
		State_machine_switch_state(legs_jumping_backingaway_left)	
	}
	else if (place_meeting(x-sprite_width,y,obj_block2_invisible_bossdoor))
	{
		State_machine_switch_state(legs_jumping_backingaway_right)	
	}

	if (obj_player.x > self.x) && (statetimer2stamp < 1) && (!place_meeting(x+sprite_width,y,obj_block2_invisible_bossdoor))
	&& (obj_boss_spider_eye.state != spider_shooting) && (obj_boss_spider_eye.state != spider_charging)
	{
		with(obj_boss_spider_legs)
		{
			sprite_index = spr_boss_spider_idle;	
		}
		State_machine_switch_state(legs_walking);
	}
	else if (obj_player.x < self.x) && (statetimer2stamp < 1) && (!place_meeting(x-sprite_width,y,obj_block2_invisible_bossdoor))
	&& (obj_boss_spider_eye.state != spider_shooting) && (obj_boss_spider_eye.state != spider_charging)
	{
		with(obj_boss_spider_legs)
		{
			sprite_index = spr_boss_spider_idle;	
		}
		State_machine_switch_state(legs_walking);
	}


	if (statetimer2stamp >= 1)
	&& (obj_boss_spider_eye.state != spider_shooting) && (obj_boss_spider_eye.state != spider_charging)
	{
		with(obj_boss_spider_legs)
		{
			image_index = 0;
			statetimer2stamp = 1;
		}
		State_machine_switch_state(legs_stamping)	
	}
	if (statetimer2jump >= 1)
	&& (obj_boss_spider_eye.state != spider_shooting) && (obj_boss_spider_eye.state != spider_charging)
	{
		with(obj_boss_spider_legs)
		{
			image_index = 0;	
		}
		State_machine_switch_state(legs_superjump_prep)	
	}


}
