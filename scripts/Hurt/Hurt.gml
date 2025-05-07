function Hurt() {
	//remove health
	//global.charging = 0;
	//global.charge_ready = 0;
	//global.charge_shot = 0;
	global.dash2 = 0;
	global.turning_dash2 = 0;
	global.turningLedge = 0
	global.image_speed_lockdown = 0
	global.hangAiming = 0;
	
	//turn off nanoshield
	if (global.nanoshield > 0) && (global.nanoshield_ammo <= 0)
	{
		global.nanoshield = 0;
	}
	
	input_horizontal = 0;
	ledge_ready = 0;

	audio_stop_sound(snd_player_footstep)
	audio_stop_sound(snd_player_hang)
	audio_stop_sound(snd_player_climb)
	audio_stop_sound(snd_player_screwattack)

	//if no health, reset game
	if (global.health1 < 1)
	{
	    global.dead_begin = 1;
	    global.hurt = 0;
		with(obj_healthnumberten)
			{
					health_decrease_go = 0
					health_decrease = 0
					health_total = 0
			}
	    State_machine_switch_state(Dead);
	}
	//pure suit
	else if (global.suit_pure = 1)
	{
		if (global.mode_recommended > 0)
		{
			with(obj_healthnumberten)
			{
				if (health_decrease_go < 1)
				{
					health_decrease = (1*global.healthKiller)*(1-global.defense_booster);
					health_decrease_go = 1
					health_total = global.health1
				}
			}
		}
		else if (global.mode_recommended <= 0)
		{
			with(obj_healthnumberten)
			{
				if (health_decrease_go < 1)
				{
					health_decrease = (1*global.healthKiller)*(1-global.defense_booster);
					health_decrease_go = 1
					health_total = global.health1
				}
			}
		}
	}
	//no pure suit and no nano shield
	else if (global.suit_pure = 0)
	{
		if (global.mode_recommended > 0)
		{
			with(obj_healthnumberten)
			{
				if (health_decrease_go < 1)
				{
					health_decrease = (1*global.healthKiller)*(1-global.defense_booster);
					health_decrease_go = 1
					health_total = global.health1
				}
			}
		}
		else if (global.mode_recommended <= 0)
		{
			with(obj_healthnumberten)
			{
				if (health_decrease_go < 1)
				{
					health_decrease = (1*global.healthKiller)*(1-global.defense_booster);
					health_decrease_go = 1
					health_total = global.health1
				}
			}
		}
	}


	//unstuck out of block2barrier
	with(obj_player)
		{
			if (place_meeting(x+global.facingDir,y,obj_block2_nano))
			{
				while (place_meeting(x+global.facingDir,y,obj_block2_nano))
				{
					x -= global.facingDir;
				}
			}
			else if (place_meeting(x-global.facingDir,y,obj_block2_nano))
			{
				while (place_meeting(x-global.facingDir,y,obj_block2_nano))
				{
					x += global.facingDir;
				}
			}
		}

	//getting unstuck out of blocks
	with(obj_player)
		{
			if (position_meeting(x,bbox_top-1,obj_block)) && (!place_meeting(x,y,obj_block2_nano)) && (!position_meeting(x,bbox_bottom+1,obj_block))
			{
				while (position_meeting(x,bbox_top,obj_block)) && (!position_meeting(x,bbox_bottom+1,obj_block))
				{
					y ++;	
				}
			}
		}


	getup = 0;
	minidash = 0;
	global.lockdown_facingDir = 1;
	global.walljump = 0;
	global.jumping = 0;
	global.jumpingdm = 0;
	global.hang = 0;
	global.climbing = 0;
	global.running = 0;
	global.grounded = 0;
	global.turning = 0;
	gamepad4_wait = 0;
	gamepad0_wait = 0;
	__view_set( e__VW.Object, 0, obj_camera );

	with(obj_player_dashfire)
	{
		sprite_index = -1;
		started = 0;
		phase1 = 0;
		phase2 = 0;
		adder = 0;
	}

	if (state != Dead)
	{
		with(object_player2_0_sprites)
		{
		    image_speed = 1;
			//actual damage
		    if (global.hurt = 1) && (global.dead_begin = 0)
		    {
		    if (image_index < image_number-1)
		    {
		        with(obj_player)
		        {
		            //if facing left
		            if (global.facingDir = -1)
		            {
						hspd = 1
						if (place_meeting(x,y+1,obj_block)) && (!place_meeting(x+hspd,y,obj_block))
						{
							x+=hspd;	
						}
						else if (place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x+hspd,y,obj_block))
						{
							x += hspd;
							y -= 1;
						}
						else if (place_meeting(x,y+1,obj_slope1_right)) && (!place_meeting(x+hspd,y,obj_block))
						{
							x += hspd;
							y += 1;
						}
		            }
		            //if facing left
		            if (global.facingDir = 1)
		            {
						hspd = -1;
						if (place_meeting(x,y+1,obj_block)) && (!place_meeting(x+hspd,y,obj_block))
						{
							x += hspd;	
						}
						else if (place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x+hspd,y,obj_block))
						{
							x += hspd;
							y += 1;
						}
						else if (place_meeting(x,y+1,obj_slope1_right)) && (!place_meeting(x+hspd,y,obj_block))
						{
							x += hspd;
							y -= 1;
						}
		            }
		        }
		    }
		if (image_index >= image_number-1) && (started_hurt = 1) && (global.dead_begin = 0)
		    {
		        global.hurt = 0;
		        global.hurt2 = 1;
		        global.lockdown_facingDir = 0;
		        global.invincible = 1;
		        started_hurt = 0;
		        image_index = 0;
		        image_speed = 0;
		        with(obj_player)
		        {
		            State_machine_switch_state(Falling);
		            hurt1 = 0;
					ledge_ready = 0;
					global.jumpingdm = 0;
		            x = round(x);
						with(obj_healthnumberten)
						{
								health_decrease_go = 0
						}
					//sprite_index = spr_player;
		        }
		    }
		}

		    //push back not hurt
		    if (global.nanoshield > 0) && (global.hurt2 > 0)
		    {
			    if (image_index >= image_number-1) && (started = 1)
			    {
			        global.hurt = 0;
			        global.hurt2 = 1;
			        global.lockdown_facingDir = 0;
			        global.invincible = 1;
			        started = 0;
			        image_index = 0;
			        image_speed = 0;
			        //sprite_index = spr_player_hurt1left;
			        with(obj_player)
			        {
			            State_machine_switch_state(Falling);
			            hurt1 = 0;
			            x = round(x);
			        }
			    }
		    }
    
		}


		/////Hurt states
		with(obj_player)
		{
		    //Hurt 1
		    if (state = Hurt) && (global.facingDir = 1) && (global.dead_begin = 0)
		    {
		        with (object_player2_0_sprites)
		            {
		                if  (started_hurt = 0)
		                {
		                    started_hurt = 1;
		                    image_index = 0;
							image_speed = 1;
		                    sprite_index = spr_player_hurt1left;
						
							audio_play_sound(snd_metalcrash,1000,false,global.sfx_volume)
		                }
		                sprite_index = spr_player_hurt1left;
		                image_speed = 1;
		                y = obj_player.y+1;
		                x = obj_player.x;
		            }
		    }
		    if (state = Hurt) && (global.facingDir = -1) && (global.dead_begin = 0)
		    {
		        with (object_player2_0_sprites)
		            {
		                if  (started_hurt = 0)
		                {
		                    started_hurt = 1;
		                    image_index = 0;
							image_speed = 1;
		                    sprite_index = spr_player_hurt1right;
						
							audio_play_sound(snd_metalcrash,1000,false,global.sfx_volume)
		                }
		                sprite_index = spr_player_hurt1right;
		                image_speed = 1;
		                y = obj_player.y+1;
		                x = obj_player.x+3;
		            }
		    }
		}
	}



}
