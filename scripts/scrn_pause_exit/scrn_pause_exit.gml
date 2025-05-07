///pause transition
function scrn_pause_exit() {
	if (sprite_index == -1) && (global.pause_exit == 1) && (deact1 == 0)
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
	if (global.stopper_2ndscrnshot = 0) && (global.pause_exit == 1) && (deact1 == 0) && (sprite_index == scrn)
	{
	    depth = -10000000000000;
	    FadeNow = 0.0;
	    instance_deactivate_all(obj_scrn_roomtransition);
		
	    deact1 = 1;
	}

	///Make first screen shot and fade out with second one
	if (global.stopper_2ndscrnshot = 0) && (global.pause_exit == 1) && (deact1 == 1) && (react == 0)
	{
	    if (global.pause_exit == 1) && (started1 = 0) && (FadeNow <= 1.0)
	    {
	        FadeNow = 0.0;
	        started1 = 1;
	    }
	    if (FadeNow <= 1.0) && (global.pause_exit == 1) && (started1 = 1)
	    {
	        FadeNow += 0.05
		
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
			if (instance_exists(obj_mapborder))
			{
				with(obj_mapborder)
				{
					image_alpha -= 0.05
				}
			}
			if (instance_exists(obj_mapborder_underside))
			{
				with(obj_mapborder_underside)
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
	    if (FadeNow >= 1.0) && (global.pause_exit == 1) && (started1 = 1)
	    {
	        FadeNow = 1.0;
	        react = 1;
			//room_set_persistent(global.room_current,false);
	    }
	}

	//get second screenshot then fade out
	if (global.stopper_2ndscrnshot = 0) && (global.pause_exit == 1) && (deact1 == 1) && (react == 1) && (FadeNow = 1.0)
	{
		//room_goto(global.room_current);
	    FadeNow = 1.0;
		self.layer = layer_get_id("Inst_healthui")
	    image_alpha = 1;
		
		instance_activate_all();
	
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
		
		instance_destroy(obj_map_bg3);
		
	    deact1 = 1;
	    react = 1;
	    global.stopper_2ndscrnshot = 1;
		global.pause_map = 0;
		global.pause_options = 0;
		global.pause_status = 0;
		global.pause_logbook = 0;
	}

	//once you've got that 2nd screenshot, fade out
	if (global.stopper_2ndscrnshot = 1) && (global.pause_exit == 1) && (deact1 == 1) && (react == 1) && (image_alpha > 0.0)
	{
		global.pause = 0;
		
		instance_activate_all();
		
		x = obj_camera.x-160;
		y = obj_camera.y-90;
		
		//random 
		instance_destroy(obj_map_bg3);
		
		//if not in room titlescreen
		if (room == rm_load)
		{
			//player
			instance_deactivate_object(object_player2_0_sprites);
			instance_deactivate_object(obj_player);
			
			//random
			instance_deactivate_object(obj_map_bg3);
			instance_deactivate_object(obj_scrnDark_random_loadroom_outro_semi);
			instance_deactivate_object(obj_savepillar_textunderside);
			
			//ui
			instance_deactivate_object(obj_maptile_tile);
			instance_deactivate_object(obj_maptile_tile_differentsector);
			instance_deactivate_object(obj_maptile_tile_hint);
			instance_deactivate_object(obj_deathscreennuke_maptile);
			instance_deactivate_object(obj_maptile_marker);
			instance_deactivate_object(obj_link_map);
			instance_deactivate_object(obj_link_audio);
			instance_deactivate_object(obj_link_healthUI);
	
			instance_deactivate_object(obj_health_sparetank_100)
			instance_deactivate_object(obj_healthblock1)
			instance_deactivate_object(obj_healthbar)
			instance_deactivate_object(obj_healthblockstart)
			instance_deactivate_object(obj_healthnumberone)
			instance_deactivate_object(obj_healthnumberten)
	
			instance_deactivate_object(obj_mapborder)
			instance_deactivate_object(obj_mapborder_underside)
	
			instance_deactivate_object(obj_ability_invisibility)
			instance_deactivate_object(obj_number_1_invis)
			instance_deactivate_object(obj_number_10_invis)
			instance_deactivate_object(obj_number_100_invis)
	
			instance_deactivate_object(obj_ability_nanoshield)
			instance_deactivate_object(obj_number_1_nanoshield)
			instance_deactivate_object(obj_number_10_nanoshield)
			instance_deactivate_object(obj_number_100_nanoshield)
	
			instance_deactivate_object(obj_ability_nuclearblast)
			instance_deactivate_object(obj_number_1_nuclearblast)
			instance_deactivate_object(obj_number_10_nuclearblast)
			instance_deactivate_object(obj_number_100_nuclearblast)
			
			//reset newmenu intro to default before pause screen
			if (instance_exists(obj_NEWmenu_intro))
			{
				with(obj_NEWmenu_intro)
				{
					menu_index_heading = 0;
					menu_index_item = 0;
					spawn = 0;
				}
			}
		}
		
		image_alpha = image_alpha - 0.08;
	
		//health
		#region
			if (instance_exists(obj_link_healthUI))
			{
				with(obj_link_healthUI)
				{
					image_alpha += 0.08
				}
			}
			if (instance_exists(obj_healthbar))
			{
				with(obj_healthbar)
				{
					image_alpha += 0.08
				}
			}
			if (instance_exists(obj_healthblock1))
			{
				with(obj_healthblock1)
				{
					image_alpha += 0.08
				}
			}
			if (instance_exists(obj_healthblockstart))
			{
				with(obj_healthblockstart)
				{
					image_alpha += 0.08
				}
			}
			if (instance_exists(obj_health_sparetank_100))
			{
				with(obj_health_sparetank_100)
				{
					image_alpha += 0.08
				}
			}
			if (instance_exists(obj_healthnumberone))
			{
				with(obj_healthnumberone)
				{
					image_alpha += 0.08
				}
			}
			if (instance_exists(obj_healthnumberten))
			{
				with(obj_healthnumberten)
				{
					image_alpha += 0.08
				}
			}
		#endregion
	
		//ammo
		#region
		if (instance_exists(obj_number_100_ammo))
			{
				with(obj_number_100_ammo)
				{
					image_alpha += 0.08
				}
			}
		if (instance_exists(obj_number_10_ammo))
			{
				with(obj_number_10_ammo)
				{
					image_alpha += 0.08
				}
			}
		if (instance_exists(obj_number_1_ammo))
			{
				with(obj_number_1_ammo)
				{
					image_alpha += 0.08
				}
			}
		if (instance_exists(obj_ammo_icon))
			{
				with(obj_ammo_icon)
				{
					image_alpha += 0.08
				}
			}
		if (instance_exists(obj_number_ammo_bg))
			{
				with(obj_number_ammo_bg)
				{
					image_alpha += 0.08
				}
			}
		#endregion
	
		//map
		#region
		if (instance_exists(obj_link_map))
			{
				with(obj_link_map)
				{
					image_alpha += 0.08
				}
			}
		if (instance_exists(obj_maptile_tile))
			{
				with(obj_maptile_tile)
				{
					image_alpha += 0.08
				}
			}
		if (instance_exists(obj_maptile_tile_differentsector))
			{
				with(obj_maptile_tile_differentsector)
				{
					image_alpha += 0.08
				}
			}
		if (instance_exists(obj_maptile_tile_hint))
			{
				with(obj_maptile_tile_hint)
				{
					image_alpha += 0.08
				}
			}
		if (instance_exists(obj_maptile_tile_hint_item))
			{
				with(obj_maptile_tile_hint_item)
				{
					image_alpha += 0.08
				}
			}
		#endregion
	
			//abilities
			#region
			
			//set abilities to correct locations based on the ones available
			#region
			//get current abilities available
			var invisSwitch = 0;
			var nanoSwitch = 0;
			var nuclSwitch = 0;
			var shocSwitch = 0;
	
			if (instance_exists(obj_ability_invisibility))
			{
				if (obj_ability_invisibility.active == 1)
				{
					invisSwitch = 1;
				}
				else invisSwitch = 0;
			}
			if (instance_exists(obj_ability_shockwave))
			{
				if (obj_ability_shockwave.active == 1)
				{
					shocSwitch = 1;
				}
				else shocSwitch = 0;
			}
			if (instance_exists(obj_ability_nanoshield))
			{
				if (obj_ability_nanoshield.active == 1)
				{
					nanoSwitch = 1;
				}
				else nanoSwitch = 0;
			}
			if (instance_exists(obj_ability_nuclearblast))
			{
				if (obj_ability_nuclearblast.active == 1)
				{
					nuclSwitch = 1;
				}
				else nuclSwitch = 0;
			}
	
			var abilities_available = nuclSwitch + nanoSwitch + invisSwitch + shocSwitch;
	
			//get the right positions for each ability icon
			if (abilities_available > 0)
			{
				if (abilities_available == 1) //if only one ability icon exists
				{
					if (invisSwitch)
					{
						obj_ability_invisibility.abilitylimitID = 1;
					}
					else if (shocSwitch)
					{
						obj_ability_shockwave.abilitylimitID = 1;
					}
					else if (nuclSwitch)
					{
						obj_ability_nuclearblast.abilitylimitID = 1;
					}
					else if (nanoSwitch)
					{
						obj_ability_nanoshield.abilitylimitID = 1;
					}
				}
				else if (abilities_available == 2) //if 2 ability icon exists
				{
					//invisibility
					if (invisSwitch)
					{
						obj_ability_invisibility.abilitylimitID = 1;
						if (nanoSwitch)
						{
							obj_ability_nanoshield.abilitylimitID = 2;
						}
						else if (nuclSwitch)
						{
							obj_ability_nuclearblast.abilitylimitID = 2;
						}
						else if (shocSwitch)
						{
							obj_ability_shockwave.abilitylimitID = 2;
						}
					}
					else if (nanoSwitch)
					{
						obj_ability_nanoshield.abilitylimitID = 1;
						if (invisSwitch)
						{
							obj_ability_invisibility.abilitylimitID = 2;
						}
						else if (nuclSwitch)
						{
							obj_ability_nuclearblast.abilitylimitID = 2;
						}
						else if (shocSwitch)
						{
							obj_ability_shockwave.abilitylimitID = 2;
						}
					}
					else if (nuclSwitch)
					{
						obj_ability_nuclearblast.abilitylimitID = 1;
						if (invisSwitch)
						{
							obj_ability_invisibility.abilitylimitID = 2;
						}
						else if (nanoSwitch)
						{
							obj_ability_nanoshield.abilitylimitID = 2;
						}
						else if (shocSwitch)
						{
							obj_ability_shockwave.abilitylimitID = 2;
						}
					}
					else if (shocSwitch)
					{
						obj_ability_shockwave.abilitylimitID = 1;
						if (invisSwitch)
						{
							obj_ability_invisibility.abilitylimitID = 2;
						}
						else if (nanoSwitch)
						{
							obj_ability_nanoshield.abilitylimitID = 2;
						}
						else if (nuclSwitch)
						{
							obj_ability_nuclearblast.abilitylimitID = 2;
						}
					}
				}
				else if (abilities_available == 3) //if 3 ability icon exists
				{
					//invisibility
					if (invisSwitch)
					{
						obj_ability_invisibility.abilitylimitID = 1;
						if (nanoSwitch)
						{
							obj_ability_nanoshield.abilitylimitID = 2;
							if (nuclSwitch)
							{
								obj_ability_nuclearblast.abilitylimitID = 3;
							}
							else if (shocSwitch)
							{
								obj_ability_shockwave.abilitylimitID = 3;
							}
						}
						else if (nuclSwitch)
						{
							obj_ability_nuclearblast.abilitylimitID = 2;
							if (nanoSwitch)
							{
								obj_ability_nanoshield.abilitylimitID = 3;
							}
							else if (shocSwitch)
							{
								obj_ability_shockwave.abilitylimitID = 3;
							}
						}
						else if (shocSwitch)
						{
							obj_ability_shockwave.abilitylimitID = 2;
							if (nanoSwitch)
							{
								obj_ability_nanoshield.abilitylimitID = 3;
							}
							else if (nuclSwitch)
							{
								obj_ability_nuclearblast.abilitylimitID = 3;
							}
						}
					}
					else if (nanoSwitch)
					{
						obj_ability_nanoshield.abilitylimitID = 1;
						if (invisSwitch)
						{
							obj_ability_invisibility.abilitylimitID = 2;
							if (nuclSwitch)
							{
								obj_ability_nuclearblast.abilitylimitID = 3;
							}
							else if (shocSwitch)
							{
								obj_ability_shockwave.abilitylimitID = 3;
							}
						}
						else if (nuclSwitch)
						{
							obj_ability_nuclearblast.abilitylimitID = 2;
							if (invisSwitch)
							{
								obj_ability_invisibility.abilitylimitID = 3;
							}
							else if (shocSwitch)
							{
								obj_ability_shockwave.abilitylimitID = 3;
							}
						}
						else if (shocSwitch)
						{
							obj_ability_shockwave.abilitylimitID = 2;
							if (invisSwitch)
							{
								obj_ability_invisibility.abilitylimitID = 3;
							}
							else if (nuclSwitch)
							{
								obj_ability_nuclearblast.abilitylimitID = 3;
							}
						}
					}
					else if (nuclSwitch)
					{
						obj_ability_nuclearblast.abilitylimitID = 1;
						if (invisSwitch)
						{
							obj_ability_invisibility.abilitylimitID = 2;
							if (nanoSwitch)
							{
								obj_ability_nanoshield.abilitylimitID = 3;
							}
							else if (shocSwitch)
							{
								obj_ability_shockwave.abilitylimitID = 3;
							}
						}
						else if (nanoSwitch)
						{
							obj_ability_nanoshield.abilitylimitID = 2;
							if (invisSwitch)
							{
								obj_ability_invisibility.abilitylimitID = 3;
							}
							else if (shocSwitch)
							{
								obj_ability_shockwave.abilitylimitID = 3;
							}
						}
						else if (shocSwitch)
						{
							obj_ability_shockwave.abilitylimitID = 2;
							if (invisSwitch)
							{
								obj_ability_invisibility.abilitylimitID = 3;
							}
							else if (nanoSwitch)
							{
								obj_ability_nanoshield.abilitylimitID = 3;
							}
						}
					}
					else if (shocSwitch)
					{
						obj_ability_shockwave.abilitylimitID = 1;
						if (invisSwitch)
						{
							obj_ability_invisibility.abilitylimitID = 2;
							if (nanoSwitch)
							{
								obj_ability_nanoshield.abilitylimitID = 3;
							}
							else if (nuclSwitch)
							{
								obj_ability_nuclearblast.abilitylimitID = 3;
							}
						}
						else if (nanoSwitch)
						{
							obj_ability_nanoshield.abilitylimitID = 2;
							if (invisSwitch)
							{
								obj_ability_invisibility.abilitylimitID = 3;
							}
							else if (nuclSwitch)
							{
								obj_ability_nuclearblast.abilitylimitID = 3;
							}
						}
						else if (nuclSwitch)
						{
							obj_ability_nuclearblast.abilitylimitID = 2;
							if (invisSwitch)
							{
								obj_ability_invisibility.abilitylimitID = 3;
							}
							else if (nanoSwitch)
							{
								obj_ability_nanoshield.abilitylimitID = 3;
							}
						}
					}
				}
				else if (abilities_available == 4) //if 4 ability icon exists
				{
					obj_ability_invisibility.abilitylimitID = 1;
					obj_ability_nanoshield.abilitylimitID = 2;
					obj_ability_nuclearblast.abilitylimitID = 3;
					obj_ability_shockwave.abilitylimitID = 4;
				}
			}
			#endregion
			
			if (instance_exists(obj_ability_invisibility))
			{
				with(obj_ability_invisibility)
				{
					image_alpha += 0.08
					
					if (global.invisibility_available > 0)
					{
						active = 1
					}
					else active = 0;
				}
			}
			if (instance_exists(obj_ability_nanoshield))
			{
				with(obj_ability_nanoshield)
				{
					image_alpha += 0.08
					
					if (global.nanoshield_available > 0)
					{
						active = 1
					}
					else active = 0;
				}
			}
			if (instance_exists(obj_ability_nuclearblast))
			{
				with(obj_ability_nuclearblast)
				{
					image_alpha += 0.08
					
					if (global.nuclearblast_available > 0)
					{
						active = 1
					}
					else active = 0;
				}
			}
			if (instance_exists(obj_ability_shockwave))
			{
				with(obj_ability_shockwave)
				{
					image_alpha += 0.08
					
					if (global.shockwave_available > 0)
					{
						active = 1
					}
					else active = 0;
				}
			}
			
			if (instance_exists(obj_number_1_invis))
			{
				with(obj_number_1_invis)
				{
					image_alpha += 0.08
				}
			}
			if (instance_exists(obj_number_10_invis))
			{
				with(obj_number_10_invis)
				{
					image_alpha += 0.08
				}
			}
			if (instance_exists(obj_number_100_invis))
			{
				with(obj_number_100_invis)
				{
					image_alpha += 0.08
				}
			}
		
			if (instance_exists(obj_number_1_nanoshield))
			{
				with(obj_number_1_nanoshield)
				{
					image_alpha += 0.08
				}
			}
			if (instance_exists(obj_number_10_nanoshield))
			{
				with(obj_number_10_nanoshield)
				{
					image_alpha += 0.08
				}
			}
			if (instance_exists(obj_number_100_nanoshield))
			{
				with(obj_number_100_nanoshield)
				{
					image_alpha += 0.08
				}
			}
		
			if (instance_exists(obj_number_1_nuclearblast))
			{
				with(obj_number_1_nuclearblast)
				{
					image_alpha += 0.08
				}
			}
			if (instance_exists(obj_number_10_nuclearblast))
			{
				with(obj_number_10_nuclearblast)
				{
					image_alpha += 0.08
				}
			}
			if (instance_exists(obj_number_100_nuclearblast))
			{
				with(obj_number_100_nuclearblast)
				{
					image_alpha += 0.08
				}
			}
		#endregion
	
	
		FadeNow = 1.0
		deact1 = 1;
		react = 1;
		global.stopper_2ndscrnshot = 1;
		global.pause_exit = 1;
	
		if (layer_exists("Tiles_pause"))
		{
			layer_destroy("Tiles_pause")
		}
		
		instance_destroy(obj_pausescrn1)
		instance_destroy(obj_texty_heading)
		instance_destroy(obj_status_bg2)
		instance_destroy(obj_map_L)
		instance_destroy(obj_map_R)
		instance_destroy(obj_pause_map)
		instance_destroy(obj_pause_logbook)
		instance_destroy(obj_pause_options)
		instance_destroy(obj_pause_status)
	
		instance_destroy(obj_pausescrn_arrowdown)
		instance_destroy(obj_pausescrn_arrowleft)
		instance_destroy(obj_pausescrn_arrowright)
		instance_destroy(obj_pausescrn_arrowup)
		instance_destroy(obj_maptile_marker_cursor)
		instance_destroy(obj_texty_generic)
	
		instance_destroy(obj_TOXIC_SUIT)
		instance_destroy(obj_InfinityBOOTS)
		instance_destroy(obj_ScrewJump)
		instance_destroy(obj_Chargebeam)
		instance_destroy(obj_SpreadBeam)
	
		instance_destroy(obj_screensize)
		instance_destroy(obj_textblock_320x180)
		instance_destroy(obj_textblock_640x360)
		instance_destroy(obj_textblock_960x540)
		instance_destroy(obj_textblock_1366x768)
		instance_destroy(obj_textblock1920x1080)
		instance_destroy(obj_textblock_fullscrn)
		instance_destroy(obj_textselector_arrow)
	
		//delete previous menu stuff
		#region
		if (instance_exists(obj_textblock_generic))
				{
					with(obj_textblock_generic)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_controls_generic))
				{
					with(obj_textblock_controls_generic)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_heading))
				{
					with(obj_textblock_heading)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_mover_generic))
				{
					with(obj_textblock_mover_generic)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textselector_arrow_generic))
				{
					with(obj_textselector_arrow_generic)
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

		//map menu stuff delete
		if (instance_exists(obj_maptile_marker_cursor))
				{
					with(obj_maptile_marker_cursor)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_pausescrn_arrowdown))
				{
					with(obj_pausescrn_arrowdown)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_pausescrn_arrowup))
				{
					with(obj_pausescrn_arrowup)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_pausescrn_arrowleft))
				{
					with(obj_pausescrn_arrowleft)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_pausescrn_arrowright))
				{
					with(obj_pausescrn_arrowright)
					{
						instance_destroy();	
					}
				}

				
		//controllers
		if (instance_exists(obj_NEWpausemenu_controller))
				{
					with(obj_NEWpausemenu_controller)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_NEWpausemenu_screensize_controller))
				{
					with(obj_NEWpausemenu_screensize_controller)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_NEWpausemenu_prestate_controller))
				{
					with(obj_NEWpausemenu_prestate_controller)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_NEWpausemenu_audio_controller))
				{
					with(obj_NEWpausemenu_audio_controller)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_pause_audiobar))
				{
					with(obj_pause_audiobar)
					{
						instance_destroy();	
					}
				}
	
		//screensize blocks
		if (instance_exists(obj_textblock_320x180))
				{
					with(obj_textblock_320x180)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_640x360))
				{
					with(obj_textblock_640x360)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_960x540))
				{
					with(obj_textblock_960x540)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock1920x1080))
				{
					with(obj_textblock1920x1080)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_1366x768))
				{
					with(obj_textblock_1366x768)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_fullscrn))
				{
					with(obj_textblock_fullscrn)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textselector_arrow))
				{
					with(obj_textselector_arrow)
					{
						instance_destroy();	
					}
				}
		#endregion
	
	}

	//kill the screenshot object and reset everything
	if (image_alpha <= 0.0) && (global.stopper_2ndscrnshot = 1) && (deact1 == 1) && (react == 1)
	 && (global.pause_exit= 1)
	{   
					instance_destroy(obj_pause_maker)
					instance_destroy(obj_link_pause)
					sprite_delete(sprite_index);
	                sprite_index = -1;
					scrn = 0;
	                global.pause_exit = 0;
					global.pause_transition = 0;
	                global.stopper_2ndscrnshot = 0;
					global.pause_map = 0
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
	                instance_destroy();
	}


}
