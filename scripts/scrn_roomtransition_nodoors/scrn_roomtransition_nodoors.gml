function scrn_roomtransition_nodoors() {
	if (sprite_index == -1) && (global.room_x != 1) && (global.room_transition_nodoors == 1) && (deact == 0) && (global.room_y != 1)
	&& (global.camera_shiftdown = 0) && (floor(y) = floor(obj_camera.y-90)) && (floor(x) = floor(obj_camera.bbox_right-319))
	{
		var tester1 = (floor(x))-(floor(obj_camera.bbox_right-319))
	
		//make screenshot
		if (global.mapgrid_1x1) && (global.mapgrid_xZeroMove) && (instance_exists(obj_darkness_effect))
		{
			var instDrk = instance_create_depth(0,0,obj_scrn_roomtransition.depth+1,obj_scrnDark)
			with(instDrk)
			{
				image_alpha = 1;
			}
		}
		if (instance_exists(obj_afterimage))
		{
			with(obj_afterimage)
			{
			instance_destroy();
			}
		}
	    scrn = sprite_create_from_surface(application_surface, 0, 0, obj_camera.bbox_right+1, obj_camera.bbox_bottom, false, false, 0, 0);
		instance_create_layer(0,0,layer_get_id("Inst_scrn"),obj_scrnDark)
		FadeNow = 0.0;
	    notnow1 = 0;
	    started1 = 0;
	    image_alpha = 1;
	    sprite_index = scrn;
		global.room_y = 1;
		global.stopper_2ndscrnshot = 0;
		global.room_transition_prep = 0;
	}

	//make sure player is in correct position
	if (global.room_y == 1) && (global.stopper_2ndscrnshot = 0) && (global.room_transition_nodoors == 1) && (deact == 0) && (sprite_index == scrn)
	&& (global.camera_shiftdown = 0)
	{
	    global.room_transition_prep = 0
		depth = -100000;
	
	
		global.inst_audio_N = 0
		for (var i = 0; i < 999; i++)
		{
			if (audio_emitter_exists(global.inst_audio_emitterID[i]))
			{
				audio_emitter_free(global.inst_audio_emitterID[i])
			}
			global.inst_audio_emitterID[i] = false
		}
	
		///particle system
		global.inst_particle_N = 0
		for (var i = 0; i < 999; i++)
		{
			if (part_emitter_exists(global.inst_particle_emitterID[i],global.inst_particle_system[i]))
			{
				part_emitter_destroy(global.inst_particle_emitterID[i],global.inst_particle_system[i])
			}
			global.inst_particle_emitterID[i] = false
		}
		for (var i = 0; i < 999; i++)
		{
			if (part_system_exists(global.inst_particle_system[i]))
			{
				part_system_destroy(global.inst_particle_system[i])
			}
			global.inst_particle_system[i] = false
		}
		for (var i = 0; i < 999; i++)
		{
			if (part_type_exists(global.inst_particle_type[i]))
			{
				part_type_destroy(global.inst_particle_type[i])
			}
			global.inst_particle_type[i] = false
		}
	
	
	
	
	
	    FadeNow = 0.0;
	    instance_deactivate_all(obj_scrn_roomtransition);
	
		instance_activate_object(obj_camera);
		instance_activate_object(object_player2_0_sprites);
		instance_activate_object(obj_door_border_left);
	    instance_activate_object(obj_door_border_right);
	
	    instance_activate_object(obj_link_healthUI);
		instance_activate_object(obj_maptile_tile);
		instance_activate_object(obj_deathscreennuke_maptile);
		instance_activate_object(obj_link_map);
	    instance_activate_object(obj_camera_stopperL);
	    instance_activate_object(obj_camera_stopperR);
	
	    deact = 1;
	}

	///Make first screen shot and fade out with second one
	if (global.room_transition_nodoors = 1) && (global.room_x = 0) && (global.room_y = 1) && (global.stopper_2ndscrnshot = 0)
	{
	
		if (global.room_transition_nodoors = 1) && (started1 = 0) && (FadeNow <= 1.0)
	    {
	        FadeNow = 0.0;
	        started1 = 1;
	    }
	    if (FadeNow <= 1.0) && (global.room_transition_nodoors = 1) && (started1 = 1)
	    {
	        FadeNow += ((1/room_speed)*6)
	    }
	    if (FadeNow >= 1.0) && (global.room_transition_nodoors = 1) && (started1 = 1)
	    {
	        FadeNow = 1.0;
	    }
	
		//audio
		Sfx_end();
	}
	

	
	
	
	

	//get second screenshot then fade out
	if (global.room_transition_nodoors = 1) && (global.room_x = 1) && (global.room_y = 1) && (global.stopper_2ndscrnshot = 0)
	{
	    global.stopper_2ndscrnshot = 1;
		global.room_transition_prep = 0;
		
		//make sure player is immediately in correct position
		if (doorleft)
		{
			instance_activate_object(obj_door_border_right);
			instance_activate_object(obj_player);
			instance_activate_object(object_player2_0_sprites);
			if (global.room_transition_notnowR1) && (instance_exists(obj_door_border_right))
			{
				with(obj_player)
				{
					x = obj_door_border_right.x+16;
					y = obj_door_border_right.y+global.door_height;
					
					object_player2_0_sprites.x = x;
					object_player2_0_sprites.y = y;
				
					global.mapgrid_playerx = floor((obj_player.x/320)+(global.mapgrid_startroomx));
					global.mapgrid_playery = floor((obj_player.y/180)+(global.mapgrid_startroomy));
				
					var n = 1
				}
			}
			
			instance_deactivate_object(obj_player)
		}
		else if (doorright)
		{
			instance_activate_object(obj_door_border_left);
			instance_activate_object(obj_player);
			instance_activate_object(object_player2_0_sprites);
			if (global.room_transition_notnowL1) && (instance_exists(obj_door_border_left))
			{
				with(obj_player)
				{
					x = obj_door_border_left.x-25;
					y = obj_door_border_left.y+global.door_height;	
					
					object_player2_0_sprites.x = x;
					object_player2_0_sprites.y = y;
				
					global.mapgrid_playerx = floor((obj_player.x/320)+(global.mapgrid_startroomx));
					global.mapgrid_playery = floor((obj_player.y/180)+(global.mapgrid_startroomy));
				
					var n = 1
				}
			}
			
			instance_deactivate_object(obj_player);
			instance_deactivate_object(object_player2_0_sprites);
		}
	
		instance_activate_all();
		audio_stop_sound(snd_electricity)
		audio_group_set_gain(audiogroup_sfx,global.sfx_volume,100)
		
		//set camera and scrn object Y
		if (instance_exists(obj_camera))
		{
			with(obj_camera)
			{
				if (room_height == 180) && (room_width == 320)
				{
					x = 160
					y = 90
				}
				else if (instance_exists(obj_camera_stopperU)) && (instance_exists(obj_camera_stopperD)) && (instance_exists(obj_camera_stopperL)) && (instance_exists(obj_camera_stopperR))
				{
					//X
					if !(global.climbing) && (instance_exists(obj_player))
					{
						x = obj_player.x
					}
					distance_to_border = obj_camera.x-obj_camera_stopperL.x-160;
					distance_to_border2 = obj_camera.x-obj_camera_stopperR.x+159;
					if (distance_to_border < 0)
					{
						while (distance_to_border < 0)
						{
							x++;
							distance_to_border = obj_camera.x-obj_camera_stopperL.x-160;
						}	
					}
					if (distance_to_border2 > 0)
					{
						while (distance_to_border2 > 0)
						{
							x--;
							distance_to_border2 = obj_camera.x-obj_camera_stopperR.x+159;
						}	
					}
					
					//Y
					if (room_height == 180) && (room_width == 320)
					{
						y = 90
					}
					else if !(global.climbing) && (instance_exists(obj_player))
					{
						y = obj_player.y-yspin-yshake-yshake2;
					}
					global.ygrid = 0
					distance_to_border3 = obj_camera.y-obj_camera_stopperU.y-90;
					distance_to_border4 = obj_camera.y-obj_camera_stopperD.y+90;
					if (distance_to_border3 < 0)
					{
						while (distance_to_border3 < 0)
						{
							y++;
							distance_to_border3 = obj_camera.y-obj_camera_stopperU.y-90;
						}	
					}
					if (distance_to_border4 > 0)
					{
						while (distance_to_border4 > 0)
						{
							y--;
							distance_to_border4 = obj_camera.y-obj_camera_stopperD.y+90;
						}	
					}
				}
			}
			
			y = obj_camera.y-90
			x = obj_camera.x-160
		}
	
	    FadeNow = 1.0;
	
		layer = layer_get_id("Inst_scrn")
	    depth = -100000;
	    image_alpha = 1;
		exit
	}

	if (global.room_transition_nodoors = 1) && (global.room_x = 1) && (global.room_y = 1) && (global.stopper_2ndscrnshot = 1)
	{
		layer = layer_get_id("Inst_scrn")
	    depth = -100000;
		FadeNow = 1.0;
	
		if (instance_exists(obj_darkness_effect))
		{
			with(obj_darkness_effect)
			{
				depth = obj_scrn_roomtransition.depth-5;	
			}
		}
		
		
		if (image_alpha = 1)
		{
			if (doorleft > 0) && (instance_exists(obj_door_border_right))
			{
				with(obj_player)
				{
					state = global.state
					State_machine_switch_state(state)
					x = obj_door_border_right.x+16
					y = obj_door_border_right.y+global.door_height
				}
				with(object_player2_0_sprites)
				{	
					x = obj_door_border_right.x+16
					if (global.jumpingdm <= 0) && (global.dash2 <= 0) && (global.dashbegin2 <= 0)
					{
						y = obj_door_border_right.y+global.door_height+1
					}
					else if (global.spacejump = 0) && (global.jumpingdm > 0) && (global.screwjump = 0)
					{
						y = obj_door_border_right.y+global.door_height+1
					}
					else if (global.spacejump = 1) && (global.jumpingdm > 0)
					{
						y = obj_door_border_right.y+global.door_height-2
					}
					else if (global.screwjump = 1) && (global.jumpingdm > 0)
					{
						y = obj_door_border_right.y+global.door_height-2
					}
					else if (global.dashbegin2 = 1) or (global.dash2 = 1)
					{
						y = obj_door_border_right.y+global.door_height+1
					}
					depth = obj_scrn_roomtransition.depth-1	
				}
				with(obj_camera)
				{
					x = obj_player.x+144
					y = obj_door_border_right.y+global.door_height
				}
		
				var boby = obj_camera.y-obj_door_border_right.y
		
				x = obj_camera.x-160
				y = obj_camera.y-90
			}
			else if (doorright > 0) && (instance_exists(obj_door_border_left))
			{
				with(obj_player)
				{
					global.state = state
					State_machine_switch_state(state)
					x = obj_door_border_left.x-25
					y = obj_door_border_left.y+global.door_height
				}
				with(object_player2_0_sprites)
				{
					x = obj_door_border_left.x-25
					if (global.jumpingdm <= 0) && (global.dash2 <= 0) && (global.dashbegin2 <= 0)
					{
						y = obj_door_border_left.y+global.door_height+1
					}
					else if (global.spacejump = 0) && (global.jumpingdm > 0) && (global.screwjump = 0)
					{
						y = obj_door_border_left.y+global.door_height+1
					}
					else if (global.spacejump = 1) && (global.jumpingdm > 0)
					{
						y = obj_door_border_left.y+global.door_height-2
					}
					else if (global.screwjump = 1) && (global.jumpingdm > 0)
					{
						y = obj_door_border_left.y+global.door_height-2
					}
					else if (global.dashbegin2 = 1) or (global.dash2 = 1)
					{
						y = obj_door_border_left.y+global.door_height+1
					}
					depth = obj_scrn_roomtransition.depth-1	
				}
				with(obj_camera)
				{
					x = obj_player.x-135
					y = obj_door_border_left.y+global.door_height
				}
		
				var boby = obj_camera.y-obj_door_border_left.y
				global.ygrid = 0
				global.ygridend = 0
		
				x = obj_camera.x-160
				y = obj_camera.y-90
		
		
			}
	
			if (instance_exists(obj_nuclearblast_scrneffect))
			{
				with(obj_nuclearblast_scrneffect)
				{
					x = obj_camera.x-160
					y = obj_camera.y-90
				}
			}
		}
		
		//set camera and scrn object Y
		if (instance_exists(obj_camera))
		{
			with(obj_camera)
			{
				if (room_height == 180) && (room_width == 320)
				{
					x = 160
					y = 90
				}
				else if (instance_exists(obj_camera_stopperU)) && (instance_exists(obj_camera_stopperD)) && (instance_exists(obj_camera_stopperL)) && (instance_exists(obj_camera_stopperR))
				{
					//X
					if !(global.climbing)
					{
						x = obj_player.x
					}
					distance_to_border = obj_camera.x-obj_camera_stopperL.x-160;
					distance_to_border2 = obj_camera.x-obj_camera_stopperR.x+159;
					if (distance_to_border < 0)
					{
						while (distance_to_border < 0)
						{
							x++;
							distance_to_border = obj_camera.x-obj_camera_stopperL.x-160;
						}	
					}
					if (distance_to_border2 > 0)
					{
						while (distance_to_border2 > 0)
						{
							x--;
							distance_to_border2 = obj_camera.x-obj_camera_stopperR.x+159;
						}	
					}
					
					//Y
					if (room_height == 180) && (room_width == 320)
					{
						y = 90
					}
					else if !(global.climbing)
					{
						y = obj_player.y-yspin-yshake-yshake2;
					}
					global.ygrid = 0
					distance_to_border3 = obj_camera.y-obj_camera_stopperU.y-90;
					distance_to_border4 = obj_camera.y-obj_camera_stopperD.y+90;
					if (distance_to_border3 < 0)
					{
						while (distance_to_border3 < 0)
						{
							y++;
							distance_to_border3 = obj_camera.y-obj_camera_stopperU.y-90;
						}	
					}
					if (distance_to_border4 > 0)
					{
						while (distance_to_border4 > 0)
						{
							y--;
							distance_to_border4 = obj_camera.y-obj_camera_stopperD.y+90;
						}	
					}
				}
			}
			
			y = obj_camera.y-90
			x = obj_camera.x-160
		}
		
		
		image_alpha = image_alpha - ((1/room_speed)*6)
	
	}

	//kill the screenshot object and reset everything
	if (image_alpha <= 0.0) && (global.stopper_2ndscrnshot = 1) && (global.room_transition_nodoors == 1) && (global.room_x = 1)
	{   
					global.room_y = 0;
	                global.room_x = 0;
					global.door_height = 0
					
					global.room_transition_notnowL1 = 0;
					global.room_transition_notnowR1 = 0;
					global.room_transition_notnowL2 = 0;
					global.room_transition_notnowR2 = 0;
					global.room_transition_notnowL_more = 0;
					global.room_transition_notnowR_more = 0;
					
					
					global.room_transition_nodoors = 0

					global.lockdown_facingDir = 0;
					
					//reset to original music is escaped xga
					ResetOriginalMusic()
					
	                deact = 0;
	                started1 = 0;
	                notnow = 0;
	                notnow1 = 0;
	                stopper2 = 0;
	                black_screen_alpha = 0;
                
	                global.stopper_2ndscrnshot = 0;
	                global.room_transition_nodoors = 0; 
	                with(obj_player)
	                {
						if (global.jumpingdm <= 0) && (state != Falling) && (state != Fall_shoot)
						&& ((global.dash2 = 0) && (global.dashbegin2 = 0) && (global.turning_dash2 = 0) && (global.dashend = 0))
						{
							State_machine_switch_state(Idle)
							
						}
						else if (global.jumpingdm <= 0)
						&& (global.dashbegin2 > 0)
						{
							State_machine_switch_state(Dashing2_begin)
							
						}
						else if (global.jumpingdm <= 0)
						&& ((global.dash2 > 0) or (global.turning_dash2 > 0) or (global.dashend > 0))
						{
							State_machine_switch_state(Dashing2_use)
							
						}
						else if (global.jumpingdm > 0)
						{
							State_machine_switch_state(Falling)
							
						}
						
						if (state = Crouching) or (state = Crouch_shoot)
					    {
						    y -= 5;
						    sprite_index = spr_player;
						    global.crouching = 0;
					    }
					
						if (place_meeting(x,y,obj_block)) && (!position_meeting(x,bbox_top-1,obj_block))
						{
							while (place_meeting(x,y,obj_block)) && (!position_meeting(x,bbox_top-1,obj_block))
							{
								y--	
							}
						}
						
						
						//dashspark effect
						if (global.state == (Dashing2_begin) or (Dashing2_use)) && (global.dash2_spark == 1) && (!instance_exists(obj_player_dashspark))
						{
							instance_create_depth(x,y,id.depth-1,obj_player_dashspark)
							
							if (global.facingDir < 0)
							{
								with(obj_player_dashspark)
								{
									sprite_index = spr_dashspark_left
									image_index = 0
								}	
							}
							else if (global.facingDir > 0)
							{
								with(obj_player_dashspark)
								{
									sprite_index = spr_dashspark_right
									image_index = 0
								}	
							}
						}
					
						lefty = 0;
	                    righty = 0;
	                    getup = 0;
	                    minidash = 0;
						image_speed_stop = 0
	                    with(obj_player_dashfire)
	                    {
		                    started = 0;
		                    phase1 = 0;
	                    }
	                }
				
					with(object_player2_0_sprites)
					{
						image_speed = 1
						layer = layer_get_id("Inst_level_0")	
						started_roomtransition = 0
					}
				
				
				
				
					sprite_delete(sprite_index);
	                sprite_index = -1;
					image_alpha = 0.0000;
					scrn = 0;
					FadeNow = 0.0;
	                instance_destroy();
	}



}
