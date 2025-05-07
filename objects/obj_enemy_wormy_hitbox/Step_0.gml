/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

//facing R -turn around when up against wall or at edge of block into midair
if (!place_meeting((x)+(facing),(y),obj_block))
&& (((position_meeting((bbox_right)+2,bbox_bottom+2,obj_block)) && (position_meeting((bbox_left)+2,bbox_bottom+2,obj_block)))
or (place_meeting((x),(y)+3,obj_slope1_left)) or (place_meeting((x),(y)+3,obj_slope1_right))
or (place_meeting((x),(y)+3,obj_newslope_left)) or (place_meeting((x),(y)+3,obj_newslope_right))
or (place_meeting((x)+3,(y)+3,obj_slope1_left)) or (place_meeting((x)+3,(y)+3,obj_slope1_right))
or (place_meeting((x)+3,(y)+3,obj_newslope_left)) or (place_meeting((x)+3,(y)+3,obj_newslope_right)))
&& (facing = 1)
	{
		hspd = 1/2;
		DetermineMoveScript(hspd);
	}
else if ((place_meeting((x)+(facing),(y),obj_block)) 
or ((!position_meeting((bbox_right),bbox_bottom+2,obj_block)) && (position_meeting((bbox_left),bbox_bottom+2,obj_block)))
or ((!position_meeting((bbox_right)+2,bbox_bottom+2,obj_block)) && (position_meeting((bbox_left)+2,bbox_bottom+2,obj_block))) //account for subpixels ahead of block
or ((!position_meeting((bbox_right),bbox_bottom+2,obj_block)) && (position_meeting((bbox_left),bbox_bottom+2,obj_block)))) //account for subpixels above block
&& (!place_meeting((x)+3,(y)+3,obj_slope1_left)) && (!place_meeting((x)+3,(y)+3,obj_slope1_right))
&& (!place_meeting((x)+3,(y)+3,obj_newslope_left)) && (!place_meeting((x)+3,(y)+3,obj_newslope_right))
&& (facing = 1)
	{
		with(inst)
		{
			if (sprite_index = spr_wormy_walkright)
			{
				image_index = 0;
				sprite_index = spr_wormy_turn_r2l;
			}
			else if (sprite_index = spr_wormy_turn_r2l) && (round(image_index) >= image_number-1)
			{
				sprite_index = spr_wormy_walkleft
				with(other)
				{
					facing = -1;	
				}
			}
		}
	}
	
//facing L -turn around when up against wall or at edge of block into midair
if (!place_meeting((x)+(facing),(y),obj_block))
&& (((position_meeting((bbox_right)-2,bbox_bottom+2,obj_block)) && (position_meeting((bbox_left)-2,bbox_bottom+2,obj_block)))
or (place_meeting((x),(y)+3,obj_slope1_left)) or (place_meeting((x),(y)+3,obj_slope1_right))
or (place_meeting((x),(y)+3,obj_newslope_left)) or (place_meeting((x),(y)+3,obj_newslope_right))
or (place_meeting((x)-3,(y)+3,obj_slope1_left)) or (place_meeting((x)-3,(y)+3,obj_slope1_right))
or (place_meeting((x)-3,(y)+3,obj_newslope_left)) or (place_meeting((x)-3,(y)+3,obj_newslope_right)))
&& (facing = -1)
	{
		hspd = -1/2;
		DetermineMoveScript(hspd);
	}
else if ((place_meeting((x)+(facing),(y),obj_block)) 
or ((!position_meeting((bbox_left),bbox_bottom+2,obj_block)) && (position_meeting((bbox_right),bbox_bottom+2,obj_block)))
or ((!position_meeting((bbox_left)-2,bbox_bottom+2,obj_block)) && (position_meeting((bbox_right)-2,bbox_bottom+2,obj_block))) //account for subpixels ahead of block
or ((!position_meeting((bbox_left),bbox_bottom+2,obj_block)) && (position_meeting((bbox_right),bbox_bottom+2,obj_block)))) //account for subpixels above block
&& (!place_meeting((x)-3,(y)+3,obj_slope1_left)) && (!place_meeting((x)-3,(y)+3,obj_slope1_right))
&& (!place_meeting((x)-3,(y)+3,obj_newslope_left)) && (!place_meeting((x)-3,(y)+3,obj_newslope_right))
&& (facing = -1)
	{
		with(inst)
		{
			if (sprite_index = spr_wormy_walkleft)
			{
				image_index = 0;
				sprite_index = spr_wormy_turn_l2r;
			}
			if (sprite_index = spr_wormy_turn_l2r) && (round(image_index) >= image_number-1)
			{
				sprite_index = spr_wormy_walkright;
				with(other)
				{
					facing = 1;	
				}
			}
		}
	}