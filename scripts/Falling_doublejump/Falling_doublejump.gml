function Falling_doublejump() {
	
	audio_stop_sound(snd_player_footstep);

	global.hang = 0;
	global.grounded = 0;
	global.climbing = 0;
	global.lockdown_facingDir = 0;
	global.shoot = 0;
	
	global.dash2_jump = 0;
	global.dash2_spark = 0;
	global.dash2 = 0;
	global.dashbegin = 0;
	global.dashbegin2 = 0;
	global.dashend = 0;

	//for when loading the game
	if (global.loading == 1)
	{
		exit;	
	}

	//player sprites
	with(object_player2_0_sprites)
	{
		if ((image_index >= 3) && (image_index < 4))
			{
				audio_stop_sound(snd_swordswoosh)
				snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
				audio_sound_set_track_position(snd,0.6)
			}
		
		if (global.facingDir > 0)
		{
			sprite_index = spr_spacejump_right	
		}
		else if (global.facingDir < 0)
		{
			sprite_index = spr_spacejump_left	
		}
	
		x = obj_player.x;
		y = obj_player.y;
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
	if (dash_pressed) && (global.airdash == 1) && ((obj_player.enemy_slowdownswitch == 0))
	&& (dash_jump == 0)
	{
	    sprite_index = spr_player_jump;
	    global.jumping = 1;
	    global.jumpingdm = 1;
		
		audio_stop_sound(snd_player_spinjump_shorter);
		audio_stop_sound(snd_player_spinjump);
		
	    jump_stopper1 = 0;
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
		
		audio_stop_sound(snd_player_spinjump_shorter);
		audio_stop_sound(snd_player_spinjump);
	    
		jump_stopper1 = 0;
		dash_jump = 1;
		
	    State_machine_switch_state(Jump_after_Dashing_hydrodash);
	}
	else if (jump_pressed) && (global.jumpingdm == 0)
	{
	    sprite_index = spr_player_jump;
	    global.jumping = 1;
	    global.jumpingdm = 1;
		speed_x = 1;
		hspd = floor(global.facingDir*speed_x);
		audio_stop_sound(snd_player_spinjump)
		audio_play_sound(snd_player_spinjump,1,false,global.sfx_volume)
	
	}

	if (global.turning = 0) && (ability) && (global.sword_available = 1)
	{
		State_machine_switch_state(Sword_jump)
		with(object_player2_0_sprites)
		{
			instance_create_depth(id.x,id.y,id.depth,obj_player_sword_hitbox)	
		}
	}

	//if outside room, reset game
	if (y > room_height) or (global.health1 <= 0)
	{
	    State_machine_switch_state(Dead);
	}


	//SHOOTING
	PreShooting();
	

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


	//COLLISIONS - landing on something
	PlayerLanding();


	//Checking ledges
	Check_if_ledge();
	
	

	if (vspd > 0) && (right_height) && ((blockvar2) or (blockvar4)) = 0
	{
	    vspd += grav;
	}





}
