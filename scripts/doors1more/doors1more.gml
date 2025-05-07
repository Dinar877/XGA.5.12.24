function doors1more() {
	if (instance_exists(obj_door_normal_left_more))
	{
	with(obj_door_normal_left_more)
	                {
	                    if (global.room_transition_notnowL_more = 0) && (global.room_transition_more == 1) && (global.room_transition_notnowR_more = 1)
	                    {
	                        x = obj_room_transition_l2r3.x;
	                        y = obj_room_transition_l2r3.y;
								image_index = 0;
								image_speed = 0.5;
								opening = 0;
								closed = 0;
								open = 1;
	                        started1 = 0;
	                        paused = 0;
                        
	                        stopper1 = 0;
	                        stopper2 = 0;
                        
	                        n = 0;
	                        n2 = 0;
	                        backend = 0;
                        
	                        notnow = 0;
                        
	                        //for the last part
	                        doit1 = 0;
	                        go1 = 0;
                        
	                            with(obj_block2)
	                            {
	                                if (place_meeting(x,y,obj_door_normal_left_more)) && (global.room_transition_more == 1)
	                                {
	                                transition = 1;
	                                //x -= 25;
	                                }
	                            }
	                    }
	                    if (global.room_transition_notnowL_more = 1) && (global.room_transition_more == 1) && (global.room_transition_notnowR_more = 0)
	                    {
								image_index = 0;
								image_speed = 0.5;
								opening = 0;
								closed = 0;
								open = 1;
	                        x = obj_room_transition_l2r3.x;
	                        y = obj_room_transition_l2r3.y;
	                        started1 = 0;
	                        paused = 0;
                        
	                        stopper1 = 0;
	                        stopper2 = 0;
                        
	                        n = 0;
	                        n2 = 0;
	                        backend = 0;
                        
	                        notnow = 0;
                        
	                        //for the last part
	                        doit1 = 0;
	                        go1 = 0;
                        
	                    }
	                }
	} 
	if (instance_exists(obj_door_normal_right_more))
	{
	with(obj_door_normal_right_more)
	    {
	                    if (global.room_transition_notnowR_more = 0) && (global.room_transition_more == 1) && (global.room_transition_notnowL_more = 1)
	                    {
								image_index = 0;
								image_speed = 0.5;
								opening = 0;
								closed = 0;
								open = 1;
	                        x = obj_room_transition_r2l3.x;
	                        y = obj_room_transition_r2l3.y;
	                        started1 = 0;
	                        paused = 0;
                        
	                        stopper1 = 0;
	                        stopper2 = 0;
                        
	                        n = 0;
	                        n2 = 0;
	                        backend = 0;
                        
	                        notnow = 0;
                        
	                        //for the last part
	                        doit1 = 0;
	                        go1 = 0;
                        
	                        with(obj_block2)
	                            {
	                                if (place_meeting(x,y,obj_door_normal_right_more)) && (global.room_transition_more == 1)
	                                {
	                                transition = 1;
	                                //x += 25;
	                                }
	                            }

	                    }
	                    if (global.room_transition_notnowL_more = 0) && (global.room_transition_more == 1) && (global.room_transition_notnowR_more = 1)
	                    {
								image_index = 0;
								image_speed = 0.5;
								opening = 0;
								closed = 0;
								open = 1;
	                        x = obj_room_transition_r2l3.x;
	                        y = obj_room_transition_r2l3.y;
	                        started1 = 0;
	                        paused = 0;
                        
	                        stopper1 = 0;
	                        stopper2 = 0;
                        
	                        n = 0;
	                        n2 = 0;
	                        backend = 0;
                        
	                        notnow = 0;
                        
	                        //for the last part
	                        doit1 = 0;
	                        go1 = 0;
                        
	                    }
	    }
	}


}
