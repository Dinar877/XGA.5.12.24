/// @description Insert description here
// You can write your code in this editor
layerid = layer_create(layer_get_depth("Inst_scrn")+1,"Tiles_pause")

tilemap_layerid = layer_tilemap_create(layerid,x,y,tileset_pausebg,320,180)
tilemap_data1 = tilemap_get_tileset(tilemap_layerid)
frame = 0

tilemap_set_at_pixel(tilemap_layerid,tilemap_data1,x,y)