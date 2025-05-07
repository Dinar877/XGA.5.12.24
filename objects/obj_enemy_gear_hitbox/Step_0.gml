/// @description Insert description here
// You can write your code in this editor

if (!place_meeting(x+hspd,y-hspd,obj_block)) && (!place_meeting(x+hspd,y+hspd,obj_block2_invisible)) && (facing = 1)
&& ((place_meeting(bbox_right+1,y+1,obj_block)) or (place_meeting(bbox_right+1,y+1,obj_slope1_right)) or (place_meeting(bbox_right+1,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right)))
	{
		hspd = 1.5
		DetermineMoveScript(hspd);
	}
else if (!position_meeting(bbox_right,bbox_top-2,obj_block)) && (!position_meeting(bbox_left-1,bbox_top,obj_block)) && ((place_meeting(x+hspd,y-hspd,obj_block)) or (place_meeting(x+hspd,y+hspd,obj_block2_invisible))) && (facing = 1)
	{
		
		
		with(inst)
		{
			if (sprite_index = spr_gearenemy_right)
			{
				image_index = 0;
				sprite_index = spr_gearenemy_turn_R2L;
			}
			else if (sprite_index = spr_gearenemy_turn_R2L) && (image_index >= image_number-1)
			{
				sprite_index = spr_gearenemy_left
				with(other)
				{
					facing = -1;
					hspd = -1.5
					DetermineMoveScript(hspd);
				}
			}
		}
	}
else if (!position_meeting(bbox_right,bbox_top-2,obj_block)) && (!position_meeting(bbox_left-1,bbox_top,obj_block)) && ((!place_meeting(bbox_right+1,y+1,obj_block)) && (!place_meeting(bbox_right+1,y+1,obj_slope1_right)) && (!place_meeting(bbox_right+1,y+1,obj_slope1_left))) && (facing = 1)
&& (!place_meeting(x,y+1,obj_slope1_left))&& (!place_meeting(x,y+1,obj_slope1_right))
	{
		
		
		with(inst)
		{
			if (sprite_index = spr_gearenemy_right)
			{
				image_index = 0;
				sprite_index = spr_gearenemy_turn_R2L;
			}
			else if (sprite_index = spr_gearenemy_turn_R2L) && (image_index >= image_number-1)
			{
				sprite_index = spr_gearenemy_left
				with(other)
				{
					facing = -1;
					hspd = -1.5
					DetermineMoveScript(hspd);
				}
			}
		}
	}
	
if (!place_meeting(x+hspd,y+hspd,obj_block)) && (!place_meeting(x+hspd,y+hspd,obj_block2_invisible)) && (facing = -1)
&& ((place_meeting(bbox_left-1,y+1,obj_block)) or (place_meeting(bbox_left-1,y+1,obj_slope1_right)) or (place_meeting(bbox_left-1,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right)))
	{
		hspd = -1.5
		DetermineMoveScript(hspd);
	}
else if (!position_meeting(bbox_left,bbox_top-2,obj_block)) && (!position_meeting(bbox_right+1,bbox_top,obj_block)) && ((place_meeting(x+hspd,y+hspd,obj_block)) or (place_meeting(x+hspd,y+hspd,obj_block2_invisible))) && (facing = -1)
	{
		with(inst)
		{
			if (sprite_index = spr_gearenemy_left)
			{
				image_index = 0;
				sprite_index = spr_gearenemy_turn_L2R;
			}
			if (sprite_index = spr_gearenemy_turn_L2R) && (image_index >= image_number-1)
			{
				sprite_index = spr_gearenemy_right;
				with(other)
				{
					facing = 1;	
					hspd = 1.5
					DetermineMoveScript(hspd);
				}
			}
		}
	}
else if (!position_meeting(bbox_left,bbox_top-2,obj_block)) && (!position_meeting(bbox_right+1,bbox_top,obj_block)) && ((!place_meeting(bbox_left-1,y+1,obj_block)) && (!place_meeting(bbox_left-1,y+1,obj_slope1_right)) && (!place_meeting(bbox_left-1,y+1,obj_slope1_left))) && (facing = -1)
&& (!place_meeting(x,y+1,obj_slope1_left))&& (!place_meeting(x,y+1,obj_slope1_right))
{
		with(inst)
		{
			if (sprite_index = spr_gearenemy_left)
			{
				image_index = 0;
				sprite_index = spr_gearenemy_turn_L2R;
			}
			if (sprite_index = spr_gearenemy_turn_L2R) && (image_index >= image_number-1)
			{
				sprite_index = spr_gearenemy_right;
				with(other)
				{
					facing = 1;	
					hspd = 1.5
					DetermineMoveScript(hspd);
				}
			}
		}
	}