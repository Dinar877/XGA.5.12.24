function Idle_landing() {
	
	//sfx
	audio_stop_sound(snd_player_spinjump);
	audio_stop_sound(snd_player_spinjump_shorter);
	audio_stop_sound(snd_swordswoosh);
	
	//code
	ledge_ready = 0;
	hspd=0;
	hurt1 = 0;
	limit = 0;
	vspd = 0;
	speed_x = 0;
	hit = 0;
	move_prep = 0;
	shoot_timer = 0;
	walljump_timer = 0;
	
	double_jump = 0
	jump_stopper1 = 0
	
	sprite_index = spr_player;
	global.grounded = 1;
	global.jumping = 0;
	global.jumpingdm = 0;
	global.jumping_maxheight = 0;
	global.crouching = 0;
	global.hydrodash_use = 0;
	//global.screwjump = 0

	with(object_player2_0_sprites)
	{
		if (global.turning <= 0) && (global.shoot <= 0)
		{
		///////////LEFT VER
		#region
		//left
		if (sprite_index = spr_jump_left) or (sprite_index = spr_spinjump_left) or (sprite_index = spr_spacejump_left) or (sprite_index = spr_screwjump_left1)
		{
			sprite_index = spr_land_left;
			image_index = 0;
			y = obj_player.y+2;
	        x = obj_player.x-2;
		}
		else if (sprite_index = spr_land_left) && (image_index >= image_number-1)
		{
			sprite_index = spr_stand_left_2;
			y = obj_player.y+1;
	        x = obj_player.x;
			with(obj_player)
			{
				State_machine_switch_state(Idle)	
			}
		}
	
		//upleft
		if (sprite_index = spr_jump_up_left)
		{
			image_index = 0;
			sprite_index = spr_land_upleft;
			y = obj_player.y+2;
	        x = obj_player.x-2;
		}
		else if (sprite_index = spr_land_upleft) && (image_index >= image_number-1)
		{
			sprite_index = spr_stand_upleft_2;
			y = obj_player.y+1;
	        x = obj_player.x;
			with(obj_player)
			{
				State_machine_switch_state(Idle)	
			}
		}
	
		//Tupleft
		if (sprite_index = spr_jump_trueup_left)
		{
			image_index = 0;
			sprite_index = spr_land_Tupleft;
			y = obj_player.y+2;
	        x = obj_player.x-2;
		}
		else if (sprite_index = spr_land_Tupleft) && (image_index >= image_number-1)
		{
			sprite_index = spr_stand_Trueupleft_2;
			y = obj_player.y+1;
	        x = obj_player.x;
			with(obj_player)
			{
				State_machine_switch_state(Idle)	
			}
		}
	
		//downleft
		if (sprite_index = spr_jump_down_lefrt)
		{
			image_index = 0;
			sprite_index = spr_land_downleft;
			y = obj_player.y+2;
	        x = obj_player.x-2;
		}
		else if (sprite_index = spr_land_downleft) && (image_index >= image_number-1)
		{
			sprite_index = spr_stand_downleft_2;
			y = obj_player.y+1;
	        x = obj_player.x;
			with(obj_player)
			{
				State_machine_switch_state(Idle)	
			}
		}
	
		//Tdownleft
		if (sprite_index = spr_jump_truedown_left)
		{
			image_index = 0;
			sprite_index = spr_land_Tdownleft;
			y = obj_player.y+2;
	        x = obj_player.x-2;
		}
		else if (sprite_index = spr_land_Tdownleft) && (image_index >= image_number-1)
		{
			sprite_index = spr_stand_Truedownleft_2;
			y = obj_player.y+1;
	        x = obj_player.x;
			with(obj_player)
			{
				State_machine_switch_state(Idle)	
			}
		}
	#endregion
	
		///////////RIGHT VER
	#region
		//left
		if (sprite_index = spr_jump_right) or (sprite_index = spr_spinjump_right) or (sprite_index = spr_spacejump_right) or (sprite_index = spr_screwjump_right1)
		{
			sprite_index = spr_land_right;
			image_index = 0;
			y = obj_player.y+2;
	        x = obj_player.x;
		}
		else if (sprite_index = spr_land_right) && (image_index >= image_number-1)
		{
			sprite_index = spr_stand_right_2;
			y = obj_player.y+1;
	        x = obj_player.x;
			with(obj_player)
			{
				State_machine_switch_state(Idle)	
			}
		}
	
		//upright
		if (sprite_index = spr_jump_up_right)
		{
			image_index = 0;
			sprite_index = spr_land_upright;
			y = obj_player.y+2;
	        x = obj_player.x;
		}
		else if (sprite_index = spr_land_upright) && (image_index >= image_number-1)
		{
			sprite_index = spr_stand_upright_2;
			y = obj_player.y+1;
	        x = obj_player.x;
			with(obj_player)
			{
				State_machine_switch_state(Idle)	
			}
		}
	
		//Tupright
		if (sprite_index = spr_jump_trueup_right)
		{
			image_index = 0;
			sprite_index = spr_land_Tupright;
			y = obj_player.y+2;
	        x = obj_player.x;
		}
		else if (sprite_index = spr_land_Tupright) && (image_index >= image_number-1)
		{
			sprite_index = spr_stand_Trueupright_2;
			y = obj_player.y+1;
	        x = obj_player.x;
			with(obj_player)
			{
				State_machine_switch_state(Idle)	
			}
		}
	
		//downright
		if (sprite_index = spr_jump_down_right)
		{
			image_index = 0;
			sprite_index = spr_land_downright;
			y = obj_player.y+2;
	        x = obj_player.x;
		}
		else if (sprite_index = spr_land_downright) && (image_index >= image_number-1)
		{
			sprite_index = spr_stand_downright_2;
			y = obj_player.y+1;
	        x = obj_player.x;
			with(obj_player)
			{
				State_machine_switch_state(Idle)	
			}
		}
	
		//Tdownright
		if (sprite_index = spr_jump_truedown_right)
		{
			image_index = 0;
			sprite_index = spr_land_Tdownright;
			y = obj_player.y+2;
	        x = obj_player.x;
		}
		else if (sprite_index = spr_land_Tdownright) && (image_index >= image_number-1)
		{
			sprite_index = spr_stand_Truedownright_2;
			y = obj_player.y+1;
	        x = obj_player.x;
			with(obj_player)
			{
				State_machine_switch_state(Idle)	
			}
		}
	
		if ((sprite_index != spr_jump_left) && (sprite_index != spr_spinjump_left) && (sprite_index != spr_jump_down_lefrt) && (sprite_index != spr_jump_truedown_left) && (sprite_index != spr_jump_trueup_left) && (sprite_index != spr_jump_up_left)
		 && (sprite_index != spr_jump_right) && (sprite_index != spr_spinjump_right) && (sprite_index != spr_jump_down_right) && (sprite_index != spr_jump_truedown_right) && (sprite_index != spr_jump_trueup_right) && (sprite_index != spr_jump_up_right)
		 && (sprite_index != spr_land_Tupleft) && (sprite_index != spr_land_Tupright) && (sprite_index != spr_land_upleft) && (sprite_index != spr_land_upright) && (sprite_index != spr_land_left) && (sprite_index != spr_land_right) && (sprite_index != spr_land_downleft) && (sprite_index != spr_land_downright) && (sprite_index != spr_land_Tdownleft) && (sprite_index != spr_land_Tdownright))
		 && (sprite_index != spr_spacejump_left) && (sprite_index != spr_spacejump_right)
		{
			with(obj_player)
			{
				State_machine_switch_state(Idle)	
			}
		}
	
	#endregion
		}
		else if (global.turning > 0)
		{
			with(obj_player)
			{
				State_machine_switch_state(Idle)	
			}
		}
		else if (global.shoot > 0)
		{
			with(obj_player)
			{
				State_machine_switch_state(Shooting)	
			
				with(object_player2_0_sprites)
						{
							image_index = 0	
						}
						
				//ammo
				//global.shoot_ammo--;
			
				stopper_bullet_creation = 0;
				limit = 0;
			}
		}
	}

	if (global.room_transition = 1)
	{
	    exit;
	}

	//if no health, reset game
	if (global.health1 <= 0)
	{
	    State_machine_switch_state(Dead);
	}



	//shooting
	PreShooting();
	



	//dashing
	if (global.dashbegin2 = 1) && (enemy_slowdownswitch < 1) && (global.speedboots) && (global.suit_shock)
	{
	    global.lockdown_facingDir = 1;
	    State_machine_switch_state(Dashing2_begin);
	}

	//sword charge stand
	if (ability) && (global.turning = 0) && (global.sword_available = 1)
	{
		State_machine_switch_state(Sword1)
	}

	if (input_horizontal != 0) && (!Select)
	{
	    State_machine_switch_state(Move);
		//sounds
	}


	if (jump_pressed = 1) && ((place_meeting(x,y+1,obj_block)) or (place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right))
	or (place_meeting(x,y+1,obj_newslope_left)) or (place_meeting(x,y+1,obj_newslope_right)))
	{
	    if (input_horizontal = 0)
	    {
	        sprite_index = spr_player;
	        global.jumping = 1;
			audio_play_sound(snd_player_normaljump,1000,false,global.sfx_volume);
	    }
	    else if (hspd != 0)
	    {
	        sprite_index = spr_player_jump;
	        global.jumping = 1;
	        global.jumpingdm = 1;
	    }
	    State_machine_switch_state(Jumping);
	    global.jumping = 1;
	}
	else if (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+2,obj_slope1_left))  && (!place_meeting(x,y+2,obj_slope1_right))
	&& (!place_meeting(x,y+2,obj_newslope_right))  && (!place_meeting(x,y+2,obj_newslope_left))
	{
	    State_machine_switch_state(Falling);
	}

	if (global.grounded = 1) && ((down_key-up_key) > 0) && (global.crouching = 0) && (!Select) && (sprite_index = spr_player) && (global.shoot == 0)
	{
	    State_machine_switch_state(Crouching);
	    global.crouching = 1;
	    sprite_index = spr_player_crouch;
		with(obj_camera)
			{
				yspin += 4;
			}
	    y+=4;
	}




}
