/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_healthNew_bar11;
//for the healthbar flash effect
FadeNow = 0.0;
started1 = 0;
started2 = 0
timer = 0
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_fade_healthbar_greenflash, "fade_color");
NewColor = shader_get_uniform(shd_fade_healthbar_greenflash, "NewColor");

//for xga intro cutscene
surface_hpbar = -1
intro_alpha = 0
image_alpha = 0