/// @description Insert description here
// You can write your code in this editor
if (sprite_index != spr_navigation_scrn_off) && (sprite_index != spr_navigation_scrn_offtoon)
{
	if (started1 = 0)
	{
	    image_alpha = 0.9;
	    started1 = 1;
	}
	if (image_alpha > 0.7) && (started1 = 1)
	{
	    image_alpha -= 0.0025;
	}
	if (image_alpha <= 0.7) && (started1 = 1)
	{
	    image_alpha = 0.9;
	    started1 = 0;
	}
}
else if (sprite_index = spr_navigation_scrn_off) && (global.spacestation_active > 0)
{
	sprite_index = spr_navigation_scrn_offtoon
	image_index = 0;
}
else if (sprite_index = spr_navigation_scrn_offtoon) && (image_index >= image_number-1)
{
	sprite_index = spr_navigation_scrn;
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