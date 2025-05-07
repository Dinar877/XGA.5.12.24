function Idle() {
	
	//sfx
	audio_stop_sound(snd_player_spinjump);
	audio_stop_sound(snd_player_spinjump_shorter);
	
	//code
	ledge_ready = 0;
	double_jump = 0
	
	hspd=0;
	
	hurt1 = 0;
	limit = 0;
	vspd = 0;
	speed_x = 0;
	hit = 0;
	move_prep = 0;
	shoot_timer = 0;
	walljump_timer = 0;
	sprite_index = spr_player;
	global.grounded = 1;
	global.jumping = 0;
	global.jumpingdm = 0;
	global.jumping_maxheight = 0;
	global.crouching = 0;
	global.hydrodash_use = 0;
	global.dash2 = 0;
	global.shoot = 0
	//global.screwjump = 0

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



	//jumping
	if (jump_pressed = 1) && ((place_meeting(x,y+1,obj_block))
	or (place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right))
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
