/// @description Insert description here
// You can write your code in this editor
if (surface2_alpha <= 0.3) && (surface2neg == 1)
{
	surface2neg = 0;
	surface2pos = 1;
}
else if (surface2_alpha > 0.3) && (surface2neg == 1)
{
	surface2_alpha -= (1/room_speed)/5;
}

if (surface2_alpha >= 0.7) && (surface2pos == 1)
{
	surface2neg = 1;
	surface2pos = 0;
}
else if (surface2_alpha < 0.7) && (surface2pos == 1)
{
	surface2_alpha += (1/room_speed)/5;
}

image_alpha = surface2_alpha