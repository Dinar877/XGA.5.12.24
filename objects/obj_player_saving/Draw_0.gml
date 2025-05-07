/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(surface_save1))
{
	surface_save1 = surface_create(200,200);	
}

if (surface_exists(surface_save1)) && (global.pause <= 0)
{
	surface_set_target(surface_save1);
	
	draw_clear_alpha(c_white,0);
	draw_sprite(sprite_index, image_index, 100, 100);
	
	if (global.suit_shock > 0) or (global.suit_pure > 0)
	{
		palette_drawevent()	
	}
	
	
	surface_reset_target();
	
	draw_surface(surface_save1,x-100,y-100)
	
	surface_free(surface_save1)
}