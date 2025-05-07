function Moving_Dashing2_left() {
	var stop4 = 0;

	///left slopes
	///////////////////////////////////////////////////////going down

	//going down left slope
	if (place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x+(hspd),y-(hspd),obj_block)) && (!place_meeting(x+(hspd),y,obj_block)) && (global.facingDir = -1)
	        {

                
					y-= hspd;
	                x+= hspd;
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
            
	        } 
       
        
         
	//going down left slope to block-getting there
	if ((place_meeting(x+hspd,y-hspd,obj_block))) && (place_meeting(x,y+1,obj_slope1_left)) && (global.facingDir = -1) && (!place_meeting(x,y+1,obj_block))
	        {
	                while (place_meeting(x,y+1,obj_slope1_left))
	                 && (!place_meeting(x+(hspd),y-(hspd),obj_slope1_left)) && (!place_meeting(x,y+1,obj_block)) && (global.facingDir = -1)        
	                {
					hspd = 0;
	                x -= 1;
	                y += 1;
	                with(object_player2_0_sprites)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1
	                }
	                with(obj_player_dashfire)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1;
	                }
	                }
	            global.grounded = 1;
	            grav = 0;
            
	        }
	//going down left slope to block-transition
	if ((place_meeting(x+hspd,y-hspd,obj_block))) && (place_meeting(x+1,y,obj_slope1_left)) && (global.facingDir = -1)
	&& (place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left))
	        { 
	                x -= 6;
	                with(object_player2_0_sprites)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1
	                }
	                with(obj_player_dashfire)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1;
	                }
	            global.grounded = 1;
	            grav = 0;
	            stop4 = 1;
            
	        }
        

	//while loop for going down from block to left slope
	if (place_meeting(x+hspd,y-hspd+1,obj_slope1_left)) && (place_meeting(x,y+1,obj_block))
	{
		while (position_meeting(x+5,y+20,obj_block)) && (!position_meeting(x+6,y+20,obj_slope1_left)) && (place_meeting(x+hspd,y-hspd+1,obj_slope1_left))
	    {
			x -= 1;
		}
		global.grounded = 1;
		grav = 0;
		stop4 = 1;
	}










	//going down block to left slope-transition
	if (!place_meeting(x,y+1,obj_block)) && (global.facingDir = -1)
	 && (position_meeting(x+5,y+17,obj_slope1_left)) && (place_meeting(x+2,y+1,obj_block)) && (!place_meeting(x-1,y,obj_block))
	        {    
	                x -= 6;
	                y += 6;
	                with(object_player2_0_sprites)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1
	                }
	            global.grounded = 1;
	            grav = 0;
	            stop4 = 1;
            
	        }
        
  
	//right slopes
	//////////////////////////////////////////////Going up

	//going up right slope
	if (place_meeting(x+hspd,y+hspd+1,obj_slope1_right)) && (!place_meeting(x+hspd,y+hspd+1,obj_block)) && (place_meeting(x-1,y,obj_slope1_right))
			{
	                y+= hspd;
	                x+= hspd;
	                with(object_player2_0_sprites)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1
	                }
	            global.grounded = 1;
	            grav = 0;
            
	        } 
	//going up right slope to block-getting there
	if (!place_meeting(x+hspd,y+hspd+1,obj_slope1_right)) && (place_meeting(x-1,y,obj_slope1_right))
	        {
	                while (place_meeting(x-1,y,obj_slope1_right)) && (!place_meeting(x-1,y+1,obj_block)) && (!place_meeting(x+hspd,y+hspd+1,obj_slope1_right))
	                {
	                x -= 1;
	                y -= 1;
	                with(object_player2_0_sprites)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1
	                }
	                }
	            global.grounded = 1;
	            grav = 0;
            
	        }
	//going up right slope to block-transitioning
	if (!place_meeting(x-1,y,obj_slope1_right)) && (place_meeting(x-1,y+1,obj_block)) && (!place_meeting(x+hspd-1,y+hspd+1,obj_block))
	&& (!place_meeting(x+7,y+1,obj_block))
	        {
	        x-= 7;
	        with(object_player2_0_sprites)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1
	                }
	        global.grounded = 1;
	        grav = 0;
        
	        }
	//going up block to right slope
	if (place_meeting(x+(hspd),y,obj_slope1_right)) && (!place_meeting(x+(hspd),y,obj_block)) && (!place_meeting(x,y+1,obj_slope1_right))
	        {
	                while (place_meeting(x+(hspd),y,obj_slope1_right)) && (!place_meeting(x+(hspd),y,obj_block)) && (!place_meeting(x-1,y,obj_slope1_right))
	                {    
	                x -= 1;
	                with(object_player2_0_sprites)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1
	                }
	                }
	            global.grounded = 1;
	            grav = 0;
            
	        }        
		
	///going up block to slope-transitioning
	if (place_meeting(x+(hspd),y,obj_slope1_right)) && (!place_meeting(x+(hspd),y,obj_block)) && (place_meeting(x,y+1,obj_slope1_right))
	        {
	                x += hspd;
					y += hspd;
	                with(object_player2_0_sprites)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1
	                }
	            global.grounded = 1;
	            grav = 0;
            
	        }
        
        
        
        
        
        
        
        
        
              
        
        
 
        
        
	////////////////////////////////////////////going forward        

	//normal collision block
	if (place_meeting(x+(hspd),y,obj_block)) && (!place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x-1,y,obj_slope1_left))
	            {
	                while (!place_meeting(x+global.facingDir,y,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
					 && !((place_meeting(x+(hspd),y+hspd,obj_slope1_right)))
	                {
	                    x += global.facingDir;
	                    collision = 1;
	                    wait1 = 1;
	                    speed_x = 0;
                    
	                    with(obj_player_dashfire)
	                    {
	                    x = obj_player.x;
	                    y = obj_player.y+1;
	                    }
	                with(object_player2_0_sprites)
	                    {
	                    x = obj_player.x;
	                    y = obj_player.y+1
	                    }
	                }
	                if ((place_meeting(x+global.facingDir,y,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right)))
	                {
	                hspd = 0;
	                collision = 0;
	                wait1 = 0;
	                global.dashuse = 0;
	                global.dashbegin = 0;
                
	                with(obj_player_dashfire)
	                    {
	                    x = obj_player.x;
	                    y = obj_player.y+1;
	                    }
	                with(object_player2_0_sprites)
	                    {
	                    x = obj_player.x;
	                    y = obj_player.y+1 
	                    }
	                }
	            }
            


	//if there's nothing there, you're moving and you're on top of a collision block
	if (!place_meeting(x+(hspd),y,obj_block)) && (!place_meeting(x+(hspd),y,obj_slope1_left)) && (!place_meeting(x+(hspd),y,obj_slope1_right))
	 && (!place_meeting(x+(hspd),y-(hspd),obj_slope1_left)) && (!place_meeting(x+(hspd),y+(hspd),obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x+1,y,obj_slope1_left))
	 && (!place_meeting(x+(hspd),y-(hspd),obj_slope1_right)) && (!place_meeting(x+(hspd),y+(hspd),obj_slope1_right)) && ((!position_meeting(x-5,y+17,obj_slope1_right))) && (!place_meeting(x-1,y,obj_slope1_right))
	 && (stop4 = 0)
	            {
	                x -= global.facingDir*hspd;
	                with(object_player2_0_sprites)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1
	                }
	                with(obj_player_dashfire)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1;
	                }
                
	            }




}
