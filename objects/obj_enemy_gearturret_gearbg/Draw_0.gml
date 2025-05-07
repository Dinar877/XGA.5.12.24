/// @description Insert description here
// You can write your code in this editor
if (enemy_hurt > 0)
{
	shader_set(shd_flash_fade_white);
	shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, enemy_hurt)
	draw_self();
	shader_reset();
	enemy_hurt -= 0.05;
}
else if (attackFadeNow > 0)
{
	shader_set(shd_flash_fade_white);
	shader_set_uniform_f(fade_color, 1.0, 0.05, 0.15, attackFadeNow)
	draw_self();
	shader_reset();
}
else if (enemy_hurt <= 0)
{
	draw_self();
}