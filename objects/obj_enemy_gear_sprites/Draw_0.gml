/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(surface_shark))
{
	surface_shark = surface_create(200,200);	
}

if (surface_exists(surface_shark)) && (global.pause <= 0) && (sprite_index != -1)
{
	surface_set_target(surface_shark);
	
	draw_clear_alpha(c_white,0);
	draw_sprite(sprite_index, image_index, 100, 100);
	
	surface_reset_target()
	
	if (enemy_hurt > 0)
	{
		shader_set(shd_flash_fade_white);
		shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, enemy_hurt)
		draw_surface_ext(surface_shark,x-100,y-100,1,1,0,c_white,1.0)
		shader_reset();
		enemy_hurt -= 0.05;
	}
	else if (enemy_hurt <= 0)
	{
		draw_surface_ext(surface_shark,x-100,y-100,1,1,0,c_white,1.0)
	}
	
	surface_free(surface_shark);
}
else if (!surface_exists(surface_shark)) or (global.pause > 0)
{
	draw_self()
}