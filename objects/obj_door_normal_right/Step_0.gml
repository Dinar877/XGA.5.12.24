//disable if player knocked back through door after being killed by xga
if (global.pierce_killswitch)
{
	exit;	
}

//when player touches outer edge of door inside
doors_touchingplayer_right(obj_door_normal_right, obj_door_normal_left, global.room_transition)
/*
if ((place_meeting(id.bbox_left,y,obj_player)) && (open == 1) && (room != rm_trueintro_3) && (global.corrupted == 0)
&& ((global.room_transition_nodoors = 0) && (global.room_transition_nodoors_2 = 0) && (global.room_transition_nodoors_more = 0)))
or ((place_meeting(x-12,y,obj_player)) && (open == 1) && (room != rm_trueintro_3) && (global.corrupted > 0)
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
							global.door_height = (obj_player.y+(global.jumpingdm*7))-obj_door_normal_right.y;
						}
						else global.door_height = (obj_player.y+(global.jumpingdm*7))-obj_door_normal_right.y;
						
						
                        var x1 = 1;
                        
                        hspd = 0;
                        vspd = 0;
                        
                        if (global.room_transition = 0) && (global.room_y == 0) && (x1 = 1)
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
							if (!instance_exists(obj_scrn_roomtransition))
							{
								instance_create_layer(obj_camera.x-160,obj_camera.y-90,layer_get_id("Inst_scrn"),obj_scrn_roomtransition);
								with(obj_scrn_roomtransition)
									{
										doorright = 1;	
									}
							}
                            x1 = 0;
                             
                            with(obj_door_normal_right)
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







if (instance_exists(obj_door_normal_left))
{
		with(obj_door_normal_left)
            {
                if (global.room_y == 1) && (!place_meeting(x,y,obj_player)) && (global.room_transition = 0) && (backend == 0)
                {
                backend = 1;
                }
                else backend = 0;
            }
}
*/

if (stopper1 == 1) && (doit1 != 1) && (global.room_transition = 0)
{
    global.room_transition = 1;
    backend = 0;
    doit1 = 1;
}

/*
with(obj_player)
{
    if (y == obj_door_normal_left.y+16) && (x == obj_door_normal_left.x) && (global.room_transition = 1)
    {
        instance_create(obj_room_transition_l2r1.x-227,y-80,obj_scrn_roomtransition);
    }
}

/*
if (global.room_transition == 0) && (stopper1 == 1)
{
        with(obj_scrn_roomtransition)
        {
        instance_destroy()
        }
        instance_activate_all();
        paused = 0;
        stopper1 = 0;
}

/* */
///during room transition moving
if (global.room_transition == 1) && (n == 0) && (stopper1 == 1) && (backend == 0)
{
	sprite_index = spr_door_transition_original;
    x -= 42;
	y +=3
	
    n = 1;
}


//for room transitioning
doors_movingplayer_right(global.room_transition, global.doorpath1);

/*
with(obj_scrn_roomtransition)
{
    if (FadeNow >= 1.0) && (global.room_transition = 1) && (global.room_x = 0) && (global.room_y = 1) && (global.stopper_2ndscrnshot = 0) && (global.mapgrid_1x1 == 0)
    {
        with(other)
        {
            if (backend = 0) && (stopper1 == 1)
            {
            if (x < obj_camera.bbox_right + 29)
			{
				x = lerp(x, obj_camera.bbox_right + 30, door_speed);
			}
            //once door is in correct position
            if (x >= obj_camera.bbox_right + 29)
            {
                if (global.room_transition_notnowL1 = 0) && (global.room_transition_notnowL2 = 0)
                {
					global.room_transition_notnowL1 = 1;
					//image_alpha
					paused = 0;
				    stopper1 = 0;
				    backend = 0;
					instance_activate_object(obj_player);
					instance_activate_object(object_player2_0_sprites);
				    instance_activate_object(obj_camera);
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
					room_goto(global.doorpath1);
					exit
					//instance_destroy();
                }
            }
            }
        }
    }
	else if (FadeNow >= 1.0) && (global.room_transition = 1) && (global.room_x = 0) && (global.room_y = 1) && (global.stopper_2ndscrnshot = 0) && (global.mapgrid_1x1 == 1)
    {
        with(other)
        {
            if (backend = 0) && (stopper1 == 1)
            {
            if (x < obj_camera.bbox_right + 29)
			{
				x = lerp(x, obj_camera.bbox_right + 30, door_speed);
			}
            //once door is in correct position
            if (x >= obj_camera.bbox_right + 29)
            {
                if (global.room_transition_notnowL1 = 0) && (global.room_transition_notnowL2 = 0)
                {
					global.room_transition_notnowL1 = 1;
					//image_alpha
					paused = 0;
				    stopper1 = 0;
				    backend = 0;
					instance_activate_object(obj_player);
					instance_activate_object(object_player2_0_sprites);
				    instance_activate_object(obj_camera);
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
					room_goto(global.doorpath1);
					exit
					//instance_destroy();
                }
            }
            }
        }
    }
}
*/