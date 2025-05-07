function Jump_after_Dashing_hydrodash() {
	//if no health, reset game
	global.jumpingdm = 1;
	global.lockdown_facingDir = 0;

	if (global.health1 <= 0)
	{
	    State_machine_switch_state(Dead);
	    global.hurt = 0;
		global.hydrodash_use = 0;
		global.hydrodash = 0;
	}

	var instairdash = instance_create_depth(x,y,object_player2_0_sprites.depth-1,obj_airdasheffect);


	//right
	if (input_horizontal > 0) && (up_key)
	{
		hspd = 5;
		vspd = -9;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_rightup;
		}
	}
	else if (input_horizontal > 0) && (down_key)
	{
		hspd = 5;
		vspd = 9;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_rightdown;
		}
	}
	else if (input_horizontal > 0)
	{
		hspd = 5;
		vspd = 0;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_right;
		}
	}
	//left
	else if (input_horizontal < 0) && (up_key)
	{
		hspd = -5;
		vspd = -9;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_leftup;
		}
	}
	else if (input_horizontal < 0) && (down_key)
	{
		hspd = -5;
		vspd =  9;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_leftdown;
		}
	}
	else if (input_horizontal < 0)
	{
		hspd = -5;
		vspd =  0;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_left;
		}
	}
	//up/down or no input horizontal
	else if (input_horizontal == 0) && (up_key)
	{
		hspd =  0;
		vspd = -9;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_up;
		}
	}
	else if (input_horizontal == 0) && (down_key)
	{
		hspd = 0;
		vspd = 9;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_down;
		}
	}
	else if (input_horizontal == 0) && (global.facingDir > 0)
	{
		hspd = 5;
		vspd = 0;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_right;
		}
	}
	else if (input_horizontal == 0) && (global.facingDir < 0)
	{
		hspd = -5;
		vspd =  0;
		with(obj_airdasheffect)
		{
			sprite_index = spr_airdash_left;
		}
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
		//jumping-hydrodash
	    if (global.facingDir = -1) && ((obj_player.enemy_slowdownswitch == 1) && (global.hydrodash == 1)) // && (global.spacejump = 1)
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_hydrodash_left;
	        image_speed = 1;
	        x = obj_player.x;
	        y = obj_player.y-2;
	        }
	    }
	    else if (global.facingDir = 1) && ((obj_player.enemy_slowdownswitch == 1) && (global.hydrodash == 1)) // && (global.spacejump = 1)
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

	State_machine_switch_state(Falling_Dashing2_hydrodash);


}
