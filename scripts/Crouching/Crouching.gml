function Crouching() {
	sprite_index = spr_player_crouch;
	global.crouching = 1;

	//if no health, reset game
	if (global.health1 <= 0)
	{
	    sprite_index = spr_player;
		with(obj_camera)
			{
				yspin -= 4;
			}
	    y -= 4;
	    global.crouching = 0;
	    State_machine_switch_state(Dead);
	}

	//if less health, go to hurt state
	if (global.hurt = 1)
	{
		with(obj_camera)
			{
				yspin -= 4;
			}
		sprite_index = spr_player;
	    y -= 4;
	    global.crouching = 0;
	    State_machine_switch_state(Hurt);
	}
	
	if (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
	&& (!place_meeting(x,y+2,obj_newslope_right))  && (!place_meeting(x,y+2,obj_newslope_left))
	{
		global.jumping = 1;
	    global.crouching = 0;
		
		with(obj_camera)
			{
				yspin -= 4;
			}
		
		sprite_index = spr_player;
	    y -= 4;
		
		State_machine_switch_state(Falling)
		exit
	}

	//jump
	if (jump = 1) && ((place_meeting(x,y+1,obj_block)) or (place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right))
	or (place_meeting(x,y+1,obj_newslope_left)) or (place_meeting(x,y+1,obj_newslope_right)))
	{
	    with(obj_camera)
			{
				yspin -= 4;
			}
		if (hspd = 0)
	    {
	        sprite_index = spr_player;
			y-=4;
	        global.jumping = 1;
	    }
	    else if (hspd != 0)
	    {
	        sprite_index = spr_player_jump;
	        global.jumping = 1;
	        global.jumpingdm = 1;
	    }
	    State_machine_switch_state(Jumping);
	    global.jumping = 1;
	    global.crouching = 0;
	}

	if (global.crouching = 1) && ((up_key-down_key) > 0) && (!Select) && (limit == 0) && !((shoot_pressed) && (shoot))
	{
	    with(obj_camera)
			{
				yspin = -4;
			}
		sprite_index = spr_player;
	    y -= 4;
	    State_machine_switch_state(Idle);
	    global.crouching = 0;
	}


	with(object_player2_0_sprites)
	{
	    if ((sprite_index = spr_crouch_left) or (sprite_index = spr_crouch_downleft) or (sprite_index = spr_crouch_upleft) or (sprite_index = spr_crouch_trueupleft))
	     && (left_key_pressed) && (global.turning == 0) && (!Select) && (global.crouching == 1)
	    {
	        with(obj_player)
	        {
	            with(obj_camera)
				{
					yspin = -4;
				}
				State_machine_switch_state(Move);
	            sprite_index = spr_player;
	            y -= 4;
	            global.crouching = 0;
	        }
	    }
	    if ((sprite_index = spr_crouch_right) or (sprite_index = spr_crouch_downright) or (sprite_index = spr_crouch_upright) or (sprite_index = spr_crouch_trueupright))
	     && (right_key_pressed) && (global.turning == 0) && (!Select) && (global.crouching == 1)
	    {
	        with(obj_player)
	        {
	            with(obj_camera)
				{
					yspin = -4;
				}
				State_machine_switch_state(Move);
	            sprite_index = spr_player;
	            y -= 4;
	            global.crouching = 0;
	        }
	    }
	}
	
	
	
	//sword charge stand
	if (ability_pressed) && (global.turning = 0) && (global.sword_available = 1)
	{
		State_machine_switch_state(Sword_crouch)
		exit
	}


	//shooting
	PreShooting();
	



}
