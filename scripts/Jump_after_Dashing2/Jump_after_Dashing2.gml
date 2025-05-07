function Jump_after_Dashing2() {
	//if no health, reset game
	if (global.health1 <= 0)
	{
	    State_machine_switch_state(Dead);
	    global.hurt = 0;
	}

	jump = 1;
	global.grounded = 0;
	
	global.jumpingdm = 1;
	global.dash2_jump = 1
	
	global.dash2_spark = 0



	hspd = (global.facingDir*3);
	if (enemy_slowdownswitch > 0)
	{
		hspd = input_horizontal*2
	}



	vspd = jump_speed;

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

	if (vspd < 0)
	{
	    State_machine_switch_state(Falling_Dashing2);
		if (global.jumpingdm == 1)
		{
		audio_play_sound(snd_player_spinjump,1,false,global.sfx_volume);
		}
	}


}
