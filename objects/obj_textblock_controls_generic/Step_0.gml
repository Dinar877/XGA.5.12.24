/// @description Insert description here
// You can write your code in this editor
Gamepad_variables()



//GAMEPAD
if (gamepad_is_connected(correct_slot))
{
	//making sure L1 and R1 don't change screen if they've been changed
	if (selected == 1) && (waiting3 = 1) && (global.pause_logbook = 1) && (!jump)
	{	
		waiting = 0
		waiting2 = 0
		waiting3 = 0
		delay = 0
		global.pause_logbook = 0
		exit;
	}
	

	if (selected == 1) && (waiting2 >= 1)
	{	
		global.controls_changed = 1
		global.pause_logbook = 1
		script_execute(Gamepad_get_input_space);
		
		//save changes
		SavingUI("XGA.SAVEFILE.UI.dat");
		
		exit;
	}
	else if (selected == 0) && (waiting >= 1)
	{
		waiting = 0
		waiting2 = 0
		global.pause_logbook = 0
	}

	if (FadeNow <= 0)
	{
		FadeNow = 0.4;	
	}

	if (delay < 1) && (selected == 1)
	{
		delay += 0.1;	
	}

	if (selected > 0) && (delay >= 1) && (!jump) && (waiting > 0) 
	&& (do_reset <= 0) && (do_exit == 0) && (waiting2 = 0) && (waiting3 = 0) && (global.pause_logbook = 0)
	{
		waiting2 = 1
		global.pause_logbook = 1
	}


	//if player pressed a button to enter change controls mode
	if (selected > 0) && (delay >= 1)  && (jump_pressed) && (waiting	<= 0) 
	&& (do_reset <= 0) && (do_exit == 0) && (waiting2 = 0) && (global.pause_logbook = 0) //if not 'reset controls' pressed
	{
		waiting = 1
	}
	else if (selected > 0) && (delay >= 1) && (jump_pressed) && (waiting <= 0) 
	&& (do_reset > 0) && (gamepad_is_connected(correct_slot)) //if reset controls pressed-controller
	{
		with(obj_textblock_controls_generic)
				{
						if (do_space > 0)
						{
							global.gp_space = gp_face1
							gp_input_old = global.gp_space
						}
						else if (do_ability > 0)
						{
							global.gp_ability = gp_face2
							gp_input_old = global.gp_ability
						}
						else if (do_G > 0)
						{
							global.gp_G = gp_face4
							gp_input_old = global.gp_G
						}
						else if (do_tab > 0)
						{
							global.gp_tab = gp_face3
							gp_input_old = global.gp_tab
						}
						else if (do_select > 0)
						{
							global.gp_select = gp_select
							gp_input_old = global.gp_select
						}
						else if (do_start > 0)
						{
							global.gp_enter = gp_start
							gp_input_old = global.gp_enter
						}
						else if (do_L1 > 0)
						{
							global.gp_L1 = gp_shoulderl
							gp_input_old = global.gp_L1
						}
						else if (do_L2 > 0)
						{
							global.gp_L2 = gp_shoulderlb
							gp_input_old = global.gp_L2
						}
						else if (do_R1 > 0)
						{
							global.gp_R1 = gp_shoulderr
							gp_input_old = global.gp_R1
						}
						else if (do_R2 > 0)
						{
							global.gp_R2 = gp_shoulderrb
							gp_input_old = global.gp_R2
						}
	
						//reset names based on if xbox or sony controller
						if (xbox_or_ps = 1)
						{
							if (gp_input_old = gp_face1)
									{
										new_input_name = " A"
									}
							else if (gp_input_old = gp_face3)
									{
										new_input_name = " X"
									}
							else if (gp_input_old = gp_face2)
									{
										new_input_name = " B"
									}
							else if (gp_input_old = gp_face4)
									{
										new_input_name = " Y"	
									}
							else if (gp_input_old = gp_select)
									{
										new_input_name = " SELECT"	
									}
							else if (gp_input_old = gp_start)
									{
										new_input_name = " START"	
									}
							else if (gp_input_old = gp_shoulderl)
									{
										new_input_name = " L1"	
									}
							else if (gp_input_old = gp_shoulderlb)
									{
										new_input_name = " L2"	
									}
							else if (gp_input_old = gp_shoulderr)
									{
										new_input_name = " R1"	
									}
							else if (gp_input_old = gp_shoulderrb)
									{
										new_input_name = " R2"	
									}	
						}
						else if (xbox_or_ps = -1)
						{
							if (gp_input_old = gp_face1)
									{
										new_input_name = " X"
									}
							else if (gp_input_old = gp_face3)
									{
										new_input_name = " SQUARE"
									}
							else if (gp_input_old = gp_face2)
									{
										new_input_name = " CIRCLE"
									}
							else if (gp_input_old = gp_face4)
									{
										new_input_name = " TRIANGLE"	
									}
							else if (gp_input_old = gp_select)
									{
										new_input_name = " SELECT"	
									}
							else if (gp_input_old = gp_start)
									{
										new_input_name = " START"	
									}
							else if (gp_input_old = gp_shoulderl)
									{
										new_input_name = " L1"	
									}
							else if (gp_input_old = gp_shoulderlb)
									{
										new_input_name = " L2"	
									}
							else if (gp_input_old = gp_shoulderr)
									{
										new_input_name = " R1"	
									}
							else if (gp_input_old = gp_shoulderrb)
									{
										new_input_name = " R2"	
									}	
						}
				}
				
		//save changes
		SavingUI("XGA.SAVEFILE.UI.dat");
	}
	else if (gamepad_is_connected(correct_slot)) //another check of the object's assigned input and getting name- controller
	{
		with(obj_textblock_controls_generic)
				{
						//reset names based on if xbox or sony controller
						if (xbox_or_ps = 1)
						{
							if (gp_input_old = gp_face1)
									{
										new_input_name = " A"
									}
							else if (gp_input_old = gp_face3)
									{
										new_input_name = " X"
									}
							else if (gp_input_old = gp_face2)
									{
										new_input_name = " B"
									}
							else if (gp_input_old = gp_face4)
									{
										new_input_name = " Y"	
									}
							else if (gp_input_old = gp_select)
									{
										new_input_name = " SELECT"	
									}
							else if (gp_input_old = gp_start)
									{
										new_input_name = " START"	
									}
							else if (gp_input_old = gp_shoulderl)
									{
										new_input_name = " L1"	
									}
							else if (gp_input_old = gp_shoulderlb)
									{
										new_input_name = " L2"	
									}
							else if (gp_input_old = gp_shoulderr)
									{
										new_input_name = " R1"	
									}
							else if (gp_input_old = gp_shoulderrb)
									{
										new_input_name = " R2"	
									}	
						}
						else if (xbox_or_ps = -1)
						{
							if (gp_input_old = gp_face1)
									{
										new_input_name = " X"
									}
							else if (gp_input_old = gp_face3)
									{
										new_input_name = " SQUARE"
									}
							else if (gp_input_old = gp_face2)
									{
										new_input_name = " CIRCLE"
									}
							else if (gp_input_old = gp_face4)
									{
										new_input_name = " TRIANGLE"	
									}
							else if (gp_input_old = gp_select)
									{
										new_input_name = " SELECT"	
									}
							else if (gp_input_old = gp_start)
									{
										new_input_name = " START"	
									}
							else if (gp_input_old = gp_shoulderl)
									{
										new_input_name = " L1"	
									}
							else if (gp_input_old = gp_shoulderlb)
									{
										new_input_name = " L2"	
									}
							else if (gp_input_old = gp_shoulderr)
									{
										new_input_name = " R1"	
									}
							else if (gp_input_old = gp_shoulderrb)
									{
										new_input_name = " R2"	
									}	
						}	
				}	
	}
	else if (selected > 0) && (delay >= 1) && (jump_pressed)
	&& (waiting <= 0) 
	&& (do_exit > 0) //if go back pressed-controller
	{
		if (instance_exists(obj_pausescrn1))
		{
			with(obj_pausescrn1)
			{
				prestate = 1
				instate = 0
				new1 = 0
			}
		}
	}
}
else if (!gamepad_is_connected(correct_slot))
{
	//making sure L1 and R1 don't change screen if they've been changed
	if (selected == 1) && (waiting3 = 1) && (global.pause_logbook = 1) && (!jump)
	{	
		waiting = 0
		waiting2 = 0
		waiting3 = 0
		delay = 0
		global.pause_logbook = 0
		exit;
	}

	if (selected == 1) && (waiting2 >= 1)
	{	
		global.controls_changed = 1
		global.pause_logbook = 1
		script_execute(Gamepad_get_input_space_key);
		
		//save changes
		SavingUI("XGA.SAVEFILE.UI.dat");
		
		exit;
	}
	else if (selected == 1) && (waiting2 <= 0) && (waiting <= 0)
	{
		script_execute(Gamepad_variables);
	}
	else if (selected == 0) && (waiting >= 1)
	{
		waiting = 0
		waiting2 = 0
		global.pause_logbook = 0
	}

	if (FadeNow <= 0)
	{
		FadeNow = 0.4;	
	}

	if (delay < 1) && (selected == 1)
	{
		delay += (1/room_speed)*2	
	}

	if (selected > 0) && (delay >= 1) && (!jump)
	&& (waiting > 0) && (do_reset <= 0) && (waiting2 = 0) && (waiting3 = 0) && (global.pause_logbook = 0)
	{
		waiting2 = 1
		global.pause_logbook = 1
	}

	if (selected > 0) && (delay >= 1) && (jump_pressed)
	&& (waiting	<= 0) && (do_reset <= 0) && (waiting2 = 0) && (global.pause_logbook = 0) //if not 'reset controls' pressed
	{
		waiting = 1
	}
	else if (selected > 0) && (delay >= 1) && (jump_pressed) && (waiting <= 0) && (do_reset > 0) //if reset controls pressed-no controller
	{
		with(obj_textblock_controls_generic)
				{
						//destroys all keyboard mappings
						keyboard_unset_map()
						
						if (do_space > 0)
						{
							global.key_space = ord("Z");
							gp_input_old = global.key_space
						}
						else if (do_ability > 0)
						{
							global.key_ability = ord("V");
							gp_input_old = global.key_ability
						}
						else if (do_G > 0)
						{
							global.key_G = ord("C");
							gp_input_old = global.key_G
						}
						else if (do_tab > 0)
						{
							global.key_tab = ord("X");
							gp_input_old = global.key_tab
						}
						else if (do_select > 0)
						{
							global.key_select = ord("G")
							gp_input_old = global.key_select
						}
						else if (do_start > 0)
						{
							global.key_enter = vk_enter
							gp_input_old = global.key_enter
						}
						else if (do_L1 > 0)
						{
							global.key_L1 = ord("A");
							gp_input_old = global.key_L1
						}
						else if (do_L2 > 0)
						{
							global.key_L2 = ord("D");
							gp_input_old = global.key_L2
						}
						else if (do_R1 > 0)
						{
							global.key_R1 = ord("S");
							gp_input_old = global.key_R1
						}
						else if (do_R2 > 0)
						{
							global.key_R2 = ord("F");
							gp_input_old = global.key_R2
						}
					
						Gamepad_get_input_space_name_key()
				}
				
		//save changes
		SavingUI("XGA.SAVEFILE.UI.dat");
	}
	else if (selected > 0) && (delay >= 1) && (jump_pressed) && (waiting <= 0) 
	&& (do_exit > 0) //if go back pressed-keyboard
	{
		if (instance_exists(obj_pausescrn1))
		{
			with(obj_pausescrn1)
			{
				prestate = 1
				instate = 0
				new1 = 0
			}
		}
	}
}


