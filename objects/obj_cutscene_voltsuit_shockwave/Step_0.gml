/// @description Insert description here
// You can write your code in this editor
image_alpha -= 0.01;

image_xscale += 0.5
image_yscale += 0.5


if (image_alpha <= 0)
{
	instance_destroy()	
	exit;
}