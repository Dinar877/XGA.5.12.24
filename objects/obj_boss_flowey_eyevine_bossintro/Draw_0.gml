/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(surfaceflowey))
{
	surfaceflowey = surface_create(200,200);	
}

if (surface_exists(surfaceflowey)) && (global.pause <= 0) && (sprite_index > 0)
{
	surface_set_target(surfaceflowey);
	
	draw_clear_alpha(c_white,0);

	draw_sprite(sprite_index, image_index, 100, 100);
	
	shader_reset();
	surface_reset_target();
	
	if (invincible > 0)
	{
			shader_set(shd_flash_white);
			draw_surface(surfaceflowey,x-100,y-100)
			shader_reset();
	}
	else draw_surface(surfaceflowey,x-100,y-100)
	
	surface_free(surfaceflowey);
}
else if (!surface_exists(surfaceflowey)) or (global.pause > 0)
{
	draw_self()
}

