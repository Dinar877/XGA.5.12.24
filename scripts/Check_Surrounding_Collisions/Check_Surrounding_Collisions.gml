// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Check_Surrounding_Collisions(){
	
	//blocks
	if (place_meeting(x+1,y,obj_block))
	or (place_meeting(x-1,y,obj_block))
	or (place_meeting(x+1,y+1,obj_block))
	or (place_meeting(x-1,y+1,obj_block))
	or (place_meeting(x+1,y-1,obj_block))
	or (place_meeting(x-1,y-1,obj_block))
	or (place_meeting(x,y+1,obj_block))
	or (place_meeting(x,y-1,obj_block))
	{
		return true;
	}
	
	//slope left
	if (place_meeting(x+1,y,obj_slope1_left))
	or (place_meeting(x-1,y,obj_slope1_left))
	or (place_meeting(x+1,y+1,obj_slope1_left))
	or (place_meeting(x-1,y+1,obj_slope1_left))
	or (place_meeting(x+1,y-1,obj_slope1_left))
	or (place_meeting(x-1,y-1,obj_slope1_left))
	or (place_meeting(x,y+1,obj_slope1_left))
	or (place_meeting(x,y-1,obj_slope1_left))
	{
		return true;
	}
	
	//slope right
	if (place_meeting(x+1,y,obj_slope1_right))
	or (place_meeting(x-1,y,obj_slope1_right))
	or (place_meeting(x+1,y+1,obj_slope1_right))
	or (place_meeting(x-1,y+1,obj_slope1_right))
	or (place_meeting(x+1,y-1,obj_slope1_right))
	or (place_meeting(x-1,y-1,obj_slope1_right))
	or (place_meeting(x,y+1,obj_slope1_right))
	or (place_meeting(x,y-1,obj_slope1_right))
	{
		return true;
	}
	
	//NEWslope left
	if (place_meeting(x+1,y,obj_newslope_left))
	or (place_meeting(x-1,y,obj_newslope_left))
	or (place_meeting(x+1,y+1,obj_newslope_left))
	or (place_meeting(x-1,y+1,obj_newslope_left))
	or (place_meeting(x+1,y-1,obj_newslope_left))
	or (place_meeting(x-1,y-1,obj_newslope_left))
	or (place_meeting(x,y+1,obj_newslope_left))
	or (place_meeting(x,y-1,obj_newslope_left))
	{
		return true;
	}
	
	//NEWslope right
	if (place_meeting(x+1,y,obj_newslope_right))
	or (place_meeting(x-1,y,obj_newslope_right))
	or (place_meeting(x+1,y+1,obj_newslope_right))
	or (place_meeting(x-1,y+1,obj_newslope_right))
	or (place_meeting(x+1,y-1,obj_newslope_right))
	or (place_meeting(x-1,y-1,obj_newslope_right))
	or (place_meeting(x,y+1,obj_newslope_right))
	or (place_meeting(x,y-1,obj_newslope_right))
	{
		return true;
	}

}