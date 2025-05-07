/// @description Insert description here
// You can write your code in this editor
//for the invisibility effect
if (surface2_alpha <= 0.1) && (surface2neg == 1)
{
	surface2neg = 0;
	surface2pos = 1;
}
else if (surface2_alpha > 0.1) && (surface2neg == 1)
{
	surface2_alpha -= 0.05;
}

if (surface2_alpha >= 0.7) && (surface2pos == 1)
{
	surface2neg = 1;
	surface2pos = 0;
}
else if (surface2_alpha < 0.7) && (surface2pos == 1)
{
	surface2_alpha += 0.05;
}


if (image_index >= image_number-1) && (sprite_index = spr_NEWsav_lightpillar_saving_begin)
{
	sprite_index = spr_NEWsav_lightpillar_saving_active;	
}

if (image_index >= image_number-1) && (sprite_index = spr_NEWsav_lightpillar_saving_end)
{
	instance_destroy()	
}