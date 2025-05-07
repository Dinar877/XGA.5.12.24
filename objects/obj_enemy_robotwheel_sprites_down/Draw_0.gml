if (enemy_hurt > 0)
{
shader_set(shd_flash_white);
draw_self();
shader_reset();
enemy_hurt = 0;
}
else draw_self();

