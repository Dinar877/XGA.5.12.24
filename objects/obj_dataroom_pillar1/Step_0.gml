/// @description Insert description here
// You can write your code in this editor
if (started1 = 0)
{
    FadeNow = 0.6;
    started1 = 1;
	with(obj_lockdown_standbyeffect)
	{
		image_alpha = 0.6;	
	}
}
if (FadeNow > 0) && (started1 = 1)
{
    FadeNow -= 0.01;
	with(obj_lockdown_standbyeffect)
	{
		image_alpha -= 0.01;	
	}
}
if (FadeNow <= 0) && (started1 = 1)
{
    FadeNow = 0;
    started1 = 0;
	with(obj_lockdown_standbyeffect)
	{
		image_alpha = 0;	
	}
}