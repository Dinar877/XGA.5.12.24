/// @description Insert description here
// You can write your code in this editor
if (FadeNow > 0)
{
	shader_set(shd_fade_navigation_blueflash);
	shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, FadeNow);
	draw_self();
	shader_reset();	
}
else draw_self();