function Dashing2_use() {
	sprite_index = spr_player;
	global.grounded = 1;
	global.jumping_maxheight = 0;
	global.lockdown_facingDir = 0;
	global.turning = 0;
	limit = 0;
	
	vspd_wind = 0
	
	if (dash2timer > 0)
	{
		dash2timer -= 0.05;
	}
	 
	if (global.turning_dash2 = 1)
	{
		State_machine_switch_state(Dashing2_turning);	
		if (instance_exists(obj_player_dashspark))
		{
			with(obj_player_dashspark)
			{
				image_speed = 0
				image_alpha = 0
			}
		}
	}
	if (global.dash2 != 1) or (enemy_slowdownswitch = 1)
	{
		State_machine_switch_state(Idle);	
		global.dash2_spark = 0
	}

	with(object_player2_0_sprites)
	{
		if (global.facingDir = -1) && (global.dash2 = 1) && (global.hurt = 0) && (global.turning_dash2 = 0)
	    {
				with(obj_player)
				{
					if (dash2timer > 0)
					{
						if (global.suit_shock = 0)
						{
							if (timer_dashing_hspd < 1)
							{
								hspd = -5;
								timer_dashing_hspd += 1;
							}
							else if (timer_dashing_hspd >= 1)
							{
								hspd = -5;
							}
						}
						else if (global.suit_shock = 1)
						{
							if (timer_dashing_hspd < 1)
							{
								hspd = -5;
								timer_dashing_hspd += 1;
							}
							else if (timer_dashing_hspd >= 1)
							{
								hspd = -5;
							}
						}
						
						if ((place_meeting(x+hspd,y+2,obj_block)) or (place_meeting(x,y+2,obj_slope1_right)) or (place_meeting(x,y+2,obj_slope1_left))
						or (place_meeting(x,y+2,obj_newslope_right)) or (place_meeting(x,y+2,obj_newslope_left))
						or (place_meeting(x+hspd,y,obj_newslope_right)) or (place_meeting(x+hspd,y,obj_newslope_left)))
						{
							script_execute(Moving_slow_left_biggerthan1);
						}
						else if ((!place_meeting(x+hspd,y+2,obj_block)) && (!place_meeting(x,y+2,obj_slope1_right)) && (!place_meeting(x,y+2,obj_slope1_left))
						&& (!place_meeting(x,y+2,obj_newslope_right)) && (!place_meeting(x,y+2,obj_newslope_left)))
						{
							x += hspd
							
							State_machine_switch_state(Falling_Dashing2)
						}
					}
					else dash2timer = 10;
				}
				if ((image_index >= 4) && (image_index <= 5))
					or ((image_index >= 6) && (image_index <= 7))
					or ((image_index >= 8) && (image_index <= 9))
					{
						inst5 = instance_create_depth(obj_player.x+5,obj_player.y+18,400,obj_dashsmoke);
						with(inst5)
						{
							sprite_index = spr_dasheffect_smoke1left;
							image_speed = 1;
							Select = 1;
						}
					}
					
				if (image_index < image_number-1) && (sprite_index != spr_player_dash2_beginL)
	                {
	                    started_dash2 = 1;
	                    image_index = 4;
	                    y = obj_player.y+1;
	                    x = obj_player.x;
	                    sprite_index = spr_player_dash2_beginL;
	                }
				if (image_index < 17) && (sprite_index = spr_player_dash2_beginL)
		        {
		            y = obj_player.y+1;
		            x = obj_player.x;
		            sprite_index = spr_player_dash2_beginL;
				}
		        if (image_index < image_number-1) && (sprite_index = spr_player_dash2_beginL) && (image_index >= 17) 
		        {
		            y = obj_player.y+1;
		            x = obj_player.x;
		            sprite_index = spr_player_dash2_beginL;
				
					if (instance_exists(obj_player_dashspark))
					{
						with(obj_player_dashspark)
						{
							if (round(image_index) < 21)
							{
								image_index = 21
							}
						}
					}
		        }
		        if (image_index >= image_number-1) && (sprite_index = spr_player_dash2_beginL)
		        {
		            started_dash2 = 0;
		            adder = 0;
		            y = obj_player.y+1;
		            x = obj_player.x;
					with(obj_player)
					{
						timer_dashing_hspd = 0;
						stopper_dashing_afterimages = 0;
						global.dash2 = 0;
						global.dash2_spark = 0
						
						State_machine_switch_state(Idle);
					}
		        }
		}
		if (global.facingDir = 1) && (global.dash2 = 1) && (global.hurt = 0) && (global.turning_dash2 = 0)
	    {
				with(obj_player)
				{
					if (dash2timer > 0)
					{
						if (global.suit_shock = 0)
						{
							if (timer_dashing_hspd < 1)
							{
								hspd = 5;
								timer_dashing_hspd += 1;
							}
							else if (timer_dashing_hspd >= 1)
							{
								hspd = 5;
							}
						}
						else if (global.suit_shock = 1)
						{
							if (timer_dashing_hspd < 1)
							{
								hspd = 5;
								timer_dashing_hspd += 1;
							}
							else if (timer_dashing_hspd >= 1)
							{
								hspd = 5;
							}
						}
						
						if ((place_meeting(x+hspd,y+1,obj_block)) or (place_meeting(x,y+1,obj_slope1_right)) or (place_meeting(x,y+1,obj_slope1_left))
						or (place_meeting(x,y+2,obj_newslope_right)) or (place_meeting(x,y+2,obj_newslope_left))
						or (place_meeting(x+hspd,y,obj_newslope_right)) or (place_meeting(x+hspd,y,obj_newslope_left)))
						{
							script_execute(Moving_slow_right_biggerthan1);
						}
						else if ((!place_meeting(x+hspd,y+1,obj_block)) && (!place_meeting(x,y+1,obj_slope1_right)) && (!place_meeting(x,y+1,obj_slope1_left))
						&& (!place_meeting(x,y+2,obj_newslope_right)) && (!place_meeting(x,y+2,obj_newslope_left)))
						{
							x += hspd
							
							State_machine_switch_state(Falling_Dashing2)
						}
					}
				}
				if ((image_index >= 4) && (image_index <= 5))
					or ((image_index >= 6) && (image_index <= 7))
					or ((image_index >= 8) && (image_index <= 9))
					{
						inst5 = instance_create_depth(obj_player.x+5,obj_player.y+18,400,obj_dashsmoke);
						with(inst5)
						{
							sprite_index = spr_dasheffect_smoke1right;
							R2 = 1;
						}
					}
				if (image_index < image_number-1) && (sprite_index != spr_player_dash2_beginR1)
	                {
	                    started_dash2 = 1;
	                    image_index = 4;
	                    y = obj_player.y+1;
	                    x = obj_player.x;
	                    sprite_index = spr_player_dash2_beginR1;
					
	                }
				if (image_index < 17) && (sprite_index = spr_player_dash2_beginR1)
		        {
		            y = obj_player.y+1;
		            x = obj_player.x;
		            sprite_index = spr_player_dash2_beginR1;
		        }
		        if (image_index < image_number-1) && (sprite_index = spr_player_dash2_beginR1) && (image_index >= 17)
		        {
		            y = obj_player.y+1;
		            x = obj_player.x;
		            sprite_index = spr_player_dash2_beginR1;
				
					if (instance_exists(obj_player_dashspark))
					{
						with(obj_player_dashspark)
						{
							if (round(image_index) < 21)
							{
								image_index = 21
							}
						}
					}
		        }
		        if (image_index >= image_number-1) && (sprite_index = spr_player_dash2_beginR1)
		        {
		            started_dash2 = 0;
		            adder = 0;
		            y = obj_player.y+1;
		            x = obj_player.x;
					with(obj_player)
					{
						global.dash2 = 0;
						global.dash2_spark = 0
						timer_dashing_hspd = 0;
						stopper_dashing_afterimages = 0;
						State_machine_switch_state(Idle);
					}
		        }
		}
	}

	//if no health, reset game
	if (global.health1 <= 0)
	{
	    State_machine_switch_state(Dead);
		global.dash2_spark = 0
		if (instance_exists(obj_player_dasheffect))
		{
			with(obj_player_dasheffect)
			{
				instance_destroy()
			}
		}
	
		if (instance_exists(obj_player_dashspark))
		{
			with(obj_player_dashspark)
			{
				instance_destroy()	
			}
		}
	}

	if (state_new) = true
	{
	    //nothing for now
	}

	if (jump) && (falling = 0) && (global.lockdown_facingDir = 0)
	{
	    sprite_index = spr_player_jump;
	    global.jumping = 1;
	    global.jumpingdm = 1;
		with(object_player2_0_sprites)
		{
			started_dash2 = 0;
		    adder = 0;
		}
	
		if (instance_exists(obj_player_dasheffect))
		{
			with(obj_player_dasheffect)
			{
				instance_destroy()
			}
		}
	
		if (instance_exists(obj_player_dashspark))
		{
			with(obj_player_dashspark)
			{
				instance_destroy()	
			}
		}
	
		timer_dashing_hspd = 0;
		global.dash2 = 0;
		global.dashbegin = 0;
	
		global.turning_dash2 = 0;
		global.lockdown_facingDir = 0;
	
	
		if (global.suit_shock = 1)
		{
			global.screwjump = 1	
		}
	
	    State_machine_switch_state(Jump_after_Dashing2);
	}
	else if (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+1,obj_slope1_right)) && (!place_meeting(x,y+1,obj_slope1_left))
	&& (!place_meeting(x,y+2,obj_newslope_right)) && (!place_meeting(x,y+2,obj_newslope_left))
	{
	    sprite_index = spr_player_jump;
		global.jumping = 1;
	    global.jumpingdm = 1;
		with(object_player2_0_sprites)
		{
			started_dash2 = 0;
		    adder = 0;
		}
	
		if (instance_exists(obj_player_dasheffect))
		{
			with(obj_player_dasheffect)
			{
				instance_destroy()
			}
		}
	
		if (instance_exists(obj_player_dashspark))
		{
			with(obj_player_dashspark)
			{
				instance_destroy()	
			}
		}
		timer_dashing_hspd = 0;
		global.dash2 = 0;
		global.dashbegin = 0;
	
		if (global.suit_shock = 1)
		{
			global.screwjump = 1	
		}
	
		global.turning_dash2 = 0;
		global.lockdown_facingDir = 0;
	    State_machine_switch_state(Falling_Dashing2);
	}
	/*if (against_wall = 1) && (input_horizontal = 1)
	{
	    show_message("ayy");
	}
	else if (against_wall = -1) && (input_horizontal = -1)
	{
	    show_message("ayy");
	}
	*/



}
