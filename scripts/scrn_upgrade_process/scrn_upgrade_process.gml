function scrn_upgrade_process() {
	//make sure player is in correct position
	if (global.stopper_2ndscrnshot = 0) && (global.upgrade_process = 1) && (deact == 0)
	{
	    FadeNow = 0.0;
		deact = 1;
		notnow1 = 0;
	    started1 = 0;
		image_alpha = 0;
		sprite_index = spr_scrnDark
		global.stopper_2ndscrnshot = 0;
		audio_stop_sound(snd_electricity)
	}

	///Make first screen shot and fade out with second one
	if (global.upgrade_process = 1) && (global.stopper_2ndscrnshot = 0) && (deact == 1)
	{
	    if (global.upgrade_process = 1) && (started1 = 0) && (FadeNow <= 0.8)
	    {
	        FadeNow = 0.0;
			image_alpha = 0;
	        started1 = 1;
	    }
	    if (FadeNow <= 0.8) && (global.upgrade_process = 1) && (started1 = 1)
	    {
	        FadeNow += 0.05;
			image_alpha += 0.05;
	    }
	    if (FadeNow >= 0.8) && (global.upgrade_process = 1) && (started1 = 1)
	    {
	        FadeNow = 0.8;
			image_alpha = 0.8;
	    }
	}

	//get second screenshot then fade out
	if (global.upgrade_process = 1) && (global.stopper_2ndscrnshot = 0) && (FadeNow == 0.8) && (fadeout1 = 1)
	{
	    FadeNow = 0.8;
	    image_alpha = 0.8;
	    global.stopper_2ndscrnshot = 1;
		//health
		if (instance_exists(obj_upgradeprocess_HealthCan_text))
		{
			with(obj_upgradeprocess_HealthCan_text)
			{
				instance_destroy();
			}
		}
	
		if (instance_exists(obj_upgradeprocess_HealthCtext_press))
		{
			with(obj_upgradeprocess_HealthCtext_press)
			{
				instance_destroy();
			}
		}
	
		if (instance_exists(obj_upgradeprocess_HealthCan_text_smaller))
		{
			with(obj_upgradeprocess_HealthCan_text_smaller)
			{
				instance_destroy();
			}
		}
		//spread
		if (instance_exists(obj_upgradeprocess_Spreadbeam_text))
		{
			with(obj_upgradeprocess_Spreadbeam_text)
			{
				instance_destroy();
			}
		}
		//surge
		if (instance_exists(obj_upgradeprocess_SurgeBoots_text))
		{
			with(obj_upgradeprocess_SurgeBoots_text)
			{
				instance_destroy();
			}
		}
		//infinity
		if (instance_exists(obj_upgradeprocess_InfinityBoots_text))
		{
			with(obj_upgradeprocess_InfinityBoots_text)
			{
				instance_destroy();
			}
		}
		//charge
		if (instance_exists(obj_upgradeprocess_ChargeBeam_text))
		{
			with(obj_upgradeprocess_ChargeBeam_text)
			{
				instance_destroy();
			}
		}
		//Pure Suit
		if (instance_exists(obj_upgradeprocess_Puresuit_text))
		{
			with(obj_upgradeprocess_Puresuit_text)
			{
				instance_destroy();
			}
		}
		//Burn beam
		if (instance_exists(obj_upgradeprocess_Burnbeam_text))
		{
			with(obj_upgradeprocess_Burnbeam_text)
			{
				instance_destroy();
			}
		}
	
	
		//invisibility
		if (instance_exists(obj_upgradeprocess_invisibility))
		{
			with(obj_upgradeprocess_invisibility)
			{
				instance_destroy();
			}
		}
	
		//airdash
		if (instance_exists(obj_upgradeprocess_airdash_text))
		{
			with(obj_upgradeprocess_airdash_text)
			{
				instance_destroy();
			}
		}
	
		//Burn beam
		if (instance_exists(obj_upgradeprocess_homingbeam_text))
		{
			with(obj_upgradeprocess_homingbeam_text)
			{
				instance_destroy();
			}
		}
	
		//nanoshield
		if (instance_exists(obj_upgradeprocess_nanoshield))
		{
			with(obj_upgradeprocess_nanoshield)
			{
				instance_destroy();
			}
		}
	
		if (instance_exists(obj_text_spawning_biome1_hydrodash))
		{
			with(obj_text_spawning_biome1_hydrodash)
			{
				instance_destroy();
			}
		}
	
		if (instance_exists(obj_texty_heading))
		{
			with(obj_texty_heading)
			{
				instance_destroy();
			}
		}
	
		//text spawning arrow
		if (instance_exists(obj_text_spawning_arrow))
		{
			with(obj_text_spawning_arrow)
			{
				instance_destroy();
			}
		}


	
		with(obj_upgradeprocess_HealthCtext_press)
		{
			instance_destroy();
		}
		with(obj_upgradeprocess_text_underside)
		{
			instance_destroy();
		}
	}

	if (global.upgrade_process = 1) && (global.stopper_2ndscrnshot = 1)
	{
	    FadeNow -= 0.05;
		image_alpha -= 0.05;
		if (instance_exists(obj_texty_generic))
			{
				with(obj_texty_generic)
				{
					image_alpha -= 0.05
				}
			}
		if (instance_exists(obj_texty_generic_upgrade))
			{
				with(obj_texty_generic_upgrade)
				{
					image_alpha -= 0.05
				}
			}
	}

	//kill the screenshot object and reset everything
	if (FadeNow < 0.0) && (global.stopper_2ndscrnshot = 1) && (global.upgrade_process = 1)
	{   
	                global.room_y = 0;
	                global.room_x = 0;
	                global.dashbegin = 0;
	                global.dashcharge = 0;
	                global.dashuse = 0;
	                global.dashend = 0;
					global.dashbegin2 = 0;
					global.dash2 = 0;
					global.pause = 0
					global.room_transition_notnowL1 = 0;
					global.room_transition_notnowR1 = 0;
					global.upgrade_process = 0;
	                if (instance_exists(obj_camera))
	                {
	                __view_set( e__VW.Object, 0, obj_camera );
	                }
	                deact = 0;
	                started1 = 0;
	                FadeNow = 0.0;
	                notnow = 0;
	                notnow1 = 0;
	                stopper2 = 0;
					fadeout1 = 0;
	                black_screen_alpha = 0;
                
					if (instance_exists(obj_texty_generic))
					{
						instance_destroy(obj_texty_generic);
					}
				
					if (instance_exists(obj_texty_generic_upgrade))
					{
						instance_destroy(obj_texty_generic_upgrade);
					}
				
	                global.stopper_2ndscrnshot = 0;
	                global.room_transition = 0; 
	                with(obj_player)
	                {
	                    State_machine_switch_state(Idle);
						sprite_index = spr_player
						
						//fail safe in case the checks above don't work-right slope
						while (place_meeting(x,y,obj_block))
						{
						     y --;
						}
						
						with(object_player2_0_sprites)
						{
							image_speed = 1	
						}

						lefty = 0;
	                    righty = 0;
	                    getup = 0;
	                    minidash = 0;
	                    with(obj_player_dashfire)
	                    {
	                    started = 0;
	                    phase1 = 0;
	                    }
						global.turning = 0;
			            global.hang = 0;
			            global.climbing = 0;
			            global.dashbegin = 0;
			            global.dashcharge = 0;
			            global.dashuse = 0;
			            global.dashend = 0;
			            global.walljump = 0;
			            global.dead_begin = 0;
			            global.hurt = 0;
	                }
					if (instance_exists(obj_texty_generic))
					{
						with(obj_texty_generic)
						{
							instance_destroy()
						}
					}
	                instance_destroy();
	}



}
