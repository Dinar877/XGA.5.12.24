if (hspd != 0)
{
	x+=hspd
}

if (vspd != 0)
{
	y+=vspd	
}

image_alpha -= 0.13

if (image_alpha <= 0)
{
	instance_destroy()	
}