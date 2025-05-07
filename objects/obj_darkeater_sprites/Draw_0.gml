/// @description Insert description here
// You can write your code in this editor
if (invincible > 0)
	{
		shader_set(shd_flash_white);
		draw_self()
		shader_reset();
	}
else draw_self()