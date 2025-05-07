function turtle_idle() {
	
	//turning
	if (obj_player.x > self.x) && (sprite_index = spr_boss_turtle_left)
	{
		State_machine_switch_state(turtle_turning);
	}
	else if (obj_player.x < self.x) && (sprite_index = spr_boss_turtle_right)
	{
		State_machine_switch_state(turtle_turning);
	}

	//backoff jumps
	if (place_meeting(x+16,y,obj_block2_invisible_bossdoor))
	{
		State_machine_switch_state(turtle_jumping_backoffleft)	
		exit
	}
	else if (place_meeting(x-16,y,obj_block2_invisible_bossdoor))
	{
		State_machine_switch_state(turtle_jumping_backoffright)		
		exit
	}

	jumptimer += random_range((1/room_speed),(2.5/room_speed));
	shoottimer += random_range((1/room_speed),(2.5/room_speed));
	spintimer += random_range((1/room_speed),(2.5/room_speed));
	punchtimer += random_range((1/room_speed),(2.5/room_speed));

	if (jumptimer >= 1) && (global.boss_warning == 0)
	{
		image_index = 0;
		jumptimer = 0;
		with(obj_boss_turtle_hitbox)
		{
			if (obj_player.x > self.x)
						{
							hspd = 3;
						}
			else if (obj_player.x < self.x)
						{
							hspd = -3;
						}
		}
		State_machine_switch_state(turtle_jumping);
	}

	if (spintimer >= 1) && (global.boss_warning == 0)
	{
		image_index = 0;
		spintimer = 0;
		State_machine_switch_state(turtle_spin);
	}
	
	if (shoottimer >= 1) && (global.boss_warning == 0)
	{
		image_index = 0;
		shoottimer = 0;
		State_machine_switch_state(turtle_shoot);
	}

	if (punchtimer >= 1) && (global.boss_warning == 0) && (warning = 1)
	{
		image_index = 0;
		punchtimer = 0;
		State_machine_switch_state(turtle_shooting_punching);
	}


}
