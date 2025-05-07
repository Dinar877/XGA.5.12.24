/// @description Insert description here
// You can write your code in this editor
n = 0
dist = 0

fadeup = 0
fadedown = 0

FadeNow = 0.5
fadeLimit = 0.2
fadeSpeed = (1/60)
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");
