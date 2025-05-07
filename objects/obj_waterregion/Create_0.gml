/// @description Insert description here
// You can write your code in this editor
image_alpha = 0
FadeNow = 0.5;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

surface3alpha = 0.5;
surface2pos = 1;
surface2neg = 0;
frame = 0