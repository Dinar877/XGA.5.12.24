/// @description Insert description here
// You can write your code in this editor
if (image_alpha < 0.75) && (go != 1)
{
	image_alpha += 0.02;	
}
else if (image_alpha >= 0.75) && (stopper1 == 0)
{
	stopper1 = 1
}

if (go = 1)
{
	image_alpha -= 0.05
}

if (image_alpha <= 0) && (go == 1)
{
	instance_destroy()	
}