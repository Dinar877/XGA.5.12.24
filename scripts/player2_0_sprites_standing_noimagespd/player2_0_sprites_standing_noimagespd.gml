function player2_0_sprites_standing_noimagespd() {
	with (obj_player)
	{
    
	//global.aiming_forward
	    if (global.aiming_up = 0) && (global.aiming_trueup = 0) && (global.aiming_truedown = 0) && (global.aiming_down = 0) && (global.turning = 0) 
	    {
	        global.aiming_forward = 1;
	        //Aiming forward stuff-Idle
	        if (state = Idle) && (global.facingDir = -1) && (global.jumping = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_stand_left_2;
	            y = obj_player.y+1;
	            x = obj_player.x;
	            }
	        }
	        else if (state = Idle) && (global.facingDir = 1) && (global.jumping = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            y = obj_player.y+1;
	            x = obj_player.x;
	            sprite_index = spr_stand_right_2;
	            }
	        }
        
        
        
	        //Aiming forward stuff-Move
	        if (state = Move) && (global.facingDir = -1)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_run_left1;
	            x = obj_player.x+3;
	            y = obj_player.y-1;
	            }
	        }
	        else if (state = Move) && (global.facingDir = 1)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_run_right;
	            x = obj_player.x-2;
	            y = obj_player.y-1;
	            }
	        }
		
        
        
	        //jumping-normal
	        if ((state = Jumping) or (state= Falling)) && (global.facingDir = -1) && (global.jumpingdm = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_jump_left;
	            x = obj_player.x;
	            y = obj_player.y;
	            }
	        }
	        else if ((state = Jumping) or (state= Falling)) && (global.facingDir = 1) && (global.jumpingdm = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_jump_right;
	            x = obj_player.x;
	            y = obj_player.y;
	            }
	        }
	    }
    
	//global.aiming_up
	    if (global.aiming_up = 1) && (global.aiming_trueup = 0) && (global.aiming_down = 0) && (global.aiming_truedown = 0) && (global.turning = 0)
	    {
	        global.aiming_forward = 1;
	        //Aiming forward stuff-Idle
	        if (state = Idle) && (global.facingDir = -1) && (global.jumping = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            y = obj_player.y+1;
	            x = obj_player.x;
	            sprite_index = spr_stand_upleft_2;
	            }
	        }
	        else if (state = Idle) && (global.facingDir = 1) && (global.jumping = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            y = obj_player.y+1;
	            x = obj_player.x;
	            sprite_index = spr_stand_upright_2;
	            }
	        }
        
        
        
	        //Aiming forward stuff-Move
	        if (state = Move) && (global.facingDir = -1)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_run_upleft;
	            x = obj_player.x+3;
	            y = obj_player.y-1;
	            }
	        }
	        else if (state = Move) && (global.facingDir = 1)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_run_upright;
	            x = obj_player.x-2;
	            y = obj_player.y-1;
	            }
	        }
        
	        //jumping-normal
	        if ((state = Jumping) or (state= Falling)) && (global.facingDir = -1) && (global.jumpingdm = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_jump_up_left;
	            x =obj_player.x;
	            y =obj_player.y+1;
	            }
	        }
	        else if ((state = Jumping) or (state= Falling)) && (global.facingDir = 1) && (global.jumpingdm = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_jump_up_right;
	            x =obj_player.x-1;
	            y =obj_player.y+1;
	            }
	        }
	    }
	//global.aiming_trueup
	    if (global.aiming_up = 0) && (global.aiming_trueup = 1) && (global.aiming_down = 0) && (global.turning = 0) && (global.aiming_truedown = 0)
	    {
	        global.aiming_forward = 1;
	        //Aiming forward stuff-Idle
	        if (state = Idle) && (global.facingDir = -1) && (global.jumping = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            y = obj_player.y+1;
	            x = obj_player.x;
	            sprite_index = spr_stand_Trueupleft_2;
	            }
	        }
	        else if (state = Idle) && (global.facingDir = 1) && (global.jumping = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            y = obj_player.y+1;
	            x = obj_player.x;
	            sprite_index = spr_stand_Trueupright_2
	            }
	        }
        
        
        
	        //Aiming forward stuff-Move
	        if (state = Move) && (global.facingDir = -1)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_run_trueupleft;
	            x = obj_player.x+3;
	            y = obj_player.y-1;
	            }
	        }
	        else if (state = Move) && (global.facingDir = 1)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_run_trueupright;
	            x = obj_player.x-2;
	            y = obj_player.y-1;
	            }
	        }
        
        
	        //jumping-normal
	        if ((state = Jumping) or (state= Falling)) && (global.facingDir = -1) && (global.jumpingdm = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_jump_trueup_left;
	            x =obj_player.x;
	            y =obj_player.y+1;
	            }
	        }
	        else if ((state = Jumping) or (state= Falling)) && (global.facingDir = 1) && (global.jumpingdm = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_jump_trueup_right;
	            x =obj_player.x-1;
	            y =obj_player.y+1;
	            }
	        }
	    }
	//global.aiming_down
	    if (global.aiming_up = 0) && (global.aiming_trueup = 0) && (global.aiming_down = 1) && (global.turning = 0) && (global.aiming_truedown = 0)
	    {
	        global.aiming_forward = 1;
	        //Aiming forward stuff-Idle
	        if (state = Idle) && (global.facingDir = -1) && (global.jumping = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            y = obj_player.y+1;
	            x = obj_player.x;
	            sprite_index = spr_stand_downleft_2;
	            }
	        }
	        else if (state = Idle) && (global.facingDir = 1) && (global.jumping = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            y = obj_player.y+1;
	            x = obj_player.x;
	            sprite_index = spr_stand_downright_2;
	            }
	        }
        
        
        
	        //Aiming forward stuff-Move
	        if (state = Move) && (global.facingDir = -1)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_run_downleft;
	            x = obj_player.x+3;
	            y = obj_player.y-1;
	            }
	        }
	        else if (state = Move) && (global.facingDir = 1)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_run_downright;
	            x = obj_player.x-2;
	            y = obj_player.y-1;
	            }
	        }
        
        
	        //jumping-normal
	        if ((state = Jumping) or (state= Falling)) && (global.facingDir = -1) && (global.jumpingdm = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_jump_down_lefrt;
	            x =obj_player.x;
	            y =obj_player.y+1;
	            }
	        }
	        else if ((state = Jumping) or (state= Falling)) && (global.facingDir = 1) && (global.jumpingdm = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_jump_down_right;
	            x =obj_player.x-1;
	            y =obj_player.y+1;
	            }
	        }
	    }    
    
    
	//////True down
	//global.aiming_down
	    if (global.aiming_up = 0) && (global.aiming_trueup = 0) && (global.aiming_down = 0) && (global.turning = 0) && (global.aiming_truedown = 1)
	    {
	        //Aiming forward stuff-Idle
	        if (state = Idle) && (global.facingDir = -1) && (global.jumping = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            y = obj_player.y+1;
	            x = obj_player.x;
	            sprite_index = spr_stand_Truedownleft_2;
				image_speed1 = 0.5;
	            }
	        }
	        else if (state = Idle) && (global.facingDir = 1) && (global.jumping = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            y = obj_player.y+1;
	            x = obj_player.x;
	            sprite_index = spr_stand_Truedownright_2;
				image_speed1 = 0.5;
	            }
	        }
        
	        //Aiming forward shoot-Idle
	        if (state = Shooting) && (global.facingDir = -1) && (global.jumping = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_shoot_Truedown_left;
	            y = obj_player.y-2;
	            x = obj_player.x+2;
	            }
	        }
	        else if (state = Shooting) && (global.facingDir = 1) && (global.jumping = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_shoot_Truedown_right;
	            y = obj_player.y-2;
	            x = obj_player.x-1;
	            }
	        }
        
        
        
        
        
	        //Aiming forward stuff-crouch
	        if (state = Crouching) && (global.facingDir = -1)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_crouch_Truedown_left;
	            image_speed1 = 0.5;
	            x = obj_player.x+3;
	            y = obj_player.y;
	            }
	        }
	        else if (state = Crouching) && (global.facingDir = 1)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_crouch_Truedown_right;
	            image_speed1 = 0.5;
	            x = obj_player.x-3;
	            y = obj_player.y;
	            }
	        }
        
	        //Aiming forward stuff-crouch shoot
	        if (state = Crouch_shoot) && (global.facingDir = -1)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_shoot_crouch_Truedown_left;
	            image_speed1 = 0.5;
	            x = obj_player.x+3;
	            y = obj_player.y-1;
	            }
	        }
	        else if (state = Crouch_shoot) && (global.facingDir = 1)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_shoot_crouch_Truedown_right;
	            image_speed1 = 0.5;
	            x = obj_player.x-3;
	            y = obj_player.y-1;
	            }
	        }
        
        
        
        
        
        
        
        
        
	        //jumping-normal
	        if ((state = Jumping) or (state= Falling)) && (global.facingDir = -1) && (global.jumpingdm = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_jump_truedown_left;
	            x =obj_player.x;
	            y =obj_player.y-1;
	            }
	        }
	        else if ((state = Jumping) or (state= Falling)) && (global.facingDir = 1) && (global.jumpingdm = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_jump_truedown_right;
	            x =obj_player.x-1;
	            y =obj_player.y-1;
	            }
	        }
        
	        //jumping-shoot
	        if (state = Fall_shoot) && (global.facingDir = -1) && (global.jumpingdm = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_shoot_jump_Truedown_left;
	            x =obj_player.x;
	            y =obj_player.y-1;
	            }
	        }
	        else if (state = Fall_shoot) && (global.facingDir = 1) && (global.jumpingdm = 0)
	        {
	            with (object_player2_0_sprites)
	            {
	            sprite_index = spr_shoot_jump_Truedown_right;
	            x =obj_player.x-1;
	            y =obj_player.y-1;
	            }
	        }
	    }
    
	///////////////////////////////////////////////////////////////////    
    
	//jumping-spin
	   if ((state = Jumping) or (state= Falling)) && (global.facingDir = -1) && (global.jumpingdm = 1) && (state != Wall_jump) 
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_spinjump_left;
	        image_speed1 = 1;
	        x = obj_player.x;
	        y = obj_player.y;
	        }
	    }
	    else if ((state = Jumping) or (state= Falling)) && (global.facingDir = 1) && (global.jumpingdm = 1) && (state != Wall_jump)
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_spinjump_right;
	        image_speed1 = 1;
	        x = obj_player.x;
	        y = obj_player.y;
	        }
	    }
		/*
	    //jumping-screwattack
	    if ((state = Jumping) or (state= Falling)) && (global.facingDir = -1) && (global.jumpingdm = 1) && (state != Wall_jump) && (global.screwjump = 1)// && (global.spacejump = 1)
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_screwjump_left1;
	        image_speed1 = 1;
	        x = obj_player.x;
	        y = obj_player.y-2;
	        }
	    }
	    else if ((state = Jumping) or (state= Falling)) && (global.facingDir = 1) && (global.jumpingdm = 1) && (state != Wall_jump) && (global.screwjump = 1)// && (global.spacejump = 1)
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_screwjump_right1;
	        image_speed1 = 1;
	        x = obj_player.x;
	        y = obj_player.y-2;
	        }
	    }
	    //jumping-spacejump
	    if ((state = Jumping) or (state= Falling)) && (global.facingDir = -1) && (global.jumpingdm = 1) && (state != Wall_jump) && (global.spacejump = 1) && (global.screwjump = 0)
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_spacejump_left;
	        image_speed1 = 1;
	        x = obj_player.x;
	        y = obj_player.y-2;
	        }
	    }
	    else if ((state = Jumping) or (state= Falling)) && (global.facingDir = 1) && (global.jumpingdm = 1) && (state != Wall_jump) && (global.spacejump = 1) && (global.screwjump = 0)
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_spacejump_right;
	        image_speed1 = 1;
	        x = obj_player.x;
	        y = obj_player.y-2;
	        }
	    }
		*/
    
	////////////////////////////////////////////////////////////////////////////////////    
    
    
    
	//hanging    
    
    
    
    
	    //hanging-normal jump
	    if (state = Ledge_grab) && (place_meeting(x-1,y,obj_block)) && (global.jumpingdm = 0) && (global.lockdown_facingDir = 0)
	     && (global.hang = 1) && (global.turningLedge = 0)
	    {
	    with (object_player2_0_sprites)
	        {
	        sprite_index = spr_hang_left;
	        x = obj_player.x+1;
	        y = obj_player.y-1;
	        }
	    }
	    else if (state = Ledge_grab) && (place_meeting(x+1,y,obj_block)) && (global.jumpingdm = 0) && (global.lockdown_facingDir = 0)
	     && (global.hang = 1) && (global.turningLedge = 0)
	    {
	    with (object_player2_0_sprites)
	        {
	        sprite_index = spr_hang_right;
	        x = obj_player.x;
	        y = obj_player.y-1;
	        }
	    }
	    //hanging-dm jump
	    if (state = Ledge_grab) && (global.facingDir = -1) && (global.jumpingdm = 1) && (global.lockdown_facingDir = 0)
	     && (global.hang = 1) && (global.turningLedge = 0)
	    {
	    with (object_player2_0_sprites)
	        {
	        sprite_index = spr_hang_left;
	        x = obj_player.x+1;
	        y = obj_player.y+6;
	        }
	    }
	    else if (state = Ledge_grab) && (global.facingDir = 1) && (global.jumpingdm = 1) && (global.lockdown_facingDir = 0)
	     && (global.hang = 1) && (global.turningLedge = 0)
	    {
	    with (object_player2_0_sprites)
	        {
	        sprite_index = spr_hang_right;
	        x = obj_player.x;
	        y = obj_player.y+6;
	        }
	    }
    
    
    
    
    
    
    
    

    
    
    
    
	    //hanging-dm prepjump
	    if (state = Ledge_jumpprep) && (place_meeting(x+1,y,obj_block))
	    {
	    if (global.animation_start1 = 0)
	    {
	    with (object_player2_0_sprites)
	        {
        
	        sprite_index = spr_cliff_jumpprep_right;
	        image_speed1 = 1;
	        x = obj_player.x+1;
	        y = obj_player.y-1;
	            if (image_index >= 3)
	            {
	                image_speed1 = 0;
	            }
	        }
	    }
	    else if (global.animation_start1 = 1)
	    {
	    with(object_player2_0_sprites)
	    {
	        sprite_index = spr_cliff_jumpprep_right;
	        x = obj_player.x+1;
	        y = obj_player.y-1;
	        if (image_index < 1)
	        {
	        image_speed1 = 0;
	        global.animation_start1 = 0;
	        }
	        else if (image_index != 0)
	        {
	        image_speed1 = -1;
	        }
        
	    }
	    }
	    }
    
	    if (state = Ledge_jumpprep) && (place_meeting(x-1,y,obj_block))
	    {
	    if (global.animation_start1 = 0)
	    {
	    with (object_player2_0_sprites)
	        {
        
	        sprite_index = spr_cliff_jumpprep_left;
	        image_speed1 = 1;
	        x = obj_player.x;
	        y = obj_player.y-1;
	            if (image_index >= 3)
	            {
	                image_speed1 = 0;
	            }
	        }
	    }
	    else if (global.animation_start1 = 1)
	    {
	    with(object_player2_0_sprites)
	    {
	        sprite_index = spr_cliff_jumpprep_left;
	        x = obj_player.x;
	        y = obj_player.y-1;
	        if (image_index < 1)
	        {
	        image_speed1 = 0;
	        global.animation_start1 = 0;
	        }
	        else if (image_index != 0)
	        {
	        image_speed1 = -1;
	        }
        
	    }
	    }
	    }
    
	/////////////////////////////////////////////////////////////////////////////////////////////////    
    
    
    
	//climbing stuff    
    
    
    
    
	    //climbing
	    if (global.climbing = 1) && (global.hang = 0) && (global.facingDir = -1) && (global.jumpingdm = 0)
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_climbing_left;
	        image_speed1 = 0.5;
	        if (image_index >= 14)
	        {
	            global.animation_end = 1;
	        }
	        }
	    }
	    else if (global.climbing = 1) && (global.hang = 0) && (global.facingDir = 1) && (global.jumpingdm = 0)
	    {
	        with (object_player2_0_sprites)
	        {
	        sprite_index = spr_climbing_right;
	        image_speed1 = 0.5;
	        if (image_index >= 14)
	        {
	            global.animation_end = 1;
	        }
	        }
	    }
    
    
	    //climbing-dm
	    if (state = Climb_up_ledge) && (global.facingDir = -1) && (global.jumpingdm = 1)
	    {
	        with (object_player2_0_sprites)
	        {
	        x = obj_player.x;
	        y = obj_player.y+7;
	        sprite_index = spr_climbing_left;
	        image_speed1 = 0.5;
	        if (image_index >= 14)
	        {
	            global.animation_end = 1;
	        }
	        }
	    }
	    else if (state = Climb_up_ledge) && (global.facingDir = 1) && (global.jumpingdm = 1)
	    {
	        with (object_player2_0_sprites)
	        {
	        x = obj_player.x;
	        y = obj_player.y+7;
	        sprite_index = spr_climbing_right;
	        image_speed1 = 0.5;
	        if (image_index >= 14)
	        {
	            global.animation_end = 1;
	        }
	        }
	    }

	/////////////////////////////////////////////////////////////////////////////////////////////////////    
        
	//Crouching
	    if (state = Crouching) && (global.turning = 0)
	    {
	        if (global.facingDir = 1) && (global.aiming_truedown = 0)
	        {
	            if (global.aiming_trueup = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_crouch_trueupright;
	                    x = obj_player.x;
	                    y = obj_player.y-7;
	                }
	            }
	            if (global.aiming_up = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_crouch_upright;
	                    x = obj_player.x;
	                    y = obj_player.y-3;
	                }
	            }
	            if (global.aiming_down = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_crouch_downright;
	                    x = obj_player.x;
	                    y = obj_player.y-1;
	                }
	            }
	            if (global.aiming_up = 0) && (global.aiming_down = 0) && (global.aiming_trueup = 0)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_crouch_right;
	                    x = obj_player.x;
	                    y = obj_player.y-1;
	                }
	            }
	        }
	        if (global.facingDir = -1) && (global.aiming_truedown = 0)
	        {
	            if (global.aiming_trueup = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_crouch_trueupleft;
	                    x = obj_player.x+6;
	                    y = obj_player.y-7;
	                }
	            }
	            else if (global.aiming_up = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_crouch_upleft;
	                    x = obj_player.x+2;
	                    y = obj_player.y-3;
	                }
	            }
	            else if (global.aiming_down = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_crouch_downleft;
	                    x = obj_player.x-1;
	                    y = obj_player.y-1;
	                }
	            }
	            else if (global.aiming_up = 0) && (global.aiming_down = 0) && (global.aiming_trueup = 0)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_crouch_left;
	                    x = obj_player.x-2;
	                    y = obj_player.y-1;
	                }
	            }
	        }
	    }

	//////////////////////////////////////////////////////////////////////////////////////////////////    
        
	if (state = Shooting)
	    {
	        if (global.facingDir = 1) && (global.aiming_truedown = 0)
	        {
	            if (global.aiming_trueup = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_shoot_trueup_right;
	                    y = obj_player.y-1;
	                    x = obj_player.x;
	                }
	            }
	            else if (global.aiming_up = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_shoot_upright;
	                    y = obj_player.y-1;
	                    x = obj_player.x;
	                }
	            }
	            else if (global.aiming_down = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_shoot_downright;
	                    x = obj_player.x;
	                    y = obj_player.y-1;
	                }
	            }
	            else if (global.aiming_up = 0) && (global.aiming_down = 0) && (global.aiming_trueup = 0)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_shoot_right;
	                    x = obj_player.x;
	                    y = obj_player.y-1;
	                }
	            }
	        }
	        if (global.facingDir = -1) && (global.aiming_truedown = 0)
	        {
	            if (global.aiming_trueup = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_shoot_trueup_left;
	                    y = obj_player.y-1;
	                    x = obj_player.x;
	                }
	            }
	            else if (global.aiming_up = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_shoot_upleft;
	                    y = obj_player.y-1;
	                    x = obj_player.x;
	                }
	            }
	            else if (global.aiming_down = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_shoot_downleft;
	                    x = obj_player.x;
	                    y = obj_player.y-1;
	                }
	            }
	            else if (global.aiming_up = 0) && (global.aiming_down = 0) && (global.aiming_trueup = 0)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_shoot_left;
	                    x = obj_player.x;
	                    y = obj_player.y-1;
	                }
	            }
	        }
	    }   

	//Shooting-crouching
	    if (state = Crouch_shoot)
	    {
	        if (global.facingDir = 1) && (global.aiming_truedown = 0)
	        {
	            if (global.aiming_trueup = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_crouchshoot_trueupright;
	                    x = obj_player.x+1;
	                    y = obj_player.y-6;
	                }
	            }
	            else if (global.aiming_up = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_crouchshoot_upright;
	                    x = obj_player.x + 1;
	                    y = obj_player.y - 2;
	                }
	            }
	            else if (global.aiming_down = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_crouchshoot_downright;
	                    x =obj_player.x + 1;
	                    y =obj_player.y - 1;
	                }
	            }
	            else if (global.aiming_up = 0) && (global.aiming_down = 0) && (global.aiming_trueup = 0)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_crouchshoot_right;
	                    x =obj_player.x + 1;
	                    y =obj_player.y - 1;
	                }
	            }
	        }
	        if (global.facingDir = -1) && (global.aiming_truedown = 0)
	        {
	            if (global.aiming_trueup = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_crouchshoot_trueupleft;
	                    x =obj_player.x+7;
	                    y =obj_player.y-6;
	                }
	            }
	            else if (global.aiming_up = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_crouchshoot_upleft;
	                    x =obj_player.x+4;
	                    y =obj_player.y-2;
	                }
	            }
	            else if (global.aiming_down = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_crouchshoot_downleft;
	                    x =obj_player.x+1;
	                    y =obj_player.y-1;
	                }
	            }
	            else if (global.aiming_up = 0) && (global.aiming_down = 0) && (global.aiming_trueup = 0)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_crouchshoot_left;
	                    y = obj_player.y-1;
	                    x = obj_player.x;                
	                }
	            }
	        }
	    }    

    
	//shooting-jumping
	    if (state = Fall_shoot)
	    {
	        if (global.facingDir = 1) && (global.aiming_truedown = 0)
	        {
	            if (global.aiming_trueup = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_shootjump_trueupright;
	                    x =obj_player.x+2;
	                    y =obj_player.y-5;
	                }
	            }
	            else if (global.aiming_up = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_shootjump_upright;
	                    x =obj_player.x+2;
	                    y =obj_player.y-1;
	                }
	            }
	            else if (global.aiming_down = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_shootjump_downright;
	                    x =obj_player.x+5;
	                    y =obj_player.y;
	                }
	            }
	            else if (global.aiming_up = 0) && (global.aiming_down = 0) && (global.aiming_trueup = 0)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_shootjump_right;
	                    x =obj_player.x+5;
	                    y =obj_player.y;
	                }
	            }
	        }
	        if (global.facingDir = -1) && (global.aiming_truedown = 0)
	        {
	            if (global.aiming_trueup = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_shootjump_trueupleft;
	                    x =obj_player.x+3;
	                    y =obj_player.y-5;
	                }
	            }
	            else if (global.aiming_up = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_shootjump_upleft;
	                    x =obj_player.x;
	                    y =obj_player.y-1;
	                }
	            }
	            else if (global.aiming_down = 1)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_shootjump_downleft;
	                    x =obj_player.x-3;
	                    y =obj_player.y;
	                }
	            }
	            else if (global.aiming_up = 0) && (global.aiming_down = 0) && (global.aiming_trueup = 0)
	            {
	                with (object_player2_0_sprites)
	                {
	                    sprite_index = spr_shootjump_left;
	                    x =obj_player.x-4;
	                    y =obj_player.y;
	                }
	            }
	        }
	    }        

	////////////////////////////////////////////////////////////////////////////////////////////    
     
	//Walljumping
	    if (global.facingDir = 1) && (global.walljump = 1) && (state != Jumping)
	    {
	        with (object_player2_0_sprites)
	        {
		        sprite_index = spr_cliff_jump_left;
		        image_speed1 = 0.6;
		        x = obj_player.x-1;
		        y = obj_player.y;
	        }
	    }
	    if (global.facingDir = -1) && (global.walljump = 1) && (state != Jumping)
	    {
	        with (object_player2_0_sprites)
	        {
		        sprite_index = spr_cliff_jump_right;
		        image_speed1 = 0.6;
		        x = obj_player.x-1;
		        y = obj_player.y;
	        }
	    }
    
	//////////////////////////////////////////////////////////////////////////////////////////// 

	///Turning-standing
	    //aiming forward
	    if (state != Ledge_grab) && (state != Ledge_jumpprep)
	    {
	    if (global.aiming_up = 0) && (global.aiming_trueup = 0) && (global.aiming_down = 0) && (global.crouching = 0) && (state != Falling) && (global.jumping = 0) && (state != Hurt)
	    {
	        if (global.turning = 1) && (global.facingDir = 1) && (global.lockdown_facingDir = 0)
	        {
	        with (object_player2_0_sprites)
	            {
	        sprite_index = spr_turn_righttoleft;
	        image_speed1 = 0.4;
	        y = obj_player.y+1;
	        x = obj_player.x;
	        if (image_index >= 2)
	        {
	        global.turning = 0;
	        global.facingDir = -1;
	        }
	            }
	        }
	        if (global.turning = 1) && (global.facingDir = -1) && (global.lockdown_facingDir = 0)
	        {
	        with (object_player2_0_sprites)
	            {
	        sprite_index = spr_turn_lefttoright;
	        image_speed1 = 0.4;
	        y = obj_player.y+1;
	        x = obj_player.x+3;
	        if (image_index >= 2)
	        {
	        global.turning = 0;
	        global.facingDir = 1;
	        }
	            }
	        }
	    }

	    //aimingup
	    if (global.aiming_up = 1) && (global.aiming_trueup = 0) && (global.aiming_down = 0) && (global.crouching = 0) && (state != Falling) && (global.jumping = 0) && (state != Hurt)
	    {
	        if (global.turning = 1) && (global.facingDir = 1) && (global.lockdown_facingDir = 0)
	        {
	        with (object_player2_0_sprites)
	            {
	        sprite_index = spr_turn_uprighttoupleft;
	        image_speed1 = 0.4;
	        y = obj_player.y+1;
	        x = obj_player.x;
	        if (image_index >= 2)
	        {
	        global.turning = 0;
	        global.facingDir = -1;
	        with(obj_player)
	        {
	            //x -=2;
	        }
	        }
	            }
	        }
	        if (global.turning = 1) && (global.facingDir = -1) && (global.lockdown_facingDir = 0)
	        {
	        with (object_player2_0_sprites)
	            {
	        sprite_index = spr_turn_uplefttoupright;
	        image_speed1 = 0.4;
	        y = obj_player.y+1;
	        x = obj_player.x+3;
	        if (image_index >= 2)
	        {
	        global.turning = 0;
	        global.facingDir = 1;
	        with(obj_player)
	        {
	            //x +=2;
	        }
	        }
	            }
	        }
	    }
    
	    //aimingtrueup
	    if (global.aiming_up = 0) && (global.aiming_trueup = 1) && (global.aiming_down = 0) && (global.crouching = 0) && (state != Falling) && (global.jumping = 0) && (state != Hurt)
	    {
	        if (global.turning = 1) && (global.facingDir = 1) && (global.lockdown_facingDir = 0)
	        {
	        with (object_player2_0_sprites)
	            {
	        sprite_index = spr_turn_turighttotuleft;
	        image_speed1 = 0.4;
	        y = obj_player.y+1;
	        x = obj_player.x-2;
	        if (image_index >= 2)
	        {
	        global.turning = 0;
	        global.facingDir = -1;
	        with(obj_player)
	        {
	            //x -=2;
	        }
	        }
	            }
	        }
	        if (global.turning = 1) && (global.facingDir = -1) && (global.lockdown_facingDir = 0)
	        {
	        with (object_player2_0_sprites)
	            {
	        sprite_index = spr_turn_tulefttoturight;
	        image_speed1 = 0.4;
	        y = obj_player.y+1;
	        x = obj_player.x+5;
	        if (image_index >= 2)
	        {
	        global.turning = 0;
	        global.facingDir = 1;
	        with(obj_player)
	        {
	            //x +=2;
	        }
	        }
	            }
	        }
	    }
    
	    //aimingdown
	    if (global.aiming_up = 0) && (global.aiming_trueup = 0) && (global.aiming_down = 1) && (global.crouching = 0) && (state != Falling) && (global.jumping = 0) && (state != Hurt)
	    {
	        if (global.turning = 1) && (global.facingDir = 1) && (global.lockdown_facingDir = 0)
	        {
	        with (object_player2_0_sprites)
	            {
	        sprite_index = spr_turn_drighttodleft;
	        image_speed1 = 0.4;
	        y = obj_player.y+1;
	        x = obj_player.x;
	        if (image_index >= 2)
	        {
	        global.turning = 0;
	        global.facingDir = -1;
	        with(obj_player)
	        {
	            //x -=2;
	        }
	        }
	            }
	        }
	        if (global.turning = 1) && (global.facingDir = -1) && (global.lockdown_facingDir = 0)
	        {
	        with (object_player2_0_sprites)
	            {
	        sprite_index = spr_turn_dleftanddright;
	        image_speed1 = 0.4;
	        y = obj_player.y+1;
	        x = obj_player.x+3;
	        if (image_index >= 2)
	        {
	        global.turning = 0;
	        global.facingDir = 1;
	        with(obj_player)
	        {
	            //x +=2;
	        }
	        }
	            }
	        }
	    }
	//////////////////////////////
	///Turning-crouching
	    //aiming forward
	    if (state = Crouching)
	        {
	        if (global.aiming_up = 0) && (global.aiming_trueup = 0) && (global.aiming_down = 0) && (global.crouching = 1)
	        {
	            if (global.turning = 1) && (global.facingDir = 1)
	            {
	            with (other)
	                {
	                    sprite_index = spr_crouchturn_righttoleft;
	                    image_speed1 = 0.4;
	                    y = obj_player.y-3;
	                    x = obj_player.x+1;
	                    if (image_index >= 2)
	                    {
	                        global.turning = 0;
	                        global.facingDir = -1;
	                    }
	                }
	            }
            
	            if (global.turning = 1) && (global.facingDir = -1)
	            {
	            with (other)
	            {
	                sprite_index = spr_crouchturn_lefttoright;
	                image_speed1 = 0.4;
	                y = obj_player.y-3;
	                x = obj_player.x+2;
	                if (image_index >= 2)
	                {
	                global.turning = 0;
	                global.facingDir = 1;
	                }
	            }
                
	            }
            
	        }
	    }
    
    
    
	    //aiming up
	    if (state = Crouching)
	        {
	        if (global.aiming_up = 1) && (global.aiming_trueup = 0) && (global.aiming_down = 0) && (global.crouching = 1)
	        {
	            if (global.turning = 1) && (global.facingDir = 1)
	            {
	            with (other)
	                {
	                    sprite_index = spr_crouchturn_up_righttoleft;
	                    image_speed1 = 0.4;
	                    y = obj_player.y-3;
	                    x = obj_player.x+1;
	                    if (image_index >= 2)
	                    {
	                        global.turning = 0;
	                        global.facingDir = -1;
	                    }
	                }
	            }
            
	            if (global.turning = 1) && (global.facingDir = -1)
	            {
	            with (other)
	            {
	                sprite_index = spr_crouchturn_up_lefttoright;
	                image_speed1 = 0.4;
	                y = obj_player.y-3;
	                x = obj_player.x+2;
	                if (image_index >= 2)
	                {
	                global.turning = 0;
	                global.facingDir = 1;
	                }
	            }
                
	            }
            
	        }
	    }
    
	    //aiming trueup
	    if (state = Crouching)
	        {
	        if (global.aiming_up = 0) && (global.aiming_trueup = 1) && (global.aiming_down = 0) && (global.crouching = 1)
	        {
	            if (global.turning = 1) && (global.facingDir = 1)
	            {
	            with (other)
	                {
	                    sprite_index = spr_crouchturn_trueup_righttoleft;
	                    image_speed1 = 0.4;
	                    y = obj_player.y-3;
	                    x = obj_player.x+1;
	                    if (image_index >= 2)
	                    {
	                        global.turning = 0;
	                        global.facingDir = -1;
	                    }
	                }
	            }
            
	            if (global.turning = 1) && (global.facingDir = -1)
	            {
	            with (other)
	            {
	                sprite_index = spr_crouchturn_trueup_lefttoright;
	                image_speed1 = 0.4;
	                y = obj_player.y-3;
	                x = obj_player.x+2;
	                if (image_index >= 2)
	                {
	                global.turning = 0;
	                global.facingDir = 1;
	                }
	            }
                
	            }
            
	        }
	    }
    
    
	    //aiming down
	    if (state = Crouching)
	        {
	        if (global.aiming_up = 0) && (global.aiming_trueup = 0) && (global.aiming_down = 1) && (global.crouching = 1)
	        {
	            if (global.turning = 1) && (global.facingDir = 1)
	            {
	            with (other)
	                {
	                    sprite_index = spr_crouchturn_down_righttoleft;
	                    image_speed1 = 0.4;
	                    y = obj_player.y-3;
	                    x = obj_player.x+1;
	                    if (image_index >= 2)
	                    {
	                        global.turning = 0;
	                        global.facingDir = -1;
	                    }
	                }
	            }
            
	            if (global.turning = 1) && (global.facingDir = -1)
	            {
	            with (other)
	            {
	                sprite_index = spr_crouchturn_down_lefttoright;
	                image_speed1 = 0.4;
	                y = obj_player.y-3;
	                x = obj_player.x+2;
	                if (image_index >= 2)
	                {
	                global.turning = 0;
	                global.facingDir = 1;
	                }
	            }
                
	            }
            
	        }
	    }
    
    
    
	//////////////////////////////
	///Turning-jumping
	    //aiming forward
	    if (state = Falling)
	        {
	        if (global.aiming_up = 0) && (global.aiming_trueup = 0) && (global.aiming_down = 0) && (global.jumpingdm = 0)
	        {
	            if (global.turning = 1) && (global.facingDir = 1)
	            {
	            with (other)
	                {
	                    sprite_index = spr_turnjump_righttoleft;
	                    image_speed1 = 0.4;
	                    y = obj_player.y+3;
	                    x = obj_player.x+1;
	                    if (image_index >= 2)
	                    {
	                        global.turning = 0;
	                        global.facingDir = -1;
	                        with(obj_player)
	                        {
        
	                        }
	                    }
	                }
	            }
            
	            if (global.turning = 1) && (global.facingDir = -1)
	            {
	            with (other)
	            {
	                sprite_index = spr_turnjump_lefttoright;
	                image_speed1 = 0.4;
	                y = obj_player.y+3;
	                x = obj_player.x+2;
	                if (image_index >= 2)
	                {
	                global.turning = 0;
	                global.facingDir = 1;
	                with(obj_player)
	                        {
                        
	                        }
	                }
	            }
                
	            }
            
	        }
        
	    //aiming up
	        if (global.aiming_up = 1) && (global.aiming_trueup = 0) && (global.aiming_down = 0) && (global.jumpingdm = 0)
	        {
	            if (global.turning = 1) && (global.facingDir = 1)
	            {
	            with (other)
	                {
	                    sprite_index = spr_turnjump_up_righttoleft;
	                    image_speed1 = 0.4;
	                    y = obj_player.y+3;
	                    x = obj_player.x+1;
	                    if (image_index >= 2)
	                    {
	                        global.turning = 0;
	                        global.facingDir = -1;
	                    }
	                }
	            }
            
	            if (global.turning = 1) && (global.facingDir = -1)
	            {
	            with (other)
	            {
	                sprite_index = spr_turnjump_up_lefttoright;
	                image_speed1 = 0.4;
	                y = obj_player.y+3;
	                x = obj_player.x+2;
	                if (image_index >= 2)
	                {
	                global.turning = 0;
	                global.facingDir = 1;
	                }
	            }
                
	            }
            
	        }
        
	        //aiming trueup
	        if (global.aiming_up = 0) && (global.aiming_trueup = 1) && (global.aiming_down = 0) && (global.jumpingdm = 0)
	        {
	            if (global.turning = 1) && (global.facingDir = 1)
	            {
	            with (other)
	                {
	                    sprite_index = spr_turnjump_tup_righttoleft;
	                    image_speed1 = 0.4;
	                    y = obj_player.y+3;
	                    x = obj_player.x+1;
	                    if (image_index >= 2)
	                    {
	                        global.turning = 0;
	                        global.facingDir = -1;
	                    }
	                }
	            }
            
	            if (global.turning = 1) && (global.facingDir = -1)
	            {
	            with (other)
	            {
	                sprite_index = spr_turnjump_tup_lefttoright;
	                image_speed1 = 0.4;
	                y = obj_player.y+3;
	                x = obj_player.x+2;
	                if (image_index >= 2)
	                {
	                global.turning = 0;
	                global.facingDir = 1;
	                }
	            }
                
	            }
            
	        }
        
	        //aiming down
	        if (global.aiming_up = 0) && (global.aiming_trueup = 0) && (global.aiming_down = 1) && (global.jumpingdm = 0)
	        {
	            if (global.turning = 1) && (global.facingDir = 1)
	            {
	            with (other)
	                {
	                    sprite_index = spr_turnjump_down_righttoleft;
	                    image_speed1 = 0.4;
	                    y = obj_player.y+3;
	                    x = obj_player.x+1;
	                    if (image_index >= 2)
	                    {
	                        global.turning = 0;
	                        global.facingDir = -1;
	                    }
	                }
	            }
            
	            if (global.turning = 1) && (global.facingDir = -1)
	            {
	            with (other)
	            {
	                sprite_index = spr_turnjump_down_lefttoright;
	                image_speed1 = 0.4;
	                y = obj_player.y+3;
	                x = obj_player.x+2;
	                if (image_index >= 2)
	                {
	                global.turning = 0;
	                global.facingDir = 1;
	                }
	            }
                
	            }
            
	        }
	        }
        
        
        
	    }
	}



	//CHANGES HEIGHT TO CURRENT SPRITES, NOT OLD ONES
	if (obj_player.state != Climb_up_ledge) && ((global.image_speed_lockdown = 1) or (global.hang = 0))
	{
		y = obj_player.y+1
		x = obj_player.x
	}
	else
	{
		////////////////////////////////////////////////////////////////////////////////////    
    
    
    
		//hanging    
    
    
	    with(obj_player)
		{
    
		    //hanging-normal jump
		    if (state = Ledge_grab) && (place_meeting(x-1,y,obj_block)) && (global.jumpingdm = 0) && (global.lockdown_facingDir = 0)
		     && (global.hang = 1) && (global.turningLedge = 0) && (global.image_speed_lockdown = 0)
		    {
		    with (object_player2_0_sprites)
		        {
		        sprite_index = spr_hang_left;
		        x = obj_player.x-7;
		        y = obj_player.y-20;
		        }
		    }
		    else if (state = Ledge_grab) && (place_meeting(x+1,y,obj_block)) && (global.jumpingdm = 0) && (global.lockdown_facingDir = 0)
		     && (global.hang = 1) && (global.turningLedge = 0) && (global.image_speed_lockdown = 0)
		    {
		    with (object_player2_0_sprites)
		        {
		        sprite_index = spr_hang_right;
		        x = obj_player.x+7;
		        y = obj_player.y-20;
		        }
		    }
		    //hanging-dm jump
		    if (state = Ledge_grab) && (place_meeting(x-1,y,obj_block)) && (global.jumpingdm = 1) && (global.lockdown_facingDir = 0)
		     && (global.hang = 1) && (global.turningLedge = 0) && (global.image_speed_lockdown = 0)
		    {
		    with (object_player2_0_sprites)
		        {
		        sprite_index = spr_hang_left;
				x = obj_player.x-7;
		        y = obj_player.y-20;
		        }
		    }
		    else if (state = Ledge_grab) && (place_meeting(x+1,y,obj_block)) && (global.jumpingdm = 1) && (global.lockdown_facingDir = 0)
		     && (global.hang = 1) && (global.turningLedge = 0) && (global.image_speed_lockdown = 0)
		    {
		    with (object_player2_0_sprites)
		        {
		        sprite_index = spr_hang_right;
		        x = obj_player.x+7;
		        y = obj_player.y-20;
		        }
		    }
    
    
			//hang shoot
			if (global.turningLedge > 0) && (image_speed = 0)
			{
				if (global.facingDir > 0)
				{
					with (object_player2_0_sprites)
					{
						x = obj_player.x-9
						y = obj_player.y+27
					}
				}
				else if (global.facingDir < 0)
				{
					with (object_player2_0_sprites)
					{
						x = obj_player.x+10
						y = obj_player.y+27
					}
				}
			}
    
    
    
    
    

    
    
    
    
		    //hanging-dm prepjump
		    if (state = Ledge_jumpprep) && (place_meeting(x+1,y,obj_block))
		    {
		    if (global.animation_start1 = 0)
		    {
		    with (object_player2_0_sprites)
		        {
        
		        sprite_index = spr_cliff_jumpprep_right;
		        image_speed1 = 1;
		        x = obj_player.x+7;
		        y = obj_player.y-20;
		            if (image_index >= 3)
		            {
		                image_speed = 0;
		            }
		        }
		    }
		    else if (global.animation_start1 = 1)
		    {
		    with(object_player2_0_sprites)
		    {
		        sprite_index = spr_cliff_jumpprep_right;
		        x = obj_player.x+7;
		        y = obj_player.y-20;
		        if (image_index < 1)
		        {
		        image_speed = 0;
		        global.animation_start1 = 0;
		        }
		        else if (image_index != 0)
		        {
		        image_speed1 = -1;
		        }
        
		    }
		    }
		    }
    
		    if (state = Ledge_jumpprep) && (place_meeting(x-1,y,obj_block))
		    {
		    if (global.animation_start1 = 0)
		    {
		    with (object_player2_0_sprites)
		        {
        
		        sprite_index = spr_cliff_jumpprep_left;
		        image_speed1 = 1;
		        x = obj_player.x-7;
		        y = obj_player.y-20;
		            if (image_index >= 3)
		            {
		                image_speed = 0;
		            }
		        }
		    }
		    else if (global.animation_start1 = 1)
		    {
		    with(object_player2_0_sprites)
		    {
		        sprite_index = spr_cliff_jumpprep_left;
		        x = obj_player.x-7;
		        y = obj_player.y-20;
		        if (image_index < 1)
		        {
		        image_speed = 0;
		        global.animation_start1 = 0;
		        }
		        else if (image_index != 0)
		        {
					image_speed = -1;
		        }
        
		    }
		    }
		    }
    
			/////////////////////////////////////////////////////////////////////////////////////////////////    
    
    
    
			//climbing stuff    
    
    
    
    
		    //climbing
		    if (global.climbing = 1) && (global.hang = 0) && (global.facingDir = -1) && (global.jumpingdm = 0)
		    {
		        with (object_player2_0_sprites)
		        {
		        sprite_index = spr_climbing_left;
        
		        if (image_index >= 14)
		        {
		            global.animation_end = 1;
		        }
		        }
		    }
		    else if (global.climbing = 1) && (global.hang = 0) && (global.facingDir = 1) && (global.jumpingdm = 0)
		    {
		        with (object_player2_0_sprites)
		        {
		        sprite_index = spr_climbing_right;
        
		        if (image_index >= 14)
		        {
		            global.animation_end = 1;
		        }
		        }
		    }
    
    
		    //climbing-dm
		    if (state = Climb_up_ledge) && (global.facingDir = -1) && (global.jumpingdm = 1)
		    {
		        with (object_player2_0_sprites)
		        {
		        x = obj_player.x-7;
		        y = obj_player.y-20;
		        sprite_index = spr_climbing_left;
        
		        if (image_index >= 14)
		        {
		            global.animation_end = 1;
		        }
		        }
		    }
		    else if (state = Climb_up_ledge) && (global.facingDir = 1) && (global.jumpingdm = 1)
		    {
		        with (object_player2_0_sprites)
		        {
		        x = obj_player.x+7;
		        y = obj_player.y-20;
		        sprite_index = spr_climbing_right;
        
		        if (image_index >= 14)
		        {
		            global.animation_end = 1;
		        }
		        }
		    }
	
		}
	}
    
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

   
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

   
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



}
