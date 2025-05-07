function Jumping() {
	global.grounded = 0;

	//if no health, reset game
	if (global.health1 <= 0)
	{
	    State_machine_switch_state(Dead);
	}

	//jump height
	if (enemy_slowdownswitch = 0)
	{
		vspd = jump_speed;
	}
	else if (enemy_slowdownswitch = 1)
	{
		vspd = jump_speed_reduced;
	}


	if (vspd < 0)// && (jump_held = 0)
	{
	    with(object_player2_0_sprites)
		{
			image_index = 0	
		}
	
		State_machine_switch_state(Falling);
	}

	if (global.turning = 0) && (global.dashbegin = 0) && (global.constantspd <= 0)
	{
	    if (enemy_slowdownswitch <= 0) && (input_horizontal != 0)
		{
			speed_x = 1
		}
		else if (enemy_slowdownswitch > 0) or (input_horizontal = 0)
		{
			speed_x = 0
		}
	    hspd = floor(input_horizontal * speed_x);
	}



}
