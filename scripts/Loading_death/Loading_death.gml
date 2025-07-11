function Loading_death() {
	//for making collected upgrades not respawn
	global.upgradeID_N = 0;
	//upgrades
	global.walljump = 0;
	global.airdash = 0;
	global.hydrodash = 0;
	global.shoot_autoR_upgrade = 0;
	
	//choose abilities
	global.ability_select = 1;
	global.ability_limit = 0;

	//sword
	global.sword_available = 0;
	global.sword_swing_available = 0;
	global.sword_wave_available = 0;


	//abilities-invisibility
	global.invisibility_state = 0
	global.invisibility_available = 0;
	global.invisibility_ammo = 0;
	global.invisibility_limit = 0;
	global.invisibility_prep = 0

	global.invisibility_recharge = 0;

	//abilities-nanoshield
	global.nanoshield_state = 0
	global.nanoshield_available = 0;
	global.nanoshield_ammo = 0;
	global.nanoshield_limit = 0;

	//abilities-nuclearblast
	global.nuclearblast_state = 0;		
	global.nuclearblast_available = 0;
	global.nuclearblast_ammo = 0;
	global.nuclearblast_limit = 0;

	//abilities-shockwave
	global.shockwave_state = 0
	global.shockwave_available = 0
	global.shockwave_ammo = 0
	global.shockwave_limit = 0
	global.shockwave = 0

	global.nanoshield_recharge = 0;

	global.explosiveammo = 0
	global.animation_end = 0
	global.jumping_maxheight = 0

	global.constantspd = 0;
	global.facingDir = 1;
	global.turning = 0;
	global.turning_dash2 = 0;
	global.turningLedge = 0;
	global.lockdown_facingDir = 0;
	global.grounded = 1;
	global.landed = 0;
	global.crouching = 0;

	global.wallscaler = 0;
	global.speedboots = 0;
	global.screwjump = 0;
	global.spacejump = 0;
	global.suit_count = 0;
	global.invisibility = 0;
	global.nanoshield = 0;
	global.nuclearblast = 0
	global.xvision = 0
	global.kelvin = 0

	global.autohack = 0
	global.superautohack = 0

	global.upgrade_charge = 0;
	global.charging = 0;
	global.charge_ready = 0;
	global.charge_shot = 0;

	global.beam_spread_available = 0;
	global.beam_spread = 0;

	global.beam_burn = 0;
	global.beam_burn_available = 0;

	global.beam_homing = 0;
	global.beam_homing_available = 0;

	global.beam_shield = 0;
	global.beam_shield_available = 0;

	global.suit_pure = 0;
	global.suit_shell = 0
	global.suit_shock = 0
	
	
	
	//global.vars that are not arrays
	global.ability_limit = 0
	global.ability_select = 0
	global.tiledataN = 0;
	global.tileHazardDataN = 0;
	global.mapgrid_tilegivenN = 0;
	global.sector_active = 0;
	global.midgame = 0;
	global.corrupted = 0;
	
	
	
	//reset all values for tile IDs, tile blocker IDs and tile hazard IDs
	for (var ll = 0; ll < 9999; ll++)
	{
		global.tilex[ll] = 0;
		global.tiley[ll] = 0;
		global.tiledata[ll] = 0;
		global.tilesprite[ll] = 0;
		global.tilesector[ll] = 0;
		global.tileroom[ll] = 0;	
		global.tileblocker[ll] = 0;
		global.tileblocker2[ll] = 0;
		global.tileitem[ll] = 0;
		global.tile_hazard[ll] = 0;
		global.tile_hazard_sprite[ll] = 0;
		global.tile_hazard_redblockerID[ll] = 0;
		global.mapgrid_tilegivellX[ll] = 0;
		global.mapgrid_tilegivellY[ll] = 0;
	}
	
	//reset all values for upgrade IDs, Redblocker IDs alld bossblockerIDs
	for (var ll = 0; ll < 999; ll++)
	{
		global.upgradecollected[ll] = 0;
		global.upgradecollected_maill[ll] = 0;
		global.upgradetrue[ll] = 0;
		global.upgradeID_room[ll] = 0
		global.doors_redblocker[ll] = 0;
		global.doors_true[ll] = 0;
		global.bossblockers[ll] = 0
	}
	
	

	
	//LOADING
	if (file_exists("XGA.SAVEFILE.dat"))
	{
			var _map_decoded = LoadJSONFromFile("XGA.SAVEFILE.dat")
			var list = ds_map_find_value(_map_decoded,"ROOT")
			var size = ds_list_size(list)
		
			for (var i = 0; i < size; i++)
			{
				var listvalue = ds_list_find_value(list,i)
		
				global.spacestation_active = ds_map_find_value(listvalue, "spacestationactivated");
		
				global.sector_active = ds_map_find_value(listvalue, "global.sectoractive");
				global.sector_music = ds_map_find_value(listvalue, "global.sectormusic");
				
				RefMusicLoop()
				
				
		
				if (global.spacestation_active)
						{
							global.health1 = ds_map_find_value(listvalue, "global.health1");
						}
				else if (!global.spacestation_active)
						{
							global.health1 = 6
						}
					
				
				//health	
				global.health_limit = ds_map_find_value(listvalue, "global.health_limit");
				global.healthtankN = ds_map_find_value(listvalue, "global.health_tank_N");
				global.upgrade_health =ds_map_find_value(listvalue, "global.upgrade_health");
				
				//ammo
				global.shoot_ammo_start = ds_map_find_value(listvalue, "global.shoot_ammo_start");
				global.shoot_autoR_upgrade = ds_map_find_value(listvalue, "global.shoot_autoR_upgrade");
				global.shoot_instacharge_upgrade = ds_map_find_value(listvalue, "global.shoot_instacharge_upgrade");
				
				
				global.midgame = ds_map_find_value(listvalue, "global.midgame");
				
				
				
			
				while (global.health_limit > (instance_number(obj_originalHP_block_start)) + (instance_number(obj_originalHP_block)))
				{
					if (instance_number(obj_originalHP_block_start) <= 6)
					{
						var insty1 = instance_create_layer(0,0,layer_get_id("Inst_healthui"),obj_originalHP_block_start)
						with(insty1)
						{
							n =	(instance_number(obj_originalHP_block_start))
							image_alpha = 1
						}
					}
					else
					{
						var insty2 = instance_create_layer(0,0,layer_get_id("Inst_healthui"),obj_originalHP_block)
						with(insty2)
						{
							image_alpha = 1	
						}
					}
				}

			
		
				global.babysnail_amount = ds_map_find_value(listvalue, "global.babysnail_amount");
				global.defense_booster = ds_map_find_value(listvalue, "global.defensebooster");
				global.charge_booster = ds_map_find_value(listvalue, "global.chargebooster");
	
		
				global.upgradeID_N = ds_map_find_value(listvalue,"global.upgradeID_N")
			
				//upgrades_collected
				for ( n = 0; n < 999; n += 1)
				{
					//if (global.upgradecollected[n] == 1)
					//{
					global.upgradecollected[n] = ds_map_find_value(listvalue,"Global.Variables.upgrades"+string(n));
					global.upgradeID_room[n] = ds_map_find_value(listvalue,"Global.Variables.upgrades.room"+string(n));
					global.upgradetrue[n] = ds_map_find_value(listvalue,"Global.Variables.upgrades.true" + string(n));
					//}
				}
		
				//getting every destroyed red blocker
				for ( nRedblocker = 0; nRedblocker < 999; nRedblocker += 1)
				{
					global.doors_redblocker[nRedblocker] = ds_map_find_value(listvalue,"RedblockerData"+string(nRedblocker))
					global.doors_true[nRedblocker] = ds_map_find_value(listvalue,"RedblockerData.true"+string(nRedblocker))
				}
			

				//getting every destroyed boss
				for ( nbossblockers = 0; nbossblockers < 999; nbossblockers += 1)
				{
					global.bossblockers[nbossblockers] = ds_map_find_value(listvalue,"BossBattlesLog"+string(nbossblockers))
				}

		
				//cutscene ID log
				for ( n4 = 0; n4 < 99; n4 += 1)
				{
					global.cutsceneID[n4] = ds_map_find_value(listvalue,"CutsceneIDLog"+string(n4))
				}
				
	
				////////////////////////MAP TILES!!!
				
				//getting every discovered tile
				global.tiledataN = ds_map_find_value(listvalue,"Tile.Data.N");
				
				//getting the maptile hazard total
				global.tileHazardDataN = ds_map_find_value(listvalue,"Tile.Data.Hazard.N");
	
				for ( n2 = 0; n2 < global.tiledataN + 1; n2 += 1)
				{
					global.tiledata[n2] = ds_map_find_value(listvalue,"Tile.Data"+string(n2));
					
					if (global.tiledata[n2] > 0)
					{
						instmap = instance_create_layer(100,100,layer_get_id("Inst_healthui"),obj_maptile_tile);
						//getting every discovered tile's sprite index
						//global.tilesprite[n2] = ds_map_find_value(listvalue,"Tile.Data2"+string(n2));
						var TILEdata2name = ds_map_find_value(listvalue,"Tile.Data2.name" + string(n2));
						global.tilesprite[n2] = asset_get_index(TILEdata2name)
						instmap.sprite_index = global.tilesprite[n2];
					
						global.tilex[n2] = ds_map_find_value(listvalue,"Tile.DataX"+string(n2));
						instmap.tileposx = global.tilex[n2];
						global.tiley[n2] = ds_map_find_value(listvalue,"Tile.DataY"+string(n2));
						instmap.tileposy = global.tiley[n2];
					
					
						//maptile's tileN value	
						instmap.tileN = ds_map_find_value(listvalue,"Tile.Data.Map.N" + string(n2));
					
					
					
						global.mapgrid_playerx = ds_map_find_value(listvalue,"Tile.Data.mapgridPlayerX"+string(n2));
						global.mapgrid_playery = ds_map_find_value(listvalue,"Tile.Data.mapgridPlayerY"+string(n2));
					
						instmap.discovered = 1;
						instmap.gotsprite = 1;
					
						global.tilesector[n2] = ds_map_find_value(listvalue,"Tile.DataSector"+string(n2));
						instmap.sectortile = global.tilesector[n2];
				
						global.tileroom[n2] = ds_map_find_value(listvalue,"Tile.DataRoom"+string(n2));
						instmap.room1 = global.tileroom[n2];
				
				
						//Datablocker-doorblockers
						if (ds_map_find_value(listvalue,"Tile.DataBlocker"+string(n2)))
						{
							instmap.blockerID = ds_map_find_value(listvalue,"Tile.DataBlocker"+string(n2));
							global.tileblocker[n2] = ds_map_find_value(listvalue,"Tile.DataBlocker"+string(n2));
						}
						else if (!ds_map_find_value(listvalue,"Tile.DataBlocker"+string(n2)))
						{
							instmap.blockerID = 0
							global.tileblocker[n2] = 0
						}
					
						//Datablocker2-doorblockers
						if (ds_map_find_value(listvalue,"Tile.DataBlocker2"+string(n2)))
						{
							instmap.blockerID2 = ds_map_find_value(listvalue,"Tile.DataBlocker2"+string(n2));
							global.tileblocker2[n2] = ds_map_find_value(listvalue,"Tile.DataBlocker2"+string(n2));
						}
						else if (!ds_map_find_value(listvalue,"Tile.DataBlocker2"+string(n2)))
						{
							instmap.blockerID2 = 0
							global.tileblocker2[n2] = 0
						}
				
						//TILE.ITEM- for collectible upgrades displayed on map
						if (ds_map_find_value(listvalue,"Tile.Item"+string(n2)))
						{
							instmap.upgradeID2 = ds_map_find_value(listvalue,"Tile.Item"+string(n2));
							global.tileitem[n2] = ds_map_find_value(listvalue,"Tile.Item"+string(n2));
						}
						else if (!ds_map_find_value(listvalue,"Tile.Item"+string(n2)))
						{
							instmap.upgradeID2 = 0
							global.tileitem[n2] = 0
						}
				
						//HAZARD.ID-map id of the one detecting hazard
						if (ds_map_find_value(listvalue,"Tile.Hazard"+string(n2)))
						{
							instmap.hazardID = ds_map_find_value(listvalue,"Tile.Hazard"+string(n2));
							global.tile_hazard[n2] = ds_map_find_value(listvalue,"Tile.Hazard"+string(n2));
						}
						else if (!ds_map_find_value(listvalue,"Tile.Hazard"+string(n2)))
						{
							instmap.hazardID = 0
							global.tile_hazard[n2] = 0
						}
					
						//HAZARD.ID-sprite id of hazard map tile
						if (ds_map_find_value(listvalue,"Tile.Hazard.sprite"+string(n2)))
						{
							instmap.hazardID2 = ds_map_find_value(listvalue,"Tile.Hazard.sprite"+string(n2))
							global.tile_hazard_sprite[n2] = ds_map_find_value(listvalue,"Tile.Hazard.sprite"+string(n2))
						}
						else if (!ds_map_find_value(listvalue,"Tile.Hazard.sprite"+string(n2)))
						{
							instmap.hazardID2 = 0
							global.tile_hazard_sprite[n2] = 0
						}
					
						//HAZARD.ID-redblocker id of hazard detected by map tile
						if (ds_map_find_value(listvalue,"Tile.Hazard.redblockerID"+string(n2)))
						{
							instmap.hazardID_redblockerID = ds_map_find_value(listvalue,"Tile.Hazard.redblockerID"+string(n2))
							global.tile_hazard_redblockerID[n2] = ds_map_find_value(listvalue,"Tile.Hazard.redblockerID"+string(n2))
						}
						else if (!ds_map_find_value(listvalue,"Tile.Hazard.redblockerID"+string(n2)))
						{
							instmap.hazardID_redblockerID = 0
							global.tile_hazard_redblockerID[n2] = 0
						}
					}
				}
	
				global.marker_N = ds_map_find_value(listvalue,"Marker.N");
				
		
				for ( n_instmarker = 0; n_instmarker < 5; n_instmarker += 1)
				{
					global.marker_inst[n_instmarker] = ds_map_find_value(listvalue, "Hinty.sectortile"+string(n_instmarker));
				}
	
				///getting every map marker
				for ( nmarker = 0; nmarker < global.marker_N + 1; nmarker += 1)
				{
					global.marker_no[nmarker] = ds_map_find_value(listvalue,"Marker.Data"+string(nmarker));
					
					if (global.marker_no[nmarker] > 0)
					{
						inst = instance_create_layer(100,100,layer_get_id("Inst_healthui_mapborder"),obj_maptile_marker);	
						global.marker_coordsX[nmarker] = ds_map_find_value(listvalue,"Marker.DataX"+string(nmarker));
						global.marker_coordsY[nmarker] = ds_map_find_value(listvalue,"Marker.DataY"+string(nmarker));
						global.marker_coordsX2[nmarker] = ds_map_find_value(listvalue,"Marker.DataX2"+string(nmarker));
						global.marker_coordsY2[nmarker] = ds_map_find_value(listvalue,"Marker.DataY2"+string(nmarker));
						global.marker_sectortile[nmarker] = ds_map_find_value(listvalue,"Marker.DataSector"+string(nmarker));
				
						inst.originX = global.marker_coordsX[nmarker];
						inst.originY = global.marker_coordsY[nmarker];
						inst.origionalX = global.marker_coordsX2[nmarker];
						inst.origionalY = global.marker_coordsY2[nmarker];
						
						//gets the original number order this map marker was spawned as
						inst.markerN = nmarker;
				
						inst.sectortile = ds_map_find_value(listvalue,"Marker.DataSector"+string(nmarker));
						var n098 = 3
					}
				}
				
	
		
				global.upgrade_charge = ds_map_find_value(listvalue, "global.upgrade_charge");
				global.beam_spread_available = ds_map_find_value(listvalue, "global.beam_spread_available");
				global.beam_burn_available = ds_map_find_value(listvalue, "global.beam_burn_available");
				global.beam_homing_available = ds_map_find_value(listvalue, "global.beam_homing_available");
				global.beam_shield_available = ds_map_find_value(listvalue, "global.beam_shield_available");
	
	
				for ( nability = 0; nability < 5; nability += 1)
				{
					global.abilityID[nability] = ds_map_find_value(listvalue,"abilityID"+string(nability));
				}
		
				//global.ability_select = ds_map_find_value(listvalue, "global.ability_select");
				global.ability_select = 0
				global.ability_limit = 0
		
				global.invisibility_state = ds_map_find_value(listvalue, "global.invisibility_state");
				global.invisibility_available = ds_map_find_value(listvalue, "global.invisibility_available");
				global.invisibility_ammo = ds_map_find_value(listvalue, "global.invisibility_ammo");
				global.invisibility_limit = ds_map_find_value(listvalue, "global.invisibility_limit");
		
				//abilities UI-invisibility
				if (global.upgradecollected[upgrades.invisibility] == 1)
				{
					instance_create_layer(__view_get( e__VW.XView, 0 )+93,__view_get( e__VW.YView, 0 )+1,layer_get_id("Inst_healthui"),obj_ability_invisibility);
					with(obj_ability_invisibility)
					{
						global.ability_limit++
						abilitylimitID = global.ability_limit
					}
				}
	
				global.nanoshield_state = ds_map_find_value(listvalue, "global.nanoshield_state");
				global.nanoshield_available = ds_map_find_value(listvalue, "global.nanoshield_available");
				global.nanoshield_ammo = ds_map_find_value(listvalue, "global.nanoshield_ammo");
				global.nanoshield_limit = ds_map_find_value(listvalue, "global.nanoshield_limit");
		
				//abilities UI-nanoshield
				if (global.upgradecollected[upgrades.nanoshield] == 1)
				{
					instance_create_layer(__view_get( e__VW.XView, 0 )+93,__view_get( e__VW.YView, 0 )+1,layer_get_id("Inst_healthui"),obj_ability_nanoshield);
					with(obj_ability_nanoshield)
					{
						global.ability_limit++
						abilitylimitID = global.ability_limit
					}
				}
		
				global.nuclearblast_state = ds_map_find_value(listvalue, "global.nuclearblast_state");
				global.nuclearblast_available = ds_map_find_value(listvalue, "global.nuclearblast_available");
				global.nuclearblast_ammo = ds_map_find_value(listvalue, "global.nuclearblast_ammo");
				global.nuclearblast_limit = ds_map_find_value(listvalue, "global.nuclearblast_limit");
		
				//abilities UI-nuclearblast
				if (global.upgradecollected[upgrades.nuclearblast] == 1)
				{
					instance_create_layer(__view_get( e__VW.XView, 0 )+93,__view_get( e__VW.YView, 0 )+1,layer_get_id("Inst_healthui"),obj_ability_nuclearblast);
					with(obj_ability_nuclearblast)
					{
						global.ability_limit++
						abilitylimitID = global.ability_limit
					}
				}
			
				global.shockwave_state = ds_map_find_value(listvalue, "global.shockwave_state");
				global.shockwave_available = ds_map_find_value(listvalue, "global.shockwave_available");
				global.shockwave_ammo = ds_map_find_value(listvalue, "global.shockwave_ammo");
				global.shockwave_limit = ds_map_find_value(listvalue, "global.shockwave_limit");
		
				//abilities UI-shockwave
				if (global.upgradecollected[upgrades.shockwave] == 1)
				{
					instance_create_layer(__view_get( e__VW.XView, 0 )+93,__view_get( e__VW.YView, 0 )+1,layer_get_id("Inst_healthui"),obj_ability_shockwave)
					with(obj_ability_shockwave)
					{
						global.ability_limit++
						abilitylimitID = global.ability_limit
					}
				}
		
	
				global.money = ds_map_find_value(listvalue, "global.money");
	
				global.wallscaler = ds_map_find_value(listvalue, "global.wallscaler");
				global.xvision = ds_map_find_value(listvalue, "global.xvision");
				global.kelvin = ds_map_find_value(listvalue, "global.kelvin");
				global.speedboots = ds_map_find_value(listvalue, "global.speedboots");
				global.screwjump = ds_map_find_value(listvalue, "global.screwjump");
				global.spacejump = ds_map_find_value(listvalue, "global.spacejumph");
				global.airdash = ds_map_find_value(listvalue, "global.airdash");
				global.hydrodash = ds_map_find_value(listvalue, "global.hydrodash");
			
				//sword
				global.sword_available = ds_map_find_value(listvalue ,"global.sword_available");
				global.sword_swing_available = ds_map_find_value(listvalue ,"global.sword_swing_available");
				global.sword_wave_available = ds_map_find_value(listvalue ,"global.sword_wave_available");
		
				global.autohack = ds_map_find_value(listvalue, "global.autohack");
				global.superautohack = ds_map_find_value(listvalue, "global.superautohack");
		
				global.suit_pure = ds_map_find_value(listvalue, "global.suit_pure");
				global.suit_shock = ds_map_find_value(listvalue, "global.suit_shock");

			
				global.roomgoto1 = ds_map_find_value(listvalue, "WhichSaveRoom");
				global.mode_casual = ds_map_find_value(listvalue, "mode_casual");
				global.corrupted = ds_map_find_value(listvalue, "mode_corrupted");
		
	
				global.hinty = ds_map_find_value(listvalue, "hint_tile")
	
				if (global.hinty > 0)
				{
					inst = instance_create_layer(__view_get( e__VW.XView, 0 ) + floor(150-(global.mapgrid_playerx*10))+global.xleft,__view_get( e__VW.YView, 0 ) + floor(100+global.mapgrid_playery*10)+global.yup,layer_get_id("Inst_healthui"),obj_maptile_tile_hint)
					with(inst)
						{
							tileposx = ds_map_find_value(listvalue, "hint_tilex")
							tileposy = ds_map_find_value(listvalue, "hint_tiley")
							sectortile = ds_map_find_value(listvalue, "hint_tilesectortile")
							if (!instance_exists(obj_deathscreennuke_maptile))
							{
							var inst3 = instance_create_depth(id.x+4,id.y+4,id.depth,obj_deathscreennuke_maptile)
							with(inst3)
								{
									tileposx = other.tileposx;
									tileposy = other.tileposy;
									sectortile = other.sectortile;
								}
							}
						}	
				}
			}
	}
	
	//get current UI and control adjustments
	if (file_exists("XGA.SAVEFILE.UI.dat"))
	{
			var _map_decoded = LoadJSONFromFile("XGA.SAVEFILE.UI.dat")
			var list = ds_map_find_value(_map_decoded,"ROOT")
			var size = ds_list_size(list)
		
			for (var i = 0; i < size; i++)
			{
				var listvalue = ds_list_find_value(list,i)
				
				//audio
				global.music_volume = ds_map_find_value(listvalue, "global.sectormusicVOL");
				global.sfx_volume = ds_map_find_value(listvalue, "global.sectorsfxVOL");
				
				//screenScale
				#region
				global.screenScale = ds_map_find_value(listvalue,"global.screenScale")
				if (global.screenScale == 0)
				{
					var view = view_camera[e__VW.Camera];
					window_set_fullscreen(false)
					window_set_size(320,180);
					surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
					global.screenScale = 0;
				}
				else if (global.screenScale == 2)
				{
					var view = view_camera[e__VW.Camera];
					window_set_fullscreen(false)
					window_set_size(640,360);
					surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
					global.screenScale = 2;
				}
				else if (global.screenScale == 4)
				{
					var view = view_camera[e__VW.Camera];
					window_set_fullscreen(false)
					window_set_size(960,540);
					surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
					global.screenScale = 4;
				}
				else if (global.screenScale == 6)
				{
					var view = view_camera[e__VW.Camera];
					window_set_fullscreen(false)
					window_set_size(1366,768);
					surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
					global.screenScale = 6;
				}
				else if (global.screenScale == 8)
				{
					var view = view_camera[e__VW.Camera];
					window_set_fullscreen(false)
					window_set_size(1920,1080);
					surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
					global.screenScale = 8;
				}
				else if (global.screenScale = 10)
				{
					if (window_get_fullscreen() == false)
					{
						var view = view_camera[e__VW.Camera];
						window_set_fullscreen(true)
						surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
						global.screenScale = 10;
					}
				}
				#endregion
				
				//controls changed
				#region
				global.controls_changed = ds_map_find_value(listvalue, "global.controls_changed");
		
				//controls-keyboard
				global.key_space = ds_map_find_value(listvalue, "key_space");
				global.key_ability = ds_map_find_value(listvalue, "key_ability");
				global.key_G = ds_map_find_value(listvalue, "key_G");
				global.key_tab = ds_map_find_value(listvalue, "key_tab");
	
				global.key_L1 = ds_map_find_value(listvalue, "key_L1");
				global.key_L2 = ds_map_find_value(listvalue, "key_L2");
				global.key_R1 = ds_map_find_value(listvalue, "key_R1");
				global.key_R2 = ds_map_find_value(listvalue, "key_R2");
	
				global.key_select = ds_map_find_value(listvalue, "key_select");
				global.key_enter = ds_map_find_value(listvalue, "key_enter");
	
	
	
	
				//controls-gamepad
				global.gp_space = ds_map_find_value(listvalue, "gp_space");
				global.gp_ability = ds_map_find_value(listvalue, "gp_ability");
				global.gp_G = ds_map_find_value(listvalue, "gp_G");
				global.gp_tab = ds_map_find_value(listvalue, "gp_tab");
	
				global.gp_L1 = ds_map_find_value(listvalue, "gp_L1");
				global.gp_L2 = ds_map_find_value(listvalue, "gp_L2");
				global.gp_R1 = ds_map_find_value(listvalue, "gp_R1");
				global.gp_R2 = ds_map_find_value(listvalue, "gp_R2");
	
				global.gp_select = ds_map_find_value(listvalue, "gp_select");
				global.gp_enter = ds_map_find_value(listvalue, "gp_enter");
				#endregion
			}
	}

	if (ds_exists(list,ds_type_list))
	{
		ds_list_destroy(list)
	}

	ds_map_destroy(_map_decoded);



}
