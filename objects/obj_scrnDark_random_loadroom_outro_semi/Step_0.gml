/// @description Insert description here
// You can write your code in this editor
if !(endload) && (image_alpha < 0.8)
{
image_alpha += 0.07;
}
else if (endload)
{
image_alpha -= 0.07;
}

if (image_alpha <= 0.0) && (endload)
{
	instance_destroy()	
}