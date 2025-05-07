function Falling_Dashing2_airdash() {

	jump_held = 0;
	dash_jump = 1;
	audio_stop_sound(snd_player_footstep);

	global.hang = 0;
	global.grounded = 0;
	global.climbing = 0;
	global.lockdown_facingDir = 0;

	 

	//player sprites
	with(object_player2_0_sprites)
	{
		//jumping-spin
	    if  (global.facingDir = -1) && (global.jumpingdm = 1) && (global.screwjump = 0) && (global.spacejump = 0)
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_spinjump_left;
	        image_speed = 1;
	        x = obj_player.x;
	        y = obj_player.y+4;
	        }
	    }
	    else if (global.facingDir = 1) && (global.jumpingdm = 1) && (global.screwjump = 0) && (global.spacejump = 0)
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_spinjump_right;
	        image_speed = 1;
	        x = obj_player.x;
	        y = obj_player.y+4;
	        }
	    }
	    //jumping-screwattack
	    if (global.facingDir = -1) && (global.jumpingdm = 1) && (global.screwjump = 1)// && (global.spacejump = 1)
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_screwjump_left1;
	        image_speed = 1;
	        x = obj_player.x;
	        y = obj_player.y-2;
	        }
	    }
	    else if (global.facingDir = 1) && (global.jumpingdm = 1) && (global.screwjump = 1)// && (global.spacejump = 1)
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_screwjump_right1;
	        image_speed = 1;
	        x = obj_player.x;
	        y = obj_player.y-2;
	        }
	    }
	    //jumping-spacejump
	    if (global.facingDir = -1) && (global.jumpingdm = 1) && (global.spacejump = 1) && (global.screwjump = 0)
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_spacejump_left;
	        image_speed = 1;
	        x = obj_player.x;
	        y = obj_player.y-2;
	        }
	    }
	    else if (global.facingDir = 1) && (global.jumpingdm = 1) && (global.spacejump = 1) && (global.screwjump = 0)
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_spacejump_right;
	        image_speed = 1;
	        x = obj_player.x;
	        y = obj_player.y-2;
	        }
	    }	
	}

	if (global.jumpingdm = 1)
	{
		global.turning = 0;
		with(object_player2_0_sprites)
		{
			if ((image_index >= 7) && (image_index < 8)) or ((image_index >= 19) && (image_index < 20))
			{
				if ((!global.spacejump) && (!global.screwjump)) or (obj_player.enemy_slowdownswitch = 1)
				{
					audio_stop_sound(snd_player_spinjump);
					audio_play_sound(snd_player_spinjump,1000,false,global.sfx_volume);
					sound_spin = 0;
				}
				else if (image_index >= 7) && (image_index < 8) && (global.spacejump) && (!global.screwjump) && (obj_player.enemy_slowdownswitch = 0)
				{
					audio_stop_sound(snd_player_spacejump);
					audio_play_sound(snd_player_spacejump,1000,false,global.sfx_volume);	
					sound_spin = 0;
				}
				else if (image_index >= 7) && (image_index < 8) && (global.screwjump) && (obj_player.enemy_slowdownswitch = 0)
				{
					audio_stop_sound(snd_electricity_short)
					var snd = audio_play_sound(snd_electricity_short,1000,false,global.sfx_volume)
					sound_spin = 0;
				}
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
		speed_x = 0
	}

	if (place_meeting(x+round(speed_x),y+round(speed_x),obj_block))
	{
		speed_x = 0
	}



	//if outside room, reset game
	if (y > room_height) or (global.health1 <= 0)
	{
	    global.dash2_spark = 0
		global.dash2_jump = 0
		
		State_machine_switch_state(Dead);
	}
	
	//double jump (jet jump upgrade)
	if (jump_pressed) && (global.spacejump == 1) && ((obj_player.enemy_slowdownswitch == 0) or (global.hydrodash == 1))
	&& (double_jump = 0)
	{
	    sprite_index = spr_player_jump;
	    global.jumping = 1;
	    global.jumpingdm = 1;
		global.dash2_jump = 0;
		global.dash2_spark = 0;

		jump_stopper1 = 0
	    double_jump = 1;
		
		audio_stop_sound(snd_player_spinjump_shorter);
		audio_stop_sound(snd_player_spinjump);
		
	    State_machine_switch_state(Jumping_doublejump);
	}


	//SHOOTING
	PreShooting();

	//falling physics
	if (enemy_slowdownswitch = 0)
	{
		if (vspd < 7)
	    {
	        vspd = vspd+grav;
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
	if (enemy_slowdownswitch == 0)
	{
		if (input_horizontal != 0)
		{
		    if (speed_x < 0) && (speed_x < -5)
		    {
				speed_x += 0.25;
		    }
		    else if (speed_x > 0) && (speed_x > 5)
		    {
		        speed_x -= 0.25;
		    }
	
			if (speed_x != 0)
			{
				hspd = floor(abs(speed_x) * input_horizontal)
			}
			else if (speed_x == 0)
			{
				hspd = (5 * input_horizontal)
			}
		}
		else if (input_horizontal == 0)
		{
		    if (speed_x < 0) && (speed_x < -5)
		    {
				speed_x += 0.25;
		    }
		    else if (speed_x > 0) && (speed_x > 5)
		    {
		        speed_x -= 0.25;
		    }
	
			if (speed_x != 0)
			{
				hspd = floor(abs(speed_x) * global.facingDir)
			}
		}
	}
	else if (enemy_slowdownswitch > 0)
	{
		if (input_horizontal != 0)
		{
		    hspd = floor(input_horizontal*2)-hspd_enemy;
		}
		else if (input_horizontal == 0)
		{
		    if (speed_x > 0)
		    {
				speed_x -= 0.5;
		    }
		    hspd = floor(global.facingDir * speed_x)-hspd_enemy;
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
