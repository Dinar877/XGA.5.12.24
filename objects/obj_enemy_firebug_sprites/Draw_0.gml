/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(surface_firebug))
{
	surface_firebug = surface_create(200,200);	
}

if (surface_exists(surface_firebug)) && (global.pause <= 0) && (sprite_index != -1)
{
	surface_set_target(surface_firebug);
	
	draw_clear_alpha(c_white,0);
	draw_sprite(sprite_index, image_index, 100, 100);
	
	surface_reset_target()
	
	if (enemy_hurt > 0)
	{
		shader_set(shd_flash_fade_white);
		shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, enemy_hurt)
		draw_surface_ext(surface_firebug,x-100,y-100,1,1,0,c_white,1.0)
		shader_reset();
		enemy_hurt -= 0.05;
	}
	else if (enemy_hurt <= 0)
	{
		draw_surface_ext(surface_firebug,x-100,y-100,1,1,0,c_white,1.0)
	}
	
	surface_free(surface_firebug);
}
else if (!surface_exists(surface_firebug)) or (global.pause > 0)
{
	draw_self()
}