/// @description Insert description here
// You can write your code in this editor
if (enemy_hurt > 0)
{
shader_set(shd_flash_white);
draw_self();
shader_reset();
enemy_hurt = 0;
}
else if (enemy_hurt = 0)
{
draw_self();
}