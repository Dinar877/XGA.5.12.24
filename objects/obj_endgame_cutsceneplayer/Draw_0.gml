/// @description Insert description here
// You can write your code in this editor
if (FadeNow >= 0)
{
	shader_set(shd_flash_fade_white);
	shader_set_uniform_f(fade_color, 0, 0, 0, FadeNow); // 1,1,1 for white
	draw_self();
	shader_reset();
}
else if (FadeNow < 0)
{
	draw_self();
}