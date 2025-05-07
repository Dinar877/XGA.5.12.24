/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(invis_surface))
{
	invis_surface = surface_create(300,300);	
}

if (surface_exists(invis_surface)) && (global.pause <= 0) && (sprite_index != -1)
{
	surface_set_target(invis_surface);
	
	draw_clear_alpha(c_white,0);
	draw_sprite(sprite_index, image_index, 150, 150);
	
	shader_reset()
	surface_reset_target()
	
	draw_surface_ext(invis_surface,x-150,y-150,1,1,0,c_white,1.0)
	
	surface_free(invis_surface);
}
else if (!surface_exists(invis_surface)) or (global.pause > 0)
{
	draw_self()
}