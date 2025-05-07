function Climb_up_ledge() {
	//if no health, reset game
	if (global.health1 <= 0)
	{
	    State_machine_switch_state(Dead);
		exit;
	}

	with(object_player2_0_sprites)
	{
		image_speed = 1	
	}

	global.climbing = 1;
	global.hang = 0;
	global.running = 0;
	global.jumping = 0;
	global.grounded = 0;
	global.turning = 0;
	global.animation_start = 0;
	var stop = 0;
	var lockx = 0;
	var lockx2 = 0;
	
	ledge_ready = 0;
	double_jump = 0
	

	//if using 320x180 camera
	if (instance_exists(obj_camera))
	{
		with(obj_camera)
		{
				climbspeed = 30
				
				
				//border shiit
				distance_to_border = (obj_camera.x-obj_camera_stopperL.x-160); //camera stopper L
				distance_to_border2 = (obj_camera.x-obj_camera_stopperR.x+159); //camera stopper R
				
				//move x
				if (((distance_to_border > 0) && (distance_to_border2 < 0)) //if not close enough to either L or R
				or ((distance_to_border == 0) && (global.facingDir == 1) && (obj_camera.x >= obj_player.x)) 
				or ((distance_to_border2 == 0) && (global.facingDir == -1) && (obj_camera.x <= obj_player.x)))
				{
					//set new, lower climb speed if player isn't past camera center but will be once climbing animation finishes
					if (((distance_to_border == 0) && (global.facingDir == 1) && (obj_camera.x >= obj_player.x)) 
					or ((distance_to_border2 == 0) && (global.facingDir == -1) && (obj_camera.x <= obj_player.x)))
					{
						reduceclimbspeed = (global.facingDir*(obj_camera.x-obj_player.x));
					}
					 
					if (reduceclimbspeed != 0)
					{
						x += (((18-reduceclimbspeed)*global.facingDir)/climbspeed);
					}
					else x += ((18*global.facingDir)/climbspeed);
				}
				
				//UPDATED border shiit for when camera has JUST NOW moved too far
				distance_to_border = (obj_camera.x-obj_camera_stopperL.x-160); //camera stopper L
				distance_to_border2 = (obj_camera.x-obj_camera_stopperR.x+159); //camera stopper R
				
				
				if (distance_to_border < 0) //if too far past L
				{
					x = floor(x); //erases sub pixel climbing progress
					distance_to_border = obj_camera.x-obj_camera_stopperL.x-160;	
					
					while (distance_to_border < 0) //if more than sub pixel too far
					{
						x++;
						distance_to_border = obj_camera.x-obj_camera_stopperL.x-160;
					}
				}
				
				if (distance_to_border2 > 0) //if too far past R
				{
					x = floor(x); //erases sub pixel climbing progress
					distance_to_border2 = obj_camera.x-obj_camera_stopperR.x+159;	
					
					while (distance_to_border2 > 0) //if more than sub pixel too far
					{
						x--;
						distance_to_border2 = obj_camera.x-obj_camera_stopperR.x+159;
					}
				}
				
				
				//border shieeeet 2
				distance_to_border3 = (obj_camera.y-obj_camera_stopperU.y-90);
				distance_to_border4 = (obj_camera.y-obj_camera_stopperD.y+90);
				
				//move camera- Y
				if (distance_to_border3 > 0) && (distance_to_border4 < 0)
				{
					y -= (37/climbspeed);
				}
				
				//UPDATED border shiit for when camera has JUST NOW moved too far
				distance_to_border3 = (obj_camera.y-obj_camera_stopperU.y-90);
				distance_to_border4 = (obj_camera.y-obj_camera_stopperD.y+90);
				
				if (distance_to_border3 < 0) //if too far past U
				{
					y = floor(y); //erases sub pixel climbing progress
					distance_to_border3 = obj_camera.y-obj_camera_stopperU.y-90;	
					
					while (distance_to_border3 < 0) //if more than sub pixel too far
					{
						y++;
						distance_to_border3 = obj_camera.y-obj_camera_stopperU.y-90;
					}
				}
				
				if (distance_to_border4 > 0) //if too far past D
				{
					y = floor(y); //erases sub pixel climbing progress
					distance_to_border4 = obj_camera.y-obj_camera_stopperD.y+90;	
					
					while (distance_to_border4 > 0) //if more than sub pixel too far
					{
						y--;
						distance_to_border4 = obj_camera.y-obj_camera_stopperD.y+90;
					}
				}
		}

	}

	if (instance_exists(obj_darkness_effect)) && (global.climbing != 0)
	{
		with(obj_darkness_effect)
		{
			xloc +=	(((18*global.facingDir)/25));
			yloc -= (30/25);
		}
	}

	if (instance_exists(obj_darkness_effect_stationnotactive)) && (global.climbing != 0)
	{
		with(obj_darkness_effect_stationnotactive)
		{
			xloc +=	(((18*global.facingDir)/25));
			yloc -= (30/25);
		}
	}

	if (instance_exists(obj_darkness_effect_deep)) && (global.climbing != 0)
	{
		with(obj_darkness_effect_deep)
		{
			xloc +=	(((18*global.facingDir)/25));
			yloc -= (30/25);
		}
	}


	//normal jump hitbox ver.
	if (global.animation_end = 1) && (stop != 1) && (global.jumpingdm = 0)
	{
	    if (instance_exists(obj_darkness_effect))
		{
			with(obj_darkness_effect)
			{
				xloc = 0;
				yloc = 0;
			}
		}
		if (instance_exists(obj_darkness_effect_stationnotactive))
		{
			with(obj_darkness_effect_stationnotactive)
			{
				xloc = 0;
				yloc = 0;
			}
		}
	
		if (instance_exists(obj_darkness_effect_deep))
		{
			with(obj_darkness_effect_deep)
			{
				xloc = 0;
				yloc = 0;
			}
		}
		State_machine_switch_state(Idle);
	     
	    global.hang = 0;
	    global.climbing = 0;
	    global.jumping_maxheight = 0;
	    global.jumping = 0;
	    global.turning = 0;
	    global.lockdown_facingDir = 0;
	    global.turningLedge = 0;
	    global.animation_start = 0;
	    x += (global.facingDir*18);
	    y -= 37;
	    gamepad4_wait = 0;
	    gamepad0_wait = 0;
	    stop = 1;
	    lockx= 0;
	    global.grounded = 1;
	    right_height = 0;
	    grav = 0.5;
	    vspd = 0;
		jump = 0;
		jump_pressed = 0;
		
	    global.animation_end = 0;
	    __view_set( e__VW.Object, 0, obj_camera );
		with(obj_camera)
		{
			xcounter = 0;
			climbspeed = 0;
			reduceclimbspeed = 0;
		}
		
		audio_stop_sound(snd_robot_move_2)
    
	}
	
	//spin jumping hitbox ver.
	if (global.animation_end = 1) && (stop != 1) && (global.jumpingdm = 1)
	{
	    if (instance_exists(obj_darkness_effect))
		{
			with(obj_darkness_effect)
			{
				xloc = 0;
				yloc = 0;
			}
		}
		if (instance_exists(obj_darkness_effect_stationnotactive))
		{
			with(obj_darkness_effect_stationnotactive)
			{
				xloc = 0;
				yloc = 0;
			}
		}
		if (instance_exists(obj_darkness_effect_deep))
		{
			with(obj_darkness_effect_deep)
			{
				xloc = 0;
				yloc = 0;
			}
		}
		State_machine_switch_state(Idle);
	     
	    global.hang = 0;
	    global.climbing = 0;
	    global.jumpingdm = 0;
	    global.turning = 0;
	    global.lockdown_facingDir = 0;
	    global.turningLedge = 0;
	    global.animation_start = 0;
	    x += (global.facingDir*18);
	    y -= 30;
	    gamepad4_wait = 0;
	    gamepad0_wait = 0;
	    stop = 1;
	    global.grounded = 1;
	    right_height = 0;
	    grav = 0.5;
	    vspd = 0;
		jump = 0;
		jump_pressed = 0;
		
	    global.animation_end = 0;
	    __view_set( e__VW.Object, 0, obj_camera );
		with(obj_camera)
		{
			xcounter = 0;
			climbspeed = 0;
			reduceclimbspeed = 0;
		}
		
		audio_stop_sound(snd_robot_move_2)
	}



}
