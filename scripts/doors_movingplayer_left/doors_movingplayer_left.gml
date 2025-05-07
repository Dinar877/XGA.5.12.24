// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//argument0 = global.room_transition type (regular, 1 or more)
//argument1 is what global.doorpath to use


function doors_movingplayer_left()
{
	//move door to other side of screen when scrn transition obj is present
	with(obj_scrn_roomtransition)
	{
	    if (FadeNow >= 1.0) && (argument0 = 1) && (global.room_x = 0) && (global.room_y = 1) && (global.stopper_2ndscrnshot = 0) && (global.mapgrid_1x1 == 0)
	    {
	        with(other)
	        {
	            if (backend = 0) && (stopper1 == 1)
	            {
		            if (x + 29 > obj_camera.bbox_left)
					{
						x = lerp(x, obj_camera.bbox_left-30, door_speed);
					}
		            //once door is in correct position
		            if (x + 29 <= obj_camera.bbox_left)
		            {
		                if (global.room_transition_notnowR_more = 0) && (global.room_transition_notnowR1 = 0) && (global.room_transition_notnowR2 = 0)
		                {
		                    //set notnow global var based on door type
							if (instance_exists(obj_door_normal_left))
							{
								if (obj_door_normal_left.stopper1 = 1)
								{
									global.room_transition_notnowR1 = 1;
								}
							}
							else if (instance_exists(obj_door_normal_leftAlt))
							{
								if (obj_door_normal_leftAlt.stopper1 = 1)
								{
									global.room_transition_notnowR2 = 1;
								}
							}
							if (instance_exists(obj_door_normal_left_more))
							{
								if (obj_door_normal_left_more.stopper1 = 1)
								{
									global.room_transition_notnowR_more = 1;
								}
							}
							
							//image_alpha = 0;
							paused = 0;
						    stopper1 = 0;
						    backend = 0;
						    instance_activate_object(obj_player);
							instance_activate_object(object_player2_0_sprites);
						    instance_activate_object(obj_camera);
							instance_activate_object(obj_link_audio);
							if (global.mapgrid_1x1 == 1)
							{
								global.mapgrid_1x1 = 0;
							}
							if (global.frozen == 1)
							{
								global.frozen = 0;
							}
							if (global.mapgrid_xZeroMove == 1)
							{
								global.mapgrid_xZeroMove = 0;
							}
							if (global.mapgrid_yZeroMove == 1)
							{
								global.mapgrid_yZeroMove = 0;
							}
							room_goto(argument1);
							exit
							//instance_destroy();
		                }
		            }
	            }
	        }
	    }
		else if (FadeNow >= 1.0) && (argument0 = 1) && (global.room_x = 0) && (global.room_y = 1) && (global.stopper_2ndscrnshot = 0) && (global.mapgrid_1x1 == 1)
	    {
	        with(other)
	        {
	            if (backend = 0) && (stopper1 == 1)
	            {
		            if (x + 29 > obj_camera.bbox_left)
					{
						x = lerp(x, obj_camera.bbox_left-30, door_speed);
					}
		            //once door is in correct position
		            if (x + 29 <= obj_camera.bbox_left)
		            {
		                if (global.room_transition_notnowR_more = 0) && (global.room_transition_notnowR1 = 0) && (global.room_transition_notnowR2 = 0)
		                {
		                    //set notnow global var based on door type
							if (instance_exists(obj_door_normal_left))
							{
								if (obj_door_normal_left.stopper1 = 1)
								{
									global.room_transition_notnowR1 = 1;
								}
							}
							else if (instance_exists(obj_door_normal_leftAlt))
							{
								if (obj_door_normal_leftAlt.stopper1 = 1)
								{
									global.room_transition_notnowR2 = 1;
								}
							}
							if (instance_exists(obj_door_normal_left_more))
							{
								if (obj_door_normal_left_more.stopper1 = 1)
								{
									global.room_transition_notnowR_more = 1;
								}
							}
							
							//image_alpha = 0;
							paused = 0;
						    stopper1 = 0;
						    backend = 0;
						    instance_activate_object(obj_player);
							instance_activate_object(object_player2_0_sprites);
						    instance_activate_object(obj_camera);
							instance_activate_object(obj_link_audio);
							if (global.mapgrid_1x1 == 1)
							{
								global.mapgrid_1x1 = 0;
							}
							if (global.frozen == 1)
							{
								global.frozen = 0;
							}
							if (global.mapgrid_xZeroMove == 1)
							{
								global.mapgrid_xZeroMove = 0;
							}
							if (global.mapgrid_yZeroMove == 1)
							{
								global.mapgrid_yZeroMove = 0;
							}
							room_goto(argument1);
							exit
							//instance_destroy();
		                }
		            }
	            }
	        }
	    }
	}

}