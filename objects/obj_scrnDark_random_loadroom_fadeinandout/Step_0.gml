/// @description Insert description here
// You can write your code in this editor
if (!endload)
{

if (image_alpha <= 0.4) && (surface2neg == 1)
{
	surface2neg = 0;
	surface2pos = 1;
}
else if(image_alpha > 0.4) && (surface2neg == 1)
{
	image_alpha -= 0.005;
}

if (image_alpha >= 0.8) && (surface2pos == 1)
{
	surface2neg = 1;
	surface2pos = 0;
}
else if (image_alpha < 0.8) && (surface2pos == 1)
{
	image_alpha += 0.005;
}

}

if (endload)
{
image_alpha -= 0.07;
}

if (image_alpha <= 0)
{
	instance_destroy()	
}