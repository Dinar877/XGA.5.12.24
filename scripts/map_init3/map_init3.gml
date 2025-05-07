function map_init3() {
	//initialize the arrays (variables with more than one value attacthed to them)
	//check through every tile in grid, and if you've found a tile, draw it
	for(global.checkmapx=floor(x/320);global.checkmapx<room_width;global.checkmapx+=320) 
	{
		for(global.checkmapy=floor(y/180);global.checkmapy<room_height;global.checkmapy+=180) 
		{
			var inst_map = (instance_position(global.checkmapx,global.checkmapy,obj_mapchecker2));
			var inst_mapexists = instance_exists(inst_map);
			if (inst_map) && (inst_mapexists)
			{
				with(inst_map)
				{
					if (maptilex = 0) && (maptiley = 0)
					{
						maptilex = global.checkmapx;
						maptiley = global.checkmapy;
					}
				}
			}
		}
	}

	////tilelocation is irrelevant for now
	//tilelocation = tile_get_index(tiledata);
























	/*
	tilemap_element = layer_tilemap_create("Inst_healthui2", 0, 0, map_tiles1, 10, 10)
	tilemap_id = layer_tilemap_get_id("Inst_healthui2");

	tilemapData_mapblock37 = tilemap_get(tilemap_id, 3, 7);

/* end map_init3 */
}
