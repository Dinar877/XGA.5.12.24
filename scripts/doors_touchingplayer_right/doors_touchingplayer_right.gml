// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//argument0 is the active door
//argument1 is the opposite sided door to the active door
//argument2 is the type of room transition needed

function doors_touchingplayer_right()
{
	if ((place_meeting(id.bbox_left,y,obj_player)) && (open == 1) && (global.corrupted == 0)
	&& ((global.room_transition_nodoors = 0) && (global.room_transition_nodoors_2 = 0) && (global.room_transition_nodoors_more = 0)))
	or ((place_meeting(x-12,y,obj_player)) && (open == 1) && (global.corrupted > 0)
	&& ((global.room_transition_nodoors = 0) && (global.room_transition_nodoors_2 = 0) && (global.room_transition_nodoors_more = 0)))
	&& (!instance_exists(obj_scrn_roomtransition))
	{           
	        if (touch == 0) && (global.room_transition = 0) && (global.room_transition1 = 0) && (global.room_transition_more = 0)
			{
				touch = 1
				stopper1 = 0
				with(obj_player)
				{
					global.state = state
				}
			
				with(obj_block2_door)
	            {
					transition = 1
				}
			}
		
			if (stopper1 == 0) && (instance_place(x,y,obj_block2_door))
	        {
	            with(obj_block2_door)
	            {
	                if (transition = 1) && (global.room_transition_prep = 0) && (global.room_transition = 0) && (global.room_transition1 = 0) && (global.room_transition_more = 0)
	                {
	                    with(obj_player)
	                    {
							global.room_transition_prep = 1;
						
							if (room_height == 180) && (room_width == 320)
							{
								global.door_height = (obj_player.y+(global.jumpingdm*7))-argument0.y;
							}
							else global.door_height = (obj_player.y+(global.jumpingdm*7))-argument0.y;
						
	                        var x1 = 1;
                        
	                        hspd = 0;
	                        vspd = 0;
                        
	                        if (argument2 = 0) && (global.room_y == 0) && (x1 = 1)
	                        {
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
								State_machine_switch_state(Freeze);
								instance_create_layer(obj_camera.x-160,obj_camera.y-90,layer_get_id("Inst_scrn"),obj_scrn_roomtransition);
	                            with(obj_scrn_roomtransition)
									{
										doorright = 1;	
									}
								x1 = 0;
                             
	                            with(argument0)
	                            {
	                                stopper1 = 1;
	                                doit1 = 0;
	                                backend = 0;
                                
	                                adder1 = 0;
	                                started1 = 0;
	                                paused = 0;
	                                stopper2 = 0;
	                                n = 0;
	                                n2 = 0;
	                                notnow = 0;
                                
	                                //for the last part
	                                doit1 = 0;
	                                go1 = 0;
	                            }
	                        }
	                    }
	                }
	            }
	        }
	}







	if (instance_exists(argument1))
	{
			with(argument1)
	            {
	                if (global.room_y == 1) && (!place_meeting(x,y,obj_player)) && (global.room_transition1 = 0) && (backend == 0)
	                {
	                backend = 1;
	                }
	                else backend = 0;
	            }
	}

}