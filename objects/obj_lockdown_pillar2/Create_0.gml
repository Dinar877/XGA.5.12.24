/// @description Insert description here
// You can write your code in this editor
FadeNow = 0.0;
started1 = 0;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_fade_navigation_blueflash, "fade_color");
NewColor = shader_get_uniform(shd_fade_navigation_blueflash, "NewColor");
depth = obj_lockdown_pillar1.depth+1