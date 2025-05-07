if (sprite_index != -1)
{
	shader_set(shd_flash_fade_white);
	shader_set_uniform_f(fade_color, 0.0, 0.0, 0.0, FadeNow); 
	draw_self();
	shader_reset();
}



