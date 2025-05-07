function Sword_jump() {
	
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
	
	//sword wave upgrade
	if (global.sword_wave_available = 1)
	{
		if (!instance_exists(obj_swordwave_energycircle))
		{
			instance_create_layer(id.x,id.y,layer_get_id("Inst_level_0"),obj_swordwave_energycircle)
			
			var sny = audio_play_sound(snd_sword_wave,1000,false);
			audio_sound_gain(sny,0.1,0);
		}	
	}
	

	//player sprites
	with(object_player2_0_sprites)
	{
		if (sprite_index != spr_swordjump_right) && (sprite_index != spr_swordjump_left)
		{
			image_index = 0	
		}
	
		if ((image_index >= 3) && (image_index < 4))
			{
				audio_stop_sound(snd_saber1)
				snd = audio_play_sound(snd_saber1,1000,false,global.sfx_volume)
				audio_sound_set_track_position(snd,0.1)
			}
		
		if (global.facingDir > 0)
		{
			sprite_index = spr_swordjump_right
			with(obj_player_sword_hitbox)
			{
				sprite_index = spr_swordjump_right_hitbox
				x = obj_player.x;
				y = obj_player.y;
				image_index = object_player2_0_sprites.image_index
			}
		}
		else if (global.facingDir < 0)
		{
			sprite_index = spr_swordjump_left
			with(obj_player_sword_hitbox)
			{
				sprite_index = spr_swordjump_left_hitbox
				x = obj_player.x;
				y = obj_player.y;
				image_index = object_player2_0_sprites.image_index
			}
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

	//dash & double jump ability
	if (dash_pressed) && (global.airdash == 1) && ((obj_player.enemy_slowdownswitch == 0))
	{
	    sprite_index = spr_player_jump;
	    global.jumping = 1;
	    global.jumpingdm = 1;
		//global.spacejump = 1
	    jump_stopper1 = 0;
		dash_jump = 1;
	
		instance_destroy(obj_player_sword_hitbox)
		audio_stop_sound(snd_saber1)
	
	    State_machine_switch_state(Jump_after_Dashing_airdash);
	}
	else if (dash_pressed) && (vspd > 0) && ((obj_player.enemy_slowdownswitch == 1) && (global.hydrodash == 1))
	{
	    sprite_index = spr_player_jump;
	    global.jumping = 1;
	    global.jumpingdm = 1;
		global.hydrodash_use = 1;
	    jump_stopper1 = 0;
		dash_jump = 1;
	
		instance_destroy(obj_player_sword_hitbox)
		audio_stop_sound(snd_saber1)
	
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



	//if outside room, reset game
	if (y > room_height) or (global.health1 <= 0)
	{
	    State_machine_switch_state(Dead);
	}


	//shooting
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
		    hspd = floor(input_horizontal * speed_x)-hspd_enemy;
		}
		else if (!(global.turning = 0) or !(global.dashbegin = 0) or !(global.constantspd <= 0) or (input_horizontal == 0)) && (speed_x > 1)
		{
		    if (speed_x > 1)
		    {
		    speed_x -= 0.5;
		    }
		    hspd = floor(global.facingDir * speed_x)-hspd_enemy;
		}
	}
	else if (enemy_slowdownswitch > 0)
	{
		if (global.turning = 0) && (global.dashbegin = 0) && (global.constantspd <= 0) && (input_horizontal != 0)
		{
		    hspd = floor(input_horizontal*1)-hspd_enemy;
		}
		else if (!(global.turning = 0) or !(global.dashbegin = 0) or !(global.constantspd <= 0) or (input_horizontal == 0))
		{
		    if (speed_x > 0)
		    {
		    speed_x -= 0.5;
		    }
		    hspd = floor(global.facingDir * speed_x)-hspd_enemy;
		}
	}

	//collisions
	PlayerLanding();

	//Checking ledges
	Check_if_ledge();
	
	

	if (vspd > 0) && (right_height) && ((blockvar2) or (blockvar4)) = 0
	{
	    vspd += grav;
	}



}
