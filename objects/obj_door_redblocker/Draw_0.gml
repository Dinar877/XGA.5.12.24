/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(door_surface))
{
	door_surface = surface_create(200,200)	
}

if (surface_exists(door_surface))
{
	surface_set_target(door_surface);

	draw_clear_alpha(c_white, 0);
	draw_sprite(sprite_index, image_index, 100, 100);	
	
	surface_reset_target();
	
	draw_surface(door_surface,x-100,y-100)
	surface_free(door_surface)
}