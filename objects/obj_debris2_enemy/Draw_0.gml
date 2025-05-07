/// @description Insert description here
// You can write your code in this editor
if (enemy_hurt > 0)
{
shader_set(shd_flash_white);
draw_self();
shader_reset();
enemy_hurt = 0;
}
else if (FadeNow >= 0)
{
shader_set(shd_flash_fade_white);
shader_set_uniform_f(fade_color, 1, 1, 1, FadeNow); // 1,1,1 for white
draw_self();
shader_reset();
}
else if (enemy_hurt = 0)
{
draw_self();
}
