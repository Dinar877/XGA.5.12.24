/// @description Insert description here
// You can write your code in this editor
active = false;
sector = WMdiscovered.s2;

FadeNow = 0.5;
timerup = 0;
timerdown = 0;
upgradeID = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");
text = ""

wm_determine_current_sector()
Gamepad_init_variables()