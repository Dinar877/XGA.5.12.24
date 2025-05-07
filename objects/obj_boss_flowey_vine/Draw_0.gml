/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(surfaceflowey))
{
	surfaceflowey = surface_create(400,400);	
}

if (surface_exists(surfaceflowey)) && (global.pause <= 0) && (sprite_index > 0)
{
	surface_set_target(surfaceflowey);
	
	draw_clear_alpha(c_white,0);

	draw_sprite(sprite_index, image_index, 200, 200);
	
	shader_reset();
	surface_reset_target();
	
	if (enemy_hurt > 0)
	{
		shader_set(shd_flash_fade_white);
		shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, enemy_hurt)
		draw_surface(surfaceflowey,x-200,y-200)
		shader_reset();
		enemy_hurt -= 0.05;
	}
	else if (enemy_hurt <= 0)
	{
		draw_surface(surfaceflowey,x-200,y-200)
	}
	
	surface_free(surfaceflowey);
}
else if (!surface_exists(surfaceflowey)) or (global.pause > 0)
{
	draw_self()
}

