/// @description Insert description here
// You can write your code in this editor
if (image_index >= image_number-1) && (image_speed > 0) && (sprite_index = spr_bg_navigational2)
{
	sprite_index = spr_bg_navigational2_shine
	if (text_drawn = 0)
	{
		instance_create_depth(x+12,y+22,self.depth-1,obj_text_spawning_biome1_1)
		text_drawn = 1;
	}
}

if (image_index >= image_number-1) && (sprite_index = spr_bg_navigational2_rev)
{
	instance_destroy()
}

if (sprite_index = spr_bg_navigational2_shine)
{
	if (surface2_alpha <= 0) && (surface2neg == 1)
	{
		surface2neg = 0;
		surface2pos = 1;
	}
	else if (surface2_alpha > 0) && (surface2neg == 1)
	{
		surface2_alpha -= 0.002;
	}

	if (surface2_alpha >= 0.1) && (surface2pos == 1)
	{
		surface2neg = 1;
		surface2pos = 0;
	}
	else if (surface2_alpha < 0.1) && (surface2pos == 1)
	{
		surface2_alpha += 0.002;
	}
}