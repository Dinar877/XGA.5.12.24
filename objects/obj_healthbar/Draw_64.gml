//if game is not paused
if (global.pause_map = 0)
&& (global.pause = 0)
&& (global.pause_player = 0)
{
	shader_set(shd_fade_healthbar_greenflash);
	shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, FadeNow);
	draw_set_alpha(image_alpha)
	draw_self()
	draw_set_alpha(1)
	shader_reset();
	x = 25;
	y = 3;
}

