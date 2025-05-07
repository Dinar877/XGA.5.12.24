 /// @description Insert description here
// You can write your code in this editor
FadeNow = 0.0;
started1 = 0;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_fade_navigation_blueflash, "fade_color");
NewColor = shader_get_uniform(shd_fade_navigation_blueflash, "NewColor");

surface = -1;
surface2 = -1;
surface3 = -1;
surface2_alpha = 0;
surface2pos = 1;
surface2neg = 0;

surface1_index = 0;