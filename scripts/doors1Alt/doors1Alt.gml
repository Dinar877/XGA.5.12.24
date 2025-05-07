function doors1Alt() {
	if (instance_exists(obj_door_normal_leftAlt))
	{
	with(obj_door_normal_leftAlt)
	                {
	                    if (global.room_transition_notnowL2 = 0) && (global.room_transition1 == 1) && (global.room_transition_notnowR2 = 1)
	                    {
	                        x = obj_room_transition_l2r2.x;
	                        y = obj_room_transition_l2r2.y;
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
	                                if (place_meeting(x,y,obj_door_normal_leftAlt)) && (global.room_transition1 == 1)
	                                {
	                                transition = 1;
	                                //x -= 25;
	                                }
	                            }
	                    }
	                    if (global.room_transition_notnowL2 = 1) && (global.room_transition1 == 1) && (global.room_transition_notnowR2 = 0)
	                    {
								image_index = 0;
								image_speed = 0.5;
								opening = 0;
								closed = 0;
								open = 1;
	                        x = obj_room_transition_l2r2.x;
	                        y = obj_room_transition_l2r2.y;
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
	if (instance_exists(obj_door_normal_rightAlt))
	{
	with(obj_door_normal_rightAlt)
	    {
	                    if (global.room_transition_notnowR2 = 0) && (global.room_transition1 == 1) && (global.room_transition_notnowL2 = 1)
	                    {
								image_index = 0;
								image_speed = 0.5;
								opening = 0;
								closed = 0;
								open = 1;
	                        x = obj_room_transition_r2l2.x;
	                        y = obj_room_transition_r2l2.y;
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
	                                if (place_meeting(x,y,obj_door_normal_rightAlt)) && (global.room_transition1 == 1)
	                                {
	                                transition = 1;
	                                //x += 25;
	                                }
	                            }

	                    }
	                    if (global.room_transition_notnowL2 = 0) && (global.room_transition1 == 1) && (global.room_transition_notnowR2 = 1)
	                    {
								image_index = 0;
								image_speed = 0.5;
								opening = 0;
								closed = 0;
								open = 1;
	                        x = obj_room_transition_r2l2.x;
	                        y = obj_room_transition_r2l2.y;
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
