function Moving_newslope_right_biggerthan1() {
	//stop4 makes sure only 1 code segment gets to run
	var stop4 = 0;
	
	var moveX = (hspd)
	var moveY = ((hspd)/2)
	
	
	var subspeed = 0;
	var subspeedNewSlopeY = 0;
	
	
	
	if (variable_instance_exists(self,"hspd_enemy"))
	{
		var moveX = (hspd+hspd_enemy)
		var moveY = ((hspd+hspd_enemy)/2)
		
		hspd_enemy = 0
	}
	
	hspd = 0;

	
	if (moveX != 0) 
	&& (moveX <= 1) 
	&& (moveX >= -1)
	{
		subspeed = 1;
		subspeedNewSlopeY = subspeed/2;
	}
	
	
	
	


	//left slopes
	//////////////////////////////////////////////Going up

	//going up left slope
	if ((place_meeting(x+4,y,obj_newslope_left))
	or (place_meeting(x+moveX+subspeed,y,obj_slope1_left) or (collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom,obj_slope1_left,false,true)) 
	or (place_meeting(x+moveX+subspeed,y,obj_slope1_right)) or (collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom,obj_slope1_right,false,true))))
	&& (place_meeting(x,y+2,obj_newslope_left))
	&& ((place_meeting(x+moveX+3+subspeed,y-moveY-subspeed,obj_newslope_left)) or (collision_line(x,bbox_bottom,x+moveX+3+subspeed,bbox_bottom-moveY-subspeed,obj_newslope_left,false,true))) 
	&& (!place_meeting(x+moveX+subspeed,y-moveY-subspeed,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom-moveY-subspeed,obj_block,false,true)) 
	&& (!place_meeting(x+moveX+3+subspeed,y,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX+3+subspeed,bbox_bottom,obj_block,false,true)) 
	&& (!place_meeting(x+1,y,obj_block))
	&& (stop4 == 0)
	        {
	                y-= moveY;
	                x+= moveX;
					
					stop4 = 1;
	        } 
        

	//going up from left slope to block -getting to top of new slope
	if ((place_meeting(x+moveX+3+subspeed,y,obj_block)) 
	or (collision_line(x,bbox_bottom,x+moveX+3+subspeed,bbox_bottom,obj_block,false,true))
	or (place_meeting(x+moveX+3+subspeed,y+1,obj_block)) 
	or (collision_line(x,bbox_bottom,x+moveX+3+subspeed,bbox_bottom+1,obj_block,false,true)))
	&& (place_meeting(x,y+2,obj_newslope_left)) 
	&& ((place_meeting(x+(moveX)+subspeed,y,obj_newslope_left)) 
	or (collision_line(x,bbox_bottom,x+(moveX)+subspeed,bbox_bottom,obj_newslope_left,false,true)))
	&& (stop4 == 0)
	{
			//if still on slope after adding speed values, continue
			if ((place_meeting(x+moveX+subspeed,y-moveY+1-subspeed,obj_newslope_left)) or (collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom-moveY+1-subspeed,obj_newslope_left,false,true)))
			&& (place_meeting(x,y+2,obj_newslope_left)) 
			&& ((place_meeting(x+moveX+3+subspeed,y,obj_block)) or (collision_line(x,bbox_bottom,x+moveX+2+subspeed,bbox_bottom,obj_block,false,true)))
	        && (stop4 == 0)
			{
		        x = (x) + (moveX);
		        y = (y) - (moveY);
						
				stop4 = 1;
	        }
					
			//if not still on slope after adding speed values, while loop until at top of slope
			while (!place_meeting(x+moveX+subspeed,y-moveY+1-subspeed,obj_newslope_left)) && (!collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom-moveY+1-subspeed,obj_newslope_left,false,true))
			&& (place_meeting(x,y+2,obj_newslope_left))
			&& (!place_meeting(x,y+2,obj_block)) 
			&& ((place_meeting(x+moveX+3+subspeed,y,obj_block)) or (collision_line(x,bbox_bottom,x+moveX+3+subspeed,bbox_bottom,obj_block,false,true)))
	        && (stop4 == 0)
			{
		        x = x + sign(moveX);
		        y = y - ((sign(moveY))/2);
	        }
					
			stop4 = 1;
	}
	
	
	
	
	//going up from left slope to block -pushing ourselves off top of newslope onto block
	if ((place_meeting(x+moveX+3+subspeed,y,obj_block)) 
	or (collision_line(x,bbox_bottom,x+moveX+3+subspeed,bbox_bottom,obj_block,false,true))
	or (place_meeting(x+moveX+3+subspeed,y+1,obj_block)) 
	or (collision_line(x,bbox_bottom,x+moveX+2+subspeed,bbox_bottom+1,obj_block,false,true)))
	&& (place_meeting(x,y+2,obj_newslope_left)) 
	&& (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_left)) 
	&& (!collision_line(x,bbox_bottom,x+(moveX)+subspeed,bbox_bottom,obj_newslope_left,false,true))
	&& (stop4 == 0)
	{
			//push us onto block
			if (!place_meeting(x,y+2,obj_block))
			&& (place_meeting(x,y+2,obj_newslope_left))
			{
				x += moveX
				
				stop4 = 1;
			}
			else if (place_meeting(x,y+2,obj_block)) //push us fully off top of newslope
			&& (place_meeting(x,y+2,obj_newslope_left))
			{
				x += moveX
				
				stop4 = 1;
			}
	}
		

        
        
	//going up block to left slope
	if ((place_meeting(x+moveX+subspeed,y,obj_newslope_left)) or (collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom,obj_newslope_left,false,true)))
	&& (!place_meeting(x+moveX+subspeed,y,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom,obj_block,false,true))
	&& (place_meeting(x,y+1,obj_block))
	&& (stop4 == 0)
	        {
					//if on block and not touching newslope horizontally yet
					if (!place_meeting(x+1,y,obj_newslope_left))
					&& (!place_meeting(x+moveX+subspeed,y,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom,obj_block,false,true))
					&& ((place_meeting(x+moveX+subspeed,y,obj_newslope_left)) or (collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom,obj_newslope_left,false,true)))
					&& (place_meeting(x,y+1,obj_block))
					{
		                x = (x) + moveX;
						
						stop4 = 1;
					}
					else if (place_meeting(x+1,y,obj_newslope_left)) //if horizontally right next to newslope
					&& (!place_meeting(x+moveX+subspeed,y,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom,obj_block,false,true))
					&& ((place_meeting(x+moveX+subspeed,y,obj_newslope_left)) or (collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom,obj_newslope_left,false,true)))
	                {    
		                x = (x) + moveX;
		                y = (y) - moveY;
						
						stop4 = 1;
	                }
	        } 
			
			
	
	
	//going up old slope to new slope- getting there ////L
	if ((place_meeting(x+moveX+subspeed+1,y,obj_newslope_left)) or (collision_line(x,bbox_bottom,x+moveX+subspeed+1,bbox_bottom,obj_newslope_left,false,true)))
	&& (place_meeting(x,y+1,obj_slope1_left))
	&& (stop4 == 0)
	{
	        if (!place_meeting(x+1,y,obj_newslope_left))
			&& ((place_meeting(x+moveX+subspeed+1,y,obj_newslope_left)) or (collision_line(x,bbox_bottom,x+moveX+subspeed+1,bbox_bottom,obj_newslope_left,false,true)))
			&& (place_meeting(x,y+1,obj_slope1_left))
	        {    
				x = (x) + moveX;
		        y = (y) - moveX;
						
				stop4 = 1;
	        }
			else if (place_meeting(x+1,y,obj_newslope_left))
			&& ((place_meeting(x+moveX+subspeed+1,y,obj_newslope_left)) or (collision_line(x,bbox_bottom,x+moveX+subspeed+1,bbox_bottom,obj_newslope_left,false,true)))
	        && (place_meeting(x,y+1,obj_slope1_left))
			{    
		        x = (x) + moveX;
		        y = (y) - moveY;
						
				stop4 = 1;
	        }
	} 
	
	//going up old slope to new slope- on newslope but needs pushing further ////L
	if ((place_meeting(x+moveX+subspeed+1,y,obj_newslope_left)) or (collision_line(x,bbox_bottom,x+moveX+subspeed+1,bbox_bottom,obj_newslope_left,false,true)))
	&& (place_meeting(x,y+1,obj_newslope_left))
	&& (!place_meeting(x,y+1,obj_slope1_left)) 
	&& (place_meeting(x-moveX,y+moveX+1,obj_slope1_left))
	&& (stop4 == 0)
	{
	        if (!place_meeting(x+1,y,obj_newslope_left))
			&& (place_meeting(x,y+1,obj_newslope_left))
			&& ((place_meeting(x+moveX+subspeed+1,y,obj_newslope_left)) or (collision_line(x,bbox_bottom,x+moveX+subspeed+1,bbox_bottom,obj_newslope_left,false,true)))
			&& (!place_meeting(x,y+1,obj_slope1_left)) 
			&& (place_meeting(x-moveX,y+moveX+1,obj_slope1_left))
	        {    
				x = (x) + moveX;
		        y = (y) - moveY;
						
				stop4 = 1;
	        }
			else if (place_meeting(x+1,y,obj_newslope_left))
			&& (place_meeting(x,y+1,obj_newslope_left))
			&& ((place_meeting(x+moveX+subspeed+1,y,obj_newslope_left)) or (collision_line(x,bbox_bottom,x+moveX+subspeed+1,bbox_bottom,obj_newslope_left,false,true)))
	        && (!place_meeting(x,y+1,obj_slope1_left)) 
			&& (place_meeting(x-moveX,y+moveX+1,obj_slope1_left))
			{    
		        x = (x) + moveX;
		        y = (y) - moveY;
						
				stop4 = 1;
	        }
	} 
			
	//going up new slope to old slope-////L
	if ((place_meeting(x+moveX+subspeed+2,y,obj_slope1_left)) or (collision_line(x,bbox_bottom,x+moveX+subspeed+2,bbox_bottom,obj_slope1_left,false,true)))
	&& (place_meeting(x,y+1,obj_newslope_left))
	&& (stop4 == 0)
	        {
	                if (!place_meeting(x+2,y,obj_slope1_left))
					&& ((place_meeting(x+moveX+subspeed+2,y,obj_slope1_left)) or (collision_line(x,bbox_bottom,x+moveX+subspeed+2,bbox_bottom,obj_slope1_left,false,true)))
					&& (place_meeting(x,y+1,obj_newslope_left))
	                {    
						x = (x) + moveX;
		                y = (y) - moveY;
						
						stop4 = 1;
	                }
					else if (place_meeting(x+2,y,obj_slope1_left))
					&& ((place_meeting(x+moveX+subspeed+2,y,obj_slope1_left)) or (collision_line(x,bbox_bottom,x+moveX+subspeed+2,bbox_bottom,obj_slope1_left,false,true)))
	                && (place_meeting(x,y+1,obj_newslope_left))
					{    
		                x = (x) + moveX;
		                y = (y) - moveX;
						
						stop4 = 1;
	                }
	        }
	else if ((place_meeting(x+moveX+subspeed+2,y,obj_slope1_left)) or (collision_line(x,bbox_bottom,x+moveX+subspeed+2,bbox_bottom,obj_slope1_left,false,true)))
	&& (!place_meeting(x+moveX+subspeed+2,y,obj_newslope_left)) && (!collision_line(x,bbox_bottom,x+moveX+subspeed+2,bbox_bottom,obj_newslope_left,false,true))
	&& (!place_meeting(x,y+1,obj_newslope_left))
	&& (stop4 == 0)
	        {
	                if (place_meeting(x+2,y,obj_slope1_left))
					&& ((place_meeting(x+moveX+subspeed+2,y,obj_slope1_left)) or (collision_line(x,bbox_bottom,x+moveX+subspeed+2,bbox_bottom,obj_slope1_left,false,true)))
	                && (!place_meeting(x,y+1,obj_newslope_left))
					{    
		                x = (x) + moveX;
		                y = (y) - moveX;
						
						stop4 = 1;
	                }
	        }
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
	


        
	///right slopes
	///////////////////////////////////////////////////////going down

	//going down right slope
	if ((place_meeting(x-4,y,obj_newslope_right))
	or ((place_meeting(x+moveX+subspeed,y,obj_slope1_left)) or (collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom,obj_slope1_left,false,true))) 
	or (place_meeting(x-moveX+subspeed,y,obj_slope1_right)) or (collision_line(x,bbox_bottom,x-moveX+subspeed,bbox_bottom,obj_slope1_right,false,true)))
	&& (place_meeting(x,y+2,obj_newslope_right))
	&& ((place_meeting(x+moveX+subspeed,y+moveY+1+subspeed,obj_newslope_right)) or (place_meeting(x+moveX+subspeed,y+moveX+subspeed,obj_newslope_right))
	or (collision_line(x,bbox_bottom,x-moveX,bbox_bottom,obj_newslope_right,false,true)) or (collision_line(x,bbox_bottom,x-moveX,bbox_bottom-moveY,obj_newslope_right,false,true))) //use collision lines because of high speeds
	&& (!place_meeting(x+moveX+subspeed,y+moveY+1+subspeed,obj_block)) 
	&& (!collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom+moveY+1+subspeed,obj_block,false,true))
	&& (!place_meeting(x+moveX+subspeed,y,obj_block)) 
	&& (!collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom,obj_block,false,true))
	&& (!place_meeting(x+(moveX)+subspeed,y+(moveX)+1+subspeed,obj_slope1_right)) 
	&& (!collision_line(x,bbox_bottom,x+(moveX)+subspeed,bbox_bottom+(moveX)+1+subspeed,obj_slope1_right,false,true))
	&& (!place_meeting(x+1,y,obj_slope1_right))
	&& (stop4 == 0)
	        {
	                y+= moveY;
	                x+= moveX;  
					
					stop4 = 1;
	        } 
			

			
	//going down from right slope to block-getting there
	if ((position_meeting(bbox_left,bbox_bottom+1,obj_newslope_right)) 
	or (position_meeting(bbox_left,bbox_bottom,obj_newslope_right))) //OR STATEMENT IS NEW
	&& ((place_meeting(x+moveX+subspeed,y+moveY+2+subspeed,obj_block)) 
	or (collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom+moveY+2+subspeed,obj_block,false,true)))
	&& (!position_meeting(bbox_right+1,bbox_top,obj_block))
	&& (stop4 == 0)
	   {
	                //if on top of newslope right and not on top of block
					if (position_meeting(bbox_left,bbox_bottom+1,obj_newslope_right)) 
					&& (!place_meeting(x,y+1,obj_block)) 
					&& (!position_meeting(bbox_right+1,bbox_top,obj_block))
					&& (stop4 == 0)
	                {    
		                x = (x) + (moveX);
		                y = (y) + (moveY);
						
						stop4 = 1;
	                }
					
					//if inside of newslope right - NEW
					if (position_meeting(bbox_left,bbox_bottom,obj_newslope_right)) //if inside
					&& (!position_meeting(bbox_left,bbox_bottom+1,obj_newslope_right)) //if newslope right is not one pixel downwards from us (either empty or block)
					&& (!position_meeting(bbox_right+1,bbox_top,obj_block)) //if no blocks that we'll crash into at the top of hitbox
	                && (stop4 == 0)
					{    
		                x = (x) + (moveX);
		                y = (y) + (moveY);
						
						stop4 = 1;
	                }

					
					//after x and y values have been floored, if standing on edge of newslope almost at block
					if (position_meeting(bbox_left,bbox_bottom+1,obj_newslope_right)) 
					&& (position_meeting(bbox_right+1,bbox_bottom+2,obj_block))
					&& (stop4 == 0)
					{
						x++
						y++
					}
					
					stop4 = 1;

	   }
	else if (position_meeting(bbox_left,bbox_bottom+1,obj_newslope_right))
	&& (!place_meeting(x+moveX+subspeed,y+(moveY)+subspeed,obj_newslope_right))
	&& (!position_meeting(bbox_left,bbox_bottom+3,obj_newslope_right))
	&& ((place_meeting(x+moveX+subspeed,y+moveY+2+subspeed,obj_block)) 
	or (collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom+moveY+2+subspeed,obj_block,false,true)))
	&& (!position_meeting(bbox_right+1,bbox_top,obj_block))
	&& (stop4 == 0)
	   {
	                if (position_meeting(bbox_left,bbox_bottom+1,obj_newslope_right)) 
					&& (!place_meeting(x,y+1,obj_block)) 
					&& (!position_meeting(bbox_right+1,bbox_top,obj_block))
					&& (stop4 == 0)
	                {    
		                x = (x) + (moveX);
		                y = (y) + (moveY);
						
						stop4 = 1;
	                }

					
					//after x and y values have been floored, if standing on edge of newslope almost at block
					if (position_meeting(bbox_left,bbox_bottom+1,obj_newslope_right)) 
					&& (position_meeting(bbox_right+1,bbox_bottom+2,obj_block))
					&& (stop4 == 0)
					{
						x++
						y++
					}
					
					stop4 = 1;

	   }
	   


	//while loop for going down from block to right slope
	if (place_meeting(x,y+1,obj_block))
	&& ((place_meeting(x+moveX+subspeed,y+moveY+1+subspeed,obj_newslope_right)) or (place_meeting(x+moveX+subspeed,y+moveX+subspeed,obj_newslope_right))
	or (collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom+moveY+1+subspeed,obj_newslope_right,false,true)) or (collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom+moveX+subspeed,obj_newslope_right,false,true)))
	&& (!position_meeting(bbox_left,bbox_bottom+1,obj_newslope_right))
	&& (stop4 == 0)
	   {
	                //left bottom corner of object still on one pixel of block
					if (!position_meeting(bbox_left,bbox_bottom+1,obj_newslope_right))
					&& (position_meeting(bbox_left,bbox_bottom+1,obj_block))
					&& (!place_meeting(x+moveX+subspeed,y+1,obj_newslope_right)) && (!place_meeting(x+moveX+subspeed,y+1,obj_newslope_right))
					&& (place_meeting(x,y+1,obj_newslope_right))
					&& (place_meeting(x,y+1,obj_block)) 
	                {    
						x = (x) + (moveX);
						
						stop4 = 1;
	                }
					else if (!position_meeting(bbox_left,bbox_bottom+1,obj_newslope_right)) //if not near enough to slope yet
					&& (position_meeting(bbox_left,bbox_bottom+1,obj_block))
					&& (place_meeting(x,y+1,obj_block)) 
					&& ((place_meeting(x+moveX+subspeed,y+moveY+1+subspeed,obj_newslope_right)) or (place_meeting(x+moveX+subspeed,y+moveX+subspeed,obj_newslope_right))
					or (collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom+moveY+1+subspeed,obj_newslope_right,false,true)) or (collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom+moveX+subspeed,obj_newslope_right,false,true)))
	                {    
						x = (x) + (moveX);
						
						stop4 = 1;
	                }		
	   }
   
	//push off fully away from block down onto newslope
	if (position_meeting(bbox_left,bbox_bottom+2,obj_newslope_right))
	&& (position_meeting(bbox_left-2,bbox_bottom+2,obj_block))
	&& (!place_meeting(x+moveX+subspeed,y,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX+subspeed,bbox_bottom,obj_block,false,true))
	&& (place_meeting(x,y+2,obj_newslope_right))
	&& (stop4 == 0)
	                {    
		                x = (x) + moveX;
		                y = (y) + moveY;
						
						stop4 = 1;
	                }
        
        
        
	//going down from new right slope to old right slope - getting there
	if ((position_meeting(bbox_left-2,bbox_bottom,obj_newslope_right)) or (position_meeting(bbox_left,bbox_bottom+1,obj_newslope_right)))
	&& ((place_meeting(x+(moveX)+subspeed,y+(moveX)+1+subspeed,obj_slope1_right)) or (collision_line(x,bbox_bottom,x+(moveX)+subspeed,bbox_bottom+(moveX)+1+subspeed,obj_slope1_right,false,true)))
	&& (stop4 == 0)
	   {
	                //get player out of collision objects if inside
					while (place_meeting(x,y,obj_slope1_right)) or (place_meeting(x,y,obj_newslope_right)) 
					{
		                y = floor(y)-1
					}
					
					//if standing on newslope still
					if (position_meeting(bbox_left-2,bbox_bottom,obj_newslope_right)) 
					&& (place_meeting(x,y+1,obj_newslope_right)) 
	                {    
		                x = (x) + moveX;
		                y = (y) + moveY;
						
						stop4 = 1;
	                }
					else if (position_meeting(bbox_left-2,bbox_bottom,obj_newslope_right)) //if standing on oldslope and behind us is newslope
					&& (!place_meeting(x,y+1,obj_newslope_right)) 
					&& (place_meeting(x,y+1,obj_slope1_right)) 
					{
						x = (x) + moveX;
		                y = (y) + moveX;
						
						stop4 = 1;
					}
	   }
	   
	   
	   
	   
	//going down from new right slope to old right slope - if no newslope behind us horizontally but instead old slope
	if (!position_meeting(bbox_left-2,bbox_bottom,obj_newslope_right)) 
	&& (!position_meeting(bbox_left,bbox_bottom+1,obj_newslope_right))
	&& ((place_meeting(x+(moveX)+subspeed,y+(moveX)+1+subspeed,obj_slope1_right)) or (collision_line(x,bbox_bottom,x+(moveX)+subspeed,bbox_bottom+(moveX)+1+subspeed,obj_slope1_right,false,true)))
	&& ((place_meeting(x-(moveX)-subspeed,y,obj_slope1_right)) or (collision_line(x,bbox_bottom,x-(moveX)-subspeed,bbox_bottom,obj_slope1_right,false,true)))
	&& (stop4 == 0)
	   {
	                while (place_meeting(x,y,obj_slope1_right)) or (place_meeting(x,y,obj_newslope_right)) 
					{
		                y = floor(y)-1
					}
					
					if ((place_meeting(x-moveX-subspeed-1,y,obj_slope1_right)) or (collision_line(x,bbox_bottom,x-moveX-subspeed-1,bbox_bottom,obj_slope1_right,false,true)))
	                {    
		                x = x + (moveX);
		                y = y + (moveX)
						
						stop4 = 1;
	                }
	   }
	   
	   
	   
	   
	   
	//going down from old right slope to new right slope - getting there
	if ((position_meeting(bbox_left-2,bbox_bottom,obj_slope1_right)) or (position_meeting(bbox_left,bbox_bottom+1,obj_slope1_right)))
	&& ((place_meeting(x+(moveX)+subspeed,y+(moveX)+1+subspeed,obj_slope1_right)) or (collision_line(x,bbox_bottom,x+(moveX)+subspeed,bbox_bottom+(moveX)+1+subspeed,obj_newslope_right,false,true)))
	&& (stop4 == 0)
	   {
	                while (place_meeting(x,y,obj_slope1_right)) or (place_meeting(x,y,obj_newslope_right)) 
					{
		                y = floor(y)-1
					}
					
					//if standing on old slope
					if (position_meeting(bbox_left-2,bbox_bottom,obj_slope1_right)) 
					&& (place_meeting(x,y+1,obj_slope1_right)) 
	                {    
		                x = x + (moveX);
		                y = y + (moveX);
						
						stop4 = 1;
	                }
					else if (position_meeting(bbox_left-2,bbox_bottom,obj_slope1_right)) //after x and y values have been floored, if standing on edge of oldslope almost at block
					&& (!place_meeting(x,y+1,obj_slope1_right)) 
					&& (place_meeting(x,y+1,obj_newslope_right)) 
					{
						x = (x) + moveX;
		                y = (y) + moveY;
						
						stop4 = 1;
					}
	   }
		
		
		

        
        
        
        
        
		
		
	
        
	////////////////////////////////////////////going forward        

	//normal collision block
	if (place_meeting(x+(moveX)+subspeed,y+(moveY)+subspeed,obj_block)) && (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_left)) && (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_right))
	{
	    while (!place_meeting(x+sign(moveX),y,obj_block))
		&& (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_left))
		&& (!collision_line(x,bbox_bottom,x+(moveX)+subspeed,bbox_bottom,obj_newslope_left,false,true))
		&& (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_right))
		&& (!collision_line(x,bbox_bottom,x+(moveX)+subspeed,bbox_bottom,obj_newslope_right,false,true))
		&& (!place_meeting(x-(moveX),y,obj_newslope_left))
		&& (!collision_line(x,bbox_bottom,x-(moveX),bbox_bottom,obj_newslope_left,false,true))
		&& (!place_meeting(x-(moveX),y,obj_newslope_right))
		&& (!collision_line(x,bbox_bottom,x-(moveX),bbox_bottom,obj_newslope_right,false,true))
		&& ((position_meeting(x,y+((bbox_bottom-bbox_top)/2),obj_block))
		or (place_meeting(x+sign(moveX),y,obj_newslope_left))
		or (place_meeting(x+sign(moveX),y,obj_newslope_right)))
	    {
	        if (place_meeting(x,y+1,obj_newslope_left))
			{
				x = floor(x) + sign(moveX);
				y = floor(y) + sign(moveY);
			}
			else if (place_meeting(x,y+1,obj_newslope_right))
			{
				x = floor(x) + sign(moveX);
				y = floor(y) - sign(moveY);
			}
			else x = floor(x) + sign(moveX);
	    }
	}
            


	//if there's nothing there, you're moving and you're on top of a collision block
	if (!place_meeting(x+(moveX)+subspeed,y,obj_block)) 
	&& (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_left)) && (!collision_line(x,bbox_bottom,x+(moveX)+subspeed,bbox_bottom,obj_newslope_left,false,true))
	&& (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_right)) && (!collision_line(x,bbox_bottom,x+(moveX)+subspeed,bbox_bottom,obj_newslope_right,false,true))
	&& (!place_meeting(x+4,y,obj_newslope_left))
	&& (!place_meeting(x-4,y,obj_newslope_right))
	&& (place_meeting(x+(moveX)+subspeed,y+2,obj_block))
	&& (stop4 == 0)
	{
	    x += (moveX);
	}
				
	//if needing to move forward on block, and just behind a slope
	if (!place_meeting(x+(moveX)+subspeed,y,obj_block)) 
	&& (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_left)) && (!collision_line(x,bbox_bottom,x+(moveX)+subspeed,bbox_bottom,obj_newslope_left,false,true))
	&& (!place_meeting(x+(moveX)+subspeed,y,obj_newslope_right)) && (!collision_line(x,bbox_bottom,x+(moveX)+subspeed,bbox_bottom,obj_newslope_right,false,true))
	&& ((place_meeting(x+4,y,obj_newslope_left)) or (place_meeting(x-4,y,obj_newslope_right)))
	&& (!place_meeting(x,y+1,obj_newslope_left)) && (!place_meeting(x,y+1,obj_newslope_right))
	&& (!place_meeting(x+(moveX)+subspeed,y+(moveX)+subspeed,obj_newslope_left)) && (!collision_line(x,bbox_bottom,x+(moveX)+subspeed,bbox_bottom+(moveX)+subspeed,obj_newslope_left,false,true)) 
	&& (!place_meeting(x+(moveX)+subspeed,y+(moveX)+subspeed,obj_newslope_right)) && (!collision_line(x,bbox_bottom,x+(moveX)+subspeed,bbox_bottom+(moveX)+subspeed,obj_newslope_right,false,true)) 
	&& (!place_meeting(x+(moveX)+subspeed,y+(moveX)+subspeed,obj_slope1_left)) && (!collision_line(x,bbox_bottom,x+(moveX)+subspeed,bbox_bottom+(moveX)+subspeed,obj_slope1_left,false,true)) 
	&& (!place_meeting(x+(moveX)+subspeed,y+(moveX)+subspeed,obj_slope1_right)) && (!collision_line(x,bbox_bottom,x+(moveX)+subspeed,bbox_bottom+(moveX)+subspeed,obj_slope1_right,false,true)) 
	&& (place_meeting(x+(moveX)+subspeed,y+2,obj_block))
	&& (stop4 == 0)
	{
	    x += moveX;
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
