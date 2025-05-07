function scrn_loading() {
	if (sprite_index == -1) && (global.loading = 1) && (deact == 0)
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

	image_alpha = alpha;

	//make sure player is in correct position
	if (global.stopper_2ndscrnshot = 0) && (global.loading = 1) && (deact == 0) && (sprite_index == scrn)
	{
	    depth = -100;
	    FadeNow = 0.0;
	    deact = 1;
		instance_deactivate_all(obj_scrn_roomtransition);
		instance_deactivate_object(obj_blackhole_bg);
		instance_deactivate_object(obj_blackhole_bg1);
	    instance_activate_object(obj_link_healthUI);
		instance_activate_object(obj_maptile_tile);
		instance_activate_object(obj_link_map);
		instance_activate_object(obj_link_audio);
		instance_activate_object(obj_deathscreennuke_maptile);
		instance_activate_object(obj_camera_stopperL);
	    instance_activate_object(obj_camera_stopperR);
	}

	///Make first screen shot and fade out with second one
	if (global.loading = 1) && (global.stopper_2ndscrnshot = 0) && (deact == 1)
	{
	    if (global.loading = 1) && (started1 = 0) && (FadeNow <= 1)
	    {
	        FadeNow = 0;
	        started1 = 1;
	    }
	    if (FadeNow <= 1) && (global.loading = 1) && (started1 = 1)
	    {
	        FadeNow += 0.05;
	    }
	    if (FadeNow >= 1) && (global.loading = 1) && (started1 = 1)
	    {
	        FadeNow = 1;
	    }
	}

	//get second screenshot then fade out
	if (global.loading = 1) && (global.stopper_2ndscrnshot = 0) && (FadeNow == 1)
	{
	    with(obj_scrn_roomtransition)
	    {
	         x = __view_get( e__VW.XView, 0 );
	         y = __view_get( e__VW.YView, 0 );
	    }
		instance_activate_all();
		FadeNow = 1.0;
	    image_alpha = 1;
		global.stopper_2ndscrnshot = 1;
		with(obj_camera)
	    {
	         x = obj_scrn_roomtransition.x+160;
	         y = obj_scrn_roomtransition.y+90;
	    }
		instance_deactivate_object(obj_player);
		instance_deactivate_object(object_player2_0_sprites);
	}

	if (global.loading = 1) && (global.stopper_2ndscrnshot = 1)
	{
	    image_alpha -= 0.025;
		/*
		with(obj_savepillar_coverup1)
		{
			depth = obj_scrn_roomtransition.depth+1
		}
		with(obj_savepillar_coverup)
		{
			depth = obj_scrn_roomtransition.depth+1
		}
		*/
	}

	if (death1) && (alpha > 0)
	{
		alpha -= 0.05;
	}
	else if (death1) && (alpha <= 0)
	{
		instance_destroy()
	}

	//kill the screenshot object and reset everything
	if (image_alpha <= 0.0) && (global.stopper_2ndscrnshot = 1) && (global.loading = 1)
	{   
	                sprite_delete(sprite_index);
	                sprite_index = -1;
					scrn = 0;
					global.stopper_2ndscrnshot = 0;
					image_alpha = 0.0000;
	                instance_destroy();
	}



}
