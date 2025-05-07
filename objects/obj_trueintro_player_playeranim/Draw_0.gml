/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(surface_item))
{
	surface_item = surface_create(200,200);	
}

if (surface_exists(surface_item)) && (global.pause <= 0)
{
	surface_set_target(surface_item);
	
	draw_clear_alpha(c_white,0);
	draw_sprite(sprite_index, image_index, 100, 100);
	
	shader_reset();
	surface_reset_target();
	
	draw_surface(surface_item,x-100,y-100)
	
	surface_free(surface_item)
}