function scrn_saving() {
	if (sprite_index == -1) && (global.saving = 1) && (deact == 0)
	{
	    //make screenshot
	    var scrn = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0);
		with(obj_scrn_roomtransition)
	    {
	         x = __view_get( e__VW.XView, 0 );
	         y = __view_get( e__VW.YView, 0 );
	    }
	
		FadeNow = 0.0;
	    notnow1 = 0;
	    started1 = 0;
	    image_alpha = 1;
	    sprite_index = scrn;
		global.stopper_2ndscrnshot = 0;
	}

	//make sure player is in correct position
	if (global.stopper_2ndscrnshot = 0) && (global.saving = 1) && (deact == 0) && (sprite_index == scrn)
	{
	    depth = -100;
	    FadeNow = 0.0;
	    instance_deactivate_all(obj_scrn_roomtransition);
	    instance_activate_object(obj_link_healthUI);
		instance_activate_object(obj_maptile_tile);
		instance_activate_object(obj_link_map);
		instance_activate_object(obj_link_audio);
		
		instance_activate_object(obj_save_text);
		instance_activate_object(obj_NEWsav_text);
		instance_activate_object(obj_NEWsav_text_no);
		instance_activate_object(obj_NEWsav_text_yes);
		instance_activate_object(obj_NEWsav_text_travel);
		
		instance_activate_object(obj_camera_stopperL);
	    instance_activate_object(obj_camera_stopperR);
	    deact = 1;
	}

	///Make first screen shot and fade out with second one
	if (global.saving = 1) && (global.stopper_2ndscrnshot = 0) && (deact == 1) && (fadeout1 = 0)
	{
	    if (global.saving = 1) && (started1 = 0) && (FadeNow <= 0.6)
	    {
	        FadeNow = 0.6;
	        started1 = 1;
	    }
	    if (FadeNow <= 0.6) && (global.saving = 1) && (started1 = 1)
	    {
	        FadeNow += 0.05;
	    }
	    if (FadeNow >= 0.6) && (global.saving = 1) && (started1 = 1)
	    {
	        FadeNow = 0.6;
	    }
	}

	//get second screenshot then fade out
	if (global.saving = 1) && (global.stopper_2ndscrnshot = 0) && (FadeNow == 0.6) && (fadeout1 = 1)
	{
	    FadeNow = 1.0;

		instance_activate_all();

		instance_deactivate_object(obj_player);
		instance_deactivate_object(object_player2_0_sprites);
	    image_alpha = 0.6;
	}

	if (global.saving = 1) && (global.stopper_2ndscrnshot = 1)
	{
	    FadeNow -= 0.025;
		image_alpha -= 0.025
	}

	//get second screenshot then fade out
	if (global.saving = 1) && (global.stopper_2ndscrnshot = 0) && (FadeNow == 0.6) && (fadeout2 = 1)
	{
		instance_activate_all();
	}

	//kill the screenshot object and reset everything
	if (image_alpha <= 0.0) && (global.stopper_2ndscrnshot = 1) && (global.saving = 1)
	{   
	                sprite_delete(sprite_index);
	                sprite_index = -1;
					scrn = 0;
	                global.room_y = 0;
	                global.room_x = 0;
	                global.dashbegin = 0;
	                global.dashcharge = 0;
	                global.dashuse = 0;
	                global.dashend = 0;
					global.dashbegin2 = 0;
					global.dash2 = 0;
					global.room_transition_notnowL1 = 0;
					global.room_transition_notnowR1 = 0;
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
                
	                global.stopper_2ndscrnshot = 0;
	                global.room_transition = 0; 
	                with(obj_player)
	                {
	                    State_machine_switch_state(Idle);
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
						global.dash2_spark = 0;
	                }
					image_alpha = 0.0000;
	                instance_destroy();
	}



}
