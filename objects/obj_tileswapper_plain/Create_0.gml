/// @description Insert description here
// You can write your code in this editor

if (global.corrupted > 0)
{
	layer_destroy("Instances_region")
	layer_destroy("Tiles_water")
	layer_destroy("Tiles_water2")
	
	//destroy sector 2 enemies
	#region
	if (global.sector_active = 2)
	{
		layer_destroy("Tiles_grass")
		
		
		if (instance_exists(obj_petalspawner))
		{
			with(obj_petalspawner)
			{
				instance_destroy()	
			}
		}
		if (instance_exists(obj_petal))
		{
			with(obj_petal)
			{
				instance_destroy()	
			}
		}
		
		
		
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
		
		if (instance_exists(obj_enemy_shelly_hitbox))
		{
			with(obj_enemy_shelly_hitbox)
			{
				instance_destroy()	
			}
		}
		if (instance_exists(obj_enemy_shelly_sprites))
		{
			with(obj_enemy_shelly_sprites)
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
		
		if (instance_exists(obj_enemy_petalblade))
		{
			with(obj_enemy_petalblade)
			{
				instance_destroy()	
			}
		}
	}
	#endregion
	
	
	if (instance_exists(obj_water_proper1_bg)) && (global.sector_active != 2)
	{
		with(obj_water_proper1_bg)
		{
			sprite_index = spr_water1_ice;	
		}
	}
	if (instance_exists(obj_water2_proper1)) && (global.sector_active != 2)
	{
		with(obj_water2_proper1)
		{
			sprite_index = spr_water12_ice;	
		}
	}
	if (instance_exists(obj_water2_proper1_bg)) && (global.sector_active != 2)
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

	if (!instance_exists(obj_darkness_effect)) && (global.sector_active != 2)
	{
		instance_create_layer(x,y,layer_get_id("Inst_scrn"),obj_darkness_effect)
	}
	
	
	
	
	
	if (instance_exists(object_bg_petals))
	{
		with(object_bg_petals)
		{
		instance_destroy()
		}
		instance_create_layer(x,y,layer_get_id("Instances_1"),object_bg_greensewer)
	}
	
	if (instance_exists(object_bg_mainsector1))
	{
		with(object_bg_mainsector1)
		{
		instance_destroy()
		}
		instance_create_layer(x,y,layer_get_id("Instances_1"),object_bg_greensewer)
	}

	
	///TILE SWAPPPING
	#region
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
	
	#endregion
	//global.frozen = 0
	//global.superheated = 0
	

}
else if (global.corrupted <= 0)
{
	layer_destroy("Tiles_snow")
	layer_destroy("Tiles_heat")
	layer_destroy("Instances_dark")
	if (global.sector_active != 2)
	{
		layer_destroy("Instances_2")
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
}