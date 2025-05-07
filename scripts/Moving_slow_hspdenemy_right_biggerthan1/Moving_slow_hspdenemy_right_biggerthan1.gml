function Moving_slow_hspdenemy_right_biggerthan1() {
	var stop4 = 0;

		
	
	//NEW SLOPES
	var totalHSPD = (hspd+hspd_enemy)
	var totalHSPD2 = ((hspd+hspd_enemy)/2)
	var moveX = totalHSPD
	var moveY = totalHSPD2
	
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
	if (place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed,obj_newslope_left)) or (place_meeting(x,y+2,obj_newslope_left))
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed,obj_newslope_right)) or (place_meeting(x,y+2,obj_newslope_right))
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD2+subspeed,obj_newslope_left))
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD2+subspeed,obj_newslope_right))
	or (place_meeting(x+totalHSPD+subspeed,y,obj_newslope_left))
	or (place_meeting(x+totalHSPD+subspeed,y,obj_newslope_right))
	or (place_meeting(x-totalHSPD-subspeed,y,obj_newslope_left))
	or (place_meeting(x-totalHSPD-subspeed,y,obj_newslope_right))
	{
		if (totalHSPD < 0)
		{
			Moving_newslope_left_biggerthan1()	
		}
		else if (totalHSPD > 0)
		{
			Moving_newslope_right_biggerthan1()	
		}
	}






	//left slopes
	//////////////////////////////////////////////Going up

	//going up left slope
	if (place_meeting(x+1,y,obj_slope1_left)) && (place_meeting(x+(hspd+hspd_enemy),y+(hspd+hspd_enemy),obj_slope1_left)) && (place_meeting(x,y+1,obj_slope1_left))
	&& (stop4 == 0)
			{
	                y-= (hspd+hspd_enemy);
	                x+= (hspd+hspd_enemy);
					
					stop4 = 1;
	        } 
        

	//going up from left slope to block 2
	if (place_meeting(x+(hspd+hspd_enemy),y,obj_block)) && (place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x+(hspd+hspd_enemy),y-(hspd+hspd_enemy),obj_slope1_left))
	&& (stop4 == 0)
			{
	                while (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_left)) && (place_meeting(x,y+1,obj_slope1_left)) && (place_meeting(x+(hspd+hspd_enemy),y,obj_block))
	                {
		                x = floor(x) + sign(hspd+hspd_enemy);
		                y = floor(y) - sign(hspd+hspd_enemy);
						
						stop4 = 1;
	                }
	        }
		
	if (!place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_left)) && (position_meeting(bbox_right,bbox_bottom+1,obj_slope1_left))
	&& (stop4 == 0)
			{
				x = floor(x) + (hspd+hspd_enemy);
				
				stop4 = 1;
			}

        
        
	//going up block to right slope
	if (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_left)) && (!place_meeting(x+(hspd+hspd_enemy),y,obj_block)) && (place_meeting(x,y+1,obj_block))
	&& (stop4 == 0)
	        {
	                if (!place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x+(hspd+hspd_enemy),y,obj_block)) && (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_left))
	                {    
						x = floor(x) + (hspd+hspd_enemy);
						
						stop4 = 1;
	                }
					if (place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x+(hspd+hspd_enemy),y,obj_block))
	                {    
		                x = floor(x) + (hspd+hspd_enemy);
		                y = floor(y) - (hspd+hspd_enemy);
						
						stop4 = 1;
	                }
	        } 


        
	///right slopes
	///////////////////////////////////////////////////////going down

	//going down right slope
	if (place_meeting(x-1,y,obj_slope1_right)) && (!place_meeting(x+(hspd+hspd_enemy),y+(hspd+hspd_enemy),obj_block)) && (!place_meeting(x+(hspd+hspd_enemy),y,obj_block)) && (!place_meeting(x+(hspd+hspd_enemy),y+(hspd+hspd_enemy),obj_block))
	&& (stop4 == 0)
			{
	                y+= (hspd+hspd_enemy);
	                x+= (hspd+hspd_enemy);  
					
					stop4 = 1;
	        } 
	//going down from right slope to block-getting there
	if (position_meeting(bbox_left,bbox_bottom+1,obj_slope1_right)) && (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x+(hspd+hspd_enemy),y+(hspd+hspd_enemy)+1,obj_slope1_right)) && (place_meeting(x+(hspd+hspd_enemy),y+(hspd+hspd_enemy),obj_block))
	&& (!position_meeting(bbox_right+1,bbox_top,obj_block))
	&& (stop4 == 0)
	   {
	                while (position_meeting(bbox_left,bbox_bottom+1,obj_slope1_right)) && (!place_meeting(x,y+1,obj_block)) && (!position_meeting(bbox_right+1,bbox_top,obj_block))
	                {    
		                x = floor(x) + sign(hspd+hspd_enemy);
		                y = floor(y) + sign(hspd+hspd_enemy);
						
						stop4 = 1;
	                }
	   }
	//going down right slope to block-getting there
	if (position_meeting(bbox_left-1,bbox_bottom,obj_slope1_right)) && (place_meeting(x,y+1,obj_block)) && (!place_meeting(x+(hspd+hspd_enemy),y+(hspd+hspd_enemy)+1,obj_slope1_right))
	&& (stop4 == 0)
	{    
		x = floor(x) + (hspd+hspd_enemy);
		
		stop4 = 1;
	}


	//while loop for going down from block to right slope
	if (place_meeting(x,y+1,obj_block)) && (place_meeting(x+(hspd+hspd_enemy),y+(hspd+hspd_enemy)+1,obj_slope1_right)) && (!place_meeting(x+(hspd+hspd_enemy),y+(hspd+hspd_enemy),obj_block))
	&& (!position_meeting(bbox_left,bbox_bottom+1,obj_slope1_right))
	&& (stop4 == 0)
	   {
	                while (!position_meeting(bbox_left,bbox_bottom+1,obj_slope1_right))
	                {    
						x = floor(x) + sign(hspd+hspd_enemy);
						
						stop4 = 1;
	                }
	   }
   
	if (position_meeting(bbox_left,bbox_bottom+1,obj_slope1_right)) && (position_meeting(bbox_left-1,bbox_bottom+1,obj_block)) && (!place_meeting(x+(hspd+hspd_enemy),y,obj_block)) && (place_meeting(x+(hspd+hspd_enemy),y+(hspd+hspd_enemy)+1,obj_slope1_right))
	&& (stop4 == 0)
					{    
		                x = floor(x) + (hspd+hspd_enemy);
		                y = floor(y) + (hspd+hspd_enemy);
						
						stop4 = 1;
	                }
        
        

        
        
        
        
        
	////////////////////////////////////////////going forward        

	//normal collision block
	if (place_meeting(x+hspd+hspd_enemy,y+hspd+hspd_enemy,obj_block)) && (!place_meeting(x+hspd+hspd_enemy,y,obj_slope1_left)) && (!place_meeting(x+hspd+hspd_enemy,y,obj_slope1_right))
	            {
	                while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block)) && (!place_meeting(x+hspd+hspd_enemy,y,obj_slope1_left)) && (!place_meeting(x+hspd+hspd_enemy,y,obj_slope1_right))
					  && ((position_meeting(x,y+((bbox_bottom-bbox_top)/2),obj_block)) or (place_meeting(x+sign(hspd+hspd_enemy),y,obj_slope1_left)) or (place_meeting(x+sign(hspd+hspd_enemy),y,obj_slope1_right)))
	                {
	                    if (place_meeting(x,y+1,obj_slope1_left))
						{
							x = floor(x) + sign(hspd+hspd_enemy);
							y = floor(y) + sign(hspd+hspd_enemy);
						}
						else if (place_meeting(x,y+1,obj_slope1_right))
						{
							x = floor(x) + sign(hspd+hspd_enemy);
							y = floor(y) - sign(hspd+hspd_enemy);
						}
						else x = floor(x) + sign(hspd+hspd_enemy);
	                }
	                if ((place_meeting(x+sign(hspd+hspd_enemy),y,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right)))
	                {
						hspd = 0;
						hspd_enemy = 0
					}
	            }
            


	//if there's nothing there, you're moving and you're on top of a collision block
	if (!place_meeting(x+(hspd+hspd_enemy),y,obj_block)) && (!place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_left)) && (!place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_right))
	 && (!place_meeting(x+1,y,obj_slope1_left))
	 && (!place_meeting(x-1,y,obj_slope1_right))
	 && (stop4 = 0)
	            {
	                x += (hspd+hspd_enemy);
					
					stop4 = 1;
	            }




















////////////////////////////////////////////////////////////////////////STUCK INSIDE
	if (place_meeting(x,y,obj_block))
	{	
		y = floor(y)
		
		while (place_meeting(x,y,obj_block))
		{
			y--	
		}
	}
	else if (!place_meeting(x,y,obj_block)) && (place_meeting(x,y,obj_newslope_left))
	{
		y = floor(y)
		
		while (!place_meeting(x,y,obj_block)) && (place_meeting(x,y,obj_newslope_left))
		{
			y--
		}
	}
	else if (!place_meeting(x,y,obj_block)) && (place_meeting(x,y,obj_newslope_right))
	{
		y = floor(y)
		
		while (!place_meeting(x,y,obj_block)) && (place_meeting(x,y,obj_newslope_right))
		{
			y--	
		}
	}
	else if (!place_meeting(x,y,obj_block)) && (place_meeting(x,y,obj_slope1_left))
	{	
		y = floor(y)
		
		while (!place_meeting(x,y,obj_block))
		&& (place_meeting(x,y,obj_slope1_left))
		{
			y--	
		}
	}
	else if (!place_meeting(x,y,obj_block)) && (place_meeting(x,y,obj_slope1_right))
	{
		y = floor(y)
		
		while (!place_meeting(x,y,obj_block))
		&& (place_meeting(x,y,obj_slope1_right))
		{
			y--	
		}
	}
	else if (!place_meeting(x,y+1,obj_newslope_left)) 
	&& (!place_meeting(x,y+1,obj_newslope_right)) ////NEW////+1 pixel - empty
	&& (!place_meeting(x,y+1,obj_slope1_left)) 
	&& (!place_meeting(x,y+1,obj_slope1_right))
	&& (!place_meeting(x,y+1,obj_block))
	&& ((place_meeting(x,y+sprite_height,obj_newslope_left)) or (place_meeting(x,y+sprite_height,obj_newslope_right)) //+sprite_height pixels - not empty
	or (place_meeting(x,y+sprite_height,obj_slope1_left)) or (place_meeting(x,y+sprite_height,obj_slope1_right))
	or (place_meeting(x,y+sprite_height,obj_block))
	or (place_meeting(x,y+moveX+1,obj_newslope_left)) or (place_meeting(x,y+moveX+1,obj_newslope_right)) //movement length + 1 downwards
	or (place_meeting(x,y+moveX+1,obj_slope1_left)) or (place_meeting(x,y+moveX+1,obj_slope1_right))
	or (place_meeting(x,y+moveX+1,obj_block)))
	{	
		y = floor(y)
		
		while (!place_meeting(x,y+1,obj_newslope_left)) //+1 pixel - empty
		&& (!place_meeting(x,y+1,obj_newslope_right)) 
		&& (!place_meeting(x,y+1,obj_slope1_left)) 
		&& (!place_meeting(x,y+1,obj_slope1_right))
		&& (!place_meeting(x,y+1,obj_block))
		&& ((place_meeting(x,y+sprite_height,obj_newslope_left)) or (place_meeting(x,y+sprite_height,obj_newslope_right))
		or (place_meeting(x,y+sprite_height,obj_slope1_left)) or (place_meeting(x,y+sprite_height,obj_slope1_right))
		or (place_meeting(x,y+sprite_height,obj_block))
		or (place_meeting(x,y+moveX+1,obj_newslope_left)) or (place_meeting(x,y+moveX+1,obj_newslope_right))
		or (place_meeting(x,y+moveX+1,obj_slope1_left)) or (place_meeting(x,y+moveX+1,obj_slope1_right))
		or (place_meeting(x,y+moveX+1,obj_block)))
		{
			y += 1
		}
	}
}
