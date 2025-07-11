/// @description Insert description here
// You can write your code in this editor
if (global.bossblockers[bossblockers.darklord] <= 0) && (global.sector_active = 1) && (global.midgame > 0)
		{
			global.corrupted = 1
		}
else if (global.bossblockers[bossblockers.gorilla] <= 0) && (global.sector_active = 3) && (global.midgame > 0)
		{
			global.corrupted = 1
		}
else if (global.bossblockers[bossblockers.turtle] <= 0) && (global.sector_active = 4) && (global.midgame > 0)
		{
			global.corrupted = 1
		}
else if (global.bossblockers[bossblockers.kingstalker] <= 0) && (global.sector_active = 2) && (global.midgame > 0)
		{
			global.corrupted = 1
		}
else if ((global.bossblockers[bossblockers.darklord] <= 0)
		or (global.bossblockers[bossblockers.kingstalker] <= 0)
		or (global.bossblockers[bossblockers.gorilla] <= 0)
		or (global.bossblockers[bossblockers.turtle] <= 0))
		&& (global.sector_active = 0) && (global.midgame > 0)
		{
			global.corrupted = 1
		}

//Create visual filters for liquid/heat haze tilesets
if (layer_exists("Tiles_water")) or (layer_exists("Tiles_water2"))
or (layer_exists("Tiles_heat")) or (layer_exists("Tiles_lava")) or (layer_exists("Tiles_lava2")) or (layer_exists("Tiles_lava_bg"))
{
	if (((global.corrupted = 0) && (global.sector_active = 3)) or ((global.corrupted = 1) && (global.sector_active = 2)) or (global.sector_active = 1))
	{
		//heat haze
		if (!layer_exists("Heatwave_Filter2")) && (layer_exists("Tiles_heat"))
		{
			filterHeatwave = fx_create("_filter_heathaze");
			layer_set_fx("Inst_scrn", filterHeatwave);
		}
	}
}


//if corrupted variable = 1
if (global.corrupted > 0)
{	
	//corrupting sectors
	if (global.sector_active = 0) && (global.corrupted > 0)
	{
		if (global.bossblockers[bossblockers.darklord] > 0)
		&& (global.bossblockers[bossblockers.kingstalker] > 0)
		&& (global.bossblockers[bossblockers.gorilla] > 0)
		&& (global.bossblockers[bossblockers.turtle] > 0) && (global.midgame > 0)
		{
			//global.corrupted = 0
		}
	}
	else if (global.sector_active = 1) && (global.corrupted > 0)
	{	
		if (global.corrupted > 0)
		{
			global.frozen = 1;
			global.superheated = 0;
			if (!instance_exists(obj_darkness_effect))
			{
				instance_create_layer(x,y,layer_get_id("Inst_scrn"),obj_darkness_effect)
			}
			
			//destroy underwater enemies
			if (instance_exists(obj_enemy_fish_hitbox))
			{
				instance_destroy(obj_enemy_fish_hitbox)
			}
			if (instance_exists(obj_enemy_fish_sprites))
			{
				instance_destroy(obj_enemy_fish_sprites)
				audio_stop_sound(snd_underwater_moving);
			}
		
			layer_destroy("Instances_region")
			layer_destroy("Tiles_water")
			layer_destroy("Tiles_water2")
			audio_stop_sound(snd_underwater_moving)
		}
	}
	else if (global.sector_active = 2) && (global.corrupted > 0)
	{
		if (global.corrupted > 0)
		{
		
			global.frozen = 0;
			//global.superheated = 0;
		
			layer_destroy("Instances_region")
			layer_destroy("Instances_water")
			layer_destroy("Tiles_water")
			layer_destroy("Tiles_water2")
			layer_destroy("Tiles_grass")
		
		
			if (instance_exists(obj_enemy_butterfly_hitbox))
			{
				with(obj_enemy_butterfly_hitbox)
				{
					instance_destroy()	
				}
			}
			if (instance_exists(obj_enemy_butterfly_sprites))
			{
				with(obj_enemy_butterfly_sprites)
				{
					instance_destroy()	
				}
			}
		
		
			if (instance_exists(obj_enemy_fly_hitbox))
			{
				with(obj_enemy_fly_hitbox)
				{
					instance_destroy()	
				}
			}
			if (instance_exists(obj_enemy_fly_sprites))
			{
				with(obj_enemy_fly_sprites)
				{
					instance_destroy()	
				}
			}
			if (instance_exists(obj_enemy_hive_sprites))
			{
				with(obj_enemy_hive_sprites)
				{
					instance_destroy()	
				}
			}
		
		
			if (instance_exists(obj_enemy_treespike_hitbox))
			{
				with(obj_enemy_treespike_hitbox)
				{
					instance_destroy()	
				}
			}
			if (instance_exists(obj_enemy_treespike_sprites))
			{
				with(obj_enemy_treespike_sprites)
				{
					instance_destroy()	
				}
			}
			
			if (instance_exists(obj_enemy_petalblade))
			{
				with(obj_enemy_petalblade)
				{
					instance_destroy()	
				}
			}
			
			if (instance_exists(obj_enemy_gasbag_hitbox))
			{
				with(obj_enemy_gasbag_hitbox)
				{
					instance_destroy()	
				}
			}
			if (instance_exists(obj_enemy_gasbag_sprites))
			{
				with(obj_enemy_gasbag_sprites)
				{
					instance_destroy()	
				}
			}
			
			if (instance_exists(obj_enemy_mine_hitbox))
			{
				with(obj_enemy_mine_hitbox)
				{
					instance_destroy()	
				}
			}
			if (instance_exists(obj_enemy_mine_sprites))
			{
				with(obj_enemy_mine_sprites)
				{
					instance_destroy()	
				}
			}
			
			if (instance_exists(obj_enemy_wormy_hitbox))
			{
				with(obj_enemy_wormy_hitbox)
				{
					instance_destroy()	
				}
			}
			if (instance_exists(obj_enemy_wormy_sprites))
			{
				with(obj_enemy_wormy_sprites)
				{
					instance_destroy()	
				}
			}
		
		}
	}
	else if (global.sector_active = 3) && (global.corrupted > 0)
	{
		if (global.corrupted > 0)
		{
		
			global.frozen = 0;
			global.superheated = 0;
		
			//bgs
			if (instance_exists(object_bg_pipes))
			{
				with(object_bg_pipes)
				{
					instance_destroy()
				}
				instance_create_layer(0,0,layer_get_id("Instances_1"),object_bg_pipes_cor)
			}
		
			//enemies
			if (instance_exists(obj_enemy_shark_hitbox))
			{
				with(obj_enemy_shark_hitbox)
				{
					instance_destroy()
				}
			}
			if (instance_exists(obj_enemy_shark_sprites))
			{
				with(obj_enemy_shark_sprites)
				{
					instance_destroy()
					audio_stop_sound(snd_underwater_moving);
				}
			}
		
			if (instance_exists(obj_darkness_effect))
			{
				with(obj_darkness_effect)
				{
					instance_destroy()
				}
			}
		
			if (instance_exists(obj_lavaregion))
			{
				with(obj_lavaregion)
				{
					instance_destroy()
				}
			}
		
			if (instance_exists(obj_environmentsfx_magma))
			{
				with(obj_environmentsfx_magma)
				{
					instance_destroy()
				}
			}
		
			layer_destroy("Tiles_heat")
			layer_destroy("Tiles_lava")
			layer_destroy("Tiles_lava2")
			layer_destroy("Instances_region")
			layer_destroy("Instances_water")
			layer_destroy("Tiles_water")
			layer_destroy("Tiles_water2")
		
		}
	}

	
	if (instance_exists(obj_water_proper1_bg))
	{
		with(obj_water_proper1_bg)
		{
			sprite_index = spr_water1_ice;	
		}
	}
	if (instance_exists(obj_water2_proper1))
	{
		with(obj_water2_proper1)
		{
			sprite_index = spr_water12_ice;	
		}
	}
	if (instance_exists(obj_water2_proper1_bg))
	{
		with(obj_water2_proper1_bg)
		{
			sprite_index = spr_water12_ice;	
		}
	}

	//backgrounds
	if (instance_exists(object_backgroundSnow_parallaxshit))
	{
		with(object_backgroundSnow_parallaxshit)
		{
		instance_destroy()
		}
		instance_create_layer(x,y,layer_get_id("Instances_1"),object_backgroundSnow_caves2)
	}
	if (instance_exists(object_background_space_snowstation))
	{
		with(object_background_space_snowstation)
		{
		instance_destroy()
		}
		instance_create_layer(x,y,layer_get_id("Instances_1"),object_background_space_snowstation_icy)
	}
	
	if (instance_exists(obj_environmentsfx_hydromachine))
	{
		instance_destroy(obj_environmentsfx_hydromachine)
	}

	///TILE SWAPPPING - corrupted
	#region
	if (global.corrupted > 0)
	{
		//Tiles_1
		layerid_tiles1 = layer_get_id("Tiles_1")
		tilemapElementID_tiles1 = layer_tilemap_get_id(layerid_tiles1)
		tilemapwanted = tilemap_get_tileset(tilemapElementID_tiles1)

		if (tilemapwanted == tiles_1_tileset)
		{
			tilemap_tileset(tilemapElementID_tiles1,tiles_1_tileset_desaturated)	
		}

	
		if (tilemapwanted == tileset_2_muchbigger)
		{
			tilemap_tileset(tilemapElementID_tiles1,tileset_2_muchbigger_desaturated)	
		}
	
		if (tilemapwanted == tileset_2_containerbg1)
		{
			tilemap_tileset(tilemapElementID_tiles1,tileset_2_containerbg1_off)	
		}
	
		if (tilemapwanted == tileset_2)
		{
			tilemap_tileset(tilemapElementID_tiles1,tileset_2old_off)	
		}
	
		if (tilemapwanted == tileset_sector3_generator)
		{
			tilemap_tileset(tilemapElementID_tiles1,tileset_sector3_generator_off)	
		}
	
	
		if (tilemapwanted == tileset_shop_room)
		{
			tilemap_tileset(tilemapElementID_tiles1,tileset_shop_room_cor)	
		}
	
		//midgame
		if (tilemapwanted == tileset_bg_midgame_computerroom)
		{
			tilemap_tileset(tilemapElementID_tiles1,tileset_bg_midgame_computerroom_cor)	
		}
	
	
	
		layerid_tiles1 = layer_get_id("Tiles_2")
		tilemapElementID_tiles2 = layer_tilemap_get_id(layerid_tiles1)
		tilemapwanted = tilemap_get_tileset(tilemapElementID_tiles2)

		if (tilemapwanted == tiles_1_tileset)
		{
			tilemap_tileset(tilemapElementID_tiles2,tiles_1_tileset_desaturated)	
		}

	
		if (tilemapwanted == tileset_2_muchbigger)
		{
			tilemap_tileset(tilemapElementID_tiles2,tileset_2_muchbigger_desaturated)	
		}
	
		if (tilemapwanted == tileset_2_containerbg1)
		{
			tilemap_tileset(tilemapElementID_tiles2,tileset_2_containerbg1_off)	
		}
	
		if (tilemapwanted == tileset_2)
		{
			tilemap_tileset(tilemapElementID_tiles2,tileset_2old_off)	
		}
	
		if (tilemapwanted == tileset_sector3_generator)
		{
			tilemap_tileset(tilemapElementID_tiles2,tileset_sector3_generator_off)	
		}
	
		if (tilemapwanted == tileset_shop_room)
		{
			tilemap_tileset(tilemapElementID_tiles2,tileset_shop_room_cor)	
		}
	
		//midgame
		if (tilemapwanted == tileset_bg_midgame_computerroom)
		{
			tilemap_tileset(tilemapElementID_tiles2,tileset_bg_midgame_computerroom_cor)	
		}
	
	
	
	
	
		layerid_tiles1 = layer_get_id("Tiles_3")
		tilemapElementID_tiles3 = layer_tilemap_get_id(layerid_tiles1)
		tilemapwanted = tilemap_get_tileset(tilemapElementID_tiles3)

		if (tilemapwanted == tiles_1_tileset)
		{
			tilemap_tileset(tilemapElementID_tiles3,tiles_1_tileset_desaturated)	
		}

	
		if (tilemapwanted == tileset_2_muchbigger)
		{
			tilemap_tileset(tilemapElementID_tiles3,tileset_2_muchbigger_desaturated)	
		}
	
		if (tilemapwanted == tileset_2_containerbg1)
		{
			tilemap_tileset(tilemapElementID_tiles3,tileset_2_containerbg1_off)	
		}
	
		if (tilemapwanted == tileset_2)
		{
			tilemap_tileset(tilemapElementID_tiles3,tileset_2old_off)	
		}
	
		if (tilemapwanted == tileset_sector3_generator)
		{
			tilemap_tileset(tilemapElementID_tiles3,tileset_sector3_generator_off)	
		}
	
		if (tilemapwanted == tileset_shop_room)
		{
			tilemap_tileset(tilemapElementID_tiles3,tileset_shop_room_cor)	
		}
	
		//midgame
		if (tilemapwanted == tileset_bg_midgame_computerroom)
		{
			tilemap_tileset(tilemapElementID_tiles3,tileset_bg_midgame_computerroom_cor)	
		}
	
	
	
		layerid_tiles1 = layer_get_id("Tiles_4")
		tilemapElementID_tiles4 = layer_tilemap_get_id(layerid_tiles1)
		tilemapwanted = tilemap_get_tileset(tilemapElementID_tiles4)

		if (tilemapwanted == tiles_1_tileset)
		{
			tilemap_tileset(tilemapElementID_tiles4,tiles_1_tileset_desaturated)	
		}

	
		if (tilemapwanted == tileset_2_muchbigger)
		{
			tilemap_tileset(tilemapElementID_tiles4,tileset_2_muchbigger_desaturated)	
		}
	
		if (tilemapwanted == tileset_2_containerbg1)
		{
			tilemap_tileset(tilemapElementID_tiles4,tileset_2_containerbg1_off)	
		}
	
		if (tilemapwanted == tileset_2)
		{
			tilemap_tileset(tilemapElementID_tiles4,tileset_2old_off)	
		}
	
		if (tilemapwanted == tileset_sector3_generator)
		{
			tilemap_tileset(tilemapElementID_tiles4,tileset_sector3_generator_off)	
		}
	
	
		if (tilemapwanted == tileset_shop_room)
		{
			tilemap_tileset(tilemapElementID_tiles4,tileset_shop_room_cor)	
		}
	
		//midgame
		if (tilemapwanted == tileset_bg_midgame_computerroom)
		{
			tilemap_tileset(tilemapElementID_tiles4,tileset_bg_midgame_computerroom_cor)	
		}
	
	
	
	
	
	
		layerid_tiles1 = layer_get_id("Tiles_5")
		tilemapElementID_tiles5 = layer_tilemap_get_id(layerid_tiles1)
		tilemapwanted = tilemap_get_tileset(tilemapElementID_tiles5)

		if (tilemapwanted == tiles_1_tileset)
		{
			tilemap_tileset(tilemapElementID_tiles5,tiles_1_tileset_desaturated)	
		}

	
		if (tilemapwanted == tileset_2_muchbigger)
		{
			tilemap_tileset(tilemapElementID_tiles5,tileset_2_muchbigger_desaturated)	
		}
	
		if (tilemapwanted == tileset_2_containerbg1)
		{
			tilemap_tileset(tilemapElementID_tiles5,tileset_2_containerbg1_off)	
		}
	
		if (tilemapwanted == tileset_2)
		{
			tilemap_tileset(tilemapElementID_tiles5,tileset_2old_off)	
		}
	
		if (tilemapwanted == tileset_sector3_generator)
		{
			tilemap_tileset(tilemapElementID_tiles5,tileset_sector3_generator_off)	
		}
	
		if (tilemapwanted == tileset_shop_room)
		{
			tilemap_tileset(tilemapElementID_tiles5,tileset_shop_room_cor)	
		}
	
		//midgame
		if (tilemapwanted == tileset_bg_midgame_computerroom)
		{
			tilemap_tileset(tilemapElementID_tiles5,tileset_bg_midgame_computerroom_cor)	
		}
	
	
	
	
	
	
		layerid_tiles1 = layer_get_id("Tiles_6")
		tilemapElementID_tiles6 = layer_tilemap_get_id(layerid_tiles1)
		tilemapwanted = tilemap_get_tileset(tilemapElementID_tiles6)

		if (tilemapwanted == tiles_1_tileset)
		{
			tilemap_tileset(tilemapElementID_tiles6,tiles_1_tileset_desaturated)	
		}

	
		if (tilemapwanted == tileset_2_muchbigger)
		{
			tilemap_tileset(tilemapElementID_tiles6,tileset_2_muchbigger_desaturated)	
		}
	
		if (tilemapwanted == tileset_2_containerbg1)
		{
			tilemap_tileset(tilemapElementID_tiles6,tileset_2_containerbg1_off)	
		}
	
		if (tilemapwanted == tileset_2)
		{
			tilemap_tileset(tilemapElementID_tiles6,tileset_2old_off)	
		}
	
		if (tilemapwanted == tileset_sector3_generator)
		{
			tilemap_tileset(tilemapElementID_tiles6,tileset_sector3_generator_off)	
		}
	
		if (tilemapwanted == tileset_shop_room)
		{
			tilemap_tileset(tilemapElementID_tiles6,tileset_shop_room_cor)	
		}
	
		//midgame
		if (tilemapwanted == tileset_bg_midgame_computerroom)
		{
			tilemap_tileset(tilemapElementID_tiles6,tileset_bg_midgame_computerroom_cor)	
		}
	
	
	
		layerid_tiles1 = layer_get_id("Tiles_7")
		tilemapElementID_tiles7 = layer_tilemap_get_id(layerid_tiles1)
		tilemapwanted = tilemap_get_tileset(tilemapElementID_tiles7)

		if (tilemapwanted == tiles_1_tileset)
		{
			tilemap_tileset(tilemapElementID_tiles7,tiles_1_tileset_desaturated)	
		}

	
		if (tilemapwanted == tileset_2_muchbigger)
		{
			tilemap_tileset(tilemapElementID_tiles7,tileset_2_muchbigger_desaturated)	
		}
	
		if (tilemapwanted == tileset_2_containerbg1)
		{
			tilemap_tileset(tilemapElementID_tiles7,tileset_2_containerbg1_off)	
		}
	
		if (tilemapwanted == tileset_2)
		{
			tilemap_tileset(tilemapElementID_tiles7,tileset_2old_off)	
		}
	
		if (tilemapwanted == tileset_sector3_generator)
		{
			tilemap_tileset(tilemapElementID_tiles7,tileset_sector3_generator_off)	
		}
	
		if (tilemapwanted == tileset_shop_room)
		{
			tilemap_tileset(tilemapElementID_tiles7,tileset_shop_room_cor)	
		}
	
		//midgame
		if (tilemapwanted == tileset_bg_midgame_computerroom)
		{
			tilemap_tileset(tilemapElementID_tiles7,tileset_bg_midgame_computerroom_cor)	
		}
	
	}
	#endregion

}
else if (global.corrupted <= 0)
{
	layer_destroy("Tiles_snow")
	layer_destroy("Instances_dark")
	
	if (global.sector_active = 2)
	{
		layer_destroy("Tiles_heat")
		layer_destroy("Tiles_lava")
		layer_destroy("Tiles_lava2")
		layer_destroy("Tiles_lava_bg")
		layer_destroy("Instances_2")
		
		//destroy lava sfx
		if (instance_exists(obj_environmentsfx_magma))
		{
			instance_destroy(obj_environmentsfx_magma)
		}
	}
	
	//don't need water objects anymore since we have tiles and a water region object
	if (instance_exists(obj_water_proper1))
	{
		instance_destroy(obj_water_proper1)
	}
	
	if (instance_exists(obj_water2_proper1))
	{
		instance_destroy(obj_water2_proper1)
	}
	
	if (instance_exists(obj_water_proper1_bg))
	{
		instance_destroy(obj_water_proper1_bg)
	}
	
	if (instance_exists(obj_water2_proper1_bg))
	{
		instance_destroy(obj_water2_proper1_bg)
	}
	
	
	if (global.sector_active = 1)
	{
		if (instance_exists(obj_darkness_effect))
		{
			instance_destroy(obj_darkness_effect)
		}
	}
	
	
	
	///TILE SWAPPPING - corrupted
	#region
	if (global.corrupted <= 0)
	{
		//Tiles_1
		layerid_tiles1 = layer_get_id("Tiles_1")
		tilemapElementID_tiles1 = layer_tilemap_get_id(layerid_tiles1)
		tilemapwanted = tilemap_get_tileset(tilemapElementID_tiles1)

		if (tilemapwanted == tiles_1_tileset_desaturated)
		{
			tilemap_tileset(tilemapElementID_tiles1,tiles_1_tileset)	
		}


		//so sector 2's plant boss area's tiles work properly, this is disabled for these rooms
		if (room != rm_S3_15_28) 
		&& (room != rm_S3_16_28) 
		&& (room != rm_S3_18_30) 
		&& (room != rm_S3_19_33)
		&& (room != rm_S3_23_35) 
		&& (room != rm_S3_23_31) 
		&& (room != rm_S3_22_33)
		{
			if (tilemapwanted == tileset_2_muchbigger_desaturated)
			{
				tilemap_tileset(tilemapElementID_tiles1,tileset_2_muchbigger)	
			}
		}
		
		
	
		if (tilemapwanted == tileset_2_containerbg1_off)
		{
			tilemap_tileset(tilemapElementID_tiles1,tileset_2_containerbg1)	
		}
	
		if (tilemapwanted == tileset_2old_off)
		{
			tilemap_tileset(tilemapElementID_tiles1,tileset_2)	
		}
	
		if (tilemapwanted == tileset_sector3_generator_off)
		{
			tilemap_tileset(tilemapElementID_tiles1,tileset_sector3_generator)	
		}
	
	
		if (tilemapwanted == tileset_shop_room_cor)
		{
			tilemap_tileset(tilemapElementID_tiles1,tileset_shop_room)	
		}
	
		//midgame
		if (tilemapwanted == tileset_bg_midgame_computerroom_cor)
		{
			tilemap_tileset(tilemapElementID_tiles1,tileset_bg_midgame_computerroom)	
		}
	
	
	
		layerid_tiles1 = layer_get_id("Tiles_2")
		tilemapElementID_tiles2 = layer_tilemap_get_id(layerid_tiles1)
		tilemapwanted = tilemap_get_tileset(tilemapElementID_tiles2)

		if (tilemapwanted == tiles_1_tileset_desaturated)
		{
			tilemap_tileset(tilemapElementID_tiles2,tiles_1_tileset)	
		}

		//so sector 2's plant boss area's tiles work properly, this is disabled for these rooms
		if (room != rm_S3_15_28) 
		&& (room != rm_S3_16_28) 
		&& (room != rm_S3_18_30) 
		&& (room != rm_S3_19_33)
		&& (room != rm_S3_23_35) 
		&& (room != rm_S3_23_31) 
		&& (room != rm_S3_22_33)
		{
			if (tilemapwanted == tileset_2_muchbigger_desaturated)
			{
				tilemap_tileset(tilemapElementID_tiles2,tileset_2_muchbigger)	
			}
		}
	
		if (tilemapwanted == tileset_2_containerbg1_off)
		{
			tilemap_tileset(tilemapElementID_tiles2,tileset_2_containerbg1)	
		}
	
		if (tilemapwanted == tileset_2old_off)
		{
			tilemap_tileset(tilemapElementID_tiles2,tileset_2)	
		}
	
		if (tilemapwanted == tileset_sector3_generator_off)
		{
			tilemap_tileset(tilemapElementID_tiles2,tileset_sector3_generator)	
		}
	
		if (tilemapwanted == tileset_shop_room_cor)
		{
			tilemap_tileset(tilemapElementID_tiles2,tileset_shop_room)	
		}
	
		//midgame
		if (tilemapwanted == tileset_bg_midgame_computerroom_cor)
		{
			tilemap_tileset(tilemapElementID_tiles2,tileset_bg_midgame_computerroom)	
		}
	
	
	
	
	
		layerid_tiles1 = layer_get_id("Tiles_3")
		tilemapElementID_tiles3 = layer_tilemap_get_id(layerid_tiles1)
		tilemapwanted = tilemap_get_tileset(tilemapElementID_tiles3)

		if (tilemapwanted == tiles_1_tileset_desaturated)
		{
			tilemap_tileset(tilemapElementID_tiles3,tiles_1_tileset)	
		}

		//so sector 2's plant boss area's tiles work properly, this is disabled for these rooms
		if (room != rm_S3_15_28) 
		&& (room != rm_S3_16_28) 
		&& (room != rm_S3_18_30) 
		&& (room != rm_S3_19_33)
		&& (room != rm_S3_23_35) 
		&& (room != rm_S3_23_31) 
		&& (room != rm_S3_22_33)
		{
			if (tilemapwanted == tileset_2_muchbigger_desaturated)
			{
				tilemap_tileset(tilemapElementID_tiles3,tileset_2_muchbigger)	
			}
		}
		
		
		if (tilemapwanted == tileset_2_containerbg1_off)
		{
			tilemap_tileset(tilemapElementID_tiles3,tileset_2_containerbg1)	
		}
	
		if (tilemapwanted == tileset_2old_off)
		{
			tilemap_tileset(tilemapElementID_tiles3,tileset_2)	
		}
	
		if (tilemapwanted == tileset_sector3_generator_off)
		{
			tilemap_tileset(tilemapElementID_tiles3,tileset_sector3_generator)	
		}
	
		if (tilemapwanted == tileset_shop_room_cor)
		{
			tilemap_tileset(tilemapElementID_tiles3,tileset_shop_room)	
		}
	
		//midgame
		if (tilemapwanted == tileset_bg_midgame_computerroom_cor)
		{
			tilemap_tileset(tilemapElementID_tiles3,tileset_bg_midgame_computerroom)	
		}
	
	
	
		layerid_tiles1 = layer_get_id("Tiles_4")
		tilemapElementID_tiles4 = layer_tilemap_get_id(layerid_tiles1)
		tilemapwanted = tilemap_get_tileset(tilemapElementID_tiles4)

		if (tilemapwanted == tiles_1_tileset_desaturated)
		{
			tilemap_tileset(tilemapElementID_tiles4,tiles_1_tileset)	
		}

		//so sector 2's plant boss area's tiles work properly, this is disabled for these rooms
		if (room != rm_S3_15_28) 
		&& (room != rm_S3_16_28) 
		&& (room != rm_S3_18_30) 
		&& (room != rm_S3_19_33)
		&& (room != rm_S3_23_35) 
		&& (room != rm_S3_23_31) 
		&& (room != rm_S3_22_33)
		{
			if (tilemapwanted == tileset_2_muchbigger_desaturated)
			{
				tilemap_tileset(tilemapElementID_tiles4,tileset_2_muchbigger)	
			}
		}
	
		if (tilemapwanted == tileset_2_containerbg1_off)
		{
			tilemap_tileset(tilemapElementID_tiles4,tileset_2_containerbg1)	
		}
	
		if (tilemapwanted == tileset_2old_off)
		{
			tilemap_tileset(tilemapElementID_tiles4,tileset_2)	
		}
	
		if (tilemapwanted == tileset_sector3_generator_off)
		{
			tilemap_tileset(tilemapElementID_tiles4,tileset_sector3_generator)	
		}
	
	
		if (tilemapwanted == tileset_shop_room_cor)
		{
			tilemap_tileset(tilemapElementID_tiles4,tileset_shop_room)	
		}
	
		//midgame
		if (tilemapwanted == tileset_bg_midgame_computerroom_cor)
		{
			tilemap_tileset(tilemapElementID_tiles4,tileset_bg_midgame_computerroom)	
		}
	
	
	
	
	
	
		layerid_tiles1 = layer_get_id("Tiles_5")
		tilemapElementID_tiles5 = layer_tilemap_get_id(layerid_tiles1)
		tilemapwanted = tilemap_get_tileset(tilemapElementID_tiles5)

		if (tilemapwanted == tiles_1_tileset_desaturated)
		{
			tilemap_tileset(tilemapElementID_tiles5,tiles_1_tileset)	
		}

		//so sector 2's plant boss area's tiles work properly, this is disabled for these rooms
		if (room != rm_S3_15_28) 
		&& (room != rm_S3_16_28) 
		&& (room != rm_S3_18_30) 
		&& (room != rm_S3_19_33)
		&& (room != rm_S3_23_35) 
		&& (room != rm_S3_23_31) 
		&& (room != rm_S3_22_33)
		{
			if (tilemapwanted == tileset_2_muchbigger_desaturated)
			{
				tilemap_tileset(tilemapElementID_tiles5,tileset_2_muchbigger)	
			}
		}
	
		if (tilemapwanted == tileset_2_containerbg1_off)
		{
			tilemap_tileset(tilemapElementID_tiles5,tileset_2_containerbg1)	
		}
	
		if (tilemapwanted == tileset_2old_off)
		{
			tilemap_tileset(tilemapElementID_tiles5,tileset_2)	
		}
	
		if (tilemapwanted == tileset_sector3_generator_off)
		{
			tilemap_tileset(tilemapElementID_tiles5,tileset_sector3_generator)	
		}
	
		if (tilemapwanted == tileset_shop_room_cor)
		{
			tilemap_tileset(tilemapElementID_tiles5,tileset_shop_room)	
		}
	
		//midgame
		if (tilemapwanted == tileset_bg_midgame_computerroom_cor)
		{
			tilemap_tileset(tilemapElementID_tiles5,tileset_bg_midgame_computerroom)	
		}
	
	
	
	
	
	
		layerid_tiles1 = layer_get_id("Tiles_6")
		tilemapElementID_tiles6 = layer_tilemap_get_id(layerid_tiles1)
		tilemapwanted = tilemap_get_tileset(tilemapElementID_tiles6)

		if (tilemapwanted == tiles_1_tileset_desaturated)
		{
			tilemap_tileset(tilemapElementID_tiles6,tiles_1_tileset)	
		}

		//so sector 2's plant boss area's tiles work properly, this is disabled for these rooms
		if (room != rm_S3_15_28) 
		&& (room != rm_S3_16_28) 
		&& (room != rm_S3_18_30) 
		&& (room != rm_S3_19_33)
		&& (room != rm_S3_23_35) 
		&& (room != rm_S3_23_31) 
		&& (room != rm_S3_22_33)
		{
			if (tilemapwanted == tileset_2_muchbigger_desaturated)
			{
				tilemap_tileset(tilemapElementID_tiles6,tileset_2_muchbigger)	
			}
		}
		
		
		if (tilemapwanted == tileset_2_containerbg1_off)
		{
			tilemap_tileset(tilemapElementID_tiles6,tileset_2_containerbg1)	
		}
	
		if (tilemapwanted == tileset_2old_off)
		{
			tilemap_tileset(tilemapElementID_tiles6,tileset_2)	
		}
	
		if (tilemapwanted == tileset_sector3_generator_off)
		{
			tilemap_tileset(tilemapElementID_tiles6,tileset_sector3_generator)	
		}
	
		if (tilemapwanted == tileset_shop_room_cor)
		{
			tilemap_tileset(tilemapElementID_tiles6,tileset_shop_room)	
		}
	
		//midgame
		if (tilemapwanted == tileset_bg_midgame_computerroom_cor)
		{
			tilemap_tileset(tilemapElementID_tiles6,tileset_bg_midgame_computerroom)	
		}
	
	
	
		layerid_tiles1 = layer_get_id("Tiles_7")
		tilemapElementID_tiles7 = layer_tilemap_get_id(layerid_tiles1)
		tilemapwanted = tilemap_get_tileset(tilemapElementID_tiles7)

		if (tilemapwanted == tiles_1_tileset_desaturated)
		{
			tilemap_tileset(tilemapElementID_tiles7,tiles_1_tileset)	
		}

		//so sector 2's plant boss area's tiles work properly, this is disabled for these rooms
		if (room != rm_S3_15_28) 
		&& (room != rm_S3_16_28) 
		&& (room != rm_S3_18_30) 
		&& (room != rm_S3_19_33)
		&& (room != rm_S3_23_35) 
		&& (room != rm_S3_23_31) 
		&& (room != rm_S3_22_33)
		{
			if (tilemapwanted == tileset_2_muchbigger_desaturated)
			{
				tilemap_tileset(tilemapElementID_tiles7,tileset_2_muchbigger)	
			}
		}
		
		
		if (tilemapwanted == tileset_2_containerbg1_off)
		{
			tilemap_tileset(tilemapElementID_tiles7,tileset_2_containerbg1)	
		}
	
		if (tilemapwanted == tileset_2old_off)
		{
			tilemap_tileset(tilemapElementID_tiles7,tileset_2)	
		}
	
		if (tilemapwanted == tileset_sector3_generator_off)
		{
			tilemap_tileset(tilemapElementID_tiles7,tileset_sector3_generator)	
		}
	
		if (tilemapwanted == tileset_shop_room_cor)
		{
			tilemap_tileset(tilemapElementID_tiles7,tileset_shop_room)	
		}
	
		//midgame
		if (tilemapwanted == tileset_bg_midgame_computerroom_cor)
		{
			tilemap_tileset(tilemapElementID_tiles7,tileset_bg_midgame_computerroom)	
		}
	
	}
	#endregion
}

instance_destroy()