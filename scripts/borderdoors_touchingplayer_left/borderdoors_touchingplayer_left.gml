// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//argument0 is the active door
//argument1 is the opposite sided door to the active door
//argument2 is the type of room transition needed

function borderdoors_touchingplayer_left()
{
	if (place_meeting(x,y,obj_player)) && (started == 0) 
	&& (global.room_transition_nodoors_2 == 0) && (global.room_transition_nodoors_more == 0) && (global.room_transition_nodoors == 0) && (global.room_transition_nodoors_3 == 0)
	&& (global.room_transition == 0) && (global.room_transition1 == 0) && (global.room_transition_more == 0) && (global.room_transition_3 == 0) 
	{
		started = 1;
		
		if (object_index = obj_door_border_left)
		{
			global.room_transition_nodoors = 1
		}
		else if (object_index = obj_door_border_left_2)
		{
			global.room_transition_nodoors_2 = 1
		}
		else if (object_index = obj_door_border_left_3)
		{
			global.room_transition_nodoors_3 = 1
		}
		else if (object_index = obj_door_border_left_more)
		{
			global.room_transition_nodoors_more = 1
		}
		
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
			
				if (sprite_index = spr_player)
				{
					global.door_height = obj_player.y-other.y
				}
				else if (sprite_index = spr_player_jump)
				{
					global.door_height = obj_player.y-other.y-7
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
						
				with(other)
	            {
					stopper1 = 1	
				}
			}
	}

}