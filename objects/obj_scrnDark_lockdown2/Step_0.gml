/// @description Insert description here
// You can write your code in this editor
if (image_index >= image_number-1) && (image_speed > 0) && (sprite_index = spr_bg_navigational2)
{
	sprite_index = spr_bg_navigational2_shine
	if (text_drawn = 0)
	{
		instance_create_depth(x+12,y+22,self.depth-1,obj_text_spawning_0_1)
		text_drawn = 1;
	}
}

if (image_index >= image_number-1) && (sprite_index = spr_bg_navigational2_rev)
{
	instance_destroy(obj_text_spawning_0_1)
	instance_destroy()
}