// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//argument0 = global.room_transition type (regular, 1 or more)
//argument1 is what global.doorpath to use


function borderdoors_movingplayer_left()
{
	var whichVar = 0
	
	if (object_index = obj_door_border_left)
	{
		whichVar = global.room_transition_nodoors
	}
	else if (object_index = obj_door_border_left_2)
	{
		whichVar = global.room_transition_nodoors_2
	}
	else if (object_index = obj_door_border_left_3)
	{
		whichVar = global.room_transition_nodoors_3
	}
	else if (object_index = obj_door_border_left_more)
	{
		whichVar = global.room_transition_nodoors_more
	}
	
	if (started > 0)
	{
	
		with(obj_scrn_roomtransition)
		{
		    if (FadeNow >= 1.0) && (whichVar = 1) && (global.room_x = 0) && (global.room_y = 1) && (global.stopper_2ndscrnshot = 0) && (global.mapgrid_1x1 == 0)
		    {
		        with(object_player2_0_sprites)
		        {
		            if (x + 304 > obj_camera_stopperR.x)
						{
							x = lerp(x, obj_camera_stopperR.x - 305, 0.5);
						}
			            //once door is in correct position
			        if (x + 304 <= obj_camera_stopperR.x)
			            {
			                if (started_roomtransition = 0)
			                {
								//set notnow global var based on door type
								if (instance_exists(obj_door_border_left))
								{
									if (obj_door_border_left.stopper1 = 1)
									{
										global.room_transition_notnowR1 = 1;
									}
								}
								if (instance_exists(obj_door_border_left_2))
								{
									if (obj_door_border_left_2.stopper1 = 1)
									{
										global.room_transition_notnowR2 = 1;
									}
								}
								if (instance_exists(obj_door_border_left_more))
								{
									if (obj_door_border_left_more.stopper1 = 1)
									{
										global.room_transition_notnowR_more = 1;
									}
								}
								if (instance_exists(obj_door_border_left_3))
								{
									if (obj_door_border_left_3.stopper1 = 1)
									{
										global.room_transition_notnowR3 = 1;
									}
								}
								
								started_roomtransition = 1
								//image_alpha = 0;
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
								global.room_x = 1
								room_goto(argument0);
								exit
								//instance_destroy();
			                }
			            }
		        }
		    }
			else if (FadeNow >= 1.0) && (whichVar = 1) && (global.room_x = 0) && (global.room_y = 1) && (global.stopper_2ndscrnshot = 0) && (global.mapgrid_1x1 == 1)
		    {
		        with(object_player2_0_sprites)
		        {
			            if (x + 304 > obj_camera_stopperR.x)
						{
							x = lerp(x, obj_camera_stopperR.x - 305, 0.5);
						}
			            //once door is in correct position
			            if (x + 304 <= obj_camera_stopperR.x)
			            {
			                if (started_roomtransition = 0)
			                {
			                    //set notnow global var based on door type
								if (instance_exists(obj_door_border_left))
								{
									if (obj_door_border_left.stopper1 = 1)
									{
										global.room_transition_notnowR1 = 1;
									}
								}
								if (instance_exists(obj_door_border_left_2))
								{
									if (obj_door_border_left_2.stopper1 = 1)
									{
										global.room_transition_notnowR2 = 1;
									}
								}
								if (instance_exists(obj_door_border_left_more))
								{
									if (obj_door_border_left_more.stopper1 = 1)
									{
										global.room_transition_notnowR_more = 1;
									}
								}
								if (instance_exists(obj_door_border_left_3))
								{
									if (obj_door_border_left_3.stopper1 = 1)
									{
										global.room_transition_notnowR3 = 1;
									}
								}
								
								
								started_roomtransition = 1;
								//image_alpha = 0;
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
								global.room_x = 1
								room_goto(argument0);
								exit
								//instance_destroy();
			                }
			            }
		        }
		    }
		}

	}

}