function Moving_Toad_left() {
	var stop4 = 0;

	///left slopes
	///////////////////////////////////////////////////////going down

	//going down left slope
	if (place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x+(hspd),y-(hspd),obj_block)) && (!place_meeting(x+(hspd),y,obj_block)) && (facing = -1)
	        {
					y-= hspd;
	                x+= hspd;
	        } 
       
        
         
	//going down left slope to block-getting there
	if ((place_meeting(x+hspd,y-hspd,obj_block))) && (place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_block))
	        {
	                while (place_meeting(x,y+1,obj_slope1_left))
	                 && (!place_meeting(x+(hspd),y-(hspd),obj_slope1_left)) && (!place_meeting(x,y+1,obj_block))       
	                {
					hspd = 0;
	                x -= 1;
	                y += 1;
					}
	        }
	//going down left slope to block-transition
	if ((place_meeting(x+hspd,y-hspd,obj_block))) && (place_meeting(x+1,y,obj_slope1_left))
	&& (place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left))
	        { 
	                x -= 1;
            
	        }

	//while loop for going down from block to left slope
	if (place_meeting(x+hspd,y-hspd+1,obj_slope1_left)) && (place_meeting(x,y+1,obj_block))
	{
		while (position_meeting(x+5,y+10,obj_block)) && (!position_meeting(x+6,y+10,obj_slope1_left)) && (place_meeting(x+hspd,y-hspd+1,obj_slope1_left))
	    {
			hspd = 0;
			x -= 1;
		}
	}










	//going down block to left slope-transition
	if (!place_meeting(x,y+1,obj_block))
	 && (position_meeting(x+5,y+10,obj_slope1_left)) && (place_meeting(x+6,y+10,obj_block)) && (!place_meeting(x-1,y,obj_block))
	        {    
	                x -= 1;
	                y += 1;
            
	        }
        
  
	//right slopes
	//////////////////////////////////////////////Going up

	//going up right slope
	if (place_meeting(x+(hspd),y+hspd+1,obj_slope1_right)) && (!place_meeting(x+(hspd),y+hspd+1,obj_block)) && (place_meeting(x-1,y,obj_slope1_right))
			{
	                y+= hspd;
	                x+= hspd;
	        } 
	//going up right slope to block-getting there
	if (!place_meeting(x+(hspd),y+hspd+1,obj_slope1_right)) && (place_meeting(x-1,y,obj_slope1_right))
	        {
	                while (place_meeting(x-1,y,obj_slope1_right)) && (!place_meeting(x-1,y+1,obj_block)) && (!place_meeting(x+(hspd),y+hspd+1,obj_slope1_right))
	                {
	                x -= 1;
	                y -= 1;
	                }
	        }
	//going up right slope to block-transitioning
	if (!place_meeting(x-1,y,obj_slope1_right)) && (place_meeting(x-1,y+1,obj_block)) && (!place_meeting(x+(hspd)-1,y+hspd+1,obj_block))
	&& (!place_meeting(x+5,y+1,obj_block))
	        {
	        x-= 1;
	        }
	//going up block to right slope
	if (place_meeting(x+(hspd),y,obj_slope1_right)) && (!place_meeting(x,y+1,obj_slope1_right))
	        {
	                while (place_meeting(x+(hspd),y,obj_slope1_right)) && (!place_meeting(x-1,y,obj_slope1_right))
	                {    
	                x -= 1;
	                }
	        }        

	//going up block to right slope-transition
	if (place_meeting(x-1,y,obj_slope1_right)) && (place_meeting(x,y+1,obj_block))
	{
		x -= 1;
		y -= 1;
	}
        
        
	//failsafe
	if (place_meeting(x,y+2,obj_slope1_right)) && (!place_meeting(x,y+1,obj_slope1_right))
	{
		y += 1;
	}
        
        
        
        
        
              
        
        
 
        
        
	////////////////////////////////////////////going forward        

	//normal collision block
	if (place_meeting(x+(hspd),y,obj_block)) && (!place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x-1,y,obj_slope1_left))
	            {
	                while (!place_meeting(x+facing,y,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
					 && !((place_meeting(x+(hspd),y+hspd,obj_slope1_right))) && (place_meeting(x+(hspd),y,obj_block)) 
	                {
	                    x += facing;
	                }
	                if ((place_meeting(x+facing,y,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right)))
	                {
	                hspd = 0;
					}
	            }
            
	//empty jump
	if (!place_meeting(x+(hspd),y+1,obj_block)) && (!place_meeting(x+(hspd),y,obj_slope1_left)) && (!place_meeting(x-(hspd),y,obj_slope1_left))
	 && (!place_meeting(x+(hspd),y,obj_slope1_right)) && (!place_meeting(x-(hspd),y,obj_slope1_right))
	{
	                while(place_meeting(x+(hspd),y+1,obj_block)) && (!place_meeting(x+facing,y,obj_slope1_left)) && (!place_meeting(x-facing,y,obj_slope1_left))
	                 && (!place_meeting(x+facing,y,obj_slope1_right)) && (!place_meeting(x-facing,y,obj_slope1_right)) && (!place_meeting(x,y+1,obj_slope1_left))
					  && (!place_meeting(x,y+1,obj_slope1_right))
	                {
	                x += facing;
	                }                
	                if (!place_meeting(x+(hspd),y+1,obj_block)) && (!place_meeting(x+facing,y,obj_slope1_left)) && (!place_meeting(x-facing,y,obj_slope1_left))
	                 && (!place_meeting(x+facing,y,obj_slope1_right)) && (!place_meeting(x-facing,y,obj_slope1_right)) && (!place_meeting(x-facing,y+2,obj_slope1_left))
	                  && (!place_meeting(x,y+1,obj_slope1_right)) && (!place_meeting(x,y+1,obj_slope1_left))
					{
	                hspd = 0;
					run_now = 0;
					prep_now = 0;
					with(inst)
						{
							run_now = 0;
							prep_now = 0;
						}
	                }
	}


	//if there's nothing there, you're moving and you're on top of a collision block
	if (!place_meeting(x+(hspd),y,obj_block)) && (!place_meeting(x+(hspd),y,obj_slope1_left)) && (!place_meeting(x+(hspd),y,obj_slope1_right))
	 && (!place_meeting(x+(hspd),y-(hspd),obj_slope1_left)) && (!place_meeting(x+(hspd),y+(hspd),obj_slope1_left)) && (!place_meeting(x+1,y,obj_slope1_left))
	 && (!place_meeting(x+(hspd),y+(hspd),obj_slope1_right)) && (!place_meeting(x-1,y,obj_slope1_right))
	 && (stop4 = 0)&& (place_meeting(x+(hspd),y+1,obj_block)) && !((place_meeting(x-1,y,obj_slope1_right)) && (place_meeting(x,y+1,obj_block)))
	            {
	                x += hspd;
	            }



}
