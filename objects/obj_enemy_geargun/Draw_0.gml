/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_geargun_radius,0,id.x,id.y,1,1,0,c_white,0.5)

if (enemy_hurt > 0)
{
	shader_set(shd_flash_fade_white);
	shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, enemy_hurt)
	draw_self();
	shader_reset();
	enemy_hurt -= 0.05;
}
else if (enemy_hurt <= 0)
{
	draw_self();
}