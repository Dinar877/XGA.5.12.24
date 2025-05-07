function Saving(argument0) {
	//normal save file
	var filename = argument0

	var root_list = ds_list_create()
	var _map = ds_map_create()
	ds_list_add(root_list,_map)
	ds_list_mark_as_map(root_list,ds_list_size(root_list)-1)

	if (instance_exists(obj_link_player))
	{
		with(obj_link_player)
		{	
			//stores all the save data from every object by adding the values to the ds_map called "_map"
			var _name = object_get_name(object_index)
			ds_map_add(_map,"object",_name)
			ds_map_add(_map,"x",x)
			ds_map_add(_map,"y",y)
		}
	}

	if (instance_exists(obj_maptile_tile))
	{
		with(obj_maptile_tile)
		{	
			//stores all the save data from every object by adding the values to the ds_map called "_map"
			var _name = object_get_name(object_index)
			ds_map_add(_map,"object",_name)
			ds_map_add(_map,"x",x)
			ds_map_add(_map,"y",y)
		}
	}
	

	ds_map_add(_map, "global.health1", global.health1);
	ds_map_add(_map, "global.upgrade_health", global.upgrade_health);
	ds_map_add(_map, "global.babysnail_amount", global.babysnail_amount);
	ds_map_add(_map, "global.health_limit", global.health_limit);
	ds_map_add(_map, "global.health_tank_N", global.healthtankN);
	ds_map_add(_map, "global.upgrade_charge", global.upgrade_charge);
	ds_map_add(_map, "global.defensebooster", global.defense_booster);
	ds_map_add(_map, "global.chargebooster", global.charge_booster);
	
	//shoot
	ds_map_add(_map, "global.shoot_ammo_start", global.shoot_ammo_start);
	ds_map_add(_map, "global.shoot_autoR_upgrade", global.shoot_autoR_upgrade);
	ds_map_add(_map, "global.shoot_instacharge_upgrade", global.shoot_instacharge_upgrade);


	ds_map_add(_map,"global.upgradeID_N",global.upgradeID_N)
	ds_map_add(_map,"Marker.N", global.marker_N);
	
	
	ds_map_add(_map,"global.midgame",global.midgame)



	//used for later with destroying already gotten upgrades
	for ( n = 0; n < 999; n += 1)
		{
			if (global.upgradecollected[n] > 0)
			{
				ds_map_add(_map,"Global.Variables.upgrades" + string(n), 1);
			}
			else if (global.upgradecollected[n] <= 0)
			{
				ds_map_add(_map,"Global.Variables.upgrades" + string(n), 0);
			}
		
			if (global.upgradeID_room[n] > 0)
			{
				ds_map_add(_map,"Global.Variables.upgrades.room" + string(n), global.upgradeID_room[n]);
			}
			else if (global.upgradeID_room[n] <= 0)
			{
				ds_map_add(_map,"Global.Variables.upgrades.room" + string(n), 0);
			}
			
			if (global.upgradetrue[n] > 0)
			{
				ds_map_add(_map,"Global.Variables.upgrades.true" + string(n), global.upgradetrue[n]);
			}
			else if (global.upgradetrue[n] <= 0)
			{
				ds_map_add(_map,"Global.Variables.upgrades.true" + string(n), 0);
			}
		}
		
		

	//maptile limit
	ds_map_add(_map,"Tile.Data.N", global.tiledataN);

	//getting every discovered tile
	for ( n2 = 0; n2 < global.tiledataN + 1; n2 += 1)
		{
			if (global.tiledata[n2] > 0)
			{
				ds_map_add(_map,"Tile.Data" + string(n2), global.tiledata[n2]);
				ds_map_add(_map,"Tile.Data2" + string(n2), global.tilesprite[n2]);
				ds_map_add(_map,"Tile.Data2.name" + string(n2), sprite_get_name(global.tilesprite[n2]));
				ds_map_add(_map,"Tile.DataX" + string(n2), global.tilex[n2]);
				ds_map_add(_map,"Tile.DataY" + string(n2), global.tiley[n2]);
				ds_map_add(_map,"Tile.DataSector" + string(n2), global.tilesector[n2]);
				ds_map_add(_map,"Tile.DataRoom" + string(n2), global.tileroom[n2]);
			
				//sets the tiledataN value for this key, tiledata gives the maptile's tileN variable value.
				ds_map_add(_map,"Tile.Data.Map.N" + string(n2), global.tiledata[n2]);
			
			
				ds_map_add(_map,"Tile.Data.mapgridPlayerX" + string(n2),global.mapgrid_playerx)
				ds_map_add(_map,"Tile.Data.mapgridPlayerY" + string(n2),global.mapgrid_playery)
				
				
			
			
				//TILE DOOR BLOCKERS
				if (global.tileblocker[n2] > 0)
				{
					ds_map_add(_map,"Tile.DataBlocker" + string(n2), global.tileblocker[n2]);
				}
				else if (global.tileblocker[n2] <= 0)
				{
					ds_map_add(_map,"Tile.DataBlocker" + string(n2), 0);
				}
				if (global.tileblocker2[n2] > 0)
				{
					ds_map_add(_map,"Tile.DataBlocker2" + string(n2), global.tileblocker2[n2]);
				}
				else if (global.tileblocker2[n2] <= 0)
				{
					ds_map_add(_map,"Tile.DataBlocker2" + string(n2), 0);
				}
			
			
				//TILE ITEMS
				if (global.tileitem[n2] > 0)
				{
					ds_map_add(_map,"Tile.Item" + string(n2), global.tileitem[n2]);
				}
				else if (global.tileitem[n2] <= 0)
				{
					ds_map_add(_map,"Tile.Item" + string(n2), 0);
				}
			
			
				//TILE HAZARDS
				if (global.tile_hazard[n2] > 0)
				{
					ds_map_add(_map,"Tile.Hazard" + string(n2), global.tile_hazard[n2]);	
				}
				else if (global.tile_hazard[n2] <= 0)
				{
					ds_map_add(_map,"Tile.Hazard" + string(n2), 0);	
				}
			
				if (global.tile_hazard_sprite[n2] > 0)
				{
					ds_map_add(_map,"Tile.Hazard.sprite" + string(n2), global.tile_hazard_sprite[n2])	
				}
				else if (global.tile_hazard_sprite[n2] <= 0)
				{
					ds_map_add(_map,"Tile.Hazard.sprite" + string(n2), 0)	
				}
			
				if (global.tile_hazard_redblockerID[n2] > 0)
				{
					ds_map_add(_map,"Tile.Hazard.redblockerID" + string(n2), global.tile_hazard_redblockerID[n2])	
				}
				else if (global.tile_hazard_redblockerID[n2] <= 0)
				{
					ds_map_add(_map,"Tile.Hazard.redblockerID" + string(n2), 0)	
				}
			}
			else if (global.tiledata[n2] <= 0)
			{
				ds_map_add(_map,"Tile.Data" + string(n2), 0);
			}
		}
	
	//getting every map marker
		for ( nmarker = 0; nmarker < global.marker_N + 1; nmarker += 1)
		{
			if (global.marker_no[nmarker] > 0)
			{
				ds_map_add(_map,"Marker.Data"+string(nmarker), global.marker_no[nmarker]);
				ds_map_add(_map,"Marker.DataX"+string(nmarker), global.marker_coordsX[nmarker]);
				ds_map_add(_map,"Marker.DataY"+string(nmarker), global.marker_coordsY[nmarker]);
				ds_map_add(_map,"Marker.DataX2"+string(nmarker), global.marker_coordsX2[nmarker]);
				ds_map_add(_map,"Marker.DataY2"+string(nmarker), global.marker_coordsY2[nmarker]);
			
				if (global.marker_sectortile[nmarker] > -1)
				{
					ds_map_add(_map,"Marker.DataSector"+string(nmarker), global.marker_sectortile[nmarker]);	
				}
				else if (global.marker_sectortile[nmarker] <= -1)
				{
					ds_map_add(_map,"Marker.DataSector"+string(nmarker), 0);	
				}
			}
		}
	
		//abilities
		for ( nability = 0; nability < 5; nability += 1)
		{
			if (global.abilityID[nability] > 0)
			{
				ds_map_add(_map,"abilityID"+string(nability), 1);
			}
			else if (global.abilityID[nability] <= 0)
			{
				ds_map_add(_map,"abilityID"+string(nability), 0);
			}
		}
	
	
		//maptile hint
		if (instance_exists(obj_maptile_tile_hint) > 0)
		{
			ds_map_add(_map, "hint_tile", obj_maptile_tile_hint)
			ds_map_add(_map, "hint_tilex", obj_maptile_tile_hint.tileposx)
			ds_map_add(_map, "hint_tiley", obj_maptile_tile_hint.tileposy)
			ds_map_add(_map, "hint_tilesectortile", obj_maptile_tile_hint.sectortile)
		}
		else ds_map_add(_map, "hint_tile",0)
	
	
		for ( n_instmarker = 0; n_instmarker < 5; n_instmarker += 1)
		{
			if (global.marker_inst[n_instmarker] > 0)
			{	
				with(global.marker_inst[n_instmarker])
				{
					ds_map_add(_map,"Hinty.sectortile"+string(n_instmarker), sectortile);
				}
			}
			else if (global.marker_inst[n_instmarker] <= 0)
			{	
				ds_map_add(_map,"Hinty.sectortile"+string(n_instmarker), 0);
			}
		}
	
		//getting every destroyed red blocker
		for ( nRedblocker = 0; nRedblocker < 999; nRedblocker += 1)
		{
			if (global.doors_redblocker[nRedblocker] > 0)
			{
				ds_map_add(_map,"RedblockerData"+string(nRedblocker),global.doors_redblocker[nRedblocker])
			}
			else if (global.doors_redblocker[nRedblocker] <= 0)
			{
				ds_map_add(_map,"RedblockerData"+string(nRedblocker),0)
			}
			
			//redblocker.true
			if (global.doors_true[nRedblocker] > 0)
			{
				ds_map_add(_map,"RedblockerData.true"+string(nRedblocker),global.doors_true[nRedblocker])
			}
			else if (global.doors_true[nRedblocker] <= 0)
			{
				ds_map_add(_map,"RedblockerData.true"+string(nRedblocker),0)
			}
		}
	
		//boss battle log
		for ( nbossblockers = 0; nbossblockers < 999; nbossblockers += 1)
		{
			if (global.bossblockers[nbossblockers] > 0)
			{
				ds_map_add(_map,"BossBattlesLog"+string(nbossblockers),global.bossblockers[nbossblockers])
			}
			else if (global.bossblockers[nbossblockers] <= 0)
			{
				ds_map_add(_map,"BossBattlesLog"+string(nbossblockers),0)
			}
		}
	
		//cutscene ID log
		for ( n4 = 0; n4 < 99; n4 += 1)
		{
			if (global.cutsceneID[n4] > 0)
			{
				ds_map_add(_map,"CutsceneIDLog"+string(n4),global.cutsceneID[n4])
			}
			else if (global.cutsceneID[n4] <= 0)
			{
				ds_map_add(_map,"CutsceneIDLog"+string(n4),0)
			}
		}
	
		ds_map_add(_map,"Tile.Startx",global.mapgrid_startroomx);
		ds_map_add(_map,"Tile.Starty",global.mapgrid_startroomy);
		ds_map_add(_map,"Tile.Startx",global.mapgrid_playerx);
		ds_map_add(_map,"Tile.Starty",global.mapgrid_playery);
	
		ds_map_add(_map, "global.ability_limit",global.ability_limit);
		ds_map_add(_map, "global.ability_select",global.ability_select);
	
		//abilities
		ds_map_add(_map, "global.invisibility_state",global.invisibility_state);
		ds_map_add(_map, "global.invisibility_available",global.invisibility_available);
		ds_map_add(_map, "global.invisibility_ammo",global.invisibility_ammo);
		ds_map_add(_map, "global.invisibility_limit",global.invisibility_limit);
	
		ds_map_add(_map, "global.nanoshield_state",global.nanoshield_state);
		ds_map_add(_map, "global.nanoshield_available",global.nanoshield_available);
		ds_map_add(_map, "global.nanoshield_ammo",global.nanoshield_ammo);
		ds_map_add(_map, "global.nanoshield_limit",global.nanoshield_limit);
	
		ds_map_add(_map, "global.nuclearblast_state",global.nuclearblast_state);
		ds_map_add(_map, "global.nuclearblast_available",global.nuclearblast_available);
		ds_map_add(_map, "global.nuclearblast_ammo",global.nuclearblast_ammo);
		ds_map_add(_map, "global.nuclearblast_limit",global.nuclearblast_limit);
	
		ds_map_add(_map, "global.shockwave_state",global.shockwave_state);
		ds_map_add(_map, "global.shockwave_available",global.shockwave_available);
		ds_map_add(_map, "global.shockwave_ammo",global.shockwave_ammo);
		ds_map_add(_map, "global.shockwave_limit",global.shockwave_limit);

		//beams
		ds_map_add(_map, "global.beam_spread_available", global.beam_spread_available);
		ds_map_add(_map, "global.beam_burn_available", global.beam_burn_available);
		ds_map_add(_map, "global.beam_homing_available", global.beam_homing_available);
		ds_map_add(_map, "global.beam_shield_available", global.beam_shield_available);
	
		//misc upgrades
		ds_map_add(_map, "global.suit_pure", global.suit_pure);
		ds_map_add(_map, "global.suit_shock", global.suit_shock);
		ds_map_add(_map, "global.screwjump", global.screwjump);
		ds_map_add(_map, "global.spacejumph", global.spacejump);
		ds_map_add(_map, "global.wallscaler", global.wallscaler);
		ds_map_add(_map, "global.speedboots", global.speedboots);
		ds_map_add(_map, "global.airdash", global.airdash);
		ds_map_add(_map, "global.xvision", global.xvision);
		ds_map_add(_map, "global.kelvin", global.kelvin);
		
		//sword
		ds_map_add(_map ,"global.sword_available",global.sword_available);
		ds_map_add(_map ,"global.sword_swing_available",global.sword_swing_available);
		ds_map_add(_map ,"global.sword_wave_available",global.sword_wave_available);
	
		ds_map_add(_map, "global.autohack", global.autohack);
		ds_map_add(_map, "global.superautohack", global.superautohack);
	
		ds_map_add(_map, "global.hydrodash", global.hydrodash);
	
	
		//OTHER
		ds_map_add(_map, "global.money", global.money);
	
		ds_map_add(_map, "global.sectoractive", global.sector_active);
		ds_map_add(_map, "global.sectormusic", global.sector_music);
	
		var roomname = room;
	
		ds_map_add(_map, "WhichSaveRoom", roomname);
		ds_map_add(_map, "global.music", global.sector_music);
	
	
		ds_map_add(_map, "mode_casual", global.mode_casual);
		ds_map_add(_map, "mode_corrupted", global.corrupted);
		ds_map_add(_map, "spacestationactivated", global.spacestation_active);

	var _map_wrapper = ds_map_create()
	ds_map_add_list(_map_wrapper, "ROOT", root_list)

	var _string = json_encode(_map_wrapper)
	SaveStringToFile("XGA.SAVEFILE.dat",_string)

	ds_map_destroy(_map_wrapper)


}
