/// @description Insert description here
// You can write your code in this editor

//blackhole thing textbox
if (sprite_index = spr_bh_textbox) && (image_alpha < 1)
{
	image_alpha += 0.01;	
}
else if (sprite_index = spr_bh_textbox) && (image_alpha >= 1)
{
	if (text_drawn = 0) && (spawningID > -1)
	{
		instance_create_depth(x+12,y+22,self.depth-1,spawningID)
		text_drawn = 1;
	}	
}

//normal navigation textbox
if (image_index >= image_number-1) && (image_speed > 0) && (sprite_index = spr_bg_navigational2)
{
	sprite_index = spr_bg_navigational2_shine
	if (text_drawn = 0) && (spawningID > -1)
	{
		instance_create_depth(x+12,y+22,self.depth-1,spawningID)
		text_drawn = 1;
	}
}

if (image_index >= image_number-1) && (sprite_index = spr_bg_navigational2_rev)
{
	instance_destroy()
	exit
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

	if (surface2_alpha >= 0.3) && (surface2pos == 1)
	{
		surface2neg = 1;
		surface2pos = 0;
	}
	else if (surface2_alpha < 0.3) && (surface2pos == 1)
	{
		surface2_alpha += 0.002;
	}
}