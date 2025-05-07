/// @description Insert description here
// You can write your code in this editor
if !(endload)
{
image_alpha += 0.05;
}
else if (endload)
{
image_alpha -= 0.05;
}

if (image_alpha >= 1.0) && (!endload)
{
	endload = 1;
}

if (image_alpha <= 0.0) && (endload)
{
	instance_destroy()	
}