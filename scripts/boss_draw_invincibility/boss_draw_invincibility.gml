// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function boss_draw_invincibility(){
	
	if (invincible > 0) or (hp <= 0)
	{
		shader_set(shd_flash_fade_white)
		shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, 1.0)
		draw_self()
		shader_reset()
	}
	else if (flashwhite_limit > 0) && (invincible < 0)
	{
		var surfaceBOX = surface_create(1000,1000)
		
		if (surface_exists(surfaceBOX))
		{
			surface_set_target(surfaceBOX)
			draw_clear_alpha(c_black, 0);
			draw_sprite(sprite_index, image_index, 500, 500);
			surface_reset_target();
			
			draw_surface_ext(surfaceBOX,x-500,y-500,1,1,0,c_white,0.25)
			surface_free(surfaceBOX)
		}
	}
	else if (enemy_hurt > 0) //(enemy_hurt == 0.9) 
	{
		shader_set(shd_flash_fade_white);
		shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, (enemy_hurt/1.5));
		draw_self();
		shader_reset();
		enemy_hurt -= 0.05; //new
	}
	else 
	{
		draw_self()
	}

}