function Jump_after_Dashing_airdash() {
	//if no health, reset game
	global.jumpingdm = 1;
	global.dash2_jump = 1
	
	if (global.suit_shock = 1)
	{
		global.dash2_spark = 1
	}
	
	hspd_original = 0

	audio_stop_sound(snd_dash);
	var sny = audio_play_sound(snd_dash,1,false,global.sfx_volume);
	

	if (global.health1 <= 0)
	{
	    State_machine_switch_state(Dead);
	    global.hurt = 0;
	}

	var instairdash = instance_create_layer(x,y,layer_get_id("Inst_doors"),obj_airdasheffect);


	//right
	if (input_horizontal > 0) && (up_key)
	{
		hspd = 6;
		vspd = -6;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_rightup;
			depth = object_player2_0_sprites.depth-1
		}
	}
	else if (input_horizontal > 0) && (down_key)
	{
		hspd = 6;
		vspd = 6;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_rightdown;
			depth = object_player2_0_sprites.depth-1
		}
	}
	else if (input_horizontal > 0)
	{
		hspd = 6;
		vspd = 0;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_right;
			depth = object_player2_0_sprites.depth-1
		}
	}
	//left
	else if (input_horizontal < 0) && (up_key)
	{
		hspd = -6;
		vspd = -6;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_leftup;
			depth = object_player2_0_sprites.depth-1
		}
	}
	else if (input_horizontal < 0) && (down_key)
	{
		hspd = -6;
		vspd =  6;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_leftdown;
			depth = object_player2_0_sprites.depth-1
		}
	}
	else if (input_horizontal < 0)
	{
		hspd = -6;
		vspd =  0;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_left;
			depth = object_player2_0_sprites.depth-1
		}
	}
	//up/down or no input horizontal
	else if (input_horizontal == 0) && (up_key)
	{
		hspd =  0;
		vspd = -6;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_up;
		}
	}
	else if (input_horizontal == 0) && (down_key)
	{
		hspd = 0;
		vspd = 6;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_down;
		}
	}
	else if (input_horizontal == 0) && (global.facingDir > 0)
	{
		hspd = 6;
		vspd = 0;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_right;
		}
	}
	else if (input_horizontal == 0) && (global.facingDir < 0)
	{
		hspd = -6;
		vspd =  0;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_left;
		}
	}

	speed_x = hspd;

	if (enemy_slowdownswitch > 0)
	{
		hspd = input_horizontal*2
	}

	jump = 1;
	global.grounded = 0;
	global.jumpingdm = 1;


	if (state_new) = true
	{
	    //will eventually have stuff in but for now? :'(   
	}

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

	State_machine_switch_state(Falling_Dashing2_airdash);


}
