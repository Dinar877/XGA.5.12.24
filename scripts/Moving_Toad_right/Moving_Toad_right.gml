function Moving_Toad_right() {
	var stop4 = 0;


	//left slopes
	//////////////////////////////////////////////Going up

	//going up left slope
	if (place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x+(hspd),y-(hspd),obj_block)) && (!place_meeting(x+(hspd),y,obj_block))
	        {
	                y-= hspd;
	                x+= hspd;
	        } 
        
        
        
	//going up left slope to block-getting there
	if (place_meeting(x+1,y,obj_slope1_left)) && ((place_meeting(x+(hspd),y-(hspd),obj_block)) or (place_meeting(x+(hspd),y,obj_block)))
	        {
	                while ((place_meeting(x+(hspd),y-(hspd),obj_block)) or (place_meeting(x+(hspd),y,obj_block)))
	                 && (!place_meeting(x+1,y,obj_block)) && (!place_meeting(x+1,y,obj_block))  
	                {    
	                x += 1;
	                y -= 1;
	                }
	        }
	//going up left slope to block-transitioning
	if (place_meeting(x,y+1,obj_slope1_left)) && ((place_meeting(x+(hspd),y-(hspd),obj_block)) or (place_meeting(x+(hspd),y+1,obj_block)))
	 && (!place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x+1,y,obj_block))
	        {
	        x+= 2;
	        }
        
        
        
	//going up block to left slope-getting there
	if (place_meeting(x+(hspd),y,obj_slope1_left)) && (place_meeting(x,y+1,obj_block))
	{
	       while (place_meeting(x+(hspd),y,obj_slope1_left)) && (!place_meeting(x+1,y,obj_slope1_left))     
	       {    
				x += 1;
	       }
	}

	if (place_meeting(x+1,y,obj_slope1_left)) && (place_meeting(x,y+1,obj_block))
	{
		x += 1;
		y -= 1;
	}



        
	///right slopes
	///////////////////////////////////////////////////////going down

	//going down right slope
	if (place_meeting(x-1,y,obj_slope1_right)) && (place_meeting(x+(hspd*facing),y+(hspd*facing)+1,obj_slope1_right)) && (!place_meeting(x+(hspd*facing),y+(hspd*facing),obj_block)) && (!place_meeting(x+(hspd*facing),y,obj_block))
	&& (!place_meeting(x,y+1,obj_block))
	        {

	                y+= hspd*facing;
	                x+= hspd*facing;    
	        } 
	//going down right slope to block-getting there
	if ((place_meeting(x+(hspd*facing),y+(hspd*facing)+1,obj_block))) && (!place_meeting(x+(hspd*facing),y+(hspd*facing)+1,obj_slope1_right)) && (!place_meeting(x,y+1,obj_block))  && (place_meeting(x,y+1,obj_slope1_right))
	        {
	                while ((!place_meeting(x,y+1,obj_block))) && (place_meeting(x,y+1,obj_slope1_right)) && (place_meeting(x+(hspd*facing),y+hspd+1,obj_block))  
	                {    
	                x += 1;
	                y += 1;
	                }
	        }
	//going down right slope to block-getting there
	if ((place_meeting(x+hspd,y+hspd+1,obj_block))) && (!place_meeting(x+hspd,y+hspd+1,obj_slope1_right)) && (place_meeting(x,y+1,obj_block))  && (place_meeting(x-1,y,obj_slope1_right))
	        {  
	                x += 1;
	        }

	//while loop for going down from block to right slope
	if (place_meeting(x+hspd,y+hspd+1,obj_slope1_right)) && (place_meeting(x,y+1,obj_block))
	{
		while (position_meeting(x-5,y+10,obj_block)) && (!position_meeting(x-6,y+10,obj_slope1_right)) && (place_meeting(x+hspd,y+hspd+1,obj_slope1_right))
	    {
			x += 1;
		}
	}



	//going down block to right slope-transition
	if (position_meeting(x-6,y+10,obj_block)) && (position_meeting(x-5,y+10,obj_slope1_right)) && (place_meeting(x+hspd,y+hspd+1,obj_slope1_right))
	        {    
	                x += 1;
	                y += 1;
	        }     
        
        
        
        

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
	////////////////////////////////////////////going forward        

	//normal collision block
	if (place_meeting(x+(hspd*facing),y,obj_block)) && (!place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x-1,y,obj_slope1_left))
	            {
	                while (!place_meeting(x+facing,y,obj_block)) && (!place_meeting(x,y-1,obj_slope1_left)) && (!place_meeting(x,y-1,obj_slope1_right))
					 && (place_meeting(x+(hspd),y,obj_block)) 
	                {
	                    x += facing;
	                }
	                if ((place_meeting(x+facing,y,obj_block)) or (place_meeting(x,y-1,obj_slope1_left)) or (place_meeting(x,y-1,obj_slope1_right)))
	                {
	                hspd = 0;
	                }
	            }
	//empty jump
	if (!place_meeting(x+(hspd),y+1,obj_block)) && (!place_meeting(x+(hspd),y,obj_slope1_left)) && (!place_meeting(x-(hspd),y,obj_slope1_left))
	 && (!place_meeting(x+(hspd),y,obj_slope1_right)) && (!place_meeting(x-(hspd),y,obj_slope1_right))
	{
	                while(place_meeting(x+(hspd),y+1,obj_block)) && (!place_meeting(x+facing,y,obj_slope1_left)) && (!place_meeting(x-facing,y,obj_slope1_left))
	                 && (!place_meeting(x+facing,y,obj_slope1_right)) && (!place_meeting(x-facing,y,obj_slope1_right))
	                {
	                x += facing;
	                }                
	                if (!place_meeting(x+(hspd),y+1,obj_block)) && (!place_meeting(x+facing,y,obj_slope1_left)) && (!place_meeting(x-facing,y,obj_slope1_right))
	                 && (!place_meeting(x+facing,y,obj_slope1_right)) && (!place_meeting(x-facing,y,obj_slope1_right)) && (!place_meeting(x,y+1,obj_slope1_right))
					  && (!place_meeting(x,y+2,obj_slope1_right))
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
	if (!place_meeting(x+(hspd*facing),y,obj_block)) && (!place_meeting(x+(hspd*facing),y,obj_slope1_left)) && (!place_meeting(x+(hspd*facing),y,obj_slope1_right))
	 && (!place_meeting(x+(hspd*facing),y-(hspd*facing),obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x+1,y,obj_slope1_left))
	 && (!place_meeting(x+(hspd*facing),y-(hspd*facing),obj_slope1_right)) && (!place_meeting(x,y+1,obj_slope1_right)) && (!place_meeting(x-1,y,obj_slope1_right))
	 && (place_meeting(x,y+1,obj_block)) && (stop4 = 0)
	            {
	                x += hspd;
	            }



}
