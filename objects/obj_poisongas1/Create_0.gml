/// @description Insert description here
// You can write your code in this editor
PosX = shader_get_uniform(shd_watery,"PosX")
PosY = shader_get_uniform(shd_watery,"PosY")

WaveFreq = shader_get_uniform(shd_watery,"WaveFreq")
WaveAmpl = shader_get_uniform(shd_watery,"WaveAmpl")
WaveAmpl1 = 0;
switchup = 0;
switchdown = 1;

Distortion = shader_get_uniform(shd_watery,"Distortion")

if (global.corrupted == 0)
{
	instance_destroy()	
}

surface1 = -1;

//Tiles_1
layerid_tiles1 = layer_get_id("Tiles_8")
tilemapElementID_tiles1 = layer_tilemap_get_id(layerid_tiles1)
tilemapwanted = tilemap_get_tileset(tilemapElementID_tiles1)
tilemapData = tilemap_get(tilemapElementID_tiles1,0,0)
tilemapDateIndex = tile_get_index(tilemapData)