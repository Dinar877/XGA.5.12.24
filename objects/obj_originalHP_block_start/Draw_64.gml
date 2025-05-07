/// @description Insert description here
// You can write your code in this editor
if (sprite_index != -1)//if game is not paused
&& (global.pause_map = 0)
&& (global.pause = 0)
&& (global.pause_player = 0)
{
	if (invincible > 0)
	{
		shader_set(shd_flash_fade_white);
		shader_set_uniform_f(fade_color, 1, 1, 1, 0.5);
		draw_set_alpha(image_alpha)
		draw_self()
		draw_set_alpha(1)
		shader_reset()
	}
	else if (FadeNow > 0)
	{
		shader_set(shd_flash_fade_white);
		shader_set_uniform_f(fade_color, 0.28, 1, 0.28, FadeNow); // 1,1,1 for white
		draw_set_alpha(image_alpha)
		draw_self()
		draw_set_alpha(1)
		shader_reset();
	}
	else if (FadeNow <= 0) && (invincible <= 0)
	{
		draw_set_alpha(image_alpha)
		draw_self()
		draw_set_alpha(1)
	}
	
	x = 28+xpos-sprite_width;
	y = 3+ypos;
}