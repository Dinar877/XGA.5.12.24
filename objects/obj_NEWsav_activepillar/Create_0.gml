/// @description Insert description here
// You can write your code in this editor
savebegin_timer = 0;
ready = 0;
stopnow = 0;

surface_savepillar = -1;
surface2_savepillar = -1;
surface3_savepillar = -1;

surface3index = 0
surface3alpha = 0

surface2_alpha = 0;
surface2pos = 1;
surface2neg = 0;
navigation_effect_index = 0;

surface2neg = 0;
surface2pos = 1;
surface2_alpha = 0;

image_alpha = 0.9

fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");