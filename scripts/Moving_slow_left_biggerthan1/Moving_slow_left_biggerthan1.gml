function Moving_slow_left_biggerthan1() {
	//stop4 makes sure only 1 code segment gets to run
	var stop4 = 0;
	
		
	
	//NEW SLOPES
	var totalHSPD = (hspd)
	var totalHSPD2 = ((hspd)/2)
	var moveX = totalHSPD
	var moveY = totalHSPD2
	var hspdCounter = abs(hspd);
	
	
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
		
		exit;
	}



	
	
	
	
	
	
	///left slopes
	///////////////////////////////////////////////////////going down

	//going down left slope
	if (place_meeting(x+2,y,obj_slope1_left))
	&& (!place_meeting(x+moveX,y-(moveX)+1,obj_block)) 
	&& (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_block,false,true))
	&& (!collision_line(x,y,x+moveX,y-moveX+1,obj_block,false,true)) //no blocks in our way
	&& (stop4 = 0)
	        {
					y-= moveX;
	                x+= moveX;
					
					stop4 = 1;
	        } 
       
        
         
	//going down from left slope to block-getting there
	if ((position_meeting(bbox_right,bbox_bottom,obj_slope1_left)) or (position_meeting(bbox_right,bbox_bottom+1,obj_slope1_left)))
	&& (!place_meeting(x,y+1,obj_block)) 
	&& (!place_meeting(x+(moveX),y-(moveX)+1,obj_slope1_left)) 
	&& ((place_meeting(x+(moveX),y-(moveX)+1,obj_block)) 
	or (collision_line(x,bbox_bottom,x+moveX,bbox_bottom-(moveX)+1,obj_block,false,true)))
	&& (!position_meeting(bbox_left-1,bbox_top,obj_block))
	&& (stop4 = 0)
	   {
	                while ((position_meeting(bbox_right,bbox_bottom,obj_slope1_left)) or (position_meeting(bbox_right,bbox_bottom+1,obj_slope1_left))) 
					&& (!place_meeting(x,y+1,obj_block)) 
					&& (!position_meeting(bbox_left-1,bbox_top,obj_block))
					&& (hspdCounter > 0)
	                {    
		                x = floor(x) + sign(moveX);
		                y = floor(y) - sign(moveX);
						
						hspdCounter--;
	                }
					
					//stop4 = 1;
	   }
	   
	//going down left slope to block-getting there
	if (position_meeting(bbox_right+1,bbox_bottom,obj_slope1_left)) 
	&& (place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) 
	&& (!place_meeting(x+(moveX),y-(moveX)+1,obj_slope1_left)) 
	&& (stop4 = 0)
	{    
		if (-hspdCounter == moveX)
		{
			x = (x) + (moveX);
		}
		else if (-hspdCounter != moveX)
		{
			x = (x) + (moveX)+(abs(moveX)-hspdCounter);
		}
		
		stop4 = 1;
	}

	//while loop for going down from block to left slope
	if (place_meeting(x,y+2,obj_block)) 
	&& ((place_meeting(x+(moveX),y-(moveX)+1,obj_slope1_left)) or (collision_line(x,bbox_bottom,x+(moveX),bbox_bottom-(moveX)+1,obj_slope1_left,false,true)))
	&& (!place_meeting(x+(moveX),y-(moveX)+1,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom-(moveX)+1,obj_block,false,true))
	&& (!position_meeting(bbox_right,bbox_bottom+1,obj_slope1_left))
	&& (stop4 = 0)
	   {
	                while (!position_meeting(bbox_right,bbox_bottom+1,obj_slope1_left))
					&& (hspdCounter > 0)
	                {    
						x = floor(x) + sign(moveX);
						
						stop4 = 1;
						
						hspdCounter--;
	                }
					
					if (position_meeting(bbox_right,bbox_bottom+1,obj_slope1_left)) && (position_meeting(bbox_right+1,bbox_bottom+1,obj_block))
					&& (!place_meeting(x+(moveX),y,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_block,false,true))
					&& (!place_meeting(x+2,y,obj_slope1_left))
					&& (stop4 = 0)
	                {    
						x = (x) + (moveX);
		                y = (y) - (moveX);
	                }
					
					stop4 = 1;
	   }
   
	//push off fully away from block down onto newslope
	if (position_meeting(bbox_right,bbox_bottom+2,obj_slope1_left)) && (position_meeting(bbox_right+1,bbox_bottom+2,obj_block))
	&& (!place_meeting(x+(moveX),y,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_block,false,true))
	&& (!place_meeting(x+2,y,obj_slope1_left))
	&& (stop4 = 0)
	                {    
						x = (x) + (moveX);
		                y = (y) - (moveX);
						
						stop4 = 1;
	                }
        
  
	//right slopes
	//////////////////////////////////////////////Going up

	if ((place_meeting(x+(moveX),y,obj_slope1_right)) or (collision_line(x,bbox_bottom,x+(moveX),bbox_bottom,obj_slope1_right,false,true)))
	&& (place_meeting(x,y+2,obj_slope1_right))
	&& ((place_meeting(x+(moveX),y+(moveX)+2,obj_slope1_right)) or (collision_line(x,bbox_bottom,x+(moveX),bbox_bottom+(moveX)+2,obj_slope1_right,false,true)))
	&& (!collision_line(x,y,x+moveX,y+moveX,obj_block,false,true)) //no blocks in our way
	&& (!place_meeting(x+moveX,y+moveX,obj_block))
	&& (stop4 = 0)
	        {
	                y+= moveX;
	                x+= moveX;
					
					stop4 = 1;
	        } 
        

	//going up from right slope to block
	if ((place_meeting(x+(moveX),y,obj_block)) or (collision_line(x,bbox_bottom,x+(moveX),bbox_bottom,obj_block,false,true)))
	&& (place_meeting(x,y+2,obj_slope1_right))
	&& (!place_meeting(x+(moveX),y+(moveX)+1,obj_slope1_right))
	&& (stop4 = 0)
	        {
	                while ((place_meeting(x+(moveX),y,obj_slope1_right)) or (collision_line(x,bbox_bottom,x+(moveX),bbox_bottom,obj_slope1_right,false,true)))
					&& (place_meeting(x,y+2,obj_slope1_right)) 
					&& ((place_meeting(x+(moveX),y,obj_block)) or (collision_line(x,bbox_bottom,x+(moveX),bbox_bottom,obj_block,false,true)))
					&& (hspdCounter > 0)
	                {
		                x = floor(x) + sign(moveX);
		                y = floor(y) + sign(moveX);
						
						hspdCounter--;
	                }
					
					//stop4 = 1;
	        }
		
	if (!place_meeting(x+(moveX),y,obj_slope1_right)) && (!collision_line(x,bbox_bottom,x+(moveX),bbox_bottom,obj_slope1_right,false,true))
	&& (position_meeting(bbox_left,bbox_bottom+1,obj_slope1_right))
	&& (!place_meeting(x+moveX,y+moveX,obj_block)) && (!collision_line(x,bbox_bottom,x+(moveX),bbox_bottom+moveX,obj_block,false,true)) //new line of code
	&& (stop4 = 0)
	{
		if (-hspdCounter == moveX)
		{
			x = (x) + (moveX);
		}
		else if (-hspdCounter != moveX)
		{
			x = (x) + (moveX)+(abs(moveX)-hspdCounter);
		}
				
		stop4 = 1;
	}
		
		
		
	//going up block to right slope
	if ((place_meeting(x+(moveX),y,obj_slope1_right)) or (collision_line(x,bbox_bottom,x+(moveX),bbox_bottom,obj_slope1_right,false,true)))
	&& (!place_meeting(x+moveX,y,obj_block)) && (!collision_line(x,bbox_bottom,x+(moveX),bbox_bottom,obj_block,false,true))
	&& (place_meeting(x,y+2,obj_block))
	&& (stop4 = 0)
	        {
	                if (!place_meeting(x-1,y,obj_slope1_right)) 
					&& (!place_meeting(x+moveX,y,obj_block)) && (!collision_line(x,bbox_bottom,x+(moveX),bbox_bottom,obj_block,false,true)) 
					&& ((place_meeting(x+(moveX),y,obj_slope1_right)) or (collision_line(x,bbox_bottom,x+(moveX),bbox_bottom,obj_slope1_right,false,true)))
					&& (stop4 = 0)
	                {    
						x = (x) + (moveX);
						
						stop4 = 1;
	                }
					if (place_meeting(x-1,y,obj_slope1_right)) 
					&& (!place_meeting(x+moveX,y,obj_block)) && (!collision_line(x,bbox_bottom,x+(moveX),bbox_bottom,obj_block,false,true))
					&& (stop4 = 0)
	                {    
						x = (x) + (moveX);
						y = (y) + (moveX);
						
						stop4 = 1;
	                }
					
					
	        }        
        

        
        
        
              
        
        
 
        
        
	////////////////////////////////////////////going forward   

	//normal collision block
	if ((place_meeting(x+moveX,y+moveX,obj_block)) or (collision_line(x,bbox_bottom,x+moveX,bbox_bottom+moveX,obj_block,false,true)))
	&& (!place_meeting(x+moveX,y,obj_slope1_left)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_slope1_left,false,true)) 
	&& (!place_meeting(x+moveX,y,obj_slope1_right)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_slope1_right,false,true)) 
	&& (stop4 == 0)
	            {
	                //on ground
					while (!place_meeting(x+sign(moveX),y,obj_block)) 
					&& (place_meeting(x+moveX,y,obj_block)) 
					&& (!place_meeting(x+moveX,y,obj_slope1_left)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_slope1_left,false,true)) 
					&& (!place_meeting(x+moveX,y,obj_slope1_right)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_slope1_right,false,true))
					&& ((place_meeting(x,y+1,obj_block)) or (place_meeting(x+sign(moveX),y,obj_slope1_left)) or (place_meeting(x+sign(moveX),y,obj_slope1_right)))
	                {
	                    if (place_meeting(x,y+1,obj_slope1_left))
						{
							x = floor(x) + sign(moveX);
							y = floor(y) + sign(moveX);
						}
						else if (place_meeting(x,y+1,obj_slope1_right))
						{
							x = floor(x) + sign(moveX);
							y = floor(y) - sign(moveX);
						}
						else x = floor(x) + sign(moveX);
	                }
					
					//if touching block
	                if ((place_meeting(x+sign(moveX),y,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right)))
	                {
						moveX = 0;
					}
	            }
				
	//slope & normal collision block - if block detected and going up/down slope almost touching it
	if ((place_meeting(x+moveX,y+moveX,obj_block)) 
	or (collision_line(x,bbox_bottom,x+moveX,bbox_bottom+moveX,obj_block,false,true)))
	&& (((collision_line(x,bbox_bottom,x-moveX,bbox_bottom,obj_slope1_left,false,true)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_slope1_right,false,true))) //are we on slope currently and not at the top of any slopes (using x only if hit a slope if so)
	or ((collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_slope1_right,false,true)) && (!collision_line(x,bbox_bottom,x-moveX,bbox_bottom,obj_slope1_left,false,true)))
	or ((collision_line(x,bbox_bottom,x-moveX,bbox_bottom,obj_newslope_left,false,true)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_newslope_right,false,true)))
	or ((collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_newslope_right,false,true)) && (!collision_line(x,bbox_bottom,x-moveX,bbox_bottom,obj_newslope_left,false,true))))
	&& (stop4 == 0)
	{
	    while (!place_meeting(x+sign(moveX),y,obj_block)) 
	    {
	        if (place_meeting(x,y+1,obj_slope1_left))
			{
				x = floor(x) + sign(moveX);
				y = floor(y) - sign(moveX);
			}
			else if (place_meeting(x,y+1,obj_slope1_right))
			{
				x = floor(x) + sign(moveX);
				y = floor(y) + sign(moveX);
			}
			else x = floor(x) + sign(moveX);
			
			stop4 = 1;
	    }
	}
				
				
				
				

	
	//if on top of block, about to move onto thin air
	if (!place_meeting(x+(moveX),y,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_block,false,true)) //no blocks to the side of us 
	&& (!place_meeting(x+(moveX),y-moveX,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom-moveX,obj_block,false,true)) //no blocks diagonally below us
	&& (!position_meeting(bbox_right+(moveX),bbox_bottom+1,obj_block))  //no block under us along our current path
	&& (place_meeting(x,y+1,obj_block)) //already standing on a block
	&& (!place_meeting(x-moveX,y,obj_slope1_left)) && (!collision_line(x,bbox_bottom,x-moveX,bbox_bottom,obj_slope1_left,false,true))  //no slopes involved
	&& (!place_meeting(x+moveX,y,obj_slope1_right)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_slope1_right,false,true))  //no slopes involved
	&& (!place_meeting(x+1,y,obj_slope1_left))
	&& (!place_meeting(x-1,y,obj_slope1_right))
	&& (stop4 == 0)
	{
		//before object is standing only 1 pixel remaining on block's edge, move object closer.
		while (position_meeting(bbox_right+sign(moveX),bbox_bottom+1,obj_block)) 
		&& (place_meeting(x,y+1,obj_block))
		&& (!place_meeting(x+(moveX),y,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_block,false,true)) //no blocks to the side of us 
		&& (!place_meeting(x+(moveX),y-moveX,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom-moveX,obj_block,false,true)) //no blocks diagonally below us
		&& (moveX != 0)
		{
			x += sign(moveX);
		}
		
		//if character is supposed to be able to run off block edges
		if (variable_instance_exists(self,"jump_speed"))
		{
			if (!position_meeting(bbox_right+sign(moveX),bbox_bottom+1,obj_block)) 
			&& (place_meeting(x,y+1,obj_block))
			&& (!place_meeting(x+(moveX),y,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_block,false,true)) //no blocks to the side of us 
			&& (!place_meeting(x+(moveX),y-moveX,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom-moveX,obj_block,false,true)) //no blocks diagonally below us
			&& (moveX != 0)
			{
				x += (moveX);
			}
		}
		
		//stop object at exactly 1 pixel remaining on block edge
		if (!position_meeting(bbox_right+sign(moveX),bbox_bottom+1,obj_block)) && (position_meeting(bbox_right,bbox_bottom+1,obj_block))
		&& (place_meeting(x,y+1,obj_block))
		&& (!place_meeting(x+(moveX),y,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_block,false,true)) //no blocks to the side of us 
		&& (!place_meeting(x+(moveX),y-moveX,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom-moveX,obj_block,false,true)) //no blocks diagonally below us
		&& (moveX != 0)
		{
			moveX = 0;	
		}
	}

	//if there's nothing there, you're moving and you're on top of a collision block
	if (!place_meeting(x+(moveX),y,obj_block)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_block,false,true)) 
	&& (!place_meeting(x+moveX,y,obj_slope1_right)) && (!collision_line(x,bbox_bottom,x+moveX,bbox_bottom,obj_slope1_right,false,true))
	&& (!place_meeting(x+1,y,obj_slope1_left))
	&& (!place_meeting(x-1,y,obj_slope1_right))
	&& (place_meeting(x,y+2,obj_block)) 
	&& (stop4 = 0)
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
	&& (!place_meeting(x,y+1,obj_block)) //no block underneath
	&& (!place_meeting(x,y-1,obj_block)) //no block above
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
		&& (!place_meeting(x,y+1,obj_block)) //no block underneath
		&& (!place_meeting(x,y-1,obj_block)) //no block above
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
