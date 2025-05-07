/// @description Insert description here
// You can write your code in this editor
//palette stuff
if (!surface_exists(surface))
{
	surface = surface_create(300,300);	
}

if (surface_exists(surface)) && (sprite_index != spr_savepillar_playeruse)
{
	surface_set_target(surface);
	draw_clear_alpha(c_white,0);
	/*
	if (global.suit_pure = 1)
	{
	pal_swap_set(spr_saveroom1_palettesprite2,1,false);
	}
	else pal_swap_set(spr_saveroom1_palettesprite2,1,false);
	*/
	draw_sprite(sprite_index, image_index, 150, 100);
	shader_reset();
	surface_reset_target();
	
	draw_surface(surface,x-150,y-100);
	surface_free(surface);

}