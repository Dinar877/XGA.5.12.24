/// @description Insert description here
// You can write your code in this editor
if (sprite_index > -1)
{
	if (FadeNow > 0)
	{
		shader_set(shd_flash_fade_white);
		shader_set_uniform_f(fade_color, 1, 1, 1, FadeNow); // 1,1,1 for white
		draw_set_alpha(image_alpha)
		draw_self();
		shader_reset();
		draw_set_alpha(1)
	}
	else
	{
		draw_set_alpha(image_alpha)
		draw_self()
		draw_set_alpha(1)
	}

	if (confirm > 0)
	{
		draw_text_color(x+11,y,text,c_white,c_white,c_white,c_white,image_alpha);
	}
}