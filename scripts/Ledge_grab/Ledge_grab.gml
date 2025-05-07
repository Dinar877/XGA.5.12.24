function Ledge_grab() {
	
	
	double_jump = 0

	//MAKE PLAYER RIGHT HEIGHT
	#region
	
	if (hang_switch = 0)
	{
		if (global.jumpingdm > 0) or (sprite_index = spr_player_jump)
		{
			sprite_index = spr_player
			y += 7	
			with(obj_camera)
			{
				yspin = 7	
			}
			hang_switch = 1
			global.jumpingdm = 0
		}
		else
		{
			sprite_index = spr_player
			hang_switch = 1
		}

		//place player hanging at right height
		var inst1 = (instance_position(x+6,y-(sprite_height/2),obj_block))
		{
			if (inst1) && (global.jumpingdm = 0)
			{
			    y = inst1.bbox_top - ((bbox_top-bbox_bottom)/2);
			    global.hang = 1;
				hang_switch = 1
			}
		}
		var inst2 = (instance_position(x-6,y-(sprite_height/2),obj_block))
		{
			if (inst2) && (global.jumpingdm = 0)
			{
			    y = inst2.bbox_top - ((bbox_top-bbox_bottom)/2);
			    global.hang = 1;
				hang_switch = 1
			}
		}

		//place player hanging at right height
		var inst1 = (instance_position(x+6,y-(sprite_height/2),obj_block))
		{
			if (inst1) && (global.jumpingdm = 1)
			{
			    with(obj_player)
			    {
			    y = inst1.bbox_top - ((bbox_top-bbox_bottom)/2);
			    global.jumpingdm = 0;
			    global.hang = 1;
				hang_switch = 1
			    }
			}
		}
		var inst2 = (instance_position(x-6,y-(sprite_height/2),obj_block))
		{
			if (inst2) && (global.jumpingdm = 1)
			{
			    with(obj_player)
			    {
			    y = inst2.bbox_top - ((bbox_top-bbox_bottom)/2);
			    global.jumpingdm = 0;
			    global.hang = 1;
				hang_switch = 1
			    }
			}
		}
	}
	
	#endregion

	global.hang = 1;
	global.climbing = 0;
	global.running = 0;
	global.grounded = 0;
	global.animation_start1 = 0;
	global.jumpprep = 0;
	hspd = 0;
	vspd = 0;
	grav = 0;
	stop = 0;
	jumpoff = 0;

	ledge_ready = 0;

	//if no health, reset game
	if (global.health1 <= 0)
	{
	    State_machine_switch_state(Dead);
	}

	//pauses movement if JUST grabbed on!
	if (gamepad_is_connected(correct_slot)) && (gamepad4_wait < 1) && (global.jumpprep = 0)
	{
	    ledgeready = 0;
	    gamepad4_wait += 0.2;
	    gamepad0_wait += 0.2;
	    input_horizontal = 0;
	}
	else if (gamepad_is_connected(correct_slot)) && (gamepad4_wait >= 1) && (hang_switch = 1)
	{
		//if press down then let go ofledge
		if ((down_key-up_key) > 0) && (global.turningLedge = 0) && (global.image_speed_lockdown = 0) && (gamepad4_wait >= 1) && (input_horizontal == 0)
		{
			global.image_speed_lockdown = 0;
			global.turningLedge = 0;
			global.hang = 0;
			global.hangAiming = 0;
			hangtimer = 1;
			hang_switch = 0;
			State_machine_switch_state(Falling);
			y += 2;
		}
	
		//go to climbing state(climb up ledge)
		if (place_meeting(x+1,y,obj_block)) && (!place_meeting(x+1,y-1,obj_block2_noclimb))
		&& (global.image_speed_lockdown == 0) && (global.turningLedge == 0) && (gamepad4_wait >= 1) && (input_horizontal > 0) && !(left_key_pressed) && !(left_key) && (jump_pressed)
		{
		    State_machine_switch_state(Climb_up_ledge);
			hang_switch = 0;
			var snd_climb = audio_play_sound(snd_robot_move_2,1,false,global.sfx_volume);
			audio_sound_pitch(snd_climb,1+random_range(-0.05,0.05));
			
			global.hangAiming = 0;
		}
		else if (place_meeting(x-1,y,obj_block)) && (!place_meeting(x-1,y-1,obj_block2_noclimb))
		&& (global.image_speed_lockdown == 0) && (global.turningLedge == 0) && (gamepad4_wait >= 1) && (input_horizontal < 0) && !(right_key_pressed) && !(right_key) && (jump_pressed)
		{
		    State_machine_switch_state(Climb_up_ledge);
			hang_switch = 0;
			var snd_climb = audio_play_sound(snd_robot_move_2,1,false,global.sfx_volume);
			audio_sound_pitch(snd_climb,1+random_range(-0.05,0.05));
			
			global.hangAiming = 0;
		}
	
		//walljump off
		if (place_meeting(x+1,y,obj_block)) && (jump_pressed) && (gamepad4_wait >= 1) && (input_horizontal < 0)
	    {
	        global.image_speed_lockdown = 0;
			global.turningLedge = 0;
			hang_switch = 0;
			with(object_player2_0_sprites)
			{
				sprite_index = spr_cliff_jump_left;
				x = obj_player.x-1;
				y = obj_player.y;
				global.facingDir = 1;
			}
			State_machine_switch_state(Wall_jump);
			global.hang = 0;
			global.hangAiming = 0;
	    }
	    else if (place_meeting(x-1,y,obj_block)) && (jump_pressed) && (gamepad4_wait >= 1) && (input_horizontal > 0)
	    {
	        global.image_speed_lockdown = 0;
			global.turningLedge = 0;
			hang_switch = 0;
			with(object_player2_0_sprites)
			{
				sprite_index = spr_cliff_jump_right;
				x = obj_player.x-1;
				y = obj_player.y;
				global.facingDir = -1;
			}
			State_machine_switch_state(Wall_jump);
			global.hang = 0;
			global.hangAiming = 0;
	    }

		//start going to jump-off-ledge state from normal hang state
	    if (place_meeting(x+1,y,obj_block)) && (right_key_pressed-left_key_pressed < 0) && (!right_key) //turn to face away from block ledge to our right
		&& (object_player2_0_sprites.sprite_index = spr_hang_right)
	    {
	        global.turningLedge = 1;
	    }
	    else if (place_meeting(x-1,y,obj_block)) && (right_key_pressed-left_key_pressed > 0) && (!left_key) //turn to face away from block ledge to our left
		&& (object_player2_0_sprites.sprite_index = spr_hang_left)
	    {
	        global.turningLedge = 1;
	    }
		
		
		//start going from jump-off-ledge state to normal hang state
	    if (place_meeting(x+1,y,obj_block)) && (right_key_pressed-left_key_pressed > 0) && (!left_key) //turn to face away from block ledge to our right
		&& (global.image_speed_lockdown = 1) && (global.hangAiming = 1)
	    {
	        global.turningLedge = 1;
	    }
	    else if (place_meeting(x-1,y,obj_block)) && (right_key_pressed-left_key_pressed < 0) && (!right_key) //turn to face away from block ledge to our left
		&& (global.image_speed_lockdown = 1) && (global.hangAiming = 1)
	    {
	        global.turningLedge = 1;
	    }
	}
	else if !(gamepad_is_connected(correct_slot)) && (hang_switch = 1)
	{   
	    //if press down then let go ofledge
		if ((down_key-up_key) > 0) && (global.turningLedge = 0) && (global.image_speed_lockdown = 0) && (input_horizontal == 0)
		{
			global.image_speed_lockdown = 0;
			global.turningLedge = 0;
			global.hang = 0;
			global.hangAiming = 0;
			hangtimer = 1;
			hang_switch = 0;
			State_machine_switch_state(Falling);
			y += 2;
		}
	
		//go to climbing state(climb up ledge)
	    if (place_meeting(x+1,y,obj_block)) && (!place_meeting(x+1,y-1,obj_block2_noclimb))
		&& (global.image_speed_lockdown == 0) && (input_horizontal > 0) && (!left_key_pressed) && (!left_key) && (jump_pressed) && (global.turningLedge == 0)
	    {
	        State_machine_switch_state(Climb_up_ledge);
			hang_switch = 0
			var snd_climb = audio_play_sound(snd_robot_move_2,1,false,global.sfx_volume)
			audio_sound_pitch(snd_climb,1+random_range(-0.05,0.05))
			
			global.hangAiming = 0;
	    }
	    else if (place_meeting(x-1,y,obj_block)) && (!place_meeting(x-1,y-1,obj_block2_noclimb))
		&& (global.image_speed_lockdown == 0) && (input_horizontal < 0) && (!right_key_pressed) && (!right_key) && (jump_pressed) && (global.turningLedge == 0)
	    {
	        State_machine_switch_state(Climb_up_ledge);
			hang_switch = 0
			var snd_climb = audio_play_sound(snd_robot_move_2,1,false,global.sfx_volume)
			audio_sound_pitch(snd_climb,1+random_range(-0.05,0.05))
			
			global.hangAiming = 0;
	    }
	
		//walljump off
		if (place_meeting(x+1,y,obj_block)) && (jump_pressed) && (input_horizontal < 0)
	    {
	        global.image_speed_lockdown = 0
			global.turningLedge = 0
			hang_switch = 0
			with(object_player2_0_sprites)
			{
				sprite_index = spr_cliff_jump_right
				global.facingDir = 1
			}
			State_machine_switch_state(Wall_jump);
			global.hang = 0;
			global.hangAiming = 0;
	    }
	    else if (place_meeting(x-1,y,obj_block)) && (jump_pressed) && (input_horizontal > 0)
	    {
	        global.image_speed_lockdown = 0
			global.turningLedge = 0
			hang_switch = 0
			with(object_player2_0_sprites)
			{
				sprite_index = spr_cliff_jump_left
				global.facingDir = -1
			}
			State_machine_switch_state(Wall_jump);
			global.hang = 0;
			global.hangAiming = 0;
	    }
    
	    //start going to jump-off-ledge state from normal hang state
	    if (place_meeting(x+1,y,obj_block)) && (right_key_pressed-left_key_pressed < 0) && (!right_key) //turn to face away from block ledge to our right
		&& (object_player2_0_sprites.sprite_index = spr_hang_right)
	    {
	        global.turningLedge = 1;
	    }
	    else if (place_meeting(x-1,y,obj_block)) && (right_key_pressed-left_key_pressed > 0) && (!left_key) //turn to face away from block ledge to our left
		&& (object_player2_0_sprites.sprite_index = spr_hang_left)
	    {
	        global.turningLedge = 1;
	    }
		
		
		//start going from jump-off-ledge state to normal hang state
	    if (place_meeting(x+1,y,obj_block)) && (right_key_pressed-left_key_pressed > 0) && (!left_key) //turn to face away from block ledge to our right
		&& (global.image_speed_lockdown = 1)
	    {
	        global.turningLedge = 1;
	    }
	    else if (place_meeting(x-1,y,obj_block)) && (right_key_pressed-left_key_pressed < 0) && (!right_key) //turn to face away from block ledge to our left
		&& (global.image_speed_lockdown = 1)
	    {
	        global.turningLedge = 1;
	    }
	}


	if (hang_switch = 1)
	{
		with(object_player2_0_sprites)
		{
			//image_speed_lockdown is for when we're aiming our gun hanging off the ledge
			//idle is opposite facing the other hangshoot sprites because I fucked up when naming them previously
			
			//BACK TO PURE HANGING
			if (global.facingDir < 0) //turning from right facing to left facing back at left ledge
			&& (global.image_speed_lockdown = 1)
			&& (global.turningLedge == 1)
			{
				if (sprite_index != spr_jumpprep_reverse_right)
				&& ((object_player2_0_sprites.sprite_index = spr_hangshoot_idle_right)
				or (object_player2_0_sprites.sprite_index = spr_hangshoot_idle_right_Tdown)
				or (object_player2_0_sprites.sprite_index = spr_hangshoot_idle_right_down)
				or (object_player2_0_sprites.sprite_index = spr_hangshoot_idle_right_Tup)
				or (object_player2_0_sprites.sprite_index = spr_hangshoot_idle_right_up))
				&& ((object_player2_0_sprites.sprite_index != spr_hangshoot_right) //make sure we're not in any shooting animation
				&& (object_player2_0_sprites.sprite_index != spr_hangshoot_right_Tdown)
				&& (object_player2_0_sprites.sprite_index != spr_hangshoot_right_down)
				&& (object_player2_0_sprites.sprite_index != spr_hangshoot_right_Tup)
				&& (object_player2_0_sprites.sprite_index != spr_hangshoot_right_up))
				{
					sprite_index = spr_jumpprep_reverse_right;
					image_index = 0;
					image_speed = 1;
					global.hangAiming = 0;
				}
				else if (sprite_index == spr_jumpprep_reverse_right) && (image_index >= image_number-1)
				{
					sprite_index = spr_hang_right;
					global.turningLedge = 0;
					global.image_speed_lockdown = 0;
				}
			}
			if (global.facingDir > 0) //turning from left facing to right facing back at right ledge
			&& (global.image_speed_lockdown = 1)
			&& (global.turningLedge == 1)
			{
				if (sprite_index != spr_jumpprep_reverse_left)
				&& ((object_player2_0_sprites.sprite_index = spr_hangshoot_idle_left)
				or (object_player2_0_sprites.sprite_index = spr_hangshoot_idle_left_Tdown)
				or (object_player2_0_sprites.sprite_index = spr_hangshoot_idle_left_down)
				or (object_player2_0_sprites.sprite_index = spr_hangshoot_idle_left_Tup)
				or (object_player2_0_sprites.sprite_index = spr_hangshoot_idle_left_up))
				&& ((object_player2_0_sprites.sprite_index != spr_hangshoot_left) //mske sure we're not in any shooting animation
				&& (object_player2_0_sprites.sprite_index != spr_hangshoot_left_Tdown)
				&& (object_player2_0_sprites.sprite_index != spr_hangshoot_left_down)
				&& (object_player2_0_sprites.sprite_index != spr_hangshoot_left_Tup)
				&& (object_player2_0_sprites.sprite_index != spr_hangshoot_left_up))
				{
					sprite_index = spr_jumpprep_reverse_left;
					image_index = 0;
					image_speed = 1;
					global.hangAiming = 0;
				}
				else if (sprite_index == spr_jumpprep_reverse_left) && (image_index >= image_number-1)
				{
					sprite_index = spr_hang_left;
					global.turningLedge = 0;
					global.image_speed_lockdown = 0;
				}
			}
	
	
			//JUMP PREP SHOOT
			if (global.turningLedge = 1) && (global.facingDir > 0)
			{
				global.image_speed_lockdown = 1
				if (sprite_index == spr_hang_left)
				{
					sprite_index = spr_cliff_jumpprep_left
					image_index = 0;
				}
				else if (sprite_index == spr_cliff_jumpprep_left) && (image_index >= image_number-1)
				{
					sprite_index = spr_hangshoot_idle_left;
					global.turningLedge = 0;
					global.hangAiming = 1;
				}
			}
			if (global.turningLedge = 1) && (global.facingDir < 0)
			{
				global.image_speed_lockdown = 1
				if (sprite_index == spr_hang_right)
				{
					sprite_index = spr_cliff_jumpprep_right;
					image_index = 0;
				}
				else if (sprite_index == spr_cliff_jumpprep_right) && (image_index >= image_number-1)
				{
					sprite_index = spr_hangshoot_idle_right;
					global.turningLedge = 0;
					global.hangAiming = 1;
				}
			}
	
			//AIMING GUN WHILE HANGING - not firing
			if (global.facingDir < 0) && (global.turningLedge == 0) && (global.image_speed_lockdown = 1)
			{
				if (global.aiming_forward > 0)
				{
					sprite_index = spr_hangshoot_idle_right
				}
				else if (global.aiming_down > 0)
				{
					sprite_index = spr_hangshoot_idle_right_down
				}
				else if (global.aiming_truedown > 0)
				{
					sprite_index = spr_hangshoot_idle_right_Tdown
				}
				else if (global.aiming_up > 0)
				{
					sprite_index = spr_hangshoot_idle_right_up
				}
				else if (global.aiming_trueup > 0)
				{
					sprite_index = spr_hangshoot_idle_right_Tup
				}
			}
			else if (global.facingDir > 0) && (global.turningLedge == 0) && (global.image_speed_lockdown = 1)
			{
				if (global.aiming_forward > 0)
				{
					sprite_index = spr_hangshoot_idle_left
				}
				else if (global.aiming_down > 0)
				{
					sprite_index = spr_hangshoot_idle_left_down
				}
				else if (global.aiming_truedown > 0)
				{
					sprite_index = spr_hangshoot_idle_left_Tdown
				}
				else if (global.aiming_up > 0)
				{
					sprite_index = spr_hangshoot_idle_left_up
				}
				else if (global.aiming_trueup > 0)
				{
					sprite_index = spr_hangshoot_idle_left_Tup
				}
			}
		
		
			//hang shoot
			if (global.image_speed_lockdown = 1) && (global.turningLedge == 0) && (global.hangAiming == 1)
			{
				if (global.facingDir > 0)
				{
					with (object_player2_0_sprites)
					{
						x = obj_player.x+4
						y = obj_player.y-1
					}
				}
				else if (global.facingDir < 0)
				{
					with (object_player2_0_sprites)
					{
						x = obj_player.x-4
						y = obj_player.y-1
					}
				}
			}
			else if (global.image_speed_lockdown = 1) && (global.turningLedge == 1) && (global.hangAiming == 0)
			{
				if (global.facingDir > 0)
				{
					with (object_player2_0_sprites)
					{
						x = obj_player.x-6
						y = obj_player.y-20
					}
				}
				else if (global.facingDir < 0)
				{
					with (object_player2_0_sprites)
					{
						x = obj_player.x+6
						y = obj_player.y-20
					}
				}
			}
	
			//SHOOTING
			with(obj_player)
			{
				PreShooting();
			}
		}

	}




}
