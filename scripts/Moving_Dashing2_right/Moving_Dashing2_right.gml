function Moving_Dashing2_right() {
	var stop4 = 0;


	//left slopes
	//////////////////////////////////////////////Going up

	//going up left slope
	if (place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x+(hspd*global.facingDir),y-(hspd*global.facingDir),obj_block)) && (!place_meeting(x+(hspd*global.facingDir),y,obj_block)) && (global.facingDir = 1)
	        {
	                y-= hspd;
	                x+= hspd;
	                with(object_player2_0_sprites)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1
	                }
	            global.grounded = 1;
	            grav = 0;
            
	        } 
        
        
        
	//going up left slope to block-getting there
	if (place_meeting(x+1,y,obj_slope1_left)) && ((place_meeting(x+(hspd*global.facingDir),y-(hspd*global.facingDir),obj_block)) or (place_meeting(x+(hspd*global.facingDir),y,obj_block))) && (global.facingDir = 1)
	        {
	                while ((place_meeting(x+(hspd*global.facingDir),y-(hspd*global.facingDir),obj_block)) or (place_meeting(x+(hspd*global.facingDir),y,obj_block)))
	                 && (!place_meeting(x+1,y,obj_block)) && (global.facingDir = 1) && (!place_meeting(x+1,y,obj_block))  
	                {    
	                x += 1;
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
	//going up left slope to block-transitioning
	if (place_meeting(x,y+1,obj_slope1_left)) && ((place_meeting(x+(hspd*global.facingDir),y-(hspd*global.facingDir),obj_block)) or (place_meeting(x+(hspd*global.facingDir),y+1,obj_block)))
	 && (!place_meeting(x+1,y,obj_slope1_left)) && (global.facingDir = 1) && (!place_meeting(x+1,y,obj_block))
	        {
	        x+= 6;
	        with(object_player2_0_sprites)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1
	                }
	        global.grounded = 1;
	        grav = 0;
	        }
        
        
        
	//going up block to left slope
	if (place_meeting(x+(hspd*global.facingDir),y,obj_slope1_left)) && (global.facingDir = 1)
	        {
	                while (place_meeting(x+(hspd*global.facingDir),y,obj_slope1_left)) && (!place_meeting(x+1,y,obj_slope1_left)) && (global.facingDir = 1)       
	                {    
	                x += 1;
	                with(object_player2_0_sprites)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1
	                }
	                }
	            global.grounded = 1;
	            grav = 0;
	        }



        
	///right slopes
	///////////////////////////////////////////////////////going down

	//going down right slope
	if (place_meeting(x-1,y,obj_slope1_right)) && (place_meeting(x+hspd,y+hspd+1,obj_slope1_right)) && (!place_meeting(x+(hspd),y+hspd,obj_block)) && (!place_meeting(x+(hspd),y,obj_block))
	&& (!place_meeting(x,y+1,obj_block)) && (global.facingDir = 1)
	        {

	                y+= hspd;
	                x+= hspd;
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
            
	        } 
	//going down right slope to block-getting there
	if ((place_meeting(x+hspd,y+hspd+1,obj_block))) && (!place_meeting(x+hspd,y+hspd+1,obj_slope1_right)) && (!place_meeting(x,y+1,obj_block))  && (place_meeting(x,y+1,obj_slope1_right))
	        {
	                while ((!place_meeting(x,y+1,obj_block))) && (place_meeting(x,y+1,obj_slope1_right)) && (place_meeting(x+(hspd),y+hspd+1,obj_block))  
	                {    
	                x += 1;
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
	//going down right slope to block-getting there
	if ((place_meeting(x+hspd,y+hspd+1,obj_block))) && (!place_meeting(x+hspd,y+hspd+1,obj_slope1_right)) && (place_meeting(x,y+1,obj_block))  && (place_meeting(x-1,y,obj_slope1_right)) && (global.facingDir = 1)
	        {  
	                x += 1;
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
	        }
	/*
	//going down block to right slope-getting there
	if (place_meeting(x,y+1,obj_block)) && (place_meeting(x+hspd,y+hspd,obj_slope1_right)) && (!position_meeting(x-hspd,y+hspd,obj_slope1_right)) && (global.facingDir = 1)
	        {
	                while (place_meeting(x+(hspd),y+hspd,obj_slope1_right)) && (place_meeting(x,y+1,obj_block))&& (!position_meeting(x-hspd,y+hspd,obj_slope1_right)) && (global.facingDir = 1) && (!place_meeting(x+1,y,obj_block))       
	                {    
	                x += 1;
	                with(object_player2_0_sprites)
	                {
	                x = obj_player.x;
	                y = obj_player.y+1
	                }
	                }
	            global.grounded = 1;
	            grav = 0;
	        }
	*/



				 //going down from block to right slope-1
				 //W:11
				 //H:37
				 //origin: 5,18
			#region
				/*
	            if (global.facingDir = 1)
	            {
	                //3 pixel away from correct position-1 pixel on slope, 2 on block
					if (position_meeting(x-4,y+20,obj_block)) && (position_meeting(x-3,y+20,obj_slope1_right))
	                {
	                hspd = 0;
	                x+=3;   
	                y+=2;
	                grav=0;
	                global.grounded = 1;
	                show_debug_message("x");
	                }
					//2 pixel away from correct position-1 pixel on slope, 1 on block
	                else if (position_meeting(x-5,y+20,obj_block)) && (position_meeting(x-4,y+20,obj_slope1_right))
	                {
	                hspd =0;
	                x+=2;
	                y+=2;
	                grav=0;
	                global.grounded = 1;
	                show_debug_message("x");
	                }
					//1 pixel away from correct position-one pixel on slope, 0 on block
	                else if (position_meeting(x-6,y+20,obj_block)) && (position_meeting(x-5,y+20,obj_slope1_right)) && (!place_meeting(x-1,y,obj_slope1_right))
	                {
	                hspd =0;
	                x+=1;
	                y+=2;
	                grav=0;
	                global.grounded = 1;
	                show_debug_message("x");
	                }
					//4 pixels away from correct position
					else if (position_meeting(x-3,y+20,obj_block)) && (position_meeting(x-2,y+20,obj_slope1_right))
	                {
	                hspd =0;
	                x+=4;
	                y+=2;
	                grav=0;
	                global.grounded = 1;
	                show_debug_message("x");
	                }
					//5 pixels away from correct position
					else if (position_meeting(x-2,y+20,obj_block)) && (position_meeting(x-1,y+20,obj_slope1_right))
	                {
	                hspd =0;
	                x+=5;
	                y+=2;
	                grav=0;
	                global.grounded = 1;
	                show_debug_message("x");
	                }
					//6 pixels away from correct position
					else if (position_meeting(x-1,y+20,obj_block)) && (position_meeting(x,y+20,obj_slope1_right))
	                {
	                hspd =0;
	                x+=6;
	                y+=2;
	                grav=0;
	                global.grounded = 1;
	                show_debug_message("x");
	                }
					//7 pixels away from correct position
					else if (position_meeting(x,y+20,obj_block)) && (position_meeting(x+1,y+20,obj_slope1_right))
	                {
	                hspd =0;
	                x+=7;
	                y+=2;
	                grav=0;
	                global.grounded = 1;
	                show_debug_message("x");
	                }
					//8 pixels away from correct position
					else if (position_meeting(x+1,y+20,obj_block)) && (position_meeting(x+2,y+20,obj_slope1_right))
	                {
	                hspd =0;
	                x+=8;
	                y+=2;
	                grav=0;
	                global.grounded = 1;
	                show_debug_message("x");
	                }
					//9 pixels away from correct position
					else if (position_meeting(x+2,y+20,obj_block)) && (position_meeting(x+3,y+20,obj_slope1_right))
	                {
	                hspd =0;
	                x+=9;
	                y+=2;
	                grav=0;
	                global.grounded = 1;
	                show_debug_message("x");
	                }
					//10 pixels away from correct position
					else if (position_meeting(x+3,y+20,obj_block)) && (position_meeting(x+4,y+20,obj_slope1_right))
	                {
	                hspd =0;
	                x+=10;
	                y+=2;
	                grav=0;
	                global.grounded = 1;
	                show_debug_message("x");
	                }
					//11 pixels away from correct position
					else if (position_meeting(x+4,y+20,obj_block)) && (position_meeting(x+5,y+20,obj_slope1_right))
	                {
	                hspd =0;
	                x+=11;
	                y+=2;
	                grav=0;
	                global.grounded = 1;
	                show_debug_message("x");
	                }
					//12 pixels away from correct position
					else if (position_meeting(x+5,y+20,obj_block)) && (position_meeting(x+6,y+20,obj_slope1_right))
	                {
	                hspd =0;
	                x+=12;
	                y+=2;
	                grav=0;
	                global.grounded = 1;
	                show_debug_message("x");
	                }
					//13 pixels away from correct position
					else if (position_meeting(x+6,y+20,obj_block)) && (position_meeting(x+7,y+20,obj_slope1_right))
	                {
	                hspd =0;
	                x+=13;
	                y+=2;
	                grav=0;
	                global.grounded = 1;
	                show_debug_message("x");
	                }
                
	            }
				*/
			#endregion

	//while loop for going down from block to right slope
	if (place_meeting(x+hspd,y+hspd+1,obj_slope1_right)) && (place_meeting(x,y+1,obj_block))
	{
		while (position_meeting(x-5,y+20,obj_block)) && (!position_meeting(x-6,y+20,obj_slope1_right)) && (place_meeting(x+hspd,y+hspd+1,obj_slope1_right))
	    {
			x += 1;
		}
		global.grounded = 1;
		grav = 0;
		stop4 = 1;
	}



	//going down block to right slope-transition
	if (position_meeting(x-6,y+20,obj_block)) && (position_meeting(x-5,y+20,obj_slope1_right)) && (place_meeting(x+hspd,y+hspd+1,obj_slope1_right))
	        {    
	                x += 1;
	                y += 1;
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
	if (place_meeting(x+(hspd*global.facingDir),y,obj_block)) && (!place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x-1,y,obj_slope1_left))
	            {
	                while (!place_meeting(x+global.facingDir,y,obj_block)) && (!place_meeting(x,y-1,obj_slope1_left)) && (!place_meeting(x,y-1,obj_slope1_right))
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
	                if ((place_meeting(x+global.facingDir,y,obj_block)) or (place_meeting(x,y-1,obj_slope1_left)) or (place_meeting(x,y-1,obj_slope1_right)))
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
	if (!place_meeting(x+(hspd*global.facingDir),y,obj_block)) && (!place_meeting(x+(hspd*global.facingDir),y,obj_slope1_left)) && (!place_meeting(x+(hspd*global.facingDir),y,obj_slope1_right))
	 && (!place_meeting(x+(hspd*global.facingDir),y-(hspd*global.facingDir),obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x+1,y,obj_slope1_left))
	 && (!place_meeting(x+(hspd*global.facingDir),y-(hspd*global.facingDir),obj_slope1_right)) && (!place_meeting(x,y+1,obj_slope1_right)) && (!place_meeting(x-1,y,obj_slope1_right))
	 && (stop4 = 0)
	            {
	                x += global.facingDir*hspd;
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
