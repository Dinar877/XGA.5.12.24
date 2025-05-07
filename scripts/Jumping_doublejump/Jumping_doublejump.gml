function Jumping_doublejump() {
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
	

	with(object_player2_0_sprites)
	{
		if (global.turning = 0)
		{
			if (sprite_index = spr_original_spinjump_left)
			or (sprite_index = spr_jump_left) or (sprite_index = spr_jump_down_lefrt) or (sprite_index = spr_jump_truedown_left)
			 or (sprite_index = spr_jump_trueup_left) or (sprite_index = spr_jump_up_left)
			{
				sprite_index = spr_spacejump_left	
			}
			else if (sprite_index = spr_original_spinjump_right)
			or (sprite_index = spr_jump_right) or (sprite_index = spr_jump_down_right) or (sprite_index = spr_jump_truedown_right)
			 or (sprite_index = spr_jump_trueup_right) or (sprite_index = spr_jump_up_right)
			{
				sprite_index = spr_spacejump_right
			}
		}
		else if (global.turning = 1) //when frame perfect and double jump while turning in midair
		{
			if (global.facingDir == -1)
			{
				sprite_index = spr_spacejump_right;
				global.facingDir = 1;
			}
			else if (global.facingDir == 1)
			{
				sprite_index = spr_spacejump_left;
				global.facingDir = -1;
			}
			global.turning = 0;
		}
	}


	if (vspd < 0)// && (jump_held = 0)
	{
	    with(object_player2_0_sprites)
		{
			image_index = 0	
		}
	
		State_machine_switch_state(Falling_doublejump);
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
