function Tile_fill_object() {
	//if you use this thing for tiles, by passing in the original object
	// and the desired tile, this actually places the tile in game
	//at the right location =)

	var object = argument[0];
	var tile = argument[1];

	var tile_width = background_get_width(tile);
	var tile_width = background_get_height(tile);

	for (var row = 0; row<object.image_yscale; row++)
	{
	    for (var col = 0; col<object.image_xscale; col++)
	    {
	        tile_add(tile, 0, 0, tile_width, tile_height, object.x+(col*tile_width), object.y+(row*tile_height), object.depth);
	    }
	}



}
