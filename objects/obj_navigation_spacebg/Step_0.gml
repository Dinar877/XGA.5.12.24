/// @description Insert description here
// You can write your code in this editor
if (started1 = 0)
{
    FadeNow = 0.2;
    started1 = 1;
}
if (FadeNow > 0) && (started1 = 1)
{
    FadeNow -= 0.0025;
}
if (FadeNow <= 0) && (started1 = 1)
{
    FadeNow = 0;
    started1 = 0;
}

if (surface2_alpha <= 0) && (surface2neg == 1)
{
	surface2neg = 0;
	surface2pos = 1;
}
else if (surface2_alpha > 0) && (surface2neg == 1)
{
	surface2_alpha -= 0.008;
}

if (surface2_alpha >= 0.5) && (surface2pos == 1)
{
	surface2neg = 1;
	surface2pos = 0;
}
else if (surface2_alpha < 0.5) && (surface2pos == 1)
{
	surface2_alpha += 0.008;
}