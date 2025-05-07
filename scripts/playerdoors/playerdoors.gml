function playerdoors() {
	//room transitions
	if (righty != 1) && (lefty != 1) && (global.room_transition = 1) && (global.room_transition_notnowL1 = 1)
	        {
			script_execute(doors1Alt);
	        State_machine_switch_state(Idle);
	        righty = 1;
	        x = obj_door_normal_leftAlt.x-8;
	        y = obj_door_normal_leftAlt.y+16;
	        jump = 0;
	        jump_held = 0;
	        }
	if (righty = 1) && (global.room_transition_notnowL1 = 1)
	        {
	            with(obj_camera)
	                {
	                    x = obj_door_normal_leftAlt.x-108;
	                    y = obj_door_normal_leftAlt.y+16;
	                }
            
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                //x = obj_room_transition_l2r1.x-227;
	                x = obj_door_normal_leftAlt.x-227;
	                y = obj_door_normal_leftAlt.y-64;
	            }
	            with(obj_door_normal_leftAlt)
	            {
	                open = 1;
	                closed = 0;
	                image_index = image_number - 1;
	                //x = obj_room_transition_l2r1.x;
	            }
	            global.room_x = 1;
	        }
	if (righty != 1) && (lefty != 1) && (global.room_transition = 1) && (global.room_transition_notnowR1 = 1)
	        {
			script_execute(doors1Alt);
	        State_machine_switch_state(Idle);
	        lefty = 1;
	        x = obj_door_normal_rightAlt.x+10;
	        y = obj_door_normal_rightAlt.y+16;
	        jump = 0;
	        jump_held = 0;
	        }
	if (lefty = 1) && (global.room_transition_notnowR1 = 1)
	        {
	            with(obj_camera)
	                {
	                    x = obj_door_normal_rightAlt.x+107;
	                    y = obj_door_normal_rightAlt.y+16;
	                }
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                //x = obj_room_transition_l2r1.x-227;
	                x = obj_door_normal_rightAlt.x-13;
	                y = obj_door_normal_rightAlt.y-64;
	            }
	            with(obj_door_normal_rightAlt)
	            {
	                open = 1;
	                closed = 0;
	                image_index = image_number - 1;
	                //x = obj_room_transition_l2r1.x;
	            }
	            global.room_x = 1;
	        }
	else if (global.room_transition_notnowL1 = 0) && (global.room_transition_notnowR1 = 0)
	{
		global.room_x = 0;	
	}


}
