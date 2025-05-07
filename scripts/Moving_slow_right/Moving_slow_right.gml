function Moving_slow_right() {
	var stop4 = 0;


	//left slopes
	//////////////////////////////////////////////Going up

	//going up left slope
	if (place_meeting(x+1+hspd,y,obj_slope1_left)) && (place_meeting(x+(hspd)+1,y+(hspd)+1,obj_slope1_left)) && (place_meeting(x,y+1+hspd,obj_slope1_left))
	        {
	                y-= hspd;
	                x+= hspd;
	        } 
        

	//going up from left slope to block 2
	if (place_meeting(x+sign(hspd)+hspd,y,obj_block)) && (place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x+sign(hspd)+hspd,y-sign(hspd)+1,obj_slope1_left))
	        {
	                while (place_meeting(x+sign(hspd)+hspd,y,obj_slope1_left)) && (place_meeting(x,y+1,obj_slope1_left))
	                {
		                x = floor(x) + sign(hspd);
		                y = floor(y) - sign(hspd);
	                }
	        }
		
	if (!place_meeting(x+sign(hspd)+hspd,y,obj_slope1_left)) && (position_meeting(bbox_right,bbox_bottom+1,obj_slope1_left))
			{
				x = floor(x) + sign(hspd);
			}

	/*        
	//going up left slope to block-getting there
	if (place_meeting(x+hspd,y,obj_slope1_left)) && (!place_meeting(x,y+1,obj_block)) && (place_meeting(x+hspd,y+hspd,obj_block)) && (place_meeting(x,y+1,obj_slope1_left))
	   {   
			x += 1;
			y -= 1;
	   }
   
	if (!place_meeting(x+hspd,y,obj_slope1_left)) && (place_meeting(x,y+1,obj_block)) && (place_meeting(x,y+1,obj_slope1_left))
	   {   
			x += hspd;
	   }
	 */      
        
        
	//going up block to right slope
	if (place_meeting(x+1+hspd,y,obj_slope1_left)) && (!place_meeting(x+sign(hspd),y,obj_block)) && (place_meeting(x,y+1,obj_block))
	        {
	                if (!place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x+sign(hspd),y,obj_block)) && (place_meeting(x+1+hspd,y,obj_slope1_left))
	                {    
						x = floor(x) + sign(hspd);
	                }
					if (place_meeting(x+1+hspd,y,obj_slope1_left)) && (!place_meeting(x+sign(hspd),y,obj_block))
	                {    
		                x = floor(x) + sign(hspd);
		                y = floor(y) - sign(hspd);
	                }
	        } 


        
	///right slopes
	///////////////////////////////////////////////////////going down

	//going down right slope
	if (place_meeting(x-1-hspd,y,obj_slope1_right)) && (!place_meeting(x+sign(hspd),y+sign(hspd),obj_block)) && (!place_meeting(x+sign(hspd),y,obj_block)) && (!place_meeting(x+sign(hspd),y+sign(hspd),obj_block))
	        {

	                y+= hspd;
	                x+= hspd;    
	        } 
	//going down from right slope to block-getting there
	if (position_meeting(bbox_left,bbox_bottom+1,obj_slope1_right)) && (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x+sign(hspd),y+sign(hspd),obj_slope1_right)) && (place_meeting(x+sign(hspd),y+sign(hspd),obj_block))
	   {
	                while (position_meeting(bbox_left,bbox_bottom+1,obj_slope1_right)) && (!place_meeting(x,y+1,obj_block))
	                {    
		                x = floor(x) + sign(hspd);
		                y = floor(y) + sign(hspd);
	                }
	   }
	//going down right slope to block-getting there
	if (position_meeting(bbox_left-1,bbox_bottom,obj_slope1_right)) && (place_meeting(x,y+1,obj_block)) && (!place_meeting(x+sign(hspd),y+sign(hspd),obj_slope1_right))
	{    
		x = floor(x) + sign(hspd);
	}


	//while loop for going down from block to right slope
	if (place_meeting(x,y+1,obj_block)) && (place_meeting(x+sign(hspd)+hspd,y+sign(hspd)+hspd,obj_slope1_right)) && (!place_meeting(x+sign(hspd)+hspd,y+sign(hspd)+hspd,obj_block))
	&& (!position_meeting(bbox_left,bbox_bottom+1,obj_slope1_right))
	   {
	                while (!position_meeting(bbox_left,bbox_bottom+1,obj_slope1_right))
	                {    
						x = floor(x) + sign(hspd);
	                }
	   }
   
	if (position_meeting(bbox_left,bbox_bottom+1,obj_slope1_right)) && (position_meeting(bbox_left-1,bbox_bottom+1,obj_block)) && (!place_meeting(x+sign(hspd)+hspd,y,obj_block)) && (place_meeting(x+sign(hspd)+hspd,y+sign(hspd)+hspd,obj_slope1_right))
	                {    
		                x = floor(x) + sign(hspd);
		                y = floor(y) + sign(hspd);
	                }
        
        
        
        

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
	////////////////////////////////////////////going forward        

	//normal collision block
	if (place_meeting(x+sign(hspd),y,obj_block)) && (!place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x-1,y,obj_slope1_left))
	            {
	                while (!place_meeting(x+sign(hspd),y,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
					 && !((place_meeting(x+sign(hspd),y+sign(hspd),obj_slope1_right)))
					  && ((position_meeting(x,y+((bbox_bottom-bbox_top)/2),obj_block)) or (place_meeting(x+sign(hspd),y,obj_slope1_left)) or (place_meeting(x+sign(hspd),y,obj_slope1_right)))
	                {
	                    x = floor(x) + sign(hspd);
	                }
	                if ((place_meeting(x+sign(hspd),y,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right)))
	                {
						hspd = 0;
					}
	            }
            

	//empty jump
	if (!place_meeting(x+sign(hspd),y+1,obj_block)) && (!place_meeting(x+sign(hspd),y,obj_slope1_left)) && (!place_meeting(x-sign(hspd),y,obj_slope1_left))
	 && (!place_meeting(x+sign(hspd),y,obj_slope1_right)) && (!place_meeting(x-sign(hspd),y,obj_slope1_right))
	{
	                while(!place_meeting(x+sign(hspd),y+1,obj_block)) && (!place_meeting(x+sign(hspd),y,obj_slope1_left)) && (!place_meeting(x-sign(hspd),y,obj_slope1_left))
	                 && (!place_meeting(x+sign(hspd),y,obj_slope1_right)) && (!place_meeting(x-sign(hspd),y,obj_slope1_right)) && (!place_meeting(x,y+1,obj_slope1_left))
					  && (!place_meeting(x,y+1,obj_slope1_right))
					   && ((position_meeting(x,y+((bbox_bottom-bbox_top)/2)+1,obj_block)) or (place_meeting(x+hspd,y,obj_slope1_left)) or (place_meeting(x+sign(hspd),y,obj_slope1_right)))
	                {
						x = floor(x) + sign(hspd);
	                }                
	                if (!position_meeting(x,y+((bbox_bottom-bbox_top)/2)+1,obj_block)) && (!place_meeting(x+1+(hspd),y,obj_slope1_left)) && (!place_meeting(x-1-(hspd),y,obj_slope1_right))
					{
						hspd = 0;
	                }
	}



	//if there's nothing there, you're moving and you're on top of a collision block
	if (!place_meeting(x+sign(hspd),y,obj_block)) && (!place_meeting(x+sign(hspd),y,obj_slope1_left)) && (!place_meeting(x+sign(hspd),y,obj_slope1_right))
	 && (!place_meeting(x+1,y,obj_slope1_left))
	 && (!place_meeting(x-1,y,obj_slope1_right))
	 && (place_meeting(x,y+1,obj_block)) && (stop4 = 0)
	            {
	                x += hspd;
	            }



}
