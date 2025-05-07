/// @description Insert description here
// You can write your code in this editor
if (global.corrupted > 0)
{
	global.superheated = 1
	global.frozen = 0
	
	
	
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
}
