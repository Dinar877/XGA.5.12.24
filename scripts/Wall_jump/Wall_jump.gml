function Wall_jump() {
	//if no health, reset game
	if (global.health1 <= 0)
	{
	    global.jumping = 0;
	    global.jumpingdm = 0;
	    global.hang = 0;
	    global.climbing = 0;
	    global.running = 0;
	    global.grounded = 0;
	    global.turning = 0;
	    global.walljump = 0;
	    State_machine_switch_state(Dead);
		exit;
	}
	
	double_jump = 0
	vspd = 0;
	walljump_timer = 0;
	
	global.lockdown_facingDir = 0;
	global.image_speed_lockdown = 0
	global.turningLedge = 0
	global.walljump = 1

	audio_stop_sound(snd_player_normaljump);
	audio_stop_sound(snd_player_spinjump);
	audio_stop_sound(snd_player_spacejump);
	audio_stop_sound(snd_swordswoosh)

	with(object_player2_0_sprites)
	{
		//facing right
	    if (sprite_index != spr_cliff_jump_right) && (global.walljump = 1) && (global.facingDir < 0)
		{
			sprite_index = spr_cliff_jump_right
			image_speed = 1
			x = obj_player.x-1;
	        y = obj_player.y;
		}
		else if (sprite_index == spr_cliff_jump_right) && (global.walljump = 1) && (global.facingDir < 0)
		{
			sprite_index = spr_cliff_jump_right
			image_speed = 1
			x = obj_player.x-1;
	        y = obj_player.y;
		}
		
		//facing left
		if (sprite_index != spr_cliff_jump_left) && (global.walljump = 1) && (global.facingDir > 0)
		{
			sprite_index = spr_cliff_jump_left
			image_speed = 1
			x = obj_player.x-1;
	        y = obj_player.y;
		}
		else if (sprite_index == spr_cliff_jump_left)
		{
			sprite_index = spr_cliff_jump_left
			x = obj_player.x-1;
	        y = obj_player.y;
		}
	
		if (image_index >= image_number-1) && (sprite_index = spr_cliff_jump_right) && (global.walljump = 1)
	    {
	        sprite_index = spr_original_spinjump_left;
	        image_index = 1;
	        image_speed = 1;
	        with(obj_player)
	        {
	            sprite_index = spr_player_jump;
	            global.facingDir = 1;
	            global.jumping = 1;
	            global.jumpingdm = 1;
	            global.walljump = 0;
	            global.spawnitem_wjl = 1;
	            hspd = (global.facingDir*5);
	            State_machine_switch_state(Jump_after_wj);
				audio_play_sound(snd_player_walljump,1,false,global.sfx_volume);
	            global.constantspd = 1;
            
	        }
	    }
	    if (image_index >= image_number-1) && (sprite_index = spr_cliff_jump_left) && (global.walljump = 1)
	    {
			sprite_index = spr_original_spinjump_right;
	        image_index = 1;
	        image_speed = 1;
			with(obj_player)
	        {
	            sprite_index = spr_player_jump;
	            global.facingDir = -1;
	            global.jumping = 1;
	            global.jumpingdm = 1;
	            hspd = (global.facingDir*5);
	            State_machine_switch_state(Jump_after_wj);
				audio_play_sound(snd_player_walljump,1,false,global.sfx_volume);
	            global.walljump = 0;
	            global.spawnitem_wjr = 1;
	            global.constantspd = 1;
            
	        }
	    }
	}



}
