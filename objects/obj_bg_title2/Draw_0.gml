/// @description Insert description here
// You can write your code in this editor
if (surface2_alpha > 0)
{
	shader_set(shd_fade_whitegreen);
	shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, surface2_alpha);
	draw_self();
	shader_reset();	
}
else draw_self();
