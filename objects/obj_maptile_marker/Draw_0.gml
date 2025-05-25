/// @description Insert description here
// You can write your code in this editor
if (sectortile != global.sector_active)
{
	exit;	
}

if (sectortile == global.sector_active) 
&& ((global.pause_map = 1) or (global.navigation = 1) or ((global.pause_exit > 0) && (global.pause_map > 0) && (global.stopper_2ndscrnshot <= 0)))
{	
	draw_set_alpha(image_alpha)
	draw_sprite(sprite_index, global.marker_imageindex, x, y);
	draw_set_alpha(1)
}