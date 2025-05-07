/// @description Insert description here
// You can write your code in this editor
if (sectortile != global.sector_active)
{
	exit;
}

if (timer1 < 1)
{
image_alpha -= 0.015;
image_xscale += 0.015;
image_yscale += 0.015;
timer1 += 0.015;
}
else if (timer1 >= 1)
{
	image_alpha -= 0.025;
}

if (image_alpha <= 0) && (timer1 >= 1)
{
	timer1 = 0;
	image_xscale = 0.1;
	image_yscale = 0.1;
	image_alpha = 0.8;
}