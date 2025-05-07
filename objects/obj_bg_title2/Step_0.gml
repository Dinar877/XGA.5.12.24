/// @description Insert description here
// You can write your code in this editor
if (surface2_alpha <= 0) && (surface2neg == 1)
{
	surface2neg = 0;
	surface2pos = 1;
}
else if (surface2_alpha > 0) && (surface2neg == 1)
{
	surface2_alpha -= 0.005;
}

if (surface2_alpha >= 0.2) && (surface2pos == 1)
{
	surface2neg = 1;
	surface2pos = 0;
}
else if (surface2_alpha < 0.2) && (surface2pos == 1)
{
	surface2_alpha += 0.005;
}