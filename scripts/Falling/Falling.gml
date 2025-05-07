function Falling() {
	
	audio_stop_sound(snd_player_footstep);

	global.hang = 0;
	global.grounded = 0;
	global.climbing = 0;
	global.lockdown_facingDir = 0;
	global.shoot = 0

	//for when loading the game
	if (global.loading == 1)
	{
		exit;	
	}

	//if spinning jump, play different sfx
	if (global.jumpingdm = 1)
	{
		global.turning = 0;
		with(object_player2_0_sprites)
		{
			if ((image_index >= 7) && (image_index < 8)) or ((image_index >= 0) && (image_index < 1))
			{
				audio_stop_sound(snd_player_spinjump_shorter);
				audio_play_sound(snd_player_spinjump_shorter,1,false,global.sfx_volume);
				sound_spin = 0;
			}
		
			if (image_index >= image_number-1) && (sprite_index = spr_original_spinjump_left)
			{
				sprite_index = spr_jump_left
				global.jumpingdm = 0
				audio_stop_sound(snd_player_spinjump);
			}
			else if (image_index >= image_number-1) && (sprite_index = spr_original_spinjump_right)
			{
				sprite_index = spr_jump_right
				global.jumpingdm = 0
				audio_stop_sound(snd_player_spinjump);
			}
		}
	}

	if (global.constantspd > 0)
	{
	    global.constantspd -= 0.3;
	}

	if ((!place_meeting(x+round(hspd),y+(vspd),obj_slope1_left)) && (!place_meeting(x+round(hspd),y+round(vspd),obj_slope1_right)) && (!place_meeting(x+round(hspd),y+round(vspd),obj_block))) or  (vspd >= 0)
	{
	    grav = 0.25;
	}
	else if ((place_meeting(x+round(hspd),y+(vspd),obj_slope1_left)) or (place_meeting(x+round(hspd),y+round(vspd),obj_slope1_right)) or (place_meeting(x+round(hspd),y+round(vspd),obj_block))) && (vspd != 0)
	{
	grav = 0;
	}

	//dash jump ability
	if (dash_pressed) && (global.suit_pure == 1) && ((obj_player.enemy_slowdownswitch == 0) or (global.hydrodash == 1))
	&& (dash_jump == 0)
	{
	    sprite_index = spr_player_jump;
	    global.jumping = 1;
	    global.jumpingdm = 1;
		
	    jump_stopper1 = 0;
		double_jump = 0;
		dash_jump = 1;
		
	    State_machine_switch_state(Jump_after_Dashing_airdash);
	}
	else if (dash_pressed) && (vspd > 0) && ((obj_player.enemy_slowdownswitch == 1) && (global.hydrodash == 1))
	&& (dash_jump == 0)
	{
	    sprite_index = spr_player_jump;
	    global.jumping = 1;
	    global.jumpingdm = 1;
		global.hydrodash_use = 1;
		
		jump_stopper1 = 0;
	    double_jump = 0;
		dash_jump = 1;
		
	    State_machine_switch_state(Jump_after_Dashing_hydrodash);
	}
	
	//double jump (jet jump upgrade)
	if (jump_pressed) && (global.spacejump == 1) && ((obj_player.enemy_slowdownswitch == 0) or (global.hydrodash == 1))
	&& (double_jump = 0)
	{
	    sprite_index = spr_player_jump;
	    global.jumping = 1;
	    global.jumpingdm = 1;

		jump_stopper1 = 0
	    double_jump = 1;
		
		audio_stop_sound(snd_player_spinjump_shorter);
		audio_stop_sound(snd_player_spinjump);
		
	    State_machine_switch_state(Jumping_doublejump);
	}
	
	
	//sword jump
	if (global.turning = 0) && (ability) && (global.sword_available = 1)
	{
		State_machine_switch_state(Sword_jump)
		with(object_player2_0_sprites)
		{
			instance_create_depth(id.x,id.y,id.depth,obj_player_sword_hitbox)	
		}
		audio_stop_sound(snd_player_spinjump_shorter);
	}

	//if outside room, reset game
	if (y > room_height) or (global.health1 <= 0)
	{
	    audio_stop_sound(snd_player_spinjump_shorter);
		State_machine_switch_state(Dead);
	}

	//shooting
	if (shoot_pressed) && (shoot) && (global.shoot = 0) && (global.turning = 0) && (global.turning_dash2 = 0)
	{
		global.jumpingdm = 0;
			
		audio_stop_sound(snd_player_spinjump_shorter);
			
		State_machine_switch_state(Fall_shoot);
		global.shoot = 1;
		global.charging = 0;
			
		double_jump = 0;
		shoot_timer = 1;
			
		stopper_bullet_creation = 0;
		limit = 0;
	}

		

	//shoot charging
	if (shoot) && (!shoot_pressed)
	&& (global.shoot = 0) && (global.upgrade_charge = 1) && (global.charging = 0) && (limit = 0)
	{
		global.charging = 1;
	}

	if (global.upgrade_charge = 1) && (global.shoot = 0) && (global.charging = 1) && (!shoot)
	&& (global.turning = 0)
	{
		with(obj_blast_effect)
		    {
		        if (global.charge_ready = 1)
		        {
		        with(obj_player)
		            {
		                global.jumpingdm = 0;
						global.shoot = 1;
		                global.charge_shot = 1;
		                global.charging = 0;
							
						double_jump = 0;
		                shoot_timer = 1;
							
						audio_stop_sound(snd_player_spinjump_shorter);
							
		                State_machine_switch_state(Fall_shoot);
		            }
		        }
				else if (global.charge_ready = 0) && (global.charging = 0)
				{
					with(obj_player)
					{
						global.jumpingdm = 0;
						global.shoot = 1;
						global.charging = 0;
							
						double_jump = 0;
						shoot_timer = 1;
							
						audio_stop_sound(snd_player_spinjump_shorter);
							
						State_machine_switch_state(Fall_shoot);	
					}
				}
		    }

	}
	

	//falling physics
	if (enemy_slowdownswitch = 0)
	{
		if (vspd < 9) && ((global.hang = 0) or (global.climbing = 0) or (global.grounded = 0)) && (jump)
		{
		    vspd += grav;
		}
		
		//testing spinjump height amounts
		if (vspd >= -0.3) && (vspd <= 0.3)
		{
		    //show_debug_message(y);
		}
	
		if (vspd <= 0) && ((global.hang = 0) or (global.climbing = 0) or (global.grounded = 0)) && (!jump) && (jump_stopper1 = 0)
		{
		    vspd = vspd/2;
		    jump_stopper1 = 1;
		}
		else if (vspd < 9) && ((global.hang = 0) or (global.climbing = 0) or (global.grounded = 0)) && (!jump)
		{
		    vspd += grav;
		}

		if (vspd > 9)
		{
		    vspd = 9;
		}
		
	}
	else if (enemy_slowdownswitch > 0)
	{
		if (vspd < 3) && ((global.hang = 0) or (global.climbing = 0) or (global.grounded = 0)) && (jump)
		{
		    vspd += grav;
		}
	
		if (vspd <= 0) && ((global.hang = 0) or (global.climbing = 0) or (global.grounded = 0)) && (!jump) && (jump_stopper1 = 0)
		{
		    vspd = vspd/2;
		    jump_stopper1 = 1;
		}
		else if (vspd < 3) && ((global.hang = 0) or (global.climbing = 0) or (global.grounded = 0)) && (!jump)
		{
		    vspd += grav;
		}

		if (vspd > 3)
		{
		    vspd = 3;
		}
	}
	else if (water_effect > 0)
	{
		if (vspd < 15) && ((global.hang = 0) or (global.climbing = 0) or (global.grounded = 0)) && (jump)
		{
		    vspd += grav;
		}
	
		if (vspd <= 0) && ((global.hang = 0) or (global.climbing = 0) or (global.grounded = 0)) && (!jump) && (jump_stopper1 = 0)
		{
		    vspd = vspd/2;
		    jump_stopper1 = 1;
		}
		else if (vspd < 15) && ((global.hang = 0) or (global.climbing = 0) or (global.grounded = 0)) && (!jump)
		{
		    vspd += grav;
		}

		if (vspd > 15)
		{
		    vspd = 15;
		}
	}

	//horizontal movement
	if (enemy_slowdownswitch = 0)
	{
		if (global.turning = 0) && (global.dashbegin = 0) && (global.constantspd <= 0) && (input_horizontal != 0)
		{
		    if (speed_x < 2)
		    {
		    speed_x += 0.5;
		    }
		    else if (speed_x >= 2)
		    {
		        speed_x = 2;
		    }
		    hspd = floor(input_horizontal * speed_x);
		}
		else if (!(global.turning = 0) or !(global.dashbegin = 0) or !(global.constantspd <= 0) or (input_horizontal == 0)) && (speed_x > 1)
		{
		    if (speed_x > 1)
		    {
		    speed_x -= 0.5;
		    }
		    hspd = floor(global.facingDir * speed_x);
		}
	}
	else if (enemy_slowdownswitch > 0)
	{
		if (global.turning = 0) && (global.dashbegin = 0) && (global.constantspd <= 0) && (input_horizontal != 0)
		{
		    hspd = floor(input_horizontal*1);
		}
		else if (!(global.turning = 0) or !(global.dashbegin = 0) or !(global.constantspd <= 0) or (input_horizontal == 0))
		{
		    if (speed_x > 0)
		    {
		    speed_x -= 0.5;
		    }
		    hspd = floor(global.facingDir * speed_x);
		}
	}


	//COLLISIONS - landing on something
	PlayerLanding();
	

	
	////LEDGE GRABBING
	Check_if_ledge();


	if (vspd > 0) && (right_height) && ((blockvar2) or (blockvar4)) = 0
	{
	    vspd += grav;
	}





}
