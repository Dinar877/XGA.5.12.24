/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(surface_petal))
{
	surface_petal = surface_create(200,200);	
}

if (surface_exists(surface_petal))
{	
	surface_set_target(surface_petal);
	
	draw_clear_alpha(c_white,0);
	draw_sprite(sprite_index, image_index, 100, 100);
	
	shader_reset();
	surface_reset_target()
	
	if (sprite_index = spr_petalblade_prep) && (FadeNow > 0)
	{
	shader_set(shd_flash_fade_white);
	shader_set_uniform_f(fade_color, 1.0, 0.0, 0.0, FadeNow)
	draw_surface_ext(surface_petal,x-100,y-100,1,1,0,c_white,1.0)
	shader_reset();
	}
	else if (sprite_index = spr_petalblade_prep_2) && (FadeNow > 0)
	{
	shader_set(shd_flash_fade_white);
	shader_set_uniform_f(fade_color, 1.0, 0.95, 0.95, FadeNow)
	draw_surface_ext(surface_petal,x-100,y-100,1,1,0,c_white,1.0)
	shader_reset();
	}
	
	if (enemy_hurt > 0)
	{
	shader_set(shd_flash_fade_white);
	shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, enemy_hurt)
	draw_surface_ext(surface_petal,x-100,y-100,1,1,0,c_white,1.0)
	shader_reset();
	enemy_hurt -= 0.05;
	}
	else if (enemy_hurt <= 0)
	{
	draw_surface_ext(surface_petal,x-100,y-100,1,1,0,c_white,1.0)
	}
	surface_free(surface_petal)
}
else draw_self()