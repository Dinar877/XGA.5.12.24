function Moving_wind_left() {
	var stop4 = 0;
	///left slopes
	///////////////////////////////////////////////////////going down

	//going down left slope
	if (place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x+hspd-hspd_enemy,y-(hspd-hspd_enemy),obj_block)) && (!place_meeting(x+1,y,obj_block)) && (hspd-hspd_enemy < 0)
	        {
					y-= hspd-hspd_enemy;
	                x+= hspd-hspd_enemy;
	        } 
       
        
         
	//going down from left slope to block-getting there
	if (position_meeting(bbox_right,bbox_bottom+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x+(hspd-hspd_enemy),y-(hspd-hspd_enemy),obj_slope1_left)) && (place_meeting(x+(hspd-hspd_enemy),y-(hspd-hspd_enemy),obj_block))
	&& (!position_meeting(bbox_left-1,bbox_top,obj_block))
	   {
	                while (position_meeting(bbox_right,bbox_bottom+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_block)) && (!position_meeting(bbox_left-1,bbox_top,obj_block))
	                {    
		                x = floor(x) + sign(hspd-hspd_enemy);
		                y = floor(y) - sign(hspd-hspd_enemy);
	                }
	   }
	//going down left slope to block-getting there
	if (position_meeting(bbox_right+1,bbox_bottom,obj_slope1_left)) && (place_meeting(x,y+1,obj_block)) && (!place_meeting(x+(hspd-hspd_enemy),y-(hspd-hspd_enemy),obj_slope1_left))
	{    
		x = floor(x) + (hspd-hspd_enemy);
	}

	//while loop for going down from block to left slope
	if (place_meeting(x,y+1,obj_block)) && (place_meeting(x+(hspd-hspd_enemy),y-(hspd-hspd_enemy),obj_slope1_left)) && (!place_meeting(x+(hspd-hspd_enemy),y-(hspd-hspd_enemy),obj_block))
	&& (!position_meeting(bbox_right,bbox_bottom+1,obj_slope1_left))
	   {
	                while (!position_meeting(bbox_right,bbox_bottom+1,obj_slope1_left))
	                {    
						x = floor(x) + sign(hspd-hspd_enemy);
	                }
	   }
   
	if (position_meeting(bbox_right,bbox_bottom+1,obj_slope1_left)) && (position_meeting(bbox_right+1,bbox_bottom+1,obj_block))
	&& (!place_meeting(x+(hspd-hspd_enemy),y,obj_block)) && (!place_meeting(x+1,y,obj_slope1_left))
	                {    
						x = floor(x) + (hspd-hspd_enemy);
		                y = floor(y) - (hspd-hspd_enemy);
	                }
        
  
	//right slopes
	//////////////////////////////////////////////Going up

	if (place_meeting(x+(hspd-hspd_enemy),y,obj_slope1_right)) && (place_meeting(x,y+1,obj_slope1_right)) && (place_meeting(x+(hspd-hspd_enemy),y+(hspd-hspd_enemy)+1,obj_slope1_right))
	        {
	                y+= hspd-hspd_enemy;
	                x+= hspd-hspd_enemy;
	        } 
        

	//going up from left slope to block 2
	if (place_meeting(x+(hspd-hspd_enemy),y,obj_block)) && (place_meeting(x,y+1,obj_slope1_right)) && (!place_meeting(x+(hspd-hspd_enemy),y+(hspd-hspd_enemy)+1,obj_slope1_right))
	        {
	                while (place_meeting(x+(hspd-hspd_enemy),y,obj_slope1_right)) && (place_meeting(x,y+1,obj_slope1_right)) && (place_meeting(x+(hspd-hspd_enemy),y,obj_block))
	                {
		                x = floor(x) + sign(hspd-hspd_enemy);
		                y = floor(y) + sign(hspd-hspd_enemy);
	                }
	        }
		
	if (!place_meeting(x+(hspd-hspd_enemy),y,obj_slope1_right)) && (position_meeting(bbox_left,bbox_bottom+1,obj_slope1_right))
			{
				x = floor(x) + (hspd-hspd_enemy);
			}
		
	//going up block to right slope
	if (place_meeting(x+(hspd-hspd_enemy),y,obj_slope1_right)) && (!place_meeting(x+(hspd-hspd_enemy),y,obj_block)) && (place_meeting(x,y+1,obj_block))
	        {
	                if (!place_meeting(x-1,y,obj_slope1_right)) && (!place_meeting(x+(hspd-hspd_enemy),y,obj_block)) && (place_meeting(x+(hspd-hspd_enemy),y,obj_slope1_right))
	                {    
	                x = floor(x) + sign(hspd-hspd_enemy);
	                }
					if (place_meeting(x-1,y,obj_slope1_right)) && (!place_meeting(x+(hspd-hspd_enemy),y,obj_block))
	                {    
	                x = floor(x) + (hspd-hspd_enemy);
					y = floor(y) + (hspd-hspd_enemy);
	                }
	        }        
        
        
        
        
        
        
        
        
        
              
        
        
 
        
        
	////////////////////////////////////////////going forward        

	//normal collision block
	if (place_meeting(x+hspd-hspd_enemy,y+hspd-hspd_enemy,obj_block)) && (!place_meeting(x+hspd-hspd_enemy,y,obj_slope1_left)) && (!place_meeting(x+hspd-hspd_enemy,y,obj_slope1_right))
	            {
	                while (!place_meeting(x+sign(hspd-hspd_enemy),y,obj_block)) && (!place_meeting(x+hspd-hspd_enemy,y,obj_slope1_left)) && (!place_meeting(x+hspd-hspd_enemy,y,obj_slope1_right))
					  && ((position_meeting(x,y+((bbox_bottom-bbox_top)/2),obj_block)) or (place_meeting(x+sign(hspd-hspd_enemy),y,obj_slope1_left)) or (place_meeting(x+sign(hspd-hspd_enemy),y,obj_slope1_right)))
	                {
	                    if (place_meeting(x,y+1,obj_slope1_left))
						{
							x = floor(x) + sign(hspd-hspd_enemy);
							y = floor(y) - sign(hspd-hspd_enemy);
						}
						else if (place_meeting(x,y+1,obj_slope1_right))
						{
							x = floor(x) + sign(hspd-hspd_enemy);
							y = floor(y) + sign(hspd-hspd_enemy);
						}
						else x = floor(x) + sign(hspd-hspd_enemy);
	                }
	                if ((place_meeting(x+sign(hspd-hspd_enemy),y,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right)))
	                {
						hspd = 0;
					}
	            }
            

	//empty jump
	if (!place_meeting(x+sign(hspd-hspd_enemy),y+1,obj_block)) && (!place_meeting(x+sign(hspd-hspd_enemy),y,obj_slope1_left)) && (!place_meeting(x-sign(hspd-hspd_enemy),y,obj_slope1_left))
	 && (!place_meeting(x+sign(hspd-hspd_enemy),y,obj_slope1_right)) && (!place_meeting(x-sign(hspd-hspd_enemy),y,obj_slope1_right))
	{
	                while(!place_meeting(x+sign(hspd-hspd_enemy),y+1,obj_block)) && (!place_meeting(x+sign(hspd-hspd_enemy),y,obj_slope1_left)) && (!place_meeting(x-sign(hspd-hspd_enemy),y,obj_slope1_left))
	                 && (!place_meeting(x+sign(hspd-hspd_enemy),y,obj_slope1_right)) && (!place_meeting(x-sign(hspd-hspd_enemy),y,obj_slope1_right)) && (!place_meeting(x,y+1,obj_slope1_left))
					  && (!place_meeting(x,y+1,obj_slope1_right))
					   && ((position_meeting(x,y+((bbox_bottom-bbox_top)/2),obj_block)) or (place_meeting(x+hspd-hspd_enemy,y,obj_slope1_left)) or (place_meeting(x+sign(hspd-hspd_enemy),y,obj_slope1_right)))
	                {
						x = floor(x) + sign(hspd-hspd_enemy);
	                }                
	                if (!position_meeting(x,y+((bbox_bottom-bbox_top)/2),obj_block)) && (!place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x-1,y,obj_slope1_right))
					{
						hspd = 0;
	                }
	}

	//if there's nothing there, you're moving and you're on top of a collision block
	if (!place_meeting(x+(hspd-hspd_enemy),y,obj_block)) && (!place_meeting(x+hspd-hspd_enemy,y,obj_slope1_left)) && (!place_meeting(x+hspd-hspd_enemy,y,obj_slope1_right))
	 && (!place_meeting(x+1,y,obj_slope1_left))
	 && (!place_meeting(x-1,y,obj_slope1_right))
	 && (place_meeting(x,y+1,obj_block)) && (stop4 = 0)
	            {
	                x += hspd-hspd_enemy;
	            }



}
