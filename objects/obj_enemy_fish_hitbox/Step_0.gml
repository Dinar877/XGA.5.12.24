/// @description Insert description here
// You can write your code in this editor
if (!place_meeting(x+1,y,obj_block)) && (!place_meeting(x+1,y,obj_slope1_right)) && (!place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x+1,y,obj_block2_invisible)) && (facing = 1)
	{
		x += 1/2;
	}
else if ((place_meeting(x+1,y,obj_block)) or (place_meeting(x+1,y,obj_slope1_right)) or (place_meeting(x+1,y,obj_slope1_left))  or (place_meeting(x+1,y,obj_block2_invisible))) && (facing = 1)
	{
		with(inst)
		{
			if (sprite_index = spr_fish_right)
			{
				image_index = 0;
				sprite_index = spr_fish_r2l;
			}
			else if (sprite_index = spr_fish_r2l) && (image_index >= image_number-1)
			{
				sprite_index = spr_fish_left
				with(other)
				{
					facing = -1;	
				}
			}
		}
	}
	
if (!place_meeting(x-1,y,obj_block)) && (!place_meeting(x-1,y,obj_slope1_right)) && (!place_meeting(x-1,y,obj_slope1_left)) && (!place_meeting(x-1,y,obj_block2_invisible)) && (facing = -1)
	{
		x -= 1/2;
	}
else if ((place_meeting(x-1,y,obj_block)) or (place_meeting(x-1,y,obj_slope1_right)) or (place_meeting(x-1,y,obj_slope1_left))  or (place_meeting(x-1,y,obj_block2_invisible))) && (facing = -1)
	{
		with(inst)
		{
			if (sprite_index = spr_fish_left)
			{
				image_index = 0;
				sprite_index = spr_fish_l2r;
			}
			if (sprite_index = spr_fish_l2r) && (image_index >= image_number-1)
			{
				sprite_index = spr_fish_right;
				with(other)
				{
					facing = 1;	
				}
			}
		}
	}