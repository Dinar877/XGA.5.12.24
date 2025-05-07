/// @description Insert description here
// You can write your code in this editor
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");
surface_item = -1
sndgo = 0

if (global.cutscene <= 0)
{
	instance_destroy()
}