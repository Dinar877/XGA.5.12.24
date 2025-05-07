//if game is paused, essentially deactivate player without using the deactivate function
if (global.pause_map = 1)
or (global.pause = 1)
or (global.pause_exit = 1)
or (global.upgrade_process = 1)
or (global.room_transition_prep == 1)
or (!instance_exists(obj_player))
{
	exit;	
}



if (yshake > 0) && (global.screen_shake = 0)
&& (global.room_transition_prep = 0) && (global.room_transition == 0) && (global.room_transition1 == 0) && (global.room_transition_more == 0)
 && (global.room_transition_nodoors == 0) && (global.room_transition_nodoors_2 == 0) && (global.room_transition_nodoors_more == 0)
&& (global.climbing == 0) && (instance_exists(obj_mapchecker2)) && (instance_exists(obj_camera_stopperU)) && (instance_exists(obj_camera_stopperD))
{
	if ((global.mapgrid_1x1 > 0) or (global.mapgrid_yZeroMove > 0)) && (global.camera_shiftdown = 1)
	{
		y = obj_mapchecker2.y+90-yshake;
	}
	else if ((global.mapgrid_1x1 > 0) or (global.mapgrid_yZeroMove > 0)) && (global.camera_shiftdown = 0)
	{
		y = obj_mapchecker2.y+98-yshake;
	}
	else if (global.mapgrid_1x1 = 0) && (global.mapgrid_yZeroMove = 0)
	{
		y = obj_player.y-yshake;
	}
	
	yshake = lerp(yshake,-1,0.15);
	
	distance_to_border3 = obj_camera.y-obj_camera_stopperU.y-90;
	distance_to_border4 = obj_camera.y-obj_camera_stopperD.y+90;
	
	if (distance_to_border3 < 0)
			{
				while (distance_to_border3 < 0)
				{
					y++;
					distance_to_border3 = obj_camera.y-obj_camera_stopperU.y-90;
				}	
			}
			
	if (distance_to_border4 > 0)
			{
				while (distance_to_border4 > 0)
				{
					y--;
					distance_to_border4 = obj_camera.y-obj_camera_stopperD.y+90;
				}	
			}
}
else if (yshake <= 0)
{
	yshake = 0	
}

if (global.screen_shake > 0)
&& (global.room_transition_prep = 0) && (global.room_transition == 0) && (global.room_transition1 == 0) && (global.room_transition_more == 0) && (global.sector_transition = 0)
 && (global.room_transition_nodoors == 0) && (global.room_transition_nodoors_2 == 0) && (global.room_transition_nodoors_more == 0)
&& (global.climbing == 0) && (instance_exists(obj_camera_stopperU)) && (instance_exists(obj_camera_stopperD))
{
	
	if (instance_exists(obj_camera_stopperU)) && (instance_exists(obj_camera_stopperD))
	{
	
		distance_to_border3 = obj_camera.y-obj_camera_stopperU.y-90;
		distance_to_border4 = obj_camera.y-obj_camera_stopperD.y+90;
	
		if (distance_to_border3 < 0)
			{
				while (distance_to_border3 < 0)
				{
					y++;
					distance_to_border3 = obj_camera.y-obj_camera_stopperU.y-90;
				}	
			}
			
		if (distance_to_border4 > 0)
			{
				while (distance_to_border4 > 0)
				{
					y--;
					distance_to_border4 = obj_camera.y-obj_camera_stopperD.y+90;
				}	
			}
	}
}

if (global.screen_shake > 0) && (yshake2 != 0)
{
	if (yshake2 > 0)
	{
	yshake2 -= 0.25;
	}
	else if (yshake2 < 0)
	{
	yshake2 += 0.25;
	}	
}
else if (global.screen_shake <= 0)
&& (global.room_transition_prep = 0) && (global.room_transition == 0) && (global.room_transition1 == 0) && (global.room_transition_more == 0)
&& (global.room_transition_nodoors == 0) && (global.room_transition_nodoors_2 == 0) && (global.room_transition_nodoors_more == 0)
&& (global.sector_transition = 0)
&& (global.climbing == 0) && (yshake2 != 0)
{
	if (yshake2 > 0)
	{
		yshake2 -= 0.25;
	}
	else if (yshake2 < 0)
	{
		yshake2 += 0.25;
	}	
}

if (global.room_transition_prep > 0) or (global.sector_transition > 0)
{
	global.screen_shake = 0
	yshake2 = 0
	y = round(y)
}

//resetting precise y value so map maker works precisely
if (global.screen_shake <= 0) && (yshake2 = 0) && (yshake = 0) && (global.climbing <= 0) && (global.room_transition_prep <= 0)
&& (global.room_transition_prep = 0) && (global.room_transition == 0) && (global.room_transition1 == 0) && (global.room_transition_more == 0)
{
	y = round(y)	
}



//room border
if (instance_exists(obj_player))
{
	//camera shift down, starting room transition
	if (obj_player.y != y) && ((global.mapgrid_yZeroMove = 1) or (global.mapgrid_1x1 = 1)) && (global.room_transition_prep == 1)
	&& (global.room_transition == 0) && (global.room_transition1 == 0) && (global.room_transition_more == 0)
	&& ((global.room_transition_nodoors == 1) or (global.room_transition_nodoors_2 == 1) or (global.room_transition_nodoors_more == 1))
	&& (global.camera_shiftdown = 1) && (global.stopper_2ndscrnshot == 0)
	{
		
		if (obj_player.y > y)
		{
			y = lerp(y,obj_player.y+2,0.2)
			with(obj_scrn_roomtransition)
			{
				y = obj_camera.y-90;
			}
		}
		else if (obj_player.y < y)
		{
			y = lerp(y,obj_player.y-2,0.2)
			with(obj_scrn_roomtransition)
			{
				y = obj_camera.y-90;
			}
		}
		
		y = round(y);
		global.ygridend = round(global.ygridend);
	}
	
	
	//camera shift down, end
	if (obj_player.y = y) && ((global.mapgrid_yZeroMove = 1) or (global.mapgrid_1x1 = 1)) && (global.room_transition_prep == 1)
	&& (global.room_transition == 0) && (global.room_transition1 == 0) && (global.room_transition_more == 0)
	&& ((global.room_transition_nodoors == 1) or (global.room_transition_nodoors_2 == 1) or (global.room_transition_nodoors_more == 1))
	&& (global.camera_shiftdown = 1) && (global.stopper_2ndscrnshot == 0)
	{
		y = round(y)
		with(obj_scrn_roomtransition)
			{
				y = round(y)
				var ybob = y-obj_camera.y+90
				var ybob2 = 0
			}
		global.ygridend = 0
		global.ygrid = 0
		global.camera_shiftdown = 0
	}
	
	
	
	//SAVE ROOMS ONLY-they alone have a room size like this
		if (room_height == 180) && (room_width == 320)
		&& (global.room_transition_prep = 0) && (global.camera_shiftdown == 0)
		&& (global.room_transition == 0) && (global.room_transition1 == 0) && (global.room_transition_more == 0)
		&& (global.room_transition_nodoors == 0) && (global.room_transition_nodoors_2 == 0) && (global.room_transition_nodoors_more == 0)
		{
			x = 160
			y = 90
		}
	


	if (instance_exists(obj_camera_stopperU)) && (instance_exists(obj_camera_stopperD)) && (instance_exists(obj_camera_stopperL)) && (instance_exists(obj_camera_stopperR))
	{
		collision_L = collision_rectangle(obj_camera.x+170,obj_camera.y+100,obj_camera.x-170,obj_camera.y-100,obj_camera_stopperL,false,true);
		collision_R = collision_rectangle(obj_camera.x+170,obj_camera.y+100,obj_camera.x-170,obj_camera.y-100,obj_camera_stopperR,false,true);
		collision_U = collision_rectangle(obj_camera.x+170,obj_camera.y+100,obj_camera.x-170,obj_camera.y-100,obj_camera_stopperU,false,true);
		collision_D = collision_rectangle(obj_camera.x+170,obj_camera.y+100,obj_camera.x-170,obj_camera.y-100,obj_camera_stopperD,false,true);


	    //////artificial borders
		
		//UNRESTRICTED X - not 1x1
		if (instance_exists(obj_camera_stopperL)) && (instance_exists(obj_camera_stopperR)) && (global.mapgrid_1x1 = 0) && (global.mapgrid_xZeroMove = 0)
		{
    
			with(obj_camera)
			{
				if !(global.climbing)
				{
					x = obj_player.x;
				}
				
				distance_to_border = obj_camera.x-obj_camera_stopperL.x-160;
				distance_to_border2 = obj_camera.x-obj_camera_stopperR.x+159;
				
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
			}
	
		}

		//UNRESTRICTED Y - not 1x1
		if (instance_exists(obj_camera_stopperU)) && (instance_exists(obj_camera_stopperD)) && (global.mapgrid_1x1 = 0) && (global.mapgrid_yZeroMove = 0)
		&& (global.room_transition_prep == 0)
		{
    
			with(obj_camera)
			{
				if (room_height == 180) && (room_width == 320)
				{
					y = 90
				}
				else if !(global.climbing)
				{
					y = obj_player.y-yspin-yshake-yshake2;
				}
				global.ygrid = 0
				distance_to_border3 = obj_camera.y-obj_camera_stopperU.y-90;
				distance_to_border4 = obj_camera.y-obj_camera_stopperD.y+90;
				if (distance_to_border3 < 0)
				{
					while (distance_to_border3 < 0)
					{
						y = floor(y)
						y++;
						distance_to_border3 = obj_camera.y-obj_camera_stopperU.y-90;
					}	
				}
				if (distance_to_border4 > 0)
				{
					while (distance_to_border4 > 0)
					{
						y = floor(y)
						y--;
						distance_to_border4 = obj_camera.y-obj_camera_stopperD.y+90;
					}	
				}
			}
	
		}
		
		//for 1x1 rooms - NO CAMERA SHIFT DOWN
		if (instance_exists(obj_camera_stopperU)) && (instance_exists(obj_camera_stopperD))
		&& (((global.mapgrid_yZeroMove == 1) && (global.mapgrid_xZeroMove == 1)) or (global.mapgrid_1x1 == 1))
		&& (global.room_transition_prep == 0)
		&& (global.camera_shiftdown == 0)
		{
			if (room_height == 180) && (room_width == 320)
			{
				y = 90
			}
			else if !(global.climbing)
			{
				y = obj_player.y-yspin-yshake-yshake2;
			}
			
			global.ygrid = 0
			distance_to_border3 = obj_camera.y-obj_camera_stopperU.y-90;
			distance_to_border4 = obj_camera.y-obj_camera_stopperD.y+90;
			if (distance_to_border3 < 0)
			{
					while (distance_to_border3 < 0)
					{
						y = floor(y)
						y++;
						distance_to_border3 = obj_camera.y-obj_camera_stopperU.y-90;
					}	
			}
			if (distance_to_border4 > 0)
			{
					while (distance_to_border4 > 0)
					{
						y = floor(y)
						y--;
						distance_to_border4 = obj_camera.y-obj_camera_stopperD.y+90;
					}	
			}
		}
	
		//getting back to 1x1 rooms after room transition- camera shift
		if (instance_exists(obj_camera_stopperU)) && (instance_exists(obj_camera_stopperD))
		&& (global.mapgrid_yZeroMove = 1) && (global.room_transition_prep == 0)
		&& (global.room_transition == 0) && (global.room_transition1 == 0) && (global.room_transition_more == 0)
		&& (global.room_transition_nodoors == 0) && (global.room_transition_nodoors_2 == 0) && (global.room_transition_nodoors_more == 0)
		&& (global.camera_shiftdown = 1)
		{
    
			with(obj_camera)
			{
				if (yshake <= 0) && (dontmove <= 0)
				{
					//ygrid gets the initial difference between the camera and the mapchecker2
					global.ygrid = y-obj_mapchecker2.y-90;
			
					if (global.ygridend == 0) && (y > obj_mapchecker2.y+90) && (global.ygridadder == 0)
					{
						global.ygridend = y-obj_mapchecker2.y-90
						global.ygridadder = global.ygridend
					}
					else if (global.ygrid < 0) && (y < obj_mapchecker2.y+90) && (global.ygridadder == 0)
					{
						global.ygridend = 7
						global.ygridadder = 7;
					}
					if (y > obj_mapchecker2.y+90)
					{
						y = lerp(y,obj_mapchecker2.y+91,0.2)
					}
					else if (y < obj_mapchecker2.y+90)
					{
						y = lerp(y,obj_mapchecker2.y+91,0.2)
					}
				}
			}
	
		}
	
	
		if (!(collision_D) && !(collision_L) && !(collision_R) && !(collision_U)) && (!global.climbing) && (!global.room_transition) && (!global.room_transition1) && (!global.room_transition_more)
		&& (LOCK != 1) && (xspin == 0) && (yspin == 0) && (!xcrouch) && (!ycrouch) && (global.mapgrid_xZeroMove != 1) && (global.mapgrid_yZeroMove != 1) && (global.mapgrid_1x1 != 1)
		 && !(distance_to_border < 0) && !(distance_to_border2 > 0) && (global.door_height == 0) && (xshake == 0) && (yshake == 0) && (global.room_transition_nodoors == 0) && (global.room_transition_nodoors_2 == 0) && (global.room_transition_nodoors_more == 0)
		 && (global.ygrid == 0) && (global.screen_shake <= 0)
		 && (global.pause_transition = 0)
		{
			x = obj_player.x;
			y = obj_player.y;
			xspin = 0;
			yspin = 0;
		}
	
		if (yspin < 0) && !(collision_U)
		 && (!global.climbing) && (!global.room_transition) && (!global.room_transition1)
		{
			yspin += 1;
		}
		else if (yspin > 0) && !(collision_U)
		 && (!global.climbing) && (!global.room_transition) && (!global.room_transition1)
		{
			yspin -= 1;
		}

		if (global.room_transition) or (global.room_transition1)
		{
			xspin = 0;
			yspin = 0;
		}


	}

}


