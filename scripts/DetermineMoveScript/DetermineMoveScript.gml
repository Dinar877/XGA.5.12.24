// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DetermineMoveScript(){
	
	//DETERMINE FACING DIRECTION IF APPLICABLE
	DetermineFacingDirection(hspd);
	
	//NEW SLOPES
	var totalHSPD = (argument0)
	var totalHSPD2 = ((argument0)/2)
	
	var subspeed = 0
	
	if (totalHSPD != 0) 
	&& (totalHSPD <= 1) 
	&& (totalHSPD >= -1)
	{
		if (totalHSPD > 0)
		{
			subspeed = 1
		}
		else if (totalHSPD < 0)
		{
			subspeed = -1
		}
	}
	


	//NEWslope objects move scipt - LEFT
	// the +1 for y is because at the edge of a block you will not connect with the newslope as you need to go 2 across 3 down to collide with it
	if (place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed+1,obj_newslope_left)) 
	or (place_meeting(x,y+2,obj_newslope_left)) 
	or (place_meeting(x+totalHSPD+subspeed,y+2,obj_newslope_left)) 
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed+1,obj_newslope_right)) 
	or (place_meeting(x,y+2,obj_newslope_right))
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed+1,obj_newslope_right)) 
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD2+subspeed+1,obj_newslope_left))
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD2+subspeed+1,obj_newslope_right))
	or (place_meeting(x+totalHSPD+subspeed-1,y,obj_newslope_left))
	or (place_meeting(x+totalHSPD+subspeed-1,y,obj_newslope_right))
	or (place_meeting(x-totalHSPD-subspeed-1,y,obj_newslope_left))
	or (place_meeting(x-totalHSPD-subspeed-1,y,obj_newslope_right))
	or (place_meeting(x+totalHSPD+subspeed+1,y,obj_newslope_left))
	or (place_meeting(x+totalHSPD+subspeed+1,y,obj_newslope_right))
	or (place_meeting(x-totalHSPD-subspeed+1,y,obj_newslope_left))
	or (place_meeting(x-totalHSPD-subspeed+1,y,obj_newslope_right))
	{
		//L
		if (totalHSPD < 0) && (subspeed == 0)
		{
			Moving_newslope_left_biggerthan1()	
		}
		else if (totalHSPD < 0) && (subspeed != 0)
		{
			Moving_newslope_left_lessthan1()	
		}
		
		//R
		if (totalHSPD > 0) && (subspeed == 0)
		{
			Moving_newslope_right_biggerthan1()	
		}
		else if (totalHSPD > 0) && (subspeed != 0)
		{
			Moving_newslope_right_lessthan1()	
		}
	}
	else if (totalHSPD != 0)
	&& ((place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed+1,obj_slope1_left)) 
	or (place_meeting(x,y+2,obj_slope1_left)) 
	or (place_meeting(x+totalHSPD+subspeed,y+2,obj_slope1_left)) 
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed+1,obj_slope1_right)) 
	or (place_meeting(x,y+2,obj_slope1_right))
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed+1,obj_newslope_right)) 
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD2+subspeed+1,obj_slope1_left))
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD2+subspeed+1,obj_slope1_right))
	or (place_meeting(x+totalHSPD+subspeed,y,obj_slope1_left))
	or (place_meeting(x+totalHSPD+subspeed,y,obj_slope1_right))
	or (place_meeting(x-totalHSPD-subspeed,y,obj_slope1_left))
	or (place_meeting(x-totalHSPD-subspeed,y,obj_slope1_right))
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed+1,obj_block)) //run code even if no slopes in range
	or (place_meeting(x,y+2,obj_block))
	or (place_meeting(x+totalHSPD+subspeed,y+2,obj_block)))
	{		
		//L
		if (totalHSPD < 0) && (subspeed != 0)
		{
			Moving_slow_left_lessthan1()
		}
		else if (totalHSPD < 0) && (subspeed == 0)
		{
			Moving_slow_left_biggerthan1()
		}
		//R
		if (totalHSPD > 0) && (subspeed != 0)
		{
			Moving_slow_right_lessthan1()
		}
		else if (totalHSPD > 0) && (subspeed == 0)
		{
			Moving_slow_right_biggerthan1()
		}
	}

}