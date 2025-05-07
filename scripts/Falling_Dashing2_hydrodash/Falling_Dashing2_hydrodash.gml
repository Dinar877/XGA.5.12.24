function Falling_Dashing2_hydrodash() {

	jump_held = 0;
	dash_jump = 1;
	speed_x = 3;
	
	audio_stop_sound(snd_player_footstep);
	global.hang = 0;
	global.grounded = 0;
	global.climbing = 0;
	global.lockdown_facingDir = 0;

	 

	//player sprites
	with(object_player2_0_sprites)
	{
		if (global.facingDir = -1) && (global.hydrodash == 1)
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_hydrodash_left;
	        image_speed = 1;
	        x = obj_player.x;
	        y = obj_player.y-2;
	        }
	    }
	    else if (global.facingDir = 1) && (global.hydrodash == 1)
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_hydrodash_right;
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
			if (image_index >= 7) && (image_index < 8)
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
					audio_stop_sound(snd_player_screwattack);
					audio_play_sound(snd_player_screwattack,1000,false,global.sfx_volume);	
					sound_spin = 0;
				}
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
	if (dash_pressed) && (global.jumpingdm == 1) && (vspd > 0) && ((obj_player.enemy_slowdownswitch == 1) && (global.hydrodash == 1))
	&& (dash_jump == 0)
	{
	    sprite_index = spr_player_jump;
	    global.jumping = 1;
	    global.jumpingdm = 1;
	    jump_stopper1 = 0;
		dash_jump = 1;
	    State_machine_switch_state(Jump_after_Dashing_hydrodash);
	}

	//if outside room, reset game
	if (y > room_height) or (global.health1 <= 0)
	{
	    global.hydrodash_use = 0;
		State_machine_switch_state(Dead);
	}


	//SHOOTING
	PreShooting();

	//falling physics
	if (vspd < 3) && ((global.hang = 0) or (global.climbing = 0) or (global.grounded = 0)) && (jump)
		{
		    vspd += grav;
		}
	else if (vspd <= 0) && ((global.hang = 0) or (global.climbing = 0) or (global.grounded = 0)) && (!jump) && (jump_stopper1 = 0)
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

	//horizontal movement
	if (input_horizontal != 0)
	{
	    hspd = floor(input_horizontal * 4);
	}
	else if (input_horizontal = 0)
	{
		hspd = global.facingDir;
	}


	//COLLISIONS - landing on something
	PlayerLanding();



	if (against_wall_du = 1) && (jump = 1)
	{
	    global.hydrodash_use = 0;
		State_machine_switch_state(Jumping);
	}

	//Checking ledges
	Check_if_ledge();
	
	

	if (vspd > 0) && (right_height) && ((blockvar2) or (blockvar4)) = 0
	{
	    vspd += grav;
	}

	//walljumping!!!
	if ((!blockvar2) and (!blockvar4)) && (place_meeting(x+(input_horizontal),y,obj_block))
	{   
	    walljump_timer += 0.2;
		if ((jump_pressed) or (keyboard_check_pressed(ord("W"))))
		{
			State_machine_switch_state(Wall_jump);
			    hspd = 0;
			    vspd = 0;
			    grav = 0;
			    jump_stopper1 = 0; 
				walljump_timer = 0;
			    global.walljump = 1;
				global.lockdown_facingDir = 0;
				global.hydrodash_use = 0;
		}
	}





}
