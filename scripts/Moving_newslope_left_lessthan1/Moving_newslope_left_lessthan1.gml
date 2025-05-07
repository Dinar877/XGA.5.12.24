function Moving_newslope_left_lessthan1() {
	var stop4 = 0;
	
	if (hspd != 0)
	{
		var moveX = (hspd)
		var moveY = ((hspd)/2)
	}
	else if (hspd = 0)
	{
		var moveX = 0
		var moveY = 0
	}
	
	var subspeed = 0
	
	
	//accounting for hspd_enemy if exists
	if (variable_instance_exists(self,"hspd_enemy"))
	{
		if (hspd_enemy != 0)
		{
			var moveX = (hspd+hspd_enemy)
			var moveY = ((hspd+hspd_enemy)/2)
		}
	}

	
	
	if (moveX != 0) 
	&& (moveX <= 1) 
	&& (moveX >= -1)
	{
		subspeed = -1
	}
	
	
	
	///left slopes
	///////////////////////////////////////////////////////going down

	//going down left slope
	if ((place_meeting(x+4,y,obj_newslope_left))
	or (place_meeting(x-moveX+subspeed,y,obj_slope1_left)) 
	or (place_meeting(x-moveX+subspeed,y,obj_slope1_right)))
	&& (place_meeting(x,y+2,obj_newslope_left))
	&& ((place_meeting(x+(moveX)+subspeed,y-(moveY)+1-subspeed,obj_newslope_left)) or (place_meeting(x+(moveX)+subspeed,y-(moveX)-subspeed,obj_newslope_left)))
	&& (!place_meeting(x+(moveX)+subspeed,y-(moveY)+1-subspeed,obj_block))
	&& (!place_meeting(x+1,y,obj_block))
	&& (!place_meeting(x+(moveX)+subspeed,y-(moveX)+2-subspeed,obj_slope1_left))
	&& (!place_meeting(x+1,y,obj_slope1_left))
	&& (stop4 == 0)
	        {
					y-= moveY;
	                x+= moveX;
					
					stop4 = 1;
	        } 
           
	
	//going down from left slope to block-getting there
	if ((position_meeting(bbox_right,bbox_bottom+1,obj_newslope_left)) or (position_meeting(bbox_right,bbox_bottom,obj_newslope_left))) //OR STATEMENT IS NEW
	&& (!place_meeting(x+(moveX)+subspeed,y-(moveY)-subspeed,obj_newslope_left))
	&& (place_meeting(x+(moveX)+subspeed,y-(moveY)+1-subspeed,obj_block))
	&& (!position_meeting(bbox_left-1,bbox_top,obj_block))
	&& (stop4 == 0)
	   {
	                //if on top of newslope left and not on top of block
					if (position_meeting(bbox_right,bbox_bottom+1,obj_newslope_left)) 
					&& (!place_meeting(x,y+1,obj_block)) 
					&& (!position_meeting(bbox_left-1,bbox_top,obj_block))
	                {    
		                x = (x) + (moveX);
		                y = (y) - (moveY);
						
						stop4 = 1;
	                }
					
					//if inside of newslope left - NEW
					if (position_meeting(bbox_right,bbox_bottom,obj_newslope_left)) //if inside
					&& (!position_meeting(bbox_right,bbox_bottom+1,obj_newslope_left)) //if newslope left is not one pixel downwards from us below bottom right corner of hitbox (either empty or block)
					&& (!position_meeting(bbox_left-1,bbox_top,obj_block)) //if no blocks that we'll crash into at the top of hitbox
					&& (stop4 == 0)
	                {    
		                x = (x) + (moveX);
		                y = (y) - (moveY);
						
						stop4 = 1;
	                }
					
					//after x and y values have been floored, if standing on edge of newslope almost at block
					if (position_meeting(bbox_right,bbox_bottom+1,obj_newslope_left)) 
					&& (position_meeting(bbox_right-1,bbox_bottom+2,obj_block))
					&& (stop4 == 0)
					{
						x--
						y++
						
						stop4 = 1;
					}
	   }
	else if (position_meeting(bbox_right,bbox_bottom+1,obj_newslope_left)) 
	&& (place_meeting(x+(moveX)+subspeed,y-(moveY)-subspeed,obj_newslope_left))
	&& (!position_meeting(bbox_right,bbox_bottom+3,obj_newslope_left))
	&& (place_meeting(x+(moveX)+subspeed,y-(moveY)+1-subspeed,obj_block))
	&& (!position_meeting(bbox_left-1,bbox_top,obj_block))
	&& (stop4 == 0)
	   {
	                if (position_meeting(bbox_right,bbox_bottom+1,obj_newslope_left)) 
					&& (!place_meeting(x,y+1,obj_block)) //make sure we're not within 1 pixel worth of block yet
					&& (!position_meeting(bbox_left-1,bbox_top,obj_block))
					&& (stop4 == 0)
	                {    
		                x = (x) + (moveX);
		                y = (y) - (moveY);
						
						stop4 = 1;
	                }
					
					//after x and y values have been floored, if standing on edge of newslope almost at block
					if (position_meeting(bbox_right,bbox_bottom+1,obj_newslope_left)) 
					&& (position_meeting(bbox_right-1,bbox_bottom+2,obj_block))
					&& (stop4 == 0)
					{
						x--
						y++
						
						stop4 = 1;
					}
	   }
	   

	
	

	//while loop for going down from block to left slope
	if (place_meeting(x,y+1,obj_block))
	&& ((place_meeting(x+(moveX)+subspeed,y-(moveY)+1-subspeed,obj_newslope_left)) or (place_meeting(x+(moveX)+subspeed,y-(moveX)-subspeed,obj_newslope_left)))
	&& (!position_meeting(bbox_right,bbox_bottom+1,obj_newslope_left))
	&& (stop4 == 0)
	   {
	                //distance to slope at corner now less than speed value
					while (!position_meeting(bbox_right,bbox_bottom+1,obj_newslope_left))
					&& (position_meeting(bbox_right,bbox_bottom+1,obj_block))
					&& (!place_meeting(x+moveX+subspeed,y+2,obj_newslope_left))
					&& (place_meeting(x,y+2,obj_newslope_left))
					&& (place_meeting(x,y+2,obj_block)) 
	                {    
						x = floor(x) + sign(moveX);
						
						stop4 = 1;
	                }
										
					//approaching slope at bbox corner of object
					if (!position_meeting(bbox_right,bbox_bottom+1,obj_newslope_left))
					//&& (position_meeting(bbox_right,bbox_bottom+1,obj_block))
					&& (place_meeting(x,y+2,obj_block)) 
					&& ((place_meeting(x+(moveX)+subspeed,y-(moveY)+1-subspeed,obj_newslope_left)) or (place_meeting(x+(moveX)+subspeed,y-(moveX)-subspeed,obj_newslope_left)))
	                && (stop4 == 0)
					{    
						x = (x) + (moveX);
						
						stop4 = 1;
	                }
					
					
	   }
   
	if (position_meeting(bbox_right,bbox_bottom+1,obj_newslope_left))
	&& (position_meeting(bbox_right+2,bbox_bottom+1,obj_block))
	&& (!place_meeting(x+(moveX)+subspeed,y,obj_block))
	&& (place_meeting(x,y+2,obj_newslope_left))
	&& (stop4 == 0)
	                {    
						x = (x) + moveX;
		                y = (y) - moveY;
						
						stop4 = 1;
	                }
					
					
					
	//going down from new left slope to old left slope - getting there
	if ((position_meeting(bbox_right+2,bbox_bottom,obj_newslope_left)) or (position_meeting(bbox_right,bbox_bottom+1,obj_newslope_left)))
	&& (place_meeting(x+(moveX)+subspeed,y-(moveX)+2-subspeed,obj_slope1_left))
	&& (stop4 == 0)
	   {
	                
					//get player out of collision objects if inside
					while (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_newslope_left)) 
					{
						x = (x)
		                y = (y)-1
					}
					
					
					//while still on newslope left
					if (position_meeting(bbox_right+2,bbox_bottom,obj_newslope_left)) 
					&& (place_meeting(x,y+2,obj_newslope_left)) 
					&& (place_meeting(x+(moveX)+subspeed,y-(moveX)+2-subspeed,obj_slope1_left))
					&& (stop4 == 0)
	                {    
		                x = (x) + moveX;
		                y = (y) - moveY;
						
						stop4 = 1;
	                }
					
					
					//after x and y values have been floored, if standing on oldslope and behind us is newslope
					if (position_meeting(bbox_right+2,bbox_bottom,obj_newslope_left)) 
					&& (!place_meeting(x,y+2,obj_newslope_left)) 
					&& (place_meeting(x,y+2,obj_slope1_left)) 
					&& (stop4 == 0)
					{
						x = (x) + moveX;
		                y = (y) - moveX;
						
						stop4 = 1;
					}
	   }	
	   
	   
	
	//going down from new left slope to old left slope - if no newslope behind us horizontally but instead old slope
	if (!position_meeting(bbox_right+2,bbox_bottom,obj_newslope_left)) 
	&& (!position_meeting(bbox_right,bbox_bottom+1,obj_newslope_left))
	&& (place_meeting(x-(moveX)-subspeed,y-(moveX)+2-subspeed,obj_slope1_left))
	&& (place_meeting(x-(moveX)-subspeed+2,y,obj_slope1_left))
	&& (stop4 == 0)
	   {					
					//check behind us
					if (place_meeting(x-moveX-subspeed+2,y,obj_newslope_left))
	                {    
		                x = x + (moveX);
		                y = y - (moveX)
						
						stop4 = 1;
	                }
	   }
	
	
	
	
					
					
	//going down from old left slope to new left slope - getting there
	if ((position_meeting(bbox_right+2,bbox_bottom,obj_slope1_left)) or (position_meeting(bbox_right,bbox_bottom+1,obj_slope1_left)))
	&& (place_meeting(x+(moveX)+subspeed,y-(moveX)+1-subspeed,obj_newslope_left))
	&& (stop4 == 0)
	   {
					if (position_meeting(bbox_right+2,bbox_bottom,obj_slope1_left)) 
					&& (place_meeting(x,y+2,obj_slope1_left)) 
	                {    
		                x = (x) + moveX;
		                y = (y) + moveX;
						
						stop4 = 1;
	                }
					
					//after x and y values have been floored, if standing on edge of newslope almost at block
					if (position_meeting(bbox_right+2,bbox_bottom,obj_slope1_left)) 
					&& (!place_meeting(x,y+2,obj_slope1_left)) 
					&& (place_meeting(x,y+2,obj_newslope_left)) 
					&& (stop4 == 0)
					{
						x = (x) + moveX;
		                y = (y) - moveY;
						
						stop4 = 1;
					}
	   }
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
        
  
	//right slopes
	//////////////////////////////////////////////Going up
	if ((place_meeting(x-4,y,obj_newslope_right))
	or (place_meeting(x+moveX+subspeed,y,obj_slope1_left)) 
	or (place_meeting(x+moveX+subspeed,y,obj_slope1_right)))
	&& (place_meeting(x,y+2,obj_newslope_right))
	&& (place_meeting(x+moveX-2+subspeed,y+moveY+2+subspeed,obj_newslope_right))
	&& (!place_meeting(x+moveX+subspeed,y+moveY+2+subspeed,obj_block)) 
	&& (!place_meeting(x+moveX-2+subspeed,y,obj_block)) 
	&& (!place_meeting(x+1,y,obj_block))
	&& (stop4 == 0)
	        {
	                y+= moveY;
	                x+= moveX;
					
					stop4 = 1;
	        } 

		
	//going up from right new slope to block while not above block because of subpixels
	if (place_meeting(x+moveX-2+subspeed,y,obj_block)) 
	&& (place_meeting(x,y+2,obj_newslope_right)) 
	&& (place_meeting(x+(moveX)+subspeed,y,obj_newslope_right))
	&& (stop4 == 0)
	    {
				//if still on slope after adding speed values, continue
				if (place_meeting(x+moveX+subspeed,y-moveY+1-subspeed,obj_newslope_right)) 
				&& (place_meeting(x,y+2,obj_newslope_right)) 
				&& (place_meeting(x+moveX-2+subspeed,y,obj_block))
				&& (stop4 == 0)
	            {
		            x = (x) + (moveX);
		            y = (y) - (moveY);
					
					stop4 = 1;
	            }
					
				//if not still on slope after adding speed values, while loop until at top of slope
				while (!place_meeting(x+moveX+subspeed,y-moveY+1-subspeed,obj_newslope_right)) 
				&& (place_meeting(x,y+2,obj_newslope_right))
				&& (!place_meeting(x,y+2,obj_block)) 
				&& (place_meeting(x+moveX-2+subspeed,y,obj_block))
				&& (stop4 == 0)
	            {
		            x = x + sign(moveX);
		            y = y - ((sign(moveY))/2);
	            }
				
				stop4 = 1;
	    }
		
	//going up from right new slope to block while above block because of subpixels
	if (!place_meeting(x+moveX-2+subspeed,y,obj_block)) && (position_meeting(bbox_left-4,bbox_bottom+2,obj_block))
	&& (place_meeting(x,y+2,obj_newslope_right)) 
	&& (place_meeting(x+(moveX)+subspeed,y,obj_newslope_right))
	&& (stop4 == 0)
	    {
				//if still on slope after adding speed values, continue
				if (place_meeting(x+moveX+subspeed,y-moveY+1-subspeed,obj_newslope_right)) 
				&& (place_meeting(x,y+2,obj_newslope_right)) 
				&& (place_meeting(x+moveX-2+subspeed,y,obj_block))
				&& (stop4 == 0)
	            {
		            x = (x) + (moveX);
		            y = (y) - (moveY);
					
					stop4 = 1;
	            }
					
				//if not still on slope after adding speed values, while loop until at top of slope
				while (!place_meeting(x+moveX+subspeed,y-moveY+1-subspeed,obj_newslope_right)) 
				&& (place_meeting(x,y+2,obj_newslope_right))
				&& (!place_meeting(x,y+2,obj_block)) 
				&& (place_meeting(x+moveX-2+subspeed,y,obj_block))
				&& (stop4 == 0)
	            {
		            x = x + sign(moveX);
		            y = y - ((sign(moveY))/2);
	            }
				
				stop4 = 1;
	    }		

	
	
		
	//going up block to right slope
	if (place_meeting(x+(moveX)+subspeed,y,obj_newslope_right)) 
	&& (!place_meeting(x+(moveX)+subspeed,y,obj_block)) 
	&& (place_meeting(x,y+2,obj_block))
	&& (stop4 == 0)
	        {
					if (!place_meeting(x+1,y,obj_newslope_right)) 
					&& (!place_meeting(x+moveX+subspeed,y,obj_block)) 
					&& (place_meeting(x+moveX+subspeed,y,obj_newslope_right))
					&& (stop4 == 0)
	                {    
						x = floor(x) + sign(moveX);
						
						stop4 = 1;
	                }
				   
					if (place_meeting(x-1,y,obj_newslope_right)) 
					&& (!place_meeting(x+(moveX)+subspeed,y,obj_block))
					&& (stop4 == 0)
	                {    
						x = (x) + moveX;
						y = (y) + moveY;
						
						stop4 = 1;
	                }
	        }        
			
			
			
			
			
			
	//going up old slope to new slope-////R
	if (place_meeting(x+moveX-2+subspeed,y,obj_newslope_right))
	&& (place_meeting(x,y+2,obj_slope1_right))
	&& (stop4 == 0)
	        {
	                if (!place_meeting(x-1,y,obj_newslope_right))
					&& (place_meeting(x+moveX-3+subspeed,y,obj_newslope_right))
					&& (place_meeting(x,y+2,obj_slope1_right))
	                {    
						x = (x) + moveX;
		                y = (y) + moveY;
						
						stop4 = 1;
	                }
					
					if (place_meeting(x-1,y,obj_newslope_right))
					&& (place_meeting(x+moveX-2+subspeed,y,obj_newslope_right))
					&& (place_meeting(x,y+2,obj_slope1_right))
					&& (stop4 == 0)
	                {    
		                x = (x) + moveX;
		                y = (y) + moveY;
						
						stop4 = 1;
	                }
	        } 
			
	//going up new slope to old slope-////R
	if (place_meeting(x+moveX-2+subspeed,y,obj_slope1_right))
	&& (place_meeting(x,y+2,obj_newslope_right))
	&& (stop4 == 0)
	        {
	                while (!place_meeting(x-1,y,obj_slope1_right))
					&& (place_meeting(x+moveX-2+subspeed,y,obj_slope1_right))
					&& (place_meeting(x,y+2,obj_newslope_right))
	                {    
						x = floor(x) + sign(moveX);
						
						stop4 = 1;
	                }
					
					if (place_meeting(x-1,y,obj_slope1_right))
					&& (place_meeting(x+moveX-2+subspeed,y,obj_slope1_right))
					&& (place_meeting(x,y+2,obj_newslope_right))
					&& (stop4 == 0)
	                {    
		                x = (x) + moveX;
		                y = (y) + moveX;
						
						stop4 = 1;
	                }
	        } 
	else if (place_meeting(x+moveX-2+subspeed,y,obj_slope1_right))
	&& (!place_meeting(x+moveX-2+subspeed,y,obj_newslope_right))
	&& (!place_meeting(x,y+2,obj_newslope_right))
	&& (stop4 == 0)
	        {
	                if (place_meeting(x-2,y,obj_slope1_right))
					&& (place_meeting(x+moveX-2+subspeed,y,obj_slope1_right))
	                && (!place_meeting(x,y+2,obj_newslope_right))
					{    
		                x = (x) + moveX;
		                y = (y) + moveX;
						
						stop4 = 1;
					}
	        }
			


		
		
 
        
        
	////////////////////////////////////////////going forward        

	//normal collision block
	if (place_meeting(x+(moveX)+subspeed,y+(moveY)+subspeed,obj_block)) 
	&& (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_left)) 
	&& (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_right))
	&& (stop4 == 0)
	{
	    while (!place_meeting(x+sign(moveX),y,obj_block))
		&& (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_left))
		&& (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_right))
		&& ((position_meeting(x,y+((bbox_bottom-bbox_top)/2),obj_block))
		or (place_meeting(x+sign(moveX),y,obj_newslope_left))
		or (place_meeting(x+sign(moveX),y,obj_newslope_right)))
		&& (place_meeting(x+(moveX)+subspeed,y+(moveY)+subspeed,obj_block))
	    {
	        if (place_meeting(x,y+2,obj_newslope_left))
			&& (!place_meeting(x,y+2,obj_block))
			{
				x = floor(x) + sign(moveX);
				y = floor(y) - sign(moveY);
			}
			else if (place_meeting(x,y+2,obj_newslope_right))
			&& (!place_meeting(x,y+2,obj_block))
			{
				x = floor(x) + sign(moveX);
				y = floor(y) + sign(moveY);
			}
			else if (place_meeting(x+(moveX)+subspeed,y,obj_block))
			{
				x = floor(x) + sign(moveX);
			}
		}
	    if ((place_meeting(x+sign(moveX),y,obj_block)) && (!place_meeting(x,y+2,obj_newslope_left)) && (!place_meeting(x,y+2,obj_newslope_right)))
	    {
			moveX = 0;
		}
	}
       

	//if there's nothing there, you're moving and you're on top of a collision block
	if (!place_meeting(x+(moveX)+subspeed,y,obj_block)) && (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_left)) && (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_right))
	&& (!place_meeting(x+4,y,obj_newslope_left))
	&& (!place_meeting(x-4,y,obj_newslope_right))
	&& (!place_meeting(x,y+2,obj_newslope_left)) 
	&& (!place_meeting(x,y+2,obj_newslope_right))
	&& (place_meeting(x+(moveX)+subspeed,y+2,obj_block))
	&& (stop4 == 0)
	            {
	                x += moveX;
					
					stop4 = 1;
	            }
				
	//if needing to move forward on block, and just behind a slope
	if (!place_meeting(x+(moveX)+subspeed,y,obj_block)) && (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_left)) && (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_right))
	&& ((place_meeting(x+4,y,obj_newslope_left)) or (place_meeting(x-4,y,obj_newslope_right)))
	&& (!place_meeting(x,y+2,obj_newslope_left)) && (!place_meeting(x,y+2,obj_newslope_right))
	&& (!place_meeting(x+(moveX)+subspeed,y+(moveX)+subspeed,obj_newslope_left)) && (!place_meeting(x+(moveX)+subspeed,y+(moveX)+subspeed,obj_newslope_right))
	&& (!place_meeting(x+(moveX)+subspeed,y+(moveX)+subspeed,obj_slope1_left)) && (!place_meeting(x+(moveX)+subspeed,y+(moveX)+subspeed,obj_slope1_right))
	&& (place_meeting(x+(moveX)+subspeed,y+2,obj_block))
	&& (stop4 == 0)
	            {
	                x += moveX;
					
					stop4 = 1;
	            }
	//if needing to move forward on newslope, and just infront of us is a block connecting to the newslope
	if (!place_meeting(x+(moveX)+subspeed,y,obj_block)) && (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_left)) && (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_right))
	&& (!place_meeting(x+4,y,obj_newslope_left)) && (!place_meeting(x-4,y,obj_newslope_right))
	&& ((place_meeting(x,y+2,obj_newslope_left)) or (place_meeting(x,y+2,obj_newslope_right)))
	&& (!place_meeting(x+(moveX)+subspeed,y+(moveX)+subspeed,obj_newslope_left)) && (!place_meeting(x+(moveX)+subspeed,y+(moveX)+subspeed,obj_newslope_right))
	&& (!place_meeting(x+(moveX)+subspeed,y+(moveX)+subspeed,obj_slope1_left)) && (!place_meeting(x+(moveX)+subspeed,y+(moveX)+subspeed,obj_slope1_right))
	&& (place_meeting(x+(moveX)-1+subspeed,y+2,obj_block)) //block ahead of us in our direction
	&& (!position_meeting(bbox_right,bbox_bottom+1,obj_block)) //make sure we're not going towards a newslope
	&& (stop4 == 0)
	            {
	                x += moveX;
					
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
