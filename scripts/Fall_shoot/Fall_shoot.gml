function Fall_shoot() {
	
	audio_stop_sound(snd_player_spinjump);

	jump = 0;
	jump_held = 0;

	global.hang = 0;
	global.grounded = 0;
	global.climbing = 0;
	global.turning = 0;
	global.hydrodash_use = 0;
	global.dash2 = 0;
	global.dashbegin2 = 0;
	global.turning_dash2 = 0;
	global.lockdown_facingDir = 0;

	if (global.constantspd > 0)
	{
	    global.constantspd -= 0.3;
	}

	if ((!place_meeting(x+round(hspd),y+round(vspd),obj_slope1_left)) && (!place_meeting(x+round(hspd),y+round(vspd),obj_slope1_right)) && (!place_meeting(x+round(hspd),y+round(vspd),obj_block))) or  (vspd >= 0)
	{
	    grav = 0.25;
	}
	else if ((place_meeting(x+round(hspd),y+round(vspd),obj_slope1_left)) or (place_meeting(x+round(hspd),y+round(vspd),obj_slope1_right)) or (place_meeting(x+round(hspd),y+round(vspd),obj_block))) && (vspd != 0)
	{
		grav = 0;
	}

	//if outside room, reset game
	if (y > room_height) or (global.health1 <= 0)
	{
	    State_machine_switch_state(Dead);
	}
	
	//exit if not shooting anything
	if (global.shoot = 0)
	{
		State_machine_switch_state(Falling);
		exit	
	}


	//shot animation when done
		if (global.shoot = 1)
		{
			with(obj_blast_effect)
			{
				if (sprite_index != -1)
				{
					if (image_index >= 5)
					{
						with(obj_player)
						{
						    global.shoot = 0;
							global.jumpingdm = 0
							
							
						    stopper_bullet_creation = 0;
						    limit = 0;
							
							State_machine_switch_state(Falling)
							exit
						}
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




	//if next to collision stuff
	if (place_meeting(x,y+1,obj_block) != 0)
	{
	    if (global.jumpingdm = 0)
	    {
	    global.jumping = 0;
	    global.grounded = 1;
	    }
		if (sprite_index = spr_player_jump)
	    {
	        with(obj_camera)
			{
				yspin = -7;
			}
			y -= 7;
	        sprite_index = spr_player;
	    } 
	    hspd = 0;
	    vspd = 0;
	    double_jump = 0;
		jump_stopper1 = 0
		
	    State_machine_switch_state(Shooting);
		audio_stop_sound(snd_player_spinjump);
		audio_stop_sound(snd_player_spacejump);
		audio_stop_sound(snd_player_screwattack);
		audio_stop_sound(snd_swordswoosh);
		
		PlayerLandingSFX();
	     
	    global.jumping_maxheight = 0;
	}
	else if (place_meeting(x,y+1,obj_slope1_left) != 0)
	{
	    if (global.jumpingdm = 0)
	    {
	    global.jumping = 0;
	    global.grounded = 1;
	    }
	    if (sprite_index = spr_player_jump)
	    {
	        with(obj_camera)
			{
				yspin = -7;
			}
			y -= 7;
	        sprite_index = spr_player;
	        hspd = 0;
	    }
	    hspd = 0;
	    vspd = 0;
	    double_jump = 0; 
		jump_stopper1 = 0
		
	    State_machine_switch_state(Shooting);
		audio_stop_sound(snd_player_spinjump);
		audio_stop_sound(snd_player_spacejump);
		audio_stop_sound(snd_player_screwattack);
		audio_stop_sound(snd_swordswoosh);
		
		PlayerLandingSFX();
		
	    global.jumping_maxheight = 0;
	}
	else if (place_meeting(x,y+1,obj_slope1_right) != 0)
	{
	    if (global.jumpingdm = 0)
	    {
	    global.jumping = 0;
	    global.grounded = 1;
	    }
	    if (sprite_index = spr_player_jump)
	    {
	        with(obj_camera)
			{
				yspin = -7;
			}
			y -= 7;
	        sprite_index = spr_player;
	        hspd = 0;
	    }
	    hspd = 0;
	    vspd = 0;
	    double_jump = 0;
		jump_stopper1 = 0
		
	    State_machine_switch_state(Shooting);
		audio_stop_sound(snd_player_spinjump);
		audio_stop_sound(snd_player_spacejump);
		audio_stop_sound(snd_player_screwattack);
		audio_stop_sound(snd_swordswoosh);
		
		PlayerLandingSFX();
		
	    global.jumping_maxheight = 0;
	     
	}
	else if (place_meeting(x,y+1,obj_newslope_left) != 0)
	{
	    if (global.jumpingdm = 0)
	    {
		    global.jumping = 0;
		    global.grounded = 1;
	    }
	    if (sprite_index = spr_player_jump)
	    {
	        with(obj_camera)
			{
				yspin = -7;
			}
			y -= 7;
	        sprite_index = spr_player;
	        hspd = 0;
	    }
	    hspd = 0;
	    vspd = 0;
	    double_jump = 0; 
		jump_stopper1 = 0
		
	    State_machine_switch_state(Shooting); 
		audio_stop_sound(snd_player_spinjump);
		audio_stop_sound(snd_player_spacejump);
		audio_stop_sound(snd_player_screwattack);
		audio_stop_sound(snd_swordswoosh);
		
		PlayerLandingSFX();
		
	    global.jumping_maxheight = 0;
		global.dash2 = 0;
		global.dashbegin2 = 0;
		global.dash2_spark = 0
		global.turning_dash2 = 0;
		global.dash2_jump = 0
	     
	}
	else if (place_meeting(x,y+1,obj_newslope_right) != 0)
	{
	    if (global.jumpingdm = 0)
	    {
		    global.jumping = 0;
		    global.grounded = 1;
	    }
	    if (sprite_index = spr_player_jump)
	    {
	        with(obj_camera)
			{
				yspin = -7;
			}
			y -= 7;
	        sprite_index = spr_player;
	        hspd = 0;
	    }
	    hspd = 0;
	    vspd = 0;
	    double_jump = 0; 
		jump_stopper1 = 0
		
	    State_machine_switch_state(Shooting); 
		audio_stop_sound(snd_player_spinjump);
		audio_stop_sound(snd_player_spacejump);
		audio_stop_sound(snd_player_screwattack);
		audio_stop_sound(snd_swordswoosh);
		
		PlayerLandingSFX();
		
	    global.jumping_maxheight = 0;
		global.dash2 = 0;
		global.dashbegin2 = 0;
		global.dash2_spark = 0
		global.turning_dash2 = 0;
		global.dash2_jump = 0
	     
	}
	
	
	
	
	
	


	if (against_wall_du = 1) && (jump = 1)
	{
	    jump_stopper1 = 0;
		State_machine_switch_state(Jumping);
	}


	//Checking ledges
	Check_if_ledge();
	
	

	if (vspd > 0) && (right_height) && ((blockvar2) or (blockvar4)) = 0
	{
	    vspd += grav;
	}




}
