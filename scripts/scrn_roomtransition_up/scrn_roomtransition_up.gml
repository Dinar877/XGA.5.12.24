function scrn_roomtransition_up() {
	if (sprite_index == -1) && (global.room_x != 1) && (global.room_transition_up == 1) && (deact == 0) && (global.room_y != 1)
	{
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
	
		with(object_player2_0_sprites)
		{
			self.depth = obj_scrn_roomtransition.depth-1;
		}
	
	    scrn = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0);
		instance_create_layer(0,0,layer_get_id("Inst_scrn"),obj_scrnDark)
		FadeNow = 0.0;
	    notnow1 = 0;
	    started1 = 0;
	    image_alpha = 1;
	    sprite_index = scrn;
		global.room_y = 1;
		global.stopper_2ndscrnshot = 0;
	}

	//make sure player is in correct position
	if (global.room_y == 1) && (global.stopper_2ndscrnshot = 0) && (global.room_transition_up == 1) && (deact == 0) && (sprite_index == scrn)
	{
	    depth = -100000;
		with(object_player2_0_sprites)
		{
			self.depth = obj_scrn_roomtransition.depth-1;
		}
	    FadeNow = 0.0;
	    instance_deactivate_all(obj_scrn_roomtransition);
	    instance_activate_object(obj_link_healthUI);
		instance_activate_object(obj_maptile_tile);
		instance_activate_object(obj_deathscreennuke_maptile);
		instance_activate_object(obj_link_map);
	    instance_activate_object(obj_room_transition_l2r2);
	    instance_activate_object(obj_room_transition_r2l2);
	    instance_activate_object(obj_camera_stopperL);
	    instance_activate_object(obj_camera_stopperR);
		instance_activate_object(obj_door_border_up);
		instance_activate_object(obj_player);
		instance_activate_object(object_player2_0_sprites);
	    deact = 1;
	}

	///Make first screen shot and fade out with second one
	if (global.room_transition_up = 1) && (global.room_x = 0) && (global.room_y = 1) && (global.stopper_2ndscrnshot = 0)
	{
	    if (global.room_transition_up = 1) && (started1 = 0) && (FadeNow <= 1.0)
	    {
	        FadeNow = 0.0;
	        started1 = 1;
	    }
	    if (FadeNow <= 1.0) && (global.room_transition_up = 1) && (started1 = 1)
	    {
	        FadeNow += 0.05;
	    }
	    if (FadeNow >= 1.0) && (global.room_transition_up = 1) && (started1 = 1)
	    {
	        FadeNow = 1.0;
	    }
	}

	//get second screenshot then fade out
	if (global.room_transition_up = 1) && (global.room_x = 1) && (global.room_y = 1) && (global.stopper_2ndscrnshot = 0)
	{
	    instance_activate_all();
	    FadeNow = 1.0;
	    depth = -100000;
		with(object_player2_0_sprites)
		{
			self.depth = obj_scrn_roomtransition.depth-1;
		}
		layer = layer_get_id("Inst_scrn")
	

		if (global.mapgrid_1x1 == 0)
				{
		            with(obj_scrn_roomtransition)
		            {
		                FadeNow = 1.0;
		            }
				}
				else if (global.mapgrid_1x1 == 1)
				{
		            with(obj_scrn_roomtransition)
		            {
		                FadeNow = 1.0;
		            }
				}
	
	    image_alpha = 1;
	    global.stopper_2ndscrnshot = 1;
	}

	if (global.room_transition_up = 1) && (global.room_x = 1) && (global.room_y = 1) && (global.stopper_2ndscrnshot = 1)
	{
	    layer = layer_get_id("Inst_scrn")
		FadeNow = 1.0;
	    image_alpha = image_alpha - 0.025;
		with(object_player2_0_sprites)
		{
			self.depth = obj_scrn_roomtransition.depth-1;
		}
	

		if (global.mapgrid_1x1 == 0)
				{
		            with(obj_scrn_roomtransition)
		            {
		                FadeNow = 1.0;
		            }
				}
				else if (global.mapgrid_1x1 == 1)
				{
		            with(obj_scrn_roomtransition)
		            {
		                FadeNow = 1.0;
		            }
				}
	
		if (instance_exists(obj_darkness_effect))
		{
			with(obj_darkness_effect)
			{
				depth = obj_scrn_roomtransition.depth-5;	
			}
		}
	
	}

	//kill the screenshot object and reset everything
	if (image_alpha < 0.0) && (global.stopper_2ndscrnshot = 1) && (global.room_transition_up == 1)
	{   
					global.room_y = 0;
	                global.room_x = 0;
	                global.dashbegin = 0;
	                global.dashcharge = 0;
	                global.dashuse = 0;
	                global.dashend = 0;
					global.dashbegin2 = 0;
					global.dash2 = 0;
					global.room_transition_notnowL_more = 0;
					global.room_transition_notnowR_more = 0;
					global.room_transition_prep = 0;
					global.door_height = 0;
	                /*if (instance_exists(obj_camera))
	                {
	                __view_set( e__VW.Object, 0, obj_camera );
	                }
	                else if (instance_exists(obj_camera_16_9))
	                {
	                __view_set( e__VW.Object, 0, obj_camera_16_9 );
	                }
					*/
	                deact = 0;
	                started1 = 0;
	                notnow = 0;
	                notnow1 = 0;
	                stopper2 = 0;
	                black_screen_alpha = 0;
                
	                global.stopper_2ndscrnshot = 0;
	                global.room_transition_up = 0; 
	                with(obj_player)
	                {
	                    if (state = Crouching) or (state = Crouch_shoot)
					    {
						    y -= 5;
						    sprite_index = spr_player;
						    global.crouching = 0;
					    }
						//State_machine_switch_state(Idle);
						lefty = 0;
	                    righty = 0;
	                    getup = 0;
	                    minidash = 0;
	                    with(obj_player_dashfire)
	                    {
	                    started = 0;
	                    phase1 = 0;
	                    }
	                }
				
					with(object_player2_0_sprites)
					{
						self.layer = layer_get_id("Inst_level_0")
					}
				
				
					sprite_delete(sprite_index);
	                sprite_index = -1;
					image_alpha = 0.0000;
					scrn = 0;
					FadeNow = 0.0;
	                instance_destroy();
	}



}
