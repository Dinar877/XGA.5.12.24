///pause transition
function scrn_teleport() {
	if (sprite_index == -1) && (global.teleport == 1) && (deact1 == 0)
	{
	    //make screenshot	
		scrn = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0);
		
		
		FadeNow = 0.0;
	    notnow1 = 0;
	    started1 = 0;
	    image_alpha = 1;
	    sprite_index = scrn;
	}

	//make sure player is in correct position
	if (global.stopper_2ndscrnshot = 0) && (global.teleport == 1) && (deact1 == 0) && (sprite_index == scrn)
	{
	    depth = -1000000000000000;
	    FadeNow = 0.0;
	    deact1 = 1;
		
		//deactivate shit
			instance_deactivate_all(obj_scrn_roomtransition);

			//for getting the nequired room id
			instance_activate_object(obj_NEWsave_text_underside);

			//other
			instance_activate_object(obj_maptile_tile);
			instance_activate_object(obj_maptile_tile_differentsector);
			instance_activate_object(obj_maptile_tile_hint);
			instance_activate_object(obj_deathscreennuke_maptile);
			instance_activate_object(obj_maptile_marker);
			instance_activate_object(obj_link_map);
			instance_activate_object(obj_link_audio);
			instance_activate_object(obj_link_healthUI);
	
			instance_activate_object(obj_health_sparetank_100)
			instance_activate_object(obj_healthblock1)
			instance_activate_object(obj_healthbar)
			instance_activate_object(obj_healthblockstart)
			instance_activate_object(obj_healthnumberone)
			instance_activate_object(obj_healthnumberten)
	
			instance_activate_object(obj_mapborder)
			instance_activate_object(obj_mapborder_underside)
	
			instance_activate_object(obj_ability_invisibility)
			instance_activate_object(obj_number_1_invis)
			instance_activate_object(obj_number_10_invis)
			instance_activate_object(obj_number_100_invis)
	
			instance_activate_object(obj_ability_nanoshield)
			instance_activate_object(obj_number_1_nanoshield)
			instance_activate_object(obj_number_10_nanoshield)
			instance_activate_object(obj_number_100_nanoshield)
	
			instance_activate_object(obj_ability_nuclearblast)
			instance_activate_object(obj_number_1_nuclearblast)
			instance_activate_object(obj_number_10_nuclearblast)
			instance_activate_object(obj_number_100_nuclearblast)
		
		
		
	
			//health
			#region
				if (instance_exists(obj_link_healthUI))
				{
					with(obj_link_healthUI)
					{
						image_alpha = 1
					}
				}
				if (instance_exists(obj_healthbar))
				{
					with(obj_healthbar)
					{
						image_alpha = 1
					}
				}
				if (instance_exists(obj_healthblock1))
				{
					with(obj_healthblock1)
					{
						image_alpha = 1
					}
				}
				if (instance_exists(obj_healthblockstart))
				{
					with(obj_healthblockstart)
					{
						image_alpha = 1
					}
				}
				if (instance_exists(obj_health_sparetank_100))
				{
					with(obj_health_sparetank_100)
					{
						image_alpha = 1
					}
				}
				if (instance_exists(obj_healthnumberone))
				{
					with(obj_healthnumberone)
					{
						image_alpha = 1
					}
				}
				if (instance_exists(obj_healthnumberten))
				{
					with(obj_healthnumberten)
					{
						image_alpha = 1
					}
				}
			#endregion
	
			//map
			#region
			if (instance_exists(obj_link_map))
				{
					with(obj_link_map)
					{
						image_alpha = 1
					}
				}
			if (instance_exists(obj_maptile_tile))
				{
					with(obj_maptile_tile)
					{
						FadeNow2 = 1
						image_alpha = 1
					}
				}
			if (instance_exists(obj_maptile_tile_differentsector))
				{
					with(obj_maptile_tile_differentsector)
					{
						image_alpha = 1
					}
				}
			if (instance_exists(obj_maptile_tile_hint))
				{
					with(obj_maptile_tile_hint)
					{
						image_alpha = 1
					}
				}
			if (instance_exists(obj_maptile_tile_hint_item))
				{
					with(obj_maptile_tile_hint_item)
					{
						image_alpha = 1
					}
				}
			if (instance_exists(obj_mapborder))
				{
					with(obj_mapborder)
					{
						image_alpha = 1
					}
				}
			if (instance_exists(obj_mapborder_underside))
				{
					with(obj_mapborder_underside)
					{
						image_alpha = 1
					}
				}
		#endregion
	
			//abilities
			#region
					if (instance_exists(obj_link_healthUI))
					{
						with(obj_link_healthUI)
						{
							image_alpha = 1
						}
					}
					if (instance_exists(obj_ability_invisibility))
					{
						with(obj_ability_invisibility)
						{
							image_alpha = 1
						}
					}
					if (instance_exists(obj_ability_nanoshield))
					{
						with(obj_ability_nanoshield)
						{
							image_alpha = 1
						}
					}
					if (instance_exists(obj_ability_nuclearblast))
					{
						with(obj_ability_nuclearblast)
						{
							image_alpha = 1
						}
					}
					if (instance_exists(obj_number_1_invis))
					{
						with(obj_number_1_invis)
						{
							image_alpha = 1
						}
					}
					if (instance_exists(obj_number_10_invis))
					{
						with(obj_number_10_invis)
						{
							image_alpha = 1
						}
					}
					if (instance_exists(obj_number_100_invis))
					{
						with(obj_number_100_invis)
						{
							image_alpha = 1
						}
					}
		
					if (instance_exists(obj_number_1_nanoshield))
					{
						with(obj_number_1_nanoshield)
						{
							image_alpha = 1
						}
					}
					if (instance_exists(obj_number_10_nanoshield))
					{
						with(obj_number_10_nanoshield)
						{
							image_alpha = 1
						}
					}
					if (instance_exists(obj_number_100_nanoshield))
					{
						with(obj_number_100_nanoshield)
						{
							image_alpha = 1
						}
					}
		
					if (instance_exists(obj_number_1_nuclearblast))
					{
						with(obj_number_1_nuclearblast)
						{
							image_alpha = 1
						}
					}
					if (instance_exists(obj_number_10_nuclearblast))
					{
						with(obj_number_10_nuclearblast)
						{
							image_alpha = 1
						}
					}
					if (instance_exists(obj_number_100_nuclearblast))
					{
						with(obj_number_100_nuclearblast)
						{
							image_alpha = 1
						}
					}
				#endregion

			//deactivate stuff on fast travel menu
			instance_deactivate_object(obj_NEWsav_text);
			instance_deactivate_object(obj_NEWsav_text_no);
			instance_deactivate_object(obj_NEWsav_text_yes);
			instance_deactivate_object(obj_NEWsav_text_travel);
			instance_deactivate_object(obj_NEWsave_travel_greenbox);

	}

	///Make first screen shot and fade out with second one
	if (global.stopper_2ndscrnshot = 0) && (global.teleport == 1) && (deact1 == 1) && (react == 0)
	{
		audio_group_set_gain(audiogroup_sfx,0,100)
	
		if (global.teleport == 1) && (started1 = 0) && (FadeNow <= 1.0)
	    {
	        FadeNow = 0.0;
	        started1 = 1;
	    }
	    if (FadeNow <= 1.0) && (global.teleport == 1) && (started1 = 1)
	    {
	        FadeNow += 0.05;
		
			//health
			#region
				if (instance_exists(obj_link_healthUI))
				{
					with(obj_link_healthUI)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_healthbar))
				{
					with(obj_healthbar)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_healthblock1))
				{
					with(obj_healthblock1)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_healthblockstart))
				{
					with(obj_healthblockstart)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_health_sparetank_100))
				{
					with(obj_health_sparetank_100)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_healthnumberone))
				{
					with(obj_healthnumberone)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_healthnumberten))
				{
					with(obj_healthnumberten)
					{
						image_alpha -= 0.05
					}
				}
			#endregion
		
		
				//map
			#region
				if (instance_exists(obj_link_healthUI))
				{
					with(obj_link_healthUI)
					{
						image_alpha -= 0.05	
					}
				}
		
				if (instance_exists(obj_link_map))
				{
					with(obj_link_map)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_maptile_tile))
				{
					with(obj_maptile_tile)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_maptile_tile_differentsector))
				{
					with(obj_maptile_tile_differentsector)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_maptile_tile_hint))
				{
					with(obj_maptile_tile_hint)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_maptile_tile_hint_item))
				{
					with(obj_maptile_tile_hint_item)
					{
						image_alpha -= 0.05
					}
				}
			#endregion
		
		
				//abilities
			#region
				if (instance_exists(obj_link_healthUI))
				{
					with(obj_link_healthUI)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_ability_invisibility))
				{
					with(obj_ability_invisibility)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_ability_nanoshield))
				{
					with(obj_ability_nanoshield)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_ability_nuclearblast))
				{
					with(obj_ability_nuclearblast)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_number_1_invis))
				{
					with(obj_number_1_invis)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_number_10_invis))
				{
					with(obj_number_10_invis)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_number_100_invis))
				{
					with(obj_number_100_invis)
					{
						image_alpha -= 0.05
					}
				}
		
				if (instance_exists(obj_number_1_nanoshield))
				{
					with(obj_number_1_nanoshield)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_number_10_nanoshield))
				{
					with(obj_number_10_nanoshield)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_number_100_nanoshield))
				{
					with(obj_number_100_nanoshield)
					{
						image_alpha -= 0.05
					}
				}
		
				if (instance_exists(obj_number_1_nuclearblast))
				{
					with(obj_number_1_nuclearblast)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_number_10_nuclearblast))
				{
					with(obj_number_10_nuclearblast)
					{
						image_alpha -= 0.05
					}
				}
				if (instance_exists(obj_number_100_nuclearblast))
				{
					with(obj_number_100_nuclearblast)
					{
						image_alpha -= 0.05
					}
				}
			#endregion
		
	    }
	    if (FadeNow >= 1.0) && (global.teleport == 1) && (started1 = 1)
	    {
	        FadeNow = 1.0;
	        react = 1;
			
	    }
	}

	//get second screenshot then fade out
	if (global.stopper_2ndscrnshot = 0) && (global.teleport == 1) && (deact1 == 1) && (react == 1) && (FadeNow = 1.0)
	{
		audio_stop_sound(snd_electricity)
		audio_group_set_gain(audiogroup_sfx,1,100)
		
		instance_activate_all();
	
		if (instance_exists(obj_NEWsave_text_underside))
		{
			with(obj_NEWsave_text_underside)
			{
				if (inst_roomid_num[inst_index] > 0)
				{	
					room_goto(inst_roomid_num[inst_index])
				}
			}
		}
		
		if (instance_exists(obj_player))
		{
			with(obj_player)
			{
				x = 168;
				y = 106;
				
				if (instance_exists(obj_NEWsav_standbyeffect))
					{
						with(obj_NEWsav_standbyeffect)
						{
							stopnow = 1	
						}
					}
			}	
		}
	
		//health
		#region
				if (instance_exists(obj_link_healthUI))
				{
					with(obj_link_healthUI)
					{
						image_alpha = 0
					}
				}
				if (instance_exists(obj_healthbar))
				{
					with(obj_healthbar)
					{
						image_alpha = 0
					}
				}
				if (instance_exists(obj_healthblock1))
				{
					with(obj_healthblock1)
					{
						image_alpha = 0
					}
				}
				if (instance_exists(obj_healthblockstart))
				{
					with(obj_healthblockstart)
					{
						image_alpha = 0
					}
				}
				if (instance_exists(obj_health_sparetank_100))
				{
					with(obj_health_sparetank_100)
					{
						image_alpha = 0
					}
				}
				if (instance_exists(obj_healthnumberone))
				{
					with(obj_healthnumberone)
					{
						image_alpha = 0
					}
				}
				if (instance_exists(obj_healthnumberten))
				{
					with(obj_healthnumberten)
					{
						image_alpha = 0
					}
				}
			#endregion
	
		//map
		#region
			if (instance_exists(obj_link_map))
				{
					with(obj_link_map)
					{
						image_alpha = 0
					}
				}
			if (instance_exists(obj_maptile_tile))
				{
					with(obj_maptile_tile)
					{
						image_alpha = 0
					}
				}
			if (instance_exists(obj_maptile_tile_differentsector))
				{
					with(obj_maptile_tile_differentsector)
					{
						image_alpha = 0
					}
				}
			if (instance_exists(obj_maptile_tile_hint))
				{
					with(obj_maptile_tile_hint)
					{
						image_alpha = 0
					}
				}
			if (instance_exists(obj_maptile_tile_hint_item))
				{
					with(obj_maptile_tile_hint_item)
					{
						image_alpha = 0
					}
				}
			if (instance_exists(obj_mapborder))
				{
					with(obj_mapborder)
					{
						image_alpha = 0
					}
				}
			if (instance_exists(obj_mapborder_underside))
				{
					with(obj_mapborder_underside)
					{
						image_alpha = 0
					}
				}
		#endregion
	
		//abilities
		#region
				if (instance_exists(obj_link_healthUI))
				{
					with(obj_link_healthUI)
					{
						image_alpha = 0
					}
				}
				if (instance_exists(obj_ability_invisibility))
				{
					with(obj_ability_invisibility)
					{
						image_alpha = 0
					}
				}
				if (instance_exists(obj_ability_nanoshield))
				{
					with(obj_ability_nanoshield)
					{
						image_alpha = 0
					}
				}
				if (instance_exists(obj_ability_nuclearblast))
				{
					with(obj_ability_nuclearblast)
					{
						image_alpha = 0
					}
				}
				if (instance_exists(obj_number_1_invis))
				{
					with(obj_number_1_invis)
					{
						image_alpha = 0
					}
				}
				if (instance_exists(obj_number_10_invis))
				{
					with(obj_number_10_invis)
					{
						image_alpha = 0
					}
				}
				if (instance_exists(obj_number_100_invis))
				{
					with(obj_number_100_invis)
					{
						image_alpha = 0
					}
				}
		
				if (instance_exists(obj_number_1_nanoshield))
				{
					with(obj_number_1_nanoshield)
					{
						image_alpha = 0
					}
				}
				if (instance_exists(obj_number_10_nanoshield))
				{
					with(obj_number_10_nanoshield)
					{
						image_alpha = 0
					}
				}
				if (instance_exists(obj_number_100_nanoshield))
				{
					with(obj_number_100_nanoshield)
					{
						image_alpha = 0
					}
				}
		
				if (instance_exists(obj_number_1_nuclearblast))
				{
					with(obj_number_1_nuclearblast)
					{
						image_alpha = 0
					}
				}
				if (instance_exists(obj_number_10_nuclearblast))
				{
					with(obj_number_10_nuclearblast)
					{
						image_alpha = 0
					}
				}
				if (instance_exists(obj_number_100_nuclearblast))
				{
					with(obj_number_100_nuclearblast)
					{
						image_alpha = 0
					}
				}
			#endregion
	
	
		if (instance_exists(obj_maptile_tile))
		{
			with(obj_maptile_tile)
			{
				inst_item_imageindex = 0
			}
		}
		
		//turn off saving whilst player is here
		if (instance_exists(obj_NEWsav_standbyeffect))
		{
			with(obj_NEWsav_standbyeffect)
			{
				stopnow = 1	
			}
		}
	
	    FadeNow = 1.0;
	    depth = -100000000000000000;
	    image_alpha = 1;
	    deact1 = 1;
	    react = 1;
	    global.stopper_2ndscrnshot = 1;
		
	}

	//once you've got that 2nd screenshot, fade out
	if (global.stopper_2ndscrnshot = 1) && (global.teleport == 1) && (deact1 == 1) && (react == 1) && (image_alpha > 0.0)
	{
		with(obj_scrn_roomtransition)
		{
			FadeNow = 1.0
			image_alpha = image_alpha - 0.05;
		}
		
		//health
		#region
				if (instance_exists(obj_link_healthUI))
				{
					with(obj_link_healthUI)
					{
						image_alpha += 0.05
					}
				}
				if (instance_exists(obj_healthbar))
				{
					with(obj_healthbar)
					{
						image_alpha += 0.05
					}
				}
				if (instance_exists(obj_healthblock1))
				{
					with(obj_healthblock1)
					{
						image_alpha += 0.05
					}
				}
				if (instance_exists(obj_healthblockstart))
				{
					with(obj_healthblockstart)
					{
						image_alpha += 0.05
					}
				}
				if (instance_exists(obj_health_sparetank_100))
				{
					with(obj_health_sparetank_100)
					{
						image_alpha += 0.05
					}
				}
				if (instance_exists(obj_healthnumberone))
				{
					with(obj_healthnumberone)
					{
						image_alpha += 0.05
					}
				}
				if (instance_exists(obj_healthnumberten))
				{
					with(obj_healthnumberten)
					{
						image_alpha += 0.05
					}
				}
			#endregion
	
		//ammo
		#region
		if (instance_exists(obj_number_100_ammo))
			{
				with(obj_number_100_ammo)
				{
					image_alpha += 0.05
				}
			}
		if (instance_exists(obj_number_10_ammo))
			{
				with(obj_number_10_ammo)
				{
					image_alpha += 0.05
				}
			}
		if (instance_exists(obj_number_1_ammo))
			{
				with(obj_number_1_ammo)
				{
					image_alpha += 0.05
				}
			}
		if (instance_exists(obj_ammo_icon))
			{
				with(obj_ammo_icon)
				{
					image_alpha += 0.05
				}
			}
		if (instance_exists(obj_number_ammo_bg))
			{
				with(obj_number_ammo_bg)
				{
					image_alpha += 0.05
				}
			}
		#endregion
	
		//map
		#region
			if (instance_exists(obj_link_map))
				{
					with(obj_link_map)
					{
						image_alpha += 0.05
					}
				}
			if (instance_exists(obj_maptile_tile))
				{
					with(obj_maptile_tile)
					{
						image_alpha += 0.05
					}
				}
			if (instance_exists(obj_maptile_tile_differentsector))
				{
					with(obj_maptile_tile_differentsector)
					{
						image_alpha += 0.05
					}
				}
			if (instance_exists(obj_maptile_tile_hint))
				{
					with(obj_maptile_tile_hint)
					{
						image_alpha += 0.05
					}
				}
			if (instance_exists(obj_maptile_tile_hint_item))
				{
					with(obj_maptile_tile_hint_item)
					{
						image_alpha += 0.05
					}
				}
			if (instance_exists(obj_mapborder))
				{
					with(obj_mapborder)
					{
						image_alpha += 0.05
					}
				}
			if (instance_exists(obj_mapborder_underside))
				{
					with(obj_mapborder_underside)
					{
						image_alpha += 0.05
					}
				}
		#endregion
	
		//abilities
		#region
				if (instance_exists(obj_link_healthUI))
				{
					with(obj_link_healthUI)
					{
						image_alpha += 0.05
					}
				}
				if (instance_exists(obj_ability_invisibility))
				{
					with(obj_ability_invisibility)
					{
						image_alpha += 0.05
					}
				}
				if (instance_exists(obj_ability_nanoshield))
				{
					with(obj_ability_nanoshield)
					{
						image_alpha += 0.05
					}
				}
				if (instance_exists(obj_ability_nuclearblast))
				{
					with(obj_ability_nuclearblast)
					{
						image_alpha += 0.05
					}
				}
				if (instance_exists(obj_number_1_invis))
				{
					with(obj_number_1_invis)
					{
						image_alpha += 0.05
					}
				}
				if (instance_exists(obj_number_10_invis))
				{
					with(obj_number_10_invis)
					{
						image_alpha += 0.05
					}
				}
				if (instance_exists(obj_number_100_invis))
				{
					with(obj_number_100_invis)
					{
						image_alpha += 0.05
					}
				}
		
				if (instance_exists(obj_number_1_nanoshield))
				{
					with(obj_number_1_nanoshield)
					{
						image_alpha += 0.05
					}
				}
				if (instance_exists(obj_number_10_nanoshield))
				{
					with(obj_number_10_nanoshield)
					{
						image_alpha += 0.05
					}
				}
				if (instance_exists(obj_number_100_nanoshield))
				{
					with(obj_number_100_nanoshield)
					{
						image_alpha += 0.05
					}
				}
		
				if (instance_exists(obj_number_1_nuclearblast))
				{
					with(obj_number_1_nuclearblast)
					{
						image_alpha += 0.05
					}
				}
				if (instance_exists(obj_number_10_nuclearblast))
				{
					with(obj_number_10_nuclearblast)
					{
						image_alpha += 0.05
					}
				}
				if (instance_exists(obj_number_100_nuclearblast))
				{
					with(obj_number_100_nuclearblast)
					{
						image_alpha += 0.05
					}
				}
			#endregion
		
		FadeNow = 1.0
		deact1 = 1;
		react = 1;
		global.stopper_2ndscrnshot = 1;
		
		
		//turn off saving whilst player is here
		if (instance_exists(obj_NEWsav_standbyeffect))
		{
			with(obj_NEWsav_standbyeffect)
			{
				stopnow = 1	
			}
		}
	}

	//kill the screenshot object and reset everything
	if (image_alpha <= 0.0) && (global.stopper_2ndscrnshot = 1) && (deact1 == 1) && (react == 1)
	 && (global.teleport = 1)
	{   
	                sprite_delete(sprite_index);
	                sprite_index = -1;
					scrn = 0;
	                global.teleport = 0;
					global.xleft = 0
					global.yup = 0
	                global.stopper_2ndscrnshot = 0;
	                __view_set( e__VW.Object, 0, obj_camera );
	                image_alpha = 0.0;
	                deact1 = 0;
	                react = 0;
	                started1 = 0;
	                FadeNow = 0.0;
	                notnow = 0;
	                notnow1 = 0;
	                stopper2 = 0;
	                black_screen_alpha = 0;  
					
					with(obj_scrn_roomtransition)
					{
						instance_destroy()
					}
					
					if (instance_exists(obj_NEWsave_text_underside))
					{
						with(obj_NEWsave_text_underside)
						{
							instance_destroy()	
						}
					}
					
					//turn off saving whilst player is here
					if (instance_exists(obj_NEWsav_standbyeffect))
					{
						with(obj_NEWsav_standbyeffect)
						{
							stopnow = 1	
						}
					}
	}


}
