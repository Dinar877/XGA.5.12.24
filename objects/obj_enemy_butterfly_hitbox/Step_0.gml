/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (counter < 1)
{
	counter += 0.3/room_speed	
}
else if (counter >= 1)
{
	instance_create_depth(x,y,id.depth+1,obj_enemy_butterfly_spore)
	counter = 0
}


if (!place_meeting(x+1,y,obj_block)) && (!place_meeting(x+1,y,obj_slope1_right)) && (!place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x+1,y,obj_block2_invisible)) && (facing = 1)
	{
		x += 1/2;
	}
else if ((place_meeting(x+1,y,obj_block)) or (place_meeting(x+1,y,obj_slope1_right)) or (place_meeting(x+1,y,obj_slope1_left))  or (place_meeting(x+1,y,obj_block2_invisible))) && (facing = 1)
	{
		with(inst)
		{
			if (sprite_index = spr_butterfly_right)
			{
				image_index = 0;
				sprite_index = spr_butterfly_turn_r2l;
			}
			else if (sprite_index = spr_butterfly_turn_r2l) && (image_index >= image_number-1)
			{
				sprite_index = spr_butterfly_left
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
			if (sprite_index = spr_butterfly_left)
			{
				image_index = 0;
				sprite_index = spr_butterfly_turn_l2r;
			}
			if (sprite_index = spr_butterfly_turn_l2r) && (image_index >= image_number-1)
			{
				sprite_index = spr_butterfly_right;
				with(other)
				{
					facing = 1;	
				}
			}
		}
	}