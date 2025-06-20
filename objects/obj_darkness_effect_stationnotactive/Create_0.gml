/// @description Insert description here
// You can write your code in this editor
light_surface = -1;
light_surface2 = -1
xloc = 0;
yloc = 0;
scale1 = 1
roomtransition_alpha = 1;
xother = 0
yother = 0
angleother = 0
switch1 = 0
image_alpha = 0.5

shader_get_uniform(shd_less_color_saturation,"sat")

if (global.spacestation_active = 1)
{
	instance_destroy()	
}