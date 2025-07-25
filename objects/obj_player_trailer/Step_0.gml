 /// @description controls and physics
//if game is paused, essentially deactivate player without using the deactivate function
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.loading = 1)
or (global.pause = 1)
or (global.dead = 1)
or (global.boss_warning = 1)
or (global.navigation = 1) or (global.navigation_effect = 1)
or (global.pause_player = 1)
or (global.upgrade_process_data = 1) or (global.upgrade_process = 1)
or (global.corelock_engage = 1)
or (global.stopper_2ndscrnshot = 1)
or (global.cutscene = 1) or (global.cutscene_suit = 1) or (global.loading_startgame = 1)
or (global.room_transition_prep == 1) or (global.room_y == 1)
or (global.pierce_killswitch = 1)
{
	hspd_enemy = 0
	vspd_wind = 0
	
	
	exit;	
}


//to make sure the player can always shoot
//global.shoot_ammo = 10

if (state = Sword_spin) && (instance_place(x,y,obj_link_enemies))
{
	with(instance_place(x,y,obj_link_enemies))
	{
		if (!variable_instance_exists((instance_place(x,y,obj_link_enemies)),"warning"))
		{
			hp -= 1
			enemy_hurt = 0.9	
		}
	}
}


//makes sure gamepad inputs are recognized
script_execute(Gamepad_variables);

//other stuff

//left and right
if (state != Ledge_jumpprep) && (state != Climb_up_ledge) && (state != Wall_jump) && (state != Jump_after_wj) && (global.turning = 0) && (global.dashuse = 0) && (global.dashbegin = 0) && (global.room_transition = 0)
&& (global.dashbegin2 != 1) && (global.room_transition != 1) && (global.room_transition_more != 1) && (global.room_transition1 != 1) && (global.dead_begin != 1) && (global.navigation_effect <= 0)
{
	input_horizontal = ((right_key) - (left_key));
}
else if ((state = Climb_up_ledge) or (state = Ledge_jumpprep) or (state = Wall_jump) or (state = Jump_after_wj) or (global.turning = 1))
{
	input_horizontal = 0;
}
else if (global.room_transition = 1)
{
	input_horizontal = 0;
}

//up and down
if (state != Ledge_jumpprep) && (state != Climb_up_ledge) && (state != Wall_jump) && (state != Jump_after_wj) && (global.turning = 0) && (global.dashuse = 0) && (global.dashbegin = 0) && (global.room_transition = 0)
&& (global.dashbegin2 != 1) && (global.room_transition != 1) && (global.room_transition_more != 1) && (global.room_transition1 != 1) && (global.dead_begin != 1) && (global.navigation_effect <= 0)
{
	input_horizontal2 = ((up_key) - (down_key));
}
else if ((state = Climb_up_ledge) or (state = Ledge_jumpprep) or (state = Wall_jump) or (state = Jump_after_wj) or (global.turning = 1))
{
	input_horizontal2 = 0;
}
else if (global.room_transition = 1)
{
	input_horizontal2 = 0;
}


//pausing the game
if (enter_pressed) && (global.pause_transition = 0) && (global.room_transition = 0) && (global.dead = 0) && (global.dead_begin = 0) && (global.dead_ending = 0)
&& (global.room_transition1 = 0) && (global.upgrade_process == 0)
{
	global.pause_transition = 1;
	
	if (global.mapgrid_1x1 = 1) or ((global.mapgrid_yZeroMove = 1) && (global.mapgrid_xZeroMove = 1))
	{
		instance_create_layer( __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), layer_get_id("Inst_scrn"), obj_scrn_roomtransition);
	}
	else if (global.mapgrid_1x1 = 0)
	{
		instance_create_layer( obj_camera_trailer.x-160, obj_camera_trailer.y-90, layer_get_id("Inst_scrn"), obj_scrn_roomtransition);
	}
	
	exit;
}














//Collision shit

//hspd_enemy, vspd_wind disabled in room transitions
if (global.room_transition_prep == 1)
{
	hspd_enemy = 0
	vspd_wind = 0
}

//Horizontal
if (hspd != 0) && (hspd_enemy == 0) && (global.dashbegin2 == 0) && (global.dash2 == 0)
// && (hspd_enemy == 0) && (global.dashbegin2 == 0) && (global.dash2 == 0)
{
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
	else
	{
		
		//left slopes
	    //going up left slope
	    if (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_left)) && (!place_meeting(x+(hspd+hspd_enemy),y-(hspd+hspd_enemy),obj_block)) && (!place_meeting(x+(hspd+hspd_enemy),y,obj_block))
	    {
	        if (global.facingDir = 1) && (place_meeting(x+1,y,obj_slope1_left))
	        {
	            y-= floor(hspd+hspd_enemy);
	        }
	        else if (!place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x+1,y,obj_block))
	        {
	            hspd = 0;
				hspd_enemy = 0
	            x +=1;
	        }
            
	        global.grounded = 1;
	        grav = 0;
	    }
	    //if near wall and on slope left
	        if (place_meeting(x+(hspd+hspd_enemy),y-(hspd+hspd_enemy),obj_block)) && (position_meeting(x+5,y+19,obj_slope1_left)) && (global.facingDir = 1) && (!place_meeting(x+1,y,obj_block))
	        {
	            hspd = 0;
				hspd_enemy = 0
	            x += 1;
	            y -= 1;
	            grav=0;
	            global.grounded = 1;
	        }  
	    //going up slope to block
	    if (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_left)) && (place_meeting(x+(hspd+hspd_enemy),y,obj_block)) && (global.facingDir = 1)
	        {
	            x -=1;
	            y -=1;
	        }
	    //going down left slope
	    if (position_meeting(x+5,y+19,obj_slope1_left)) && (!position_meeting(x-5,y+20,obj_block)) && (!position_meeting(x+6,y+19,obj_block))
	        {
	        if (global.facingDir = -1) && (!position_meeting(x-8,y+19,obj_block)) && (!place_meeting(x,y+1,obj_block))
	            {
	                y-= floor(hspd+hspd_enemy);
	                grav = 0;
	            }
	        }
	    //going down left slope to block
	        if (position_meeting(x-8,y+21,obj_block)) && (global.facingDir = -1) && (place_meeting(x+2,y+2,obj_slope1_left))
	        {
	            if (!position_meeting(x-6,y+19,obj_block))
	            {    
	            x += sign(hspd+hspd_enemy);
	            y-=sign(hspd+hspd_enemy);
	            grav=0;
	            global.grounded = 1;
	            }
	        }
	            //going down from block to left slope-1
	        if (global.facingDir = -1) && (!position_meeting(x-(sprite_width/2)+1,y+(sprite_height/2)+1,obj_block))
	        {
	            if (position_meeting(x+4,y+19,obj_block)) && (position_meeting(x+3,y+20,obj_slope1_left))
	            {
	            hspd = 0;
				hspd_enemy = 0
	            x-=3; 
	            y+=1;
	            grav=0;
	            global.grounded = 1;
	            }
	            else if (position_meeting(x+5,y+19,obj_block)) && (position_meeting(x+4,y+20,obj_slope1_left))
	            {
	            hspd = 0;
				hspd_enemy = 0
	            x-=2;
	            y+=1;
	            grav=0;
	            global.grounded = 1;
	            }
	            else if (position_meeting(x+6,y+19,obj_block)) && (position_meeting(x+5,y+20,obj_slope1_left))
	            {
	            hspd = 0;
				hspd_enemy = 0
	            x-=1;
	            y+=1;
	            grav=0;
	            global.grounded = 1;
	            }
                
	        }
	        //if against wall and on slope left
	        if (place_meeting(x-1,y,obj_block)) && (position_meeting(x+5,y+19,obj_slope1_left)) && (global.facingDir = -1)
	        {
	            hspd = 0;
				hspd_enemy = 0
	            x -= 1;
	            y += 1;
	            grav=0;
	            global.grounded = 1;
	        }   
	            //going up from block to left slope
	        if (position_meeting(x+(hspd+hspd_enemy),y+19,obj_block)) && (global.facingDir = 1) && (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_left)) && (place_meeting(x,y+1,obj_slope1_left))
	        {
	            if (!position_meeting(x+(hspd+hspd_enemy),y+18,obj_slope1_left))
	            {    
	            hspd = 0;
				hspd_enemy = 0
	            x += 1;
	            grav=0;
	            global.grounded = 1;
	            }
	        }
            
			
		//right slopes
	    //going up right slope
	    if (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_right)) && (!place_meeting(x+(hspd+hspd_enemy),y+(hspd+hspd_enemy),obj_block)) && (!place_meeting(x+(hspd+hspd_enemy),y,obj_block))
	    {
	        if (global.facingDir = -1) && (place_meeting(x-1,y,obj_slope1_right))
	        {
	            y+= floor(hspd+hspd_enemy);
	        }
	        else if (!place_meeting(x-1,y,obj_slope1_right)) && (!place_meeting(x-1,y,obj_block)) && (global.facingDir = -1)
	        {
	            hspd = 0;
				hspd_enemy = 0
	            x -=1;
	        }
	        global.grounded = 1;
	        grav = 0;
	    }
	    //going up slope to block
	    if (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_right)) && (place_meeting(x+(hspd+hspd_enemy),y,obj_block)) && (global.facingDir = -1) && (global.dashbegin2 == 0) && (global.dash2 == 0)
	        {
	            hspd = 0;
				hspd_enemy = 0
				x -=1;
	            y -=1;
	        }
	    //going down right slope
	    if (place_meeting(x-1,y,obj_slope1_right)) && (global.facingDir = 1)
	        {
	        if (!position_meeting(x+8,y+21,obj_block)) && (!place_meeting(x,y+1,obj_block))
	            {
	                hspd = 0;
					hspd_enemy = 0
					if (enemy_slowdownswitch = 0)
					{
		                x += 3;
		                y += 3;
					}
					else if (enemy_slowdownswitch > 0)
					{
		                x += 2;
		                y += 2;
					}
	                grav = 0;
	            }
	        }
	    //going down right slope to block
            
	        if (position_meeting(x+8,y+21,obj_block)) && (global.facingDir = 1) && (place_meeting(x,y+1,obj_slope1_right))
	        {
	            if (!position_meeting(x+6,y+19,obj_block))
	            {    
	            hspd = 0;
				hspd_enemy = 0
	            x += 1;
	            y += 1;
	            grav=0;
	            global.grounded = 1;
	            }
	        }
	            //going down from block to right slope-1
	        if (global.facingDir = 1) && (!position_meeting(x+(sprite_width/2)+1,y+(sprite_height/2)+1,obj_block))
	        {
	            if (position_meeting(x-4,y+19,obj_block)) && (position_meeting(x-3,y+19,obj_slope1_right))
	            {
	            hspd = 0;
				hspd_enemy = 0
	            x+=3;   
	            y+=1;
	            grav=0;
	            global.grounded = 1;
	            }
	            else if (position_meeting(x-5,y+19,obj_block)) && (position_meeting(x-4,y+19,obj_slope1_right))
	            {
	            hspd = 0;
				hspd_enemy = 0
	            x+=2;
	            y+=1;
	            grav=0;
	            global.grounded = 1;
	            }
	            else if (position_meeting(x-6,y+20,obj_block)) && (position_meeting(x-5,y+19,obj_slope1_right))
	            {
	            hspd = 0;
				hspd_enemy = 0
	            x+=1;
	            y+=1;
	            grav=0;
	            global.grounded = 1;
	            }
                
	        }
	            //going up from block to right slope
	        if (position_meeting(x-4,y+19,obj_block)) && (global.facingDir = -1) && (position_meeting(x-8,y+18,obj_slope1_right)) && (global.dash2 == 0)
	        {
	            if (!position_meeting(x-6,y+18,obj_slope1_right))
	            {    
	            x -= 1;
	            grav=0;
	            global.grounded = 1;
	            }
	        }
	        //if against wall and on slope right
	        if (place_meeting(x-1,y,obj_block)) && (place_meeting(x,y+1,obj_slope1_right)) && (global.facingDir = 1)
	        {
	            hspd = 0;
				hspd_enemy = 0
	            x += 1;
	            y += 1;
	            grav=0;
	            global.grounded = 1;
	        }
			
		}
            
            
	
	
	
	
	
	
            
            
            
            
        
    //normal collision block
    if (place_meeting(x+(hspd+hspd_enemy),y,obj_block)) && (global.dash2 == 0) && (hspd+hspd_enemy != 0)
    {
        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block)) && (!place_meeting(x,y-1,obj_slope1_left)) && (!place_meeting(x,y-1,obj_slope1_right))
        {
            x += sign(hspd+hspd_enemy);
        }
		hspd = 0;
		hspd_enemy = 0
    }
    if (place_meeting(x+(hspd+hspd_enemy),y-4,obj_block)) && (global.dash2 == 0) && (hspd+hspd_enemy != 0)
    {
        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block)) && (place_meeting(x,y-1,obj_slope1_left)) && (!place_meeting(x,y-1,obj_slope1_right))
        {
            x += sign(hspd+hspd_enemy);
            y --;
            hspd = 0;
			hspd_enemy = 0
        }
        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block)) && (!place_meeting(x,y-1,obj_slope1_left)) && (place_meeting(x,y-1,obj_slope1_right))
        {
            x += sign(hspd+hspd_enemy);
            y += sign(hspd+hspd_enemy);
            hspd = 0;
			hspd_enemy = 0
        }
    }  
	
	
	
	
	//nano block
    if (place_meeting(x+(hspd+hspd_enemy),y,obj_block2_nano)) && (hspd+hspd_enemy != 0)
	&& (!place_meeting(x,y,obj_block2_nano))
    {
        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block2_nano)) && (!place_meeting(x,y-1,obj_slope1_left)) && (!place_meeting(x,y-1,obj_slope1_right))
		 && (!place_meeting(x,y,obj_block2_nano))
        {
            x += sign(hspd+hspd_enemy);
        }
		hspd = 0;
		hspd_enemy = 0
    }
    if (place_meeting(x+(hspd+hspd_enemy),y-4,obj_block2_nano)) && (hspd+hspd_enemy != 0)
	 && (!place_meeting(x,y,obj_block2_nano))
    {
        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block2_nano)) && (place_meeting(x,y-1,obj_slope1_left)) && (!place_meeting(x,y-1,obj_slope1_right))
		 && (!place_meeting(x,y,obj_block2_nano))
        {
            x += sign(hspd+hspd_enemy);
            y --;
            hspd = 0;
			hspd_enemy = 0
        }
        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block2_nano)) && (!place_meeting(x,y-1,obj_slope1_left)) && (place_meeting(x,y-1,obj_slope1_right))
		 && (!place_meeting(x,y,obj_block2_nano))
        {
            x += sign(hspd+hspd_enemy);
            y += sign(hspd+hspd_enemy);
            hspd = 0;
			hspd_enemy = 0
        }
    } 
	
	x += (hspd+hspd_enemy);
}
else if (hspd_enemy != 0) && (global.dashbegin2 == 0) && (global.dash2 == 0)
&& (state != Ledge_grab) && (state != Shoot_hang)  && (state != Ledge_jumpprep) && (state != Climb_up_ledge) && (state != Dead)
{
	//newslopes
	var totalHSPD = (hspd+hspd_enemy)
	var totalHSPD2 = ((hspd+hspd_enemy)/2)


	//NEWslope objects move scipt - LEFT
	if (place_meeting(x+totalHSPD,y+totalHSPD,obj_newslope_left)) or (place_meeting(x,y+2,obj_newslope_left))
	or (place_meeting(x+totalHSPD,y+totalHSPD,obj_newslope_right)) or (place_meeting(x,y+2,obj_newslope_right))
	or (place_meeting(x+totalHSPD,y+totalHSPD2,obj_newslope_left))
	or (place_meeting(x+totalHSPD,y+totalHSPD2,obj_newslope_right))
	or (place_meeting(x+totalHSPD,y,obj_newslope_left))
	or (place_meeting(x+totalHSPD,y,obj_newslope_right))
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
	

	
	
	
	//normal collision
	if ((hspd+hspd_enemy) > 0)
	{
		Moving_slow_hspdenemy_right_biggerthan1()	
	}
	else if ((hspd+hspd_enemy) < 0)
	{
		Moving_slow_hspdenemy_left_biggerthan1()	
	}	
}

//Vertical    
if (vspd != 0) && (state != Dead) && (vspd_wind == 0)
{
    //normal collision blockif (place_meeting(x,y+vspd,obj_block))---going down
    if (place_meeting(x,y+(vspd),obj_block)) && (round(vspd) > 0) && (vspd != 0) && (!place_meeting(x,y,obj_block2_nano))
	&& (!place_meeting(x,y+(vspd),obj_slope1_left)) && (!place_meeting(x,y+(vspd),obj_slope1_right))
    {
            vspd = floor(vspd);
            while (!place_meeting(x,y+sign(vspd),obj_block)) && (state != Jumping) && (vspd != 0)
            {
                y += 1;
                if (sign(vspd) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd) = -1)
                {
                    against_wall_du = -1;
                }

            }
            vspd = 0;
    }
    //normal collision blockif (place_meeting(x,y+vspd,obj_block))---going up
    if (place_meeting(x,y+(vspd),obj_block)) && ((vspd) < 0) && (vspd != 0) && (!place_meeting(x,y,obj_block2_nano))
	&& (!place_meeting(x,y+(vspd),obj_slope1_left)) && (!place_meeting(x,y+(vspd),obj_slope1_right))
    {
            vspd = floor(vspd);
            while (!place_meeting(x,y+sign(vspd),obj_block)) && (state != Jumping) && (vspd != 0)
            {
                y += -1;
                if (sign(vspd) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd) = -1)
                {
                    against_wall_du = -1;
                }

            }
            vspd = 0;
            grav = 0.25;
    }
	
	
    //normal collision slope1 left
    if (place_meeting(x,y+(vspd),obj_slope1_left)) && (hspd = 0) && (vspd != 0) && (!place_meeting(x,y,obj_block2_nano))
    {
            vspd = floor(vspd);
            while (!place_meeting(x,y+sign(vspd),obj_slope1_left)) && (state != Jumping) && (vspd != 0)
            {
                hspd = 0;
                y += sign(vspd);
                if (sign(vspd) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd) = -1)
                {
                    against_wall_du = -1;
                }
                
            }
            global.grounded = 1;
            vspd = 0;
    }
    //normal collision slope1 right
    if (place_meeting(x,y+(vspd),obj_slope1_right)) && (hspd = 0) && (vspd != 0) && (!place_meeting(x,y,obj_block2_nano))
    {
            vspd = floor(vspd);
            while (!place_meeting(x,y+sign(vspd),obj_slope1_right)) && (state != Jumping) && (vspd != 0)
            {
                hspd = 0;
                y += sign(vspd);
                if (sign(vspd) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd) = -1)
                {
                    against_wall_du = -1;
                }
                
            }
            global.grounded = 1;
            vspd = 0;
    }
	
	
	
	//normal collision NEWslope left
    if (place_meeting(x,y+(vspd),obj_newslope_left)) && (vspd != 0) && (!place_meeting(x,y,obj_block2_nano))
    {
            vspd = floor(vspd);
			
            while (!place_meeting(x,y+sign(vspd),obj_newslope_left)) && (state != Jumping) && (vspd != 0)
            {
                hspd = 0;
                y += sign(vspd);
                if (sign(vspd) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd) = -1)
                {
                    against_wall_du = -1;
                }
                
            }
			
            global.grounded = 1;
            vspd = 0;
    }
    //normal collision NEWslope right
    if (place_meeting(x,y+(vspd),obj_newslope_right)) && (vspd != 0) && (!place_meeting(x,y,obj_block2_nano))
    {
            vspd = floor(vspd);
			
            while (!place_meeting(x,y+sign(vspd),obj_newslope_right)) && (state != Jumping) && (vspd != 0)
            {
                hspd = 0;
                y += sign(vspd);
                if (sign(vspd) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd) = -1)
                {
                    against_wall_du = -1;
                }
                
            }
			
            global.grounded = 1;
            vspd = 0;
    }
	
	
	y += (vspd);
	//y = floor(y);
}
else //Vertical-with VSPD_WIND    
if (vspd != 0) && (state != Dead) && (vspd_wind != 0)
{
	//normal collision blockif (place_meeting(x,y+vspd+vspd_wind,obj_block))---going down
    if (place_meeting(x,y+(vspd+vspd_wind),obj_block)) && (round(vspd+vspd_wind) > 0) && (vspd+vspd_wind != 0) && (!place_meeting(x,y,obj_block2_nano))
	&& (!place_meeting(x,y+(vspd+vspd_wind),obj_slope1_left)) && (!place_meeting(x,y+(vspd+vspd_wind),obj_slope1_right))
    {
            vspd = floor(vspd+vspd_wind);
            while (!place_meeting(x,y+sign(vspd+vspd_wind),obj_block)) && (state != Jumping) && (vspd+vspd_wind != 0)
            {
                y += 1;
                if (sign(vspd+vspd_wind) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd+vspd_wind) = -1)
                {
                    against_wall_du = -1;
                }

            }
            vspd = 0;
			vspd_wind = 0;
    }
    //normal collision blockif (place_meeting(x,y+vspd+vspd_wind,obj_block))---going up
    if (place_meeting(x,y+(vspd+vspd_wind),obj_block)) && ((vspd+vspd_wind) < 0) && (vspd+vspd_wind != 0) && (!place_meeting(x,y,obj_block2_nano))
	&& (!place_meeting(x,y+(vspd+vspd_wind),obj_slope1_left)) && (!place_meeting(x,y+(vspd+vspd_wind),obj_slope1_right))
    {
            vspd = floor(vspd+vspd_wind);
            while (!place_meeting(x,y+sign(vspd+vspd_wind),obj_block)) && (state != Jumping) && (vspd+vspd_wind != 0)
            {
                y += -1;
                if (sign(vspd+vspd_wind) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd+vspd_wind) = -1)
                {
                    against_wall_du = -1;
                }

            }
            vspd = 0;
			vspd_wind = 0;
            grav = 0.25;
    }
	
	
    //normal collision slope1 left
    if (place_meeting(x,y+(vspd+vspd_wind),obj_slope1_left)) && (hspd = 0) && (vspd+vspd_wind != 0) && (!place_meeting(x,y,obj_block2_nano))
    {
            vspd = floor(vspd+vspd_wind);
            while (!place_meeting(x,y+sign(vspd+vspd_wind),obj_slope1_left)) && (state != Jumping) && (vspd+vspd_wind != 0)
            {
                hspd = 0;
                y += sign(vspd+vspd_wind);
                if (sign(vspd+vspd_wind) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd+vspd_wind) = -1)
                {
                    against_wall_du = -1;
                }
                
            }
            global.grounded = 1;
            vspd = 0;
			vspd_wind = 0;
    }
    //normal collision slope1 right
    if (place_meeting(x,y+(vspd+vspd_wind),obj_slope1_right)) && (hspd = 0) && (vspd+vspd_wind != 0) && (!place_meeting(x,y,obj_block2_nano))
    {
            vspd = floor(vspd+vspd_wind);
            while (!place_meeting(x,y+sign(vspd+vspd_wind),obj_slope1_right)) && (state != Jumping) && (vspd+vspd_wind != 0)
            {
                hspd = 0;
                y += sign(vspd+vspd_wind);
                if (sign(vspd+vspd_wind) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd+vspd_wind) = -1)
                {
                    against_wall_du = -1;
                }
                
            }
            global.grounded = 1;
            vspd = 0;
			vspd_wind = 0;
    }
	
	
	//normal collision obj_newslope_left
    if (place_meeting(x,y+(vspd+vspd_wind),obj_newslope_left)) && (hspd = 0) && (vspd+vspd_wind != 0) && (!place_meeting(x,y,obj_block2_nano))
    {
            vspd = floor(vspd+vspd_wind);
            while (!place_meeting(x,y+sign(vspd+vspd_wind),obj_newslope_left)) && (state != Jumping) && (vspd+vspd_wind != 0)
            {
                hspd = 0;
                y += sign(vspd+vspd_wind);
                if (sign(vspd+vspd_wind) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd+vspd_wind) = -1)
                {
                    against_wall_du = -1;
                }
                
            }
            global.grounded = 1;
            vspd = 0;
			vspd_wind = 0;
    }
    //normal collision obj newslope right
    if (place_meeting(x,y+(vspd+vspd_wind),obj_newslope_right)) && (hspd = 0) && (vspd+vspd_wind != 0) && (!place_meeting(x,y,obj_block2_nano))
    {
            vspd = floor(vspd+vspd_wind);
            while (!place_meeting(x,y+sign(vspd+vspd_wind),obj_newslope_right)) && (state != Jumping) && (vspd+vspd_wind != 0)
            {
                hspd = 0;
                y += sign(vspd+vspd_wind);
                if (sign(vspd+vspd_wind) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd+vspd_wind) = -1)
                {
                    against_wall_du = -1;
                }
                
            }
            global.grounded = 1;
            vspd = 0;
			vspd_wind = 0;
    }
	
	
	
	
	
	
	y += (vspd+vspd_wind);
	y = floor(y);
}

if (hspd = 0) && (place_meeting(x,y+1,obj_slope1_left))
{
    vspd = 0;
    grav = 0;
}



//if falling dioagonally onto a slope
if ((hspd != 0) && (vspd != 0)) && ((place_meeting(x+(hspd),y+(vspd),obj_slope1_right)))
{
    grav = 0;
    speed_x = 0;
    vspd = floor(vspd);
    
	while (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right)) && ((place_meeting(x+(hspd),y+(vspd),obj_slope1_right)))
    && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_block)) && (!place_meeting(x-sign(hspd),y,obj_slope1_right)) && (state != Dashing2_use)
    {
         hspd = 0;
         grav = 0;
         speed_x = 0;
         y = floor(y) + sign(vspd);
         input_horizontal = 0;
    }
    //fail safe in case the checks above don't work
    while (place_meeting(x+1,y-1,obj_slope1_right)) && (state != Dashing2_use)
    {
        y --;
    }
    
    
    if ((place_meeting(x+1,y,obj_slope1_right)))
    {
         speed_x = 0;
         grav = 0;
         vspd = 0;
         hspd = 0;
    }
}

if ((hspd != 0) && (vspd != 0)) && ((place_meeting(x+(hspd),y+(vspd),obj_slope1_left))) && (state != Dashing2_use)
{
    grav = 0;
    speed_x = 0;
    vspd = floor(vspd);
    while (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left)) && ((place_meeting(x+(hspd),y+(vspd),obj_slope1_left)))
     && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_block)) && (!place_meeting(x-sign(hspd),y,obj_slope1_left)) && (state != Dashing2_use)
    {
         hspd = 0;
         grav = 0;
         speed_x = 0;
         y = floor(y) + sign(vspd);
         input_horizontal = 0;
    }
    //fail safe in case the checks above don't work
    while (place_meeting(x-1,y-1,obj_slope1_left)) && (state != Dashing2_use)
    {
        y --;
    }
    
    if ((place_meeting(x-1,y,obj_slope1_left)))
    {
         speed_x = 0;
         grav = 0;
         vspd = 0;
         hspd = 0;
    }
}




//if falling dioagonally onto a slope - L and R
if ((hspd != 0) && (vspd != 0)) && ((place_meeting(x+(hspd),y+(vspd),obj_newslope_right)))
{
    grav = 0;
    speed_x = 0;
    vspd = floor(vspd);
    
	while (!place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_right)) && ((place_meeting(x+(hspd),y+(vspd),obj_newslope_right)))
    && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_block)) && (!place_meeting(x-sign(hspd),y,obj_newslope_right)) && (state != Dashing2_use)
    {
         hspd = 0;
         grav = 0;
         speed_x = 0;
         y = floor(y) + sign(vspd);
         input_horizontal = 0;
    }
    //fail safe in case the checks above don't work
    while (place_meeting(x+1,y-1,obj_newslope_right)) && (state != Dashing2_use)
    {
        y --;
    }
    
    
    if ((place_meeting(x+1,y,obj_newslope_right)))
    {
         speed_x = 0;
         grav = 0;
         vspd = 0;
         hspd = 0;
    }
}
else if ((hspd != 0) && (vspd != 0)) && ((place_meeting(x+(hspd),y+(vspd),obj_newslope_left))) && (state != Dashing2_use)
{
    grav = 0;
    speed_x = 0;
    vspd = floor(vspd);
    while (!place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_left)) && ((place_meeting(x+(hspd),y+(vspd),obj_newslope_left)))
     && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_block)) && (!place_meeting(x-sign(hspd),y,obj_newslope_left)) && (state != Dashing2_use)
    {
         hspd = 0;
         grav = 0;
         speed_x = 0;
         y = floor(y) + sign(vspd);
         input_horizontal = 0;
    }
    //fail safe in case the checks above don't work
    while (place_meeting(x-1,y-1,obj_newslope_left)) && (state != Dashing2_use)
    {
        y --;
    }
    
    if ((place_meeting(x-1,y,obj_newslope_left)))
    {
         speed_x = 0;
         grav = 0;
         vspd = 0;
         hspd = 0;
    }
}








//fail safe in case the checks above don't work-left slope
while (place_meeting(x+1,y-1,obj_slope1_left)) && (state != Dashing2_use)
{
                y --;
}
//fail safe in case the checks above don't work-right slope
while (place_meeting(x-1,y-1,obj_slope1_right)) && (state != Dashing2_use)
{
                y --;
}

//fail safe in case the checks above don't work-left new slope
while (place_meeting(x+1,y-1,obj_newslope_left)) && (state != Dashing2_use)
{
                y --;
}
//fail safe in case the checks above don't work-right new slope
while (place_meeting(x-1,y-1,obj_newslope_right)) && (state != Dashing2_use)
{
                y --;
}



//fail safe if inside collision block - top
if (!position_meeting(x,bbox_bottom+1,obj_block))
&& (place_meeting(x,y,obj_block))
	{
		while (place_meeting(x,y,obj_block))
		&& (!position_meeting(x,bbox_bottom+1,obj_block))
			{
				y ++;	
			}
	}
	
//fail safe if inside collision block - bottom
if (!position_meeting(x,bbox_top-1,obj_block))
&& (place_meeting(x,y,obj_block))
	{
		while (place_meeting(x,y,obj_block))
		&& (!position_meeting(x,bbox_top-1,obj_block))
			{
				y --;	
			}
	}
	
	

if (place_meeting(x,y+1,obj_convayerbelt_block_left))
{
	hspd_enemy = -1
}
else if (place_meeting(x,y+1,obj_convayerbelt_block_right))
{
	hspd_enemy = 1
}
else if (!place_meeting(x,y+1,obj_convayerbelt_block_left)) && (!place_meeting(x,y+1,obj_convayerbelt_block_right))
&& ((place_meeting(x,y+1,obj_block)) or (place_meeting(x,y+1,obj_slope1_right)) or (place_meeting(x,y+1,obj_slope1_left)))
&& (state != Falling) && (state != Fall_shoot) && (state != Falling_doublejump) && (state != Falling_Dashing2) && (state != Falling_Dashing2_airdash)
{	
	hspd_enemy = 0
}

if ((state = Crouching) or (state = Crouch_shoot)) && (hspd_enemy != 0)
&& (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
&& (!place_meeting(x,y+1,obj_convayerbelt_block_left)) && (!place_meeting(x,y+1,obj_convayerbelt_block_right))
	{
		global.jumpingdm = 0
		global.crouching = 0
		if (sprite_index = spr_player_crouch)
			{
				sprite_index = spr_player
				y -= 4;
			}
		State_machine_switch_state(Falling)	
	}

//moving just off convayer belt
if (place_meeting(x+2,y+1,obj_convayerbelt_block_left)) && (!place_meeting(x-2,y,obj_block)) && (!place_meeting(x-2,y,obj_slope1_left)) && (!place_meeting(x-2,y,obj_slope1_right))
 && (!place_meeting(x,y+1,obj_convayerbelt_block_left))
	{
		x -= 2
	}
else if (place_meeting(x-2,y+1,obj_convayerbelt_block_right)) && (!place_meeting(x+2,y,obj_block)) && (!place_meeting(x+2,y,obj_slope1_left)) && (!place_meeting(x+2,y,obj_slope1_right))
 && (!place_meeting(x,y+1,obj_convayerbelt_block_right))
	{
		x += 2
	}





//trailer movement
if (input_horizontal > 0)
{
	hspd = 1/2;	
}
else if (input_horizontal < 0)
{
	hspd = -1/2;	
}
else hspd =0;

if (input_horizontal2 > 0)
{
	vspd = -1/2;	
}
else if (input_horizontal2 < 0)
{
	vspd = 1/2;	
}
else vspd =0;











//ROOM TRANSITIONS
#region
//room transitions-normal
#region
if (righty != 1) && (lefty != 1) && (global.room_transition = 1) && (global.room_transition_notnowL1 = 1)
        {
		script_execute(doors1);
		if (instance_exists(obj_door_normal_leftAlt)) or (instance_exists(obj_door_normal_rightAlt))
		{
			script_execute(doors1Alt);
		}
		if (instance_exists(obj_door_normal_left_more)) or (instance_exists(obj_door_normal_right_more))
		{
			script_execute(doors1more);
		}
        if (state = Crouching) or (state = Crouch_shoot)
	    {
		    y -= 5;
		    sprite_index = spr_player;
		    global.crouching = 0;
	    }
		if (global.state != Jumping) && (global.state != Jump_after_Dashing2)
					{
					State_machine_switch_state(global.state);
					}
					else if (global.state = Jumping) or (global.state = Jump_after_Dashing2)
					{
					State_machine_switch_state(Falling);
					}
		hspd = 0;
		vspd = 0;
		input_horizontal = 0;
        righty = 1;
        x = obj_door_normal_left.x-28;
        y = obj_door_normal_left.y+16;
        jump = 0;
        jump_held = 0;
        }
if (righty = 1) && (global.room_transition_notnowL1 = 1)
        {
            if (global.mapgrid_1x1 == 0)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_left.x-147;
	                    y = obj_door_normal_left.y+16;
	                }
            
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                //x = obj_room_transition_l2r1.x-227;
	                x = obj_door_normal_left.x-313;
	                y = obj_door_normal_left.y-74;
	            }
			}
			else if (global.mapgrid_1x1 == 1)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_left.x-147;
	                    y = obj_door_normal_left.y+16;
	                }
            
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                //x = obj_room_transition_l2r1.x-227;
	                x = obj_door_normal_left.x-307;
	                y = obj_door_normal_left.y-74;
	            }
			}
            global.room_x = 1;
        }
if (righty != 1) && (lefty != 1) && (global.room_transition = 1) && (global.room_transition_notnowR1 = 1)
        {
		script_execute(doors1);
		if (instance_exists(obj_door_normal_leftAlt)) or (instance_exists(obj_door_normal_rightAlt))
		{
			script_execute(doors1Alt);
		}
		if (instance_exists(obj_door_normal_left_more)) or (instance_exists(obj_door_normal_right_more))
		{
			script_execute(doors1more);
		}
		if (state = Crouching) or (state = Crouch_shoot)
	    {
		    y -= 5;
		    sprite_index = spr_player;
		    global.crouching = 0;
	    }
        if (global.state != Jumping) && (global.state != Jump_after_Dashing2)
					{
					State_machine_switch_state(global.state);
					}
					else if (global.state = Jumping) or (global.state = Jump_after_Dashing2)
					{
					State_machine_switch_state(Falling);
					}
		hspd = 0;
		vspd = 0;
		input_horizontal = 0;
        lefty = 1;
        x = obj_door_normal_right.x+30;
        y = obj_door_normal_right.y+16;
        jump = 0;
        jump_held = 0;
        }
if (lefty = 1) && (global.room_transition_notnowR1 = 1)
        {
            if (global.mapgrid_1x1 == 0)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_right.x+147;
						y = obj_door_normal_right.y+16;
	                }
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                x = obj_door_normal_right.x-13;
	                y = obj_door_normal_right.y-74;
	            }
			}
			else if (global.mapgrid_1x1 == 1)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_right.x+147;
						y = obj_door_normal_right.y+16;
	                }
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                x = obj_door_normal_right.x-14;
	                y = obj_door_normal_right.y-74;
	            }
			}
            global.room_x = 1;
        }
#endregion

//room transitions ALT
#region
if (righty != 1) && (lefty != 1) && (global.room_transition1 = 1) && (global.room_transition_notnowL2 = 1)
        {
		script_execute(doors1Alt);
		if (instance_exists(obj_door_normal_left)) or (instance_exists(obj_door_normal_right))
		{
			script_execute(doors1);
		}
		if (instance_exists(obj_door_normal_left_more)) or (instance_exists(obj_door_normal_right_more))
		{
			script_execute(doors1more);
		}
		if (state = Crouching) or (state = Crouch_shoot)
	    {
		    y -= 5;
		    sprite_index = spr_player;
		    global.crouching = 0;
	    }
        if (global.state != Jumping) && (global.state != Jump_after_Dashing2)
					{
					State_machine_switch_state(global.state);
					}
					else if (global.state = Jumping) or (global.state = Jump_after_Dashing2)
					{
					State_machine_switch_state(Falling);
					}
		hspd = 0;
		vspd = 0;
		input_horizontal = 0;
        righty = 1;
        x = obj_door_normal_leftAlt.x-28;
        y = obj_door_normal_leftAlt.y+16;
        jump = 0;
        jump_held = 0;
        }
if (righty = 1) && (global.room_transition_notnowL2 = 1)
        {
			if (global.mapgrid_1x1 == 0)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_leftAlt.x-147;
	                    y = obj_door_normal_leftAlt.y+16;
	                }
            
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                //x = obj_room_transition_l2r1.x-227;
	                x = obj_door_normal_leftAlt.x-307;
	                y = obj_door_normal_leftAlt.y-74;
	            }
			}
			else if (global.mapgrid_1x1 == 1)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_leftAlt.x-147;
	                    y = obj_door_normal_leftAlt.y+16;
	                }
            
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                //x = obj_room_transition_l2r1.x-227;
	                x = obj_door_normal_leftAlt.x-307;
	                y = obj_door_normal_leftAlt.y-74;
	            }
			}
			
			
            global.room_x = 1;
        }
if (righty != 1) && (lefty != 1) && (global.room_transition1 = 1) && (global.room_transition_notnowR2 = 1)
        {
		script_execute(doors1Alt);
		if (instance_exists(obj_door_normal_left)) or (instance_exists(obj_door_normal_right))
		{
			script_execute(doors1);
		}
		if (instance_exists(obj_door_normal_left_more)) or (instance_exists(obj_door_normal_right_more))
		{
			script_execute(doors1more);
		}
		if (state = Crouching) or (state = Crouch_shoot)
	    {
		    y -= 5;
		    sprite_index = spr_player;
		    global.crouching = 0;
	    }
        if (global.state != Jumping) && (global.state != Jump_after_Dashing2)
					{
					State_machine_switch_state(global.state);
					}
					else if (global.state = Jumping) or (global.state = Jump_after_Dashing2)
					{
					State_machine_switch_state(Falling);
					}
		hspd = 0;
		vspd = 0;
		input_horizontal = 0;
        lefty = 1;
        x = obj_door_normal_rightAlt.x+30;
        y = obj_door_normal_rightAlt.y+16;
        jump = 0;
        jump_held = 0;
        }
if (lefty = 1) && (global.room_transition_notnowR2 = 1)
        {
			if (global.mapgrid_1x1 == 0)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_rightAlt.x+147;
						y = obj_door_normal_rightAlt.y+16;
	                }
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                x = obj_door_normal_rightAlt.x-13;
	                y = obj_door_normal_rightAlt.y-74;
	            }
			}
			else if (global.mapgrid_1x1 == 1)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_rightAlt.x+147;
						y = obj_door_normal_rightAlt.y+16;
	                }
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                x = obj_door_normal_rightAlt.x-16;
	                y = obj_door_normal_rightAlt.y-74;
	            }
			}
			
            global.room_x = 1;
        }
#endregion
	
//////////////////////room transitions_more
#region
		if (righty != 1) && (lefty != 1) && (global.room_transition_more = 1) && (global.room_transition_notnowL_more = 1)
        {
		script_execute(doors1more);
		if (instance_exists(obj_door_normal_left)) or (instance_exists(obj_door_normal_right))
		{
			script_execute(doors1);
		}
		if (instance_exists(obj_door_normal_leftAlt)) or (instance_exists(obj_door_normal_rightAlt))
		{
			script_execute(doors1Alt);
		}
		if (state = Crouching) or (state = Crouch_shoot)
	    {
		    y -= 5;
		    sprite_index = spr_player;
		    global.crouching = 0;
	    }
        if (global.state != Jumping) && (global.state != Jump_after_Dashing2)
					{
					State_machine_switch_state(global.state);
					}
					else if (global.state = Jumping) or (global.state = Jump_after_Dashing2)
					{
					State_machine_switch_state(Falling);
					}
		hspd = 0;
		vspd = 0;
		input_horizontal = 0;
        righty = 1;
        x = obj_door_normal_left_more.x-28;
        y = obj_door_normal_left_more.y+16;
        jump = 0;
        jump_held = 0;
        }
if (righty = 1) && (global.room_transition_notnowL_more = 1)
        {
			if (global.mapgrid_1x1 == 0)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_left_more.x-147;
	                    y = obj_door_normal_left_more.y+16;
	                }
            
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                //x = obj_room_transition_l2r1.x-227;
	                x = obj_door_normal_left_more.x-307;
	                y = obj_door_normal_left_more.y-74;
	            }
			}
			else if (global.mapgrid_1x1 == 1)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_left_more.x-147;
	                    y = obj_door_normal_left_more.y+16;
	                }
            
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                //x = obj_room_transition_l2r1.x-227;
	                x = obj_door_normal_left_more.x-307;
	                y = obj_door_normal_left_more.y-74;
	            }
			}
			
            global.room_x = 1;
        }
if (righty != 1) && (lefty != 1) && (global.room_transition_more = 1) && (global.room_transition_notnowR_more = 1)
        {
		script_execute(doors1more);
		if (instance_exists(obj_door_normal_left)) or (instance_exists(obj_door_normal_right))
		{
			script_execute(doors1);
		}
		if (instance_exists(obj_door_normal_leftAlt)) or (instance_exists(obj_door_normal_rightAlt))
		{
			script_execute(doors1Alt);
		}
		if (state = Crouching) or (state = Crouch_shoot)
	    {
		    y -= 5;
		    sprite_index = spr_player;
		    global.crouching = 0;
	    }
        if (global.state != Jumping) && (global.state != Jump_after_Dashing2)
					{
					State_machine_switch_state(global.state);
					}
					else if (global.state = Jumping) or (global.state = Jump_after_Dashing2)
					{
					State_machine_switch_state(Falling);
					}
		hspd = 0;
		vspd = 0;
		input_horizontal = 0;
        lefty = 1;
        x = obj_door_normal_right_more.x+30;
        y = obj_door_normal_right_more.y+16;
        jump = 0;
        jump_held = 0;
        }
if (lefty = 1) && (global.room_transition_notnowR_more = 1)
        {
			if (global.mapgrid_1x1 == 0)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_right_more.x+147;
						y = obj_door_normal_right_more.y+16;
	                }
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                x = obj_door_normal_right_more.x-13;
	                y = obj_door_normal_right_more.y-74;
	            }
			}
			else if (global.mapgrid_1x1 == 1)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_right_more.x+147;
						y = obj_door_normal_right_more.y+16;
	                }
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                x = obj_door_normal_right_more.x-14;
	                y = obj_door_normal_right_more.y-74;
	            }
			}
			
            global.room_x = 1;
        }
#endregion
#endregion


if (global.room_transition_notnowL1 = 0) && (global.room_transition_notnowR1 = 0) && (global.room_transition_notnowL2 = 0) && (global.room_transition_notnowR2 = 0)
 && (global.room_transition_notnowL_more = 0) && (global.room_transition_notnowR_more = 0) && (global.room_transition_nodoors <= 0) && (global.room_transition_nodoors_2 <= 0) && (global.room_transition_nodoors_more <= 0)
{
	global.room_x = 0;	
}

