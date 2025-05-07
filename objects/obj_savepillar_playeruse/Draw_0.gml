//palette stuff
if (!surface_exists(surface))
{
	surface = surface_create(300,300);	
}

if (surface_exists(surface))
{
	surface_set_target(surface);
	draw_clear_alpha(c_white,0);
	/*
	if (global.suit_pure = 1)
	{
		pal_swap_set(spr_toxicpalette,1,false);
	}
	else pal_swap_set(spr_toxicpalette,0,false);
	*/
	draw_sprite(sprite_index, image_index, 150, 100);
	shader_reset();
	surface_reset_target();
	
	if (FadeNow > 0)
	{
	shader_set(shd_flash_fade_white);
	shader_set_uniform_f(fade_color, 0.9, 1.0, 0.9, FadeNow); // 1,1,1 for white
	draw_surface(surface,x-150,y-100);
	shader_reset();
	}
	else if (FadeNow <= 0)
	{
	draw_surface(surface,x-150,y-100);
	}
	
	surface_free(surface);

}