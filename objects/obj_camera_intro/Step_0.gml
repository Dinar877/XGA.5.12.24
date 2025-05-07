//if game is paused, essentially deactivate player without using the deactivate function
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.pause = 1)
or (global.pause_exit = 1)
or (!instance_exists(obj_darkeater_hitbox_intro))
{
	exit;	
}

if (yshake > 0) && (global.screen_shake = 0) && (global.room_transition_prep = 0) && (global.room_transition == 0) && (global.room_transition1 == 0) && (global.room_transition_more == 0) && (global.climbing == 0)
{
	y = obj_darkeater_hitbox_intro.y-yshake;
	yshake -= 0.25;
}
else if (yshake <= 0)
{
	yshake = 0	
}

if (global.screen_shake > 0) && (global.room_transition_prep = 0) && (global.room_transition == 0) && (global.room_transition1 == 0) && (global.room_transition_more == 0) && (global.climbing == 0)
{
	y = obj_darkeater_hitbox_intro.y-yshake2;
	
	if (yshake2 > 0)
	{
		yshake2 -= 0.25;
	}
	else if (yshake2 < 0)
	{
		yshake2 += 0.25;
	}
	
}




//room border
collision_L = collision_rectangle(obj_camera_intro.x+170,obj_camera_intro.y+100,obj_camera_intro.x-170,obj_camera_intro.y-100,obj_camera_stopperL,false,true);
collision_R = collision_rectangle(obj_camera_intro.x+170,obj_camera_intro.y+100,obj_camera_intro.x-170,obj_camera_intro.y-100,obj_camera_stopperR,false,true);
collision_U = collision_rectangle(obj_camera_intro.x+170,obj_camera_intro.y+100,obj_camera_intro.x-170,obj_camera_intro.y-100,obj_camera_stopperU,false,true);
collision_D = collision_rectangle(obj_camera_intro.x+170,obj_camera_intro.y+100,obj_camera_intro.x-170,obj_camera_intro.y-100,obj_camera_stopperD,false,true);
	


	    //artificial border
	if (instance_exists(obj_camera_stopperL)) && (instance_exists(obj_camera_stopperR)) && (global.mapgrid_1x1 = 0) && (global.mapgrid_xZeroMove != 1)
	{
    
		with(obj_camera_intro)
		{
			if !(global.climbing)
			{
			x = x1
			}
			distance_to_border = obj_camera_intro.x-obj_camera_stopperL.x-160;
			distance_to_border2 = obj_camera_intro.x-obj_camera_stopperR.x+159;
			if (distance_to_border < 0)
			{
				while (distance_to_border < 0)
				{
					x++;
					distance_to_border = obj_camera_intro.x-obj_camera_stopperL.x-160;
				}	
			}
			if (distance_to_border2 > 0)
			{
				while (distance_to_border2 > 0)
				{
					x--;
					distance_to_border2 = obj_camera_intro.x-obj_camera_stopperR.x+159;
				}	
			}
		}
	
	}

	if (instance_exists(obj_camera_stopperU)) && (instance_exists(obj_camera_stopperD)) && (global.mapgrid_yZeroMove != 1) && (global.room_transition_prep == 0)
	{
    
		with(obj_camera_intro)
		{
			if !(global.climbing)
			{
			y = y1-yspin-yshake-yshake2;
			}
			distance_to_border3 = obj_camera_intro.y-obj_camera_stopperU.y-90;
			distance_to_border4 = obj_camera_intro.y-obj_camera_stopperD.y+90;
			if (distance_to_border3 < 0)
			{
				while (distance_to_border3 < 0)
				{
					y++;
					distance_to_border3 = obj_camera_intro.y-obj_camera_stopperU.y-90;
				}	
			}
			if (distance_to_border4 > 0)
			{
				while (distance_to_border4 > 0)
				{
					y--;
					distance_to_border4 = obj_camera_intro.y-obj_camera_stopperD.y+90;
				}	
			}
		}
	
	}