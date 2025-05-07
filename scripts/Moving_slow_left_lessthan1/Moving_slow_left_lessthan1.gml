function Moving_slow_left_lessthan1() {
	//stop4 makes sure only 1 code segment gets to run
	var stop4 = 0;
	
	var moveX = (hspd)
	var moveY = ((hspd)/2)
	
	
	var subspeed = 0	
	
	
	
	//NEW SLOPES
	var totalHSPD = (hspd)
	var totalHSPD2 = ((hspd)/2)
	
	var subspeed = 0
	
	

	//accounting for hspd_enemy if exists
	if (variable_instance_exists(self,"hspd_enemy"))
	{
		var moveX = (hspd+hspd_enemy)
		var moveY = ((hspd+hspd_enemy)/2)
		var totalHSPD = (hspd+hspd_enemy)
		var totalHSPD2 = ((hspd+hspd_enemy)/2)
	}
	
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
			Moving_newslope_left_lessthan1()	
		}
		else if (totalHSPD > 0)
		{
			Moving_newslope_right_lessthan1()	
		}
		
		exit;
	}



	
	
	
	
	///left slopes
	///////////////////////////////////////////////////////going down

	//going down left slope
	if (place_meeting((x)+2,(y),obj_slope1_left))
	&& (!place_meeting((x)-3,(y)+2,obj_block))
	&& (stop4 == 0)
	        {
					y-= moveX;
	                x+= moveX;
					
					stop4 = 1;
	        } 
       
        
         
	//going down from left slope to block-getting there
	if ((position_meeting(bbox_right+1,bbox_bottom,obj_slope1_left)) or (position_meeting(bbox_right+1,bbox_bottom+1,obj_slope1_left)))
	&& (!place_meeting((x),(y)+1,obj_block))
	&& (!place_meeting((x)-3,(y)+2,obj_slope1_left))
	&& (place_meeting((x)-2,(y)+3,obj_block))
	&& (stop4 == 0)
	   {
	                if ((position_meeting(bbox_right+1,bbox_bottom,obj_slope1_left)) or (position_meeting(bbox_right+1,bbox_bottom+1,obj_slope1_left)))
					&& (!place_meeting((x),(y)+1,obj_block))
					&& (!place_meeting((x)-3,(y)+2,obj_slope1_left)) && (place_meeting((x)-2,(y)+3,obj_block))
	                {    
		                x += moveX;
						y -= moveX; // +
						
						stop4 = 1;
	                }
	   }
	else if ((position_meeting(bbox_right+1,bbox_bottom,obj_slope1_left)) or (position_meeting(bbox_right+1,bbox_bottom+1,obj_slope1_left)))
	&& (place_meeting((x),(y)+1,obj_block))
	&& (!place_meeting((x)-3,(y)+2,obj_slope1_left))
	&& (place_meeting((x)-2,(y)+3,obj_block))
	&& (stop4 == 0)
	{
		x += moveX;
		
		stop4 = 1;
	}
 

   
	//while loop for going down from block to left slope
	if (!place_meeting((x)-1,(y)+1,obj_block))
	&& ((!position_meeting(bbox_right+1,bbox_bottom+1,obj_slope1_left)) or (!position_meeting(bbox_right+2,bbox_bottom+1,obj_slope1_left))) //check 2 pixels behind us, if either one isn't a slope, then continue
	&& (!position_meeting(bbox_right+1,bbox_bottom,obj_slope1_left)) 
	&& (!position_meeting(bbox_right+1,bbox_bottom-1,obj_slope1_left))
	&& ((position_meeting(bbox_right,bbox_bottom+1,obj_slope1_left)) or (position_meeting(bbox_right,bbox_bottom+2,obj_slope1_left)) //check 2 pixels below our bottom right corner
	or (position_meeting(bbox_right-1,bbox_bottom+1,obj_slope1_left)) or (position_meeting(bbox_right-1,bbox_bottom+2,obj_slope1_left))) //for the subpixels- check 2 pixels below and 1 pixel across from our bottom right corner
	&& ((position_meeting(bbox_right+1,bbox_bottom+1,obj_block)) or (position_meeting(bbox_right+2,bbox_bottom+1,obj_block))) //check 2 pixels behind us, if either one is a block, then continue
	&& (stop4 == 0)
	   {
	        x += moveX;
			y -= moveX; // +
			
			stop4 = 1;
	   }
	else if (!place_meeting((x)-1,(y)+1,obj_block))
	&& (!position_meeting(bbox_right,bbox_bottom+1,obj_slope1_left))
	&& (!position_meeting(bbox_right+1,bbox_bottom,obj_slope1_left))
	&& (position_meeting(bbox_right-1,bbox_bottom+1,obj_slope1_left))
	&& (position_meeting(bbox_right,bbox_bottom+1,obj_block))
	&& (stop4 == 0)
	   {
	        x += moveX;
			
			stop4 = 1;
	   }
        
  
	//right slopes
	//////////////////////////////////////////////Going up

	if ((place_meeting((x)-2,(y),obj_slope1_right)) or (place_meeting((x)-1,(y),obj_slope1_right)))
	&& (!place_meeting((x),(y)+1,obj_block))
	&& ((position_meeting(bbox_left-2,bbox_bottom-1,obj_slope1_right)) or (position_meeting(bbox_left-2,bbox_bottom,obj_slope1_right)))
	&& (stop4 == 0)
	        {
	                y+= moveX; //-
	                x+= moveX;
					
					stop4 = 1;
	        } 
        

	//going up from right slope to block 2
	if (place_meeting((x)-2,(y),obj_slope1_right)) && (place_meeting((x)-2,(y),obj_block))
	&& (position_meeting(bbox_left,bbox_bottom+1,obj_slope1_right)) && (!position_meeting(bbox_left-1,bbox_bottom+1,obj_block))
	&& (!position_meeting(bbox_left-2,bbox_bottom-1,obj_slope1_right))
	&& (stop4 == 0)
	        {
	                if (place_meeting((x)-2,(y),obj_slope1_right)) && (place_meeting((x)-2,(y),obj_block))
					&& (position_meeting(bbox_left,bbox_bottom+1,obj_slope1_right)) && (!position_meeting(bbox_left-1,bbox_bottom+1,obj_block))
					&& (!position_meeting(bbox_left-2,bbox_bottom-1,obj_slope1_right))
					&& (stop4 == 0)
	                {
		                x += moveX;
		                y+= moveX; //-
						
						stop4 = 1;
	                }
	        }
		

	//moving from a right slope to a block, then fully onto a block
	if (!place_meeting((x)-2,(y),obj_slope1_right)) && (!place_meeting((x)-2,(y),obj_block))
	&& (place_meeting((x),(y)+2,obj_slope1_right)) && (position_meeting(bbox_left-2,bbox_bottom+2,obj_block))
	&& (place_meeting(bbox_left,bbox_bottom+2,obj_slope1_right))
	&& (!position_meeting(bbox_left-2,bbox_bottom-1,obj_slope1_right)) && (!position_meeting(bbox_left-2,bbox_bottom,obj_slope1_right))
	&& (stop4 == 0)
	        {
				x += moveX;
				
				stop4 = 1;
	        }
		

		
	//going up block to right slope
	if (place_meeting((x)-2,(y),obj_slope1_right)) && (!place_meeting((x),(y)+2,obj_slope1_right))
	&& (!place_meeting((x)-2,(y),obj_block)) && (place_meeting(x,(y)+1,obj_block))
	&& (stop4 == 0)
	        {
	                //not yet touching slope
					if (place_meeting((x)-2,(y),obj_slope1_right)) && (!place_meeting((x),(y)+2,obj_slope1_right))
					&& (!place_meeting((x)-2,(y),obj_block)) && (place_meeting(x,(y)+1,obj_block))
					&& (!place_meeting((x)+moveX,(y),obj_slope1_right))
					&& (stop4 == 0)
	                {    
						x += moveX;
						
						stop4 = 1;
	                }
					else if (place_meeting((x)+moveX,(y),obj_slope1_right)) && (!place_meeting((x),(y)+2,obj_slope1_right))
					&& (!place_meeting((x)-2,(y),obj_block)) && (place_meeting(x,(y)+1,obj_block))
					&& (stop4 == 0)
	                {    
		                x += moveX;
		                y += moveX; //up
						
						stop4 = 1;
	                }
	        }        
        
        
        




	//normal collision block
	if ((place_meeting(x+moveX,y+moveX,obj_block)) or (place_meeting(x+(sign(moveX)*2),y,obj_block))) 
	&& (!place_meeting(x+moveX,y,obj_slope1_left)) && (!place_meeting(x+moveX,y,obj_slope1_right))
	&& (stop4 == 0)
	{
	    while (!place_meeting(x+sign(moveX),y,obj_block)) 
		&& ((place_meeting(x+moveX,y,obj_block)) or (place_meeting(x+(sign(moveX)*2),y,obj_block)))
		&& (!place_meeting(x+moveX,y,obj_slope1_left)) && (!place_meeting(x+moveX,y,obj_slope1_right))
		&& ((position_meeting(x,y+1,obj_block)) or (place_meeting(x+sign(moveX),y,obj_slope1_left)) or (place_meeting(x+sign(moveX),y,obj_slope1_right)))
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
						
			stop4 = 1;
	    }
	    if ((place_meeting(x+sign(moveX),y,obj_block)) 
		&& (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right)))
	    {
			moveX = 0;
						
			stop4 = 1;
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
	if (!place_meeting(x+(moveX),y,obj_block)) //no blocks to the side of us 
	&& (!place_meeting(x+(moveX),y-moveX,obj_block)) //no block under us along our current path
	&& (!position_meeting(bbox_left+moveX,bbox_bottom-moveX+1,obj_block))  //no block under us along our current path
	&& (!position_meeting(bbox_left+(sign(moveX)),bbox_bottom+2,obj_block))  //no block under us along our current path
	&& (place_meeting(x,y+2,obj_block)) //already standing on a block
	&& (!place_meeting(x,y+2,obj_slope1_left))
	&& (!place_meeting(x,y+2,obj_slope1_right))
	&& (!place_meeting(x,y+2,obj_newslope_left))
	&& (!place_meeting(x,y+2,obj_newslope_right))
	&& (!place_meeting(x-moveX,y,obj_slope1_left)) && (!place_meeting(x+moveX,y,obj_slope1_right)) //no slopes involved
	&& (!place_meeting(x-moveX,y-moveX+1,obj_slope1_left)) && (!place_meeting(x+moveX,y-moveX+1,obj_slope1_right)) //no slopes involved
	&& (!place_meeting(x-moveX,y-moveX+1,obj_newslope_left)) && (!place_meeting(x+moveX,y-moveX+1,obj_newslope_right)) //no slopes involved
	&& (!place_meeting(x+(sign(moveX)),y-(sign(moveX))+1,obj_slope1_left)) && (!place_meeting(x-(sign(moveX)),y-(sign(moveX))+1,obj_slope1_right)) //no slopes involved
	&& (!place_meeting(x+(sign(moveX)),y-(sign(moveX))+1,obj_newslope_left)) && (!place_meeting(x-(sign(moveX)),y-(sign(moveX))+1,obj_newslope_right)) //no slopes involved
	&& (!place_meeting(x+2,y,obj_slope1_left))
	&& (!place_meeting(x-2,y,obj_slope1_right))
	&& (stop4 == 0)
	{
		//before object is standing only 1 pixel remaining on block's edge, move object closer.
		while (position_meeting(bbox_left+sign(moveX),bbox_bottom+1,obj_block)) 
		&& (place_meeting(x,y+2,obj_block))
		&& (!place_meeting(x+(sign(moveX)),y-(sign(moveX)),obj_block))
		&& (!position_meeting(bbox_left+moveX,bbox_bottom-moveX+1,obj_block))  //no block under us along our current path
		&& (!position_meeting(bbox_left+(sign(moveX)),bbox_bottom+2,obj_block))  //no block under us along our current path
		{
			x += sign(moveX);
			
			stop4 = 1;
		}
		
		//stop object at exactly 1 pixel remaining on block edge
		if (!position_meeting(bbox_left+sign(moveX),bbox_bottom+1,obj_block)) && (position_meeting(bbox_left,bbox_bottom+1,obj_block))
		&& (place_meeting(x,y+2,obj_block))
		&& (!position_meeting(bbox_left,bbox_bottom+1,obj_slope1_left))
		&& (!position_meeting(bbox_left,bbox_bottom+1,obj_slope1_right))
		&& (!position_meeting(bbox_left+sign(moveX),bbox_bottom+1-sign(moveX),obj_slope1_left))
		&& (!position_meeting(bbox_left+sign(moveX),bbox_bottom+1-sign(moveX),obj_slope1_right))
		&& (!position_meeting(bbox_left,bbox_bottom+1,obj_newslope_left))
		&& (!position_meeting(bbox_left,bbox_bottom+1,obj_newslope_right))
		&& (!position_meeting(bbox_left+sign(moveX),bbox_bottom+1-sign(moveX),obj_newslope_left))
		&& (!position_meeting(bbox_left+sign(moveX),bbox_bottom+1-sign(moveX),obj_newslope_right))
		{
			moveX = 0;	
			
			stop4 = 1;
		}
	}



///////////////////////////////////////////MOVE FORWARD



	//if there's nothing there, you're moving and you're on top of a collision block
	if (!place_meeting((x)+sign(moveX),(y),obj_block)) && (!place_meeting((x)-2,(y),obj_slope1_left)) && (!place_meeting((x)-2,(y),obj_slope1_right))
	&& (!place_meeting((x)+1,(y),obj_slope1_left))
	&& (!place_meeting((x)-1,(y),obj_slope1_right))
	&& (place_meeting((x),(y)+2,obj_block)) 
	&& (!place_meeting(x+(moveX),y,obj_block))
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
