/// @description Insert description here
// You can write your code in this editor
x -= speed1;
speed1 += 0.1;
image_alpha -= 0.005

if (image_alpha <= 0)
{
	instance_destroy()	
}