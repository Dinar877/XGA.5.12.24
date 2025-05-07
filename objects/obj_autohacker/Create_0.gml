/// @description Insert description here
// You can write your code in this editor
FadeNow = 0.5;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");
image_alpha = 0
killswitch = 0

if (global.autohack = 1) && (global.superautohack = 0)
{
	sprite_index = spr_autohack_active
}
else if (global.autohack = 1) && (global.superautohack = 1)
{
	sprite_index = spr_superautohack_active
}