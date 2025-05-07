function Ledge_jumpprep() {
	global.turningLedge = 0;
	ledge_ready = 0;

	//if no health, reset game
	if (global.health1 <= 0)
	{
	    State_machine_switch_state(Dead);
	}

	global.hang = 1;
	global.climbing = 0;
	global.running = 0;
	global.grounded = 0;
	global.jumping = 0;
	global.jumpingdm = 0;
	global.lockdown_facingDir = 1;
	var input =  ((right_key_pressed) or (keyboard_check_pressed(ord("A")))) - ((left_key_pressed) or (keyboard_check_pressed(ord("D"))))
	hspd = 0;
	vspd = 0;
	grav = 0;
	stop = 0;
	jumpoff = 1;

	with(object_player2_0_sprites)
		{
			if (image_index >= image_number-1)
				{
					image_speed = 0;	
				}
		}

	//pauses movement if JUST grabbed on!
	if (gamepad_is_connected(correct_slot)) && (gamepad4_wait < 1)
	{
	    gamepad4_wait += 0.07;
	    gamepad0_wait += 0.07;
	    input_horizontal = 0;
	}
	//game pad connected stuff
	if (gamepad_is_connected(correct_slot)) && (gamepad4_wait >= 1)
	{
	        //let go of ledge
	    if ((down_key) or keyboard_check(ord("S"))) && (global.climbing = 0) && (gamepad4_wait >= 1)
	    {
	        State_machine_switch_state(Falling);
	        global.jumpprep = 0;
	        global.hang = 0;
	        global.lockdown_facingDir = 0;
	        global.animation_start1 = 0;
	        stop1 = 0;
	        global.jumpprep = 0;
	        gamepad4_wait = 0;
	        gamepad0_wait = 0;
	        y += 3;
	        grav = 0.5;
	        global.lockdown_facingDir = 0;
	    }
    
	    if ((jump) or keyboard_check(ord("W"))) && (global.climbing = 0) && (stop = 0) && (gamepad4_wait >= 1)
	    {
	        State_machine_switch_state(Jump_after_wj);
	        global.jumpprep = 0;
	        gamepad4_wait = 0;
	        gamepad0_wait = 0;
	        sprite_index = spr_player_jump;
	        global.jumping = 1;
	        global.jumpingdm = 1;
	        global.hang = 0;
	        global.animation_start1 = 0;
	        stop1 = 0;
	        grav = 0;
	        global.lockdown_facingDir = 0;
	    }
    
	    //animation for going back to hanging
	    if (stop1 = 0) && (global.animation_start1 = 0) && (global.turning = 0)
	    {
	    if (place_meeting(x+1,y,obj_block)) && (input > 0)
	    {
	        global.lockdown_facingDir = 0;
	        global.animation_start1 = 1;
	        stop1 = 1;
	        global.jumpprep = 0;
	    }
	    else if (place_meeting(x-1,y,obj_block)) && (input < 0)
	    {
	        global.lockdown_facingDir = 0;
	        global.animation_start1 = 1;
	        stop1 = 1;
	        global.jumpprep = 0;
	    }
	    else if  (input == 0)
	    {
	        global.animation_start1 = 0;
	    }
	    }
    
		//sprites
		if (input > 0)
		{
			with(object_player2_0_sprites)
			{
				if (sprite_index == spr_cliff_jumpprep_right) && (image_index >= image_number-1)
				{
					sprite_index = spr_jumpprep_reverse_right;
					image_speed = 1;
					
					if (!audio_is_playing(snd_robot_move_1))
					{
						audio_play_sound(snd_robot_move_1,1000,false,global.sfx_volume)
					}
				}
			
				if (sprite_index = spr_jumpprep_reverse_right) && (image_index >= image_number-1)
				{
					audio_stop_sound(snd_robot_move_1)
					
					global.animation_start1 = 0;
	                stop1 = 0;
	                global.lockdown_facingDir = 0;
	                image_index = 0;
	                with(obj_player)
	                {
	                    global.hang = 1;
	                    global.jumpprep = 0;
	                    gamepad4_wait = 0;
	                    gamepad0_wait = 0;
	                    global.facingDir = 1;
	                    global.turning = 0;
	                    jumpoff = 0;
	                    State_machine_switch_state(Ledge_grab);
	                }
				}
			}
		}
		else if (input < 0)
			{
				with(object_player2_0_sprites)
				{
					if (sprite_index == spr_cliff_jumpprep_left) && (image_index >= image_number-1)
					{
						sprite_index = spr_jumpprep_reverse_left;
						image_speed = 1;
						
						if (!audio_is_playing(snd_robot_move_1))
						{
							audio_play_sound(snd_robot_move_1,1000,false,global.sfx_volume)
						}
					}
			
					if (sprite_index == spr_jumpprep_reverse_left) && (image_index >= image_number-1)
					{
						audio_stop_sound(snd_robot_move_1)
						
						global.animation_start1 = 0;
		                stop1 = 0;
		                global.lockdown_facingDir = 0;
		                image_index = 0;
		                with(obj_player)
		                {
		                    global.hang = 1;
		                    global.jumpprep = 0;
		                    gamepad4_wait = 0;
		                    gamepad0_wait = 0;
		                    global.facingDir = -1;
		                    global.turning = 0;
		                    jumpoff = 0;
		                    State_machine_switch_state(Ledge_grab);
		                }
					}
				}
		}

	}





	if !(gamepad_is_connected(correct_slot))
	{
	        //let go of ledge
	    if ((down_key) or keyboard_check(ord("S"))) && (global.climbing = 0)
	    {
	        State_machine_switch_state(Falling);
	        global.jumpprep = 0;
	        gamepad4_wait = 0;
	        gamepad0_wait = 0;
	        y += 3;
	        grav = 0.5;
	        global.lockdown_facingDir = 0;
	    }
    
	    if ((jump) or keyboard_check(ord("W"))) && (global.climbing = 0) && (stop = 0)
	    {
	        State_machine_switch_state(Jump_after_wj);
	        global.jumpprep = 0;
	        gamepad4_wait = 0;
	        gamepad0_wait = 0;
	        sprite_index = spr_player_jump;
	        global.jumping = 1;
	        global.jumpingdm = 1;
	        global.hang = 0;
	        grav = 0;
	        global.lockdown_facingDir = 0;
	    }
    
	    //animation for going back to hanging
	    if (stop1 = 0) && (global.animation_start1 = 0) && (global.turning = 0)
	    {
	    if (place_meeting(x+1,y,obj_block)) && (input > 0)
	    {
	        global.lockdown_facingDir = 0;
	        global.animation_start1 = 1;
	        stop1 = 1;
	        global.jumpprep = 0;
	    }
	    else if (place_meeting(x-1,y,obj_block)) && (input < 0)
	    {
	        global.lockdown_facingDir = 0;
	        global.animation_start1 = 1;
	        stop1 = 1;
	        global.jumpprep = 0;
	    }
	    else if  (input == 0)
	    {
	        global.animation_start1 = 0;
	    }
	    }
	
		//sprites
		if (input > 0)
		{
			with(object_player2_0_sprites)
			{
				if (sprite_index == spr_cliff_jumpprep_right) && (image_index >= image_number-1)
				{
					sprite_index = spr_jumpprep_reverse_right;
					image_speed = 1;
					
					if (!audio_is_playing(snd_robot_move_1))
						{
							audio_play_sound(snd_robot_move_1,1000,false,global.sfx_volume)
						}
				}
			
				if (sprite_index = spr_jumpprep_reverse_right) && (image_index >= image_number-1)
				{
					audio_stop_sound(snd_robot_move_1)
					
					global.animation_start1 = 0;
	                stop1 = 0;
	                global.lockdown_facingDir = 0;
	                image_index = 0;
	                with(obj_player)
	                {
	                    global.hang = 1;
	                    global.jumpprep = 0;
	                    gamepad4_wait = 0;
	                    gamepad0_wait = 0;
	                    global.facingDir = 1;
	                    global.turning = 0;
	                    jumpoff = 0;
	                    State_machine_switch_state(Ledge_grab);
	                }
				}
			}
		}
		else if (input < 0)
			{
				with(object_player2_0_sprites)
				{
					if (sprite_index == spr_cliff_jumpprep_left) && (image_index >= image_number-1)
					{
						sprite_index = spr_jumpprep_reverse_left;
						image_speed = 1;
						
						if (!audio_is_playing(snd_robot_move_1))
						{
							audio_play_sound(snd_robot_move_1,1000,false,global.sfx_volume)
						}
					}
			
					if (sprite_index == spr_jumpprep_reverse_left) && (image_index >= image_number-1)
					{
						audio_stop_sound(snd_robot_move_1)
						
						global.animation_start1 = 0;
		                stop1 = 0;
		                global.lockdown_facingDir = 0;
		                image_index = 0;
		                with(obj_player)
		                {
		                    global.hang = 1;
		                    global.jumpprep = 0;
		                    gamepad4_wait = 0;
		                    gamepad0_wait = 0;
		                    global.facingDir = -1;
		                    global.turning = 0;
		                    jumpoff = 0;
		                    State_machine_switch_state(Ledge_grab);
		                }
					}
				}
		}
	
	
	}


}
