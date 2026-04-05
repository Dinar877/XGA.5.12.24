// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Teleport_Camera(){
	if (instance_exists(obj_camera)) 
	&& (instance_exists(obj_camera_stopperL)) && (instance_exists(obj_camera_stopperR))
	&& (instance_exists(obj_camera_stopperD)) && (instance_exists(obj_camera_stopperU))
	{
		//X
		if (global.mapgrid_xZeroMove == 0)
		{
			obj_camera.x = argument0;
		}
		else if (global.mapgrid_xZeroMove == 1)
		{
			if (instance_exists(obj_mapchecker2))
			{
				obj_camera.x = obj_mapchecker2.x+160
			}
		}
		
		//Y
		if (global.mapgrid_yZeroMove == 0)
		{
			obj_camera.y = argument1;
		}
		else if (global.mapgrid_yZeroMove == 1)
		{
			if (instance_exists(obj_mapchecker2))
			{
				obj_camera.y = obj_mapchecker2.y+90	
			}
		}
		
		
		//border shiit
		distance_to_border = (obj_camera.x-obj_camera_stopperL.x-160); // L
		distance_to_border2 = (obj_camera.x-obj_camera_stopperR.x+159); // R
		distance_to_border3 = (obj_camera.y-obj_camera_stopperU.y-90); // D
		distance_to_border4 = (obj_camera.y-obj_camera_stopperD.y+90); // U
		
		if (distance_to_border < 0) //if too far past L
		{
			obj_camera.x = floor(obj_camera.x); //erases sub pixel climbing progress
			distance_to_border = obj_camera.x-obj_camera_stopperL.x-160;	
					
			while (distance_to_border < 0) //if more than sub pixel too far
			{
				obj_camera.x++;
				distance_to_border = obj_camera.x-obj_camera_stopperL.x-160;
			}
		}
				
		if (distance_to_border2 > 0) //if too far past R
		{
			obj_camera.x = floor(obj_camera.x); //erases sub pixel climbing progress
			distance_to_border2 = obj_camera.x-obj_camera_stopperR.x+159;	
					
			while (distance_to_border2 > 0) //if more than sub pixel too far
			{
				obj_camera.x--;
				distance_to_border2 = obj_camera.x-obj_camera_stopperR.x+159;
			}
		}
		
		if (distance_to_border3 < 0)
		{
			while (distance_to_border3 < 0)
			{
				obj_camera.y++;
				distance_to_border3 = obj_camera.y-obj_camera_stopperU.y-90;
			}	
		}
			
		if (distance_to_border4 > 0)
		{
			while (distance_to_border4 > 0)
			{
				obj_camera.y--;
				distance_to_border4 = obj_camera.y-obj_camera_stopperD.y+90;
			}	
		}
	}
}