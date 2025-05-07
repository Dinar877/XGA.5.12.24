function Move() {
	//sfx
	audio_stop_sound(snd_player_spinjump);
	audio_stop_sound(snd_player_spinjump_shorter);
	
	
	sprite_index = spr_player;
	global.grounded = 1;
	global.jumping_maxheight = 0;
	global.hydrodash_use = 0;
	
	double_jump = 0

	if (enemy_slowdownswitch = 0)
	{
	//sounds
		with(object_player2_0_sprites)
		{
			if (((image_index >= 6) && (image_index < 7)) or ((image_index >= 12) && (image_index < 13))) && (sound_footstep >= 1)
			{
				audio_stop_sound(snd_player_footstep);
				var snd_foot = audio_play_sound(snd_player_footstep,1,false,global.sfx_volume);
				audio_sound_pitch(snd_foot,1+(random_range(-0.08,0.08)));
				
				
				sound_footstep = 0;
			}
			else if (((image_index >= 6) && (image_index < 7)) or ((image_index >= 12) && (image_index < 13))) && (sound_footstep < 1)
			{
				sound_footstep = 1;
			}
		}
	}
	else if (enemy_slowdownswitch > 0)
	{
	//sounds
		with(object_player2_0_sprites)
		{
			if (((image_index >= 6) && (image_index < 7)) or ((image_index >= 12) && (image_index < 13))) && (sound_footstep >= 1)
			{
				audio_stop_sound(snd_player_footstep);
				var snd_foot = audio_play_sound(snd_player_footstep,1,false,global.sfx_volume);
				audio_sound_pitch(snd_foot,1+(random_range(-0.05,0.05)));
				
				sound_footstep = 0;
			}
			else if (((image_index >= 6) && (image_index < 7)) or ((image_index >= 12) && (image_index < 13))) && (sound_footstep < 1)
			{
				sound_footstep = 1;
			}
		}
	}
	//if no health, reset game
	if (global.health1 <= 0)
	{
	    State_machine_switch_state(Dead);
		audio_stop_sound(snd_player_footstep)
	}

	//shooting
	PreShooting()
	

	//dashing
	if (global.dashbegin2 = 1) && (enemy_slowdownswitch < 1) && (global.speedboots) && (global.suit_shock)
	{
	    global.lockdown_facingDir = 1;
		if (global.facingDir = -1)
		{
				hspd = -2;
				script_execute(Moving_Dashing2_left);
		}
		if (global.facingDir = 1)
		{
				hspd = 2;
				script_execute(Moving_Dashing2_right);
		}
	    State_machine_switch_state(Dashing2_begin);
		exit;
	}

	//sword charge stand
	if (ability) && (global.turning = 0) && (global.sword_swing_available = 1)
	{
		State_machine_switch_state(Sword_spin)
		exit
	}
	else if (ability) && (global.turning = 0) && (global.sword_swing_available = 0) && (global.sword_available = 1)
	{
		hspd = 0
		vspd = 0
		
		State_machine_switch_state(Sword1)
		exit
	}


	if (global.turning = 0) && (global.dashbegin = 0) && (enemy_slowdownswitch = 0)
	{
	    if (speed_x < 3)
	    {
	        speed_x += 0.5;
	    }
	    else if (speed_x >= 3)
	    {
	        speed_x = 3;
	    }
	    hspd = floor(input_horizontal * speed_x);
	}
	else if (global.turning = 0) && (global.dashbegin = 0) && (enemy_slowdownswitch = 1)
	{
	    if (speed_x < 2)
	    {
	        speed_x += 0.2;
	    }
	    else if (speed_x >= 2)
	    {
	        speed_x = 2;
	    }
	    hspd = floor(input_horizontal * speed_x);
	}
	
	if ((input_horizontal = 0) && (global.turning = 0)) or (Select)
	{
	    hspd = 0;
	    State_machine_switch_state(Idle);
		audio_stop_sound(snd_player_footstep)
	}
	
	
	//image speeds for moving
	if (enemy_slowdownswitch <= 0)
	{
		if ((place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right))
		or (place_meeting(x,y+1,obj_newslope_right)) or (place_meeting(x,y+1,obj_newslope_left)))
		&& (y-yprevious > 0)
		{
		    with(object_player2_0_sprites)
		    {
		        image_speed = 0.7;
		    }
		}
		else if ((place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right))
		or (place_meeting(x,y+1,obj_newslope_right)) or (place_meeting(x,y+1,obj_newslope_left))) && (y-yprevious < 0)
		{
		    with(object_player2_0_sprites)
		    {
		        image_speed = 0.3;
		    }
		}
		else if ((!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
		&& (!place_meeting(x,y+1,obj_newslope_right)) && (!place_meeting(x,y+1,obj_newslope_left))) && (y-yprevious = 0)
		{
		    with(object_player2_0_sprites)
		    {
		        image_speed = 0.5;
		    }
		}
	}
	else if (enemy_slowdownswitch > 0)
	{
		if ((place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right))
		or (place_meeting(x,y+1,obj_newslope_right)) or (place_meeting(x,y+1,obj_newslope_left)))
		&& (y-yprevious > 0)
		{
		    with(object_player2_0_sprites)
		    {
		        image_speed = 0.35;
		    }
		}
		else if ((place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right))
		or (place_meeting(x,y+1,obj_newslope_right)) or (place_meeting(x,y+1,obj_newslope_left))) && (y-yprevious < 0)
		{
		    with(object_player2_0_sprites)
		    {
		        image_speed = 0.15;
		    }
		}
		else if ((!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
		&& (!place_meeting(x,y+1,obj_newslope_right)) && (!place_meeting(x,y+1,obj_newslope_left))) && (y-yprevious = 0)
		{
		    with(object_player2_0_sprites)
		    {
		        image_speed = 0.25;
		    }
		}
	}
	
	
	
	
	//jumping and falling off stuff
	if (jump_pressed = 1) && (falling = 0)
	{
	    if (input_horizontal = 0)
	    {
	        sprite_index = spr_player;
	        global.jumping = 1;
			audio_play_sound(snd_player_normaljump,1000,false,global.sfx_volume);
	    }
	    else if (input_horizontal != 0)
	    {
	        sprite_index = spr_player_jump;
	        global.jumping = 1;
	        global.jumpingdm = 1;
	    }
	    State_machine_switch_state(Jumping);
	}
	else if (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+2,obj_slope1_left))  && (!place_meeting(x,y+2,obj_slope1_right))
	&& (!place_meeting(x,y+2,obj_newslope_left)) && (!place_meeting(x,y+2,obj_newslope_right))
	{
	    State_machine_switch_state(Falling);
	}




}
