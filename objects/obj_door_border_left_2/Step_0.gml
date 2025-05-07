/// @description Insert description here
// You can write your code in this editor

//disable if player knocked back through door after being killed by xga
if (global.pierce_killswitch)
{
	exit;	
}

if (place_meeting(x,y,obj_player)) && (started == 0)  && (global.room_transition_nodoors_2 == 0) && (global.room_transition_nodoors_more == 0) && (global.room_transition_nodoors == 0)
&& (global.room_transition == 0) && (global.room_transition1 == 0) && (global.room_transition_more == 0) 
{
	started = 1;
	global.room_transition_nodoors_2 = 1
	global.room_transition_prep = 1
	with(object_player2_0_sprites)
			{
				image_speed = 0	
			}
	
	with(obj_player)
		{
			hspd = 0
			vspd = 0
			image_speed_stop = 1
			
			if (global.camera_shiftdown == 0)
			{
				if (sprite_index = spr_player)
				{
				global.door_height = obj_camera.y-obj_door_border_left_2.y
				}
				else if (sprite_index = spr_player_jump)
				{
				global.door_height = obj_camera.y-obj_door_border_left_2.y-7
				}
			}
			else if (global.camera_shiftdown == 1)
			{
				if (sprite_index = spr_player)
				{
				global.door_height = obj_player.y-obj_door_border_left_2.y
				}
				else if (sprite_index = spr_player_jump)
				{
				global.door_height = obj_player.y-obj_door_border_left_2.y-7
				}
			}
			
			
			global.state = state
			State_machine_switch_state(Freeze);
					if (instance_exists(obj_scrn_roomtransition))
							{
								with(obj_scrn_roomtransition)
								{
									instance_destroy();
								}
							}
					if (instance_exists(obj_afterimage))
							{
								with(obj_afterimage)
								{
								instance_destroy();
								}
							}
							
					if (!instance_exists(obj_scrn_roomtransition))
							{
								if (global.mapgrid_xZeroMove == 1) && (global.mapgrid_1x1 == 1)
								{
									instance_create_layer(obj_camera.x-160,obj_camera.y-90,layer_get_id("Inst_scrn"),obj_scrn_roomtransition);
								}
								else instance_create_layer(obj_camera.x-160,obj_camera.y-90,layer_get_id("Inst_scrn"),obj_scrn_roomtransition);
								
								with(obj_scrn_roomtransition)
								{
									doorleft = 1	
								}
							}
		}
}

if (started > 0)
{
	
	with(obj_scrn_roomtransition)
	{
	    if (FadeNow >= 1.0) && (global.room_transition_nodoors_2 = 1) && (global.room_x = 0) && (global.room_y = 1) && (global.stopper_2ndscrnshot = 0) && (global.mapgrid_1x1 == 0)
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
						global.room_transition_notnowR2 = 1;
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
						room_goto(global.doorpath4);
						//instance_destroy();
	                }
	            }
			}
	    }
		else if (FadeNow >= 1.0) && (global.room_transition_nodoors_2 = 1) && (global.room_x = 0) && (global.room_y = 1) && (global.stopper_2ndscrnshot = 0) && (global.mapgrid_1x1 == 1)
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
	                    global.room_transition_notnowR2 = 1;
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
						room_goto(global.doorpath4);
						//instance_destroy();
	                }
	            }
	        }
	    }
	}

}
