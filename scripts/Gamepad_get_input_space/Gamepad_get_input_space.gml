function Gamepad_get_input_space() {
	gp_input = 0;


	for (gp_input = gp_face1; gp_input < gp_face1+gamepad_button_count(correct_slot); gp_input++)
	{
		if ((gamepad_button_check_pressed(correct_slot, gp_input)) > 0)
		{
			if (gp_input != gp_input_old)
			{
		
				script_execute(Gamepad_get_input_space_part2)
		
		
				with(obj_textblock_controls_generic)
					{
						if (other.gp_input_old = gp_input_old) && (selected = 0)
						{
							gp_input_old = other.gp_input_temp	
							//other.gp_input_temp = 0
						}
					
						//reset names
						if (gp_input_old = gp_face1)
								{
									new_input_name = " GP_FACE1"
								}
						else if (gp_input_old = gp_face3)
								{
									new_input_name = " GP_FACE3"
								}
						else if (gp_input_old = gp_face2)
								{
									new_input_name = " GP_FACE2"
								}
						else if (gp_input_old = gp_face4)
								{
									new_input_name = " GP_FACE4"	
								}
						else if (gp_input_old = gp_select)
								{
									new_input_name = " GP_SELECT"	
								}
						else if (gp_input_old = gp_start)
								{
									new_input_name = " GP_START"	
								}
						else if (gp_input_old = gp_shoulderl)
								{
									new_input_name = " GP_L1"	
								}
						else if (gp_input_old = gp_shoulderlb)
								{
									new_input_name = " GP_L2"	
								}
						else if (gp_input_old = gp_shoulderr)
								{
									new_input_name = " GP_R1"	
								}
						else if (gp_input_old = gp_shoulderrb)
								{
									new_input_name = " GP_R2"	
								}	
						
									
						///NEW 31/1/22	
						//figures out and gets the name for each 'obj_textblock_controls_generic' object as we loop through each one
						Gamepad_getname()		
					}
			
				waiting = 0;
				waiting2 = 0;
			
				global.controls_changed = 1;
				//global.pause_logbook = 0
			}
		}
	}



}
