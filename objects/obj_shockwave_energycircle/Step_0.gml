/// @description Insert description here
// You can write your code in this editor
image_alpha -= 0.15;

if (global.shockwave_state = 0)
{
	image_xscale += 0.05
	image_yscale += 0.05
}
else if (global.shockwave_state = 1)
{
	image_xscale += 0.1
	image_yscale += 0.1
}

if (image_alpha <= 0)
{
	instance_destroy()	
	exit;
}