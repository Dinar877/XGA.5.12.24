function Moving_slow_left_dash2() {
	var stop4 = 0;
	with(object_player2_0_sprites)
	            {
	                x = obj_player.x;
	                y = obj_player.y+1;
	            }
	            with(obj_player_dashfire)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1;
	            }
	            global.grounded = 1;
	            grav = 0;
				
				
	
		
	
	//NEW SLOPES
	var totalHSPD = (hspd)
	var totalHSPD2 = ((hspd)/2)
	
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



	
	
	

	///left slopes
	///////////////////////////////////////////////////////going down

	//going down left slope
	if (place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x+(hspd),y-(hspd),obj_block)) && (!place_meeting(x+(hspd),y,obj_block)) && (hspd < 0)
	        {
					y-= hspd;
	                x+= hspd;
	        } 
       
        
         
	//going down left slope to block-getting there
	if (position_meeting(x+(sprite_width/2),y+(sprite_height/2)+1,obj_slope1_left)) && (!position_meeting(x+(sprite_width/2),y+(sprite_height/2)+1,obj_block)) && (place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_block)) && (place_meeting(x,y+2,obj_block))
	   {
	                if (position_meeting(x+(sprite_width/2),y+(sprite_height/2)+1,obj_slope1_left)) && (!position_meeting(x+(sprite_width/2),y+(sprite_height/2)+1,obj_block)) && (!place_meeting(x,y+1,obj_block)) && (place_meeting(x,y+1,obj_slope1_left)) && (place_meeting(x,y+2,obj_block))
	                {    
	                x += hspd;
					y -= hspd;
	                }
					if (!position_meeting(x+(sprite_width/2),y+(sprite_height/2)+1,obj_slope1_left)) && (!position_meeting(x+(sprite_width/2),y+(sprite_height/2)+1,obj_block)) && (place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (place_meeting(x,y+2,obj_block))
	                {    
	                x += hspd;
	                }
	   }
	//going down left slope to block-transition
	if (place_meeting(x+1,y,obj_slope1_left)) && (hspd < 0)
	&& (place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left))
	        { 
	                x += hspd;
            
	        }

	//while loop for going down from block to left slope
	if (!position_meeting(x+(sprite_width/2),y+(sprite_height/2)+1,obj_slope1_left)) && (position_meeting(x+(sprite_width/2),y+(sprite_height/2)+1,obj_block)) && (place_meeting(x,y+1,obj_slope1_left)) && (place_meeting(x,y+1,obj_block))
	   {
	                if (!position_meeting(x+(sprite_width/2),y+(sprite_height/2)+1,obj_slope1_left)) && (position_meeting(x+(sprite_width/2),y+(sprite_height/2)+1,obj_block)) && (place_meeting(x,y+1,obj_block)) && (place_meeting(x,y+1,obj_slope1_left))
	                {    
	                x += hspd;
	                }
					if (position_meeting(x+(sprite_width/2),y+(sprite_height/2)+1,obj_slope1_left)) && (!position_meeting(x+(sprite_width/2),y+(sprite_height/2)+1,obj_block)) && (!place_meeting(x,y+1,obj_block)) && (place_meeting(x,y+1,obj_slope1_left))
	                {    
	                x += hspd;
					y -= hspd;
	                }
	   }









	//going down block to left slope-transition
	if (!place_meeting(x,y+1,obj_block)) && (hspd < 0)
	 && (position_meeting(x+23,y+24,obj_slope1_left)) && (place_meeting(x+24,y+25,obj_block)) && (!place_meeting(x-1,y,obj_block))
	        {    
	                x += hspd;
	                y -= hspd;
            
	        }
        
  
	//right slopes
	//////////////////////////////////////////////Going up

	//going up right slope
	if (place_meeting(x+hspd,y+hspd+1,obj_slope1_right)) && (!place_meeting(x+hspd,y+hspd+1,obj_block)) && (place_meeting(x-1,y,obj_slope1_right))
			{
	                y+= hspd;
	                x+= hspd;
	        } 
	//going up right slope to block-getting there
	if (!place_meeting(x+sign(hspd),y,obj_slope1_right)) && (place_meeting(x+sign(hspd),y+1,obj_block)) && (place_meeting(x,y+1,obj_slope1_right))
	        {
	                if (place_meeting(x+hspd,y,obj_slope1_right)) && (!place_meeting(x+hspd,y+1,obj_block)) && (place_meeting(x,y+1,obj_slope1_right))
	                {
	                x += hspd;
	                y += hspd;
	                }
					if (place_meeting(x-1,y+1,obj_block)) && (place_meeting(x,y+1,obj_slope1_right))
	                {
	                x -= 1;
	                }
	        }
	//going up right slope to block-transitioning
	if (!place_meeting(x-1,y,obj_slope1_right)) && (place_meeting(x-1,y+1,obj_block)) && (!place_meeting(x+hspd-1,y+hspd+1,obj_block))
	&& (!place_meeting(x+25,y+1,obj_block))
	        {
	        x += hspd;
	        }
	//going up block to right slope
	if (place_meeting(x+sign(hspd),y,obj_slope1_right)) && (!place_meeting(x+sign(hspd),y,obj_block)) && (place_meeting(x,y+1,obj_block))
	        {
	                if (place_meeting(x+sign(hspd),y,obj_slope1_right)) && (!place_meeting(x+sign(hspd),y,obj_block)) && (!place_meeting(x+hspd,y,obj_slope1_right))
	                {    
	                x += hspd;
	                }
					if (place_meeting(x+sign(hspd),y,obj_slope1_right)) && (!place_meeting(x+sign(hspd),y,obj_block))
	                {    
	                x += hspd;
					y += hspd;
	                }
	        }        
        
        
        
        
        
        
        
        
        
              
        
        
 
        
        
	////////////////////////////////////////////going forward        

	//normal collision block
	if (place_meeting(x+(hspd),y,obj_block)) && (!place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x-1,y,obj_slope1_left))
	            {
	                while (!place_meeting(x+2,y,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
					 && !((place_meeting(x+(hspd),y+hspd,obj_slope1_right)))
					  && ((position_meeting(x,y+(sprite_height/2),obj_block)) or (place_meeting(x+hspd,y,obj_slope1_left)) or (place_meeting(x+hspd,y,obj_slope1_right)))
	                {
	                    x += hspd;
	                }
	                if ((place_meeting(x-2,y,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right)))
	                {
	                hspd = 0;
					}
	            }
            

	//empty jump
	if (!place_meeting(x+(hspd),y+1,obj_block)) && (!place_meeting(x+(hspd),y,obj_slope1_left)) && (!place_meeting(x-(hspd),y,obj_slope1_left))
	 && (!place_meeting(x+(hspd),y,obj_slope1_right)) && (!place_meeting(x-(hspd),y,obj_slope1_right))
	{
	                while(!place_meeting(x+hspd,y+1,obj_block)) && (!place_meeting(x+hspd,y,obj_slope1_left)) && (!place_meeting(x-hspd,y,obj_slope1_left))
	                 && (!place_meeting(x+hspd,y,obj_slope1_right)) && (!place_meeting(x-hspd,y,obj_slope1_right)) && (!place_meeting(x,y+1,obj_slope1_left))
					  && (!place_meeting(x,y+1,obj_slope1_right))
					   && ((position_meeting(x,y+(sprite_height/2),obj_block)) or (place_meeting(x+hspd,y,obj_slope1_left)) or (place_meeting(x+hspd,y,obj_slope1_right)))
	                {
	                x += hspd;
	                }                
	                if (!position_meeting(x,y+(sprite_height/2),obj_block)) && (!place_meeting(x+hspd,y,obj_slope1_left)) && (!place_meeting(x+hspd,y,obj_slope1_right))
					{
	                hspd = 0;
	                }
	}

	//if there's nothing there, you're moving and you're on top of a collision block
	if (!place_meeting(x+(hspd),y,obj_block)) && (!place_meeting(x+(hspd),y,obj_slope1_left)) && (!place_meeting(x+(hspd),y,obj_slope1_right))
	 && (!place_meeting(x+1,y,obj_slope1_left)) && (!position_meeting(x+(sprite_width/2),y+(sprite_height/2)+1,obj_slope1_left))
	 && (!place_meeting(x-1,y,obj_slope1_right)) && (!position_meeting(x-(sprite_width/2),y+(sprite_height/2)+1,obj_slope1_right))
	 && (stop4 = 0) && (place_meeting(x+hspd,y+1,obj_block)) && (!place_meeting(x+(hspd),y,obj_block2_invisible))
	            {
	                x += hspd;
	            }



}
