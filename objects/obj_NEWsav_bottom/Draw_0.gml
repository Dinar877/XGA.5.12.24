/// @description Insert description here
// You can write your code in this editor
if (FadeNow > 0) && (dontsave = 0)
{
	shader_set(shd_fade_savestation_blueflash);
	shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, FadeNow);
	draw_self();
	shader_reset();	
}
else if (dontsave = 1)
{
	shader_set(shd_fade_savestation_blueflash);
	shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, 1.0);
	draw_self();
	shader_reset();	
}
else draw_self()