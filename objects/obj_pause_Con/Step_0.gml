/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables);

//custom map markers global image index
global.marker_imageindex += 2/60;

if (!instance_exists(obj_pausescrn1))
{
	exit;	
}

//moves map around
if (gamepad_is_connected(correct_slot))
{
	if (global.pause_map)
	{
		if (global.xleft < 150)
		{
		instance_activate_object(obj_pausescrn_arrowleft)	
		}

		if (global.xleft > -150)
		{
		instance_activate_object(obj_pausescrn_arrowright)	
		}

		if (global.yup < 150)
		{
		instance_activate_object(obj_pausescrn_arrowup)
		}

		if (global.yup > -150)
		{
		instance_activate_object(obj_pausescrn_arrowdown)	
		}

		if (global.xleft < 150) && (left_key)
		{
		global.xleft += 1
		instance_activate_object(obj_pausescrn_arrowleft)	
		}
		else if (global.xleft > -150) && (right_key)
		{
		global.xleft -= 1
		instance_activate_object(obj_pausescrn_arrowright)	
		}

		if (global.yup > -150) && (down_key)
		{
		global.yup -= 1
		instance_activate_object(obj_pausescrn_arrowup)
		}
		else if (global.yup < 150) && (up_key)
		{
		global.yup += 1
		instance_activate_object(obj_pausescrn_arrowdown)	
		}

		if (global.xleft >= 150)
		{
			instance_deactivate_object(obj_pausescrn_arrowleft)	
		}
		else if (global.xleft <= -150)
		{
			instance_deactivate_object(obj_pausescrn_arrowright)	
		}

		if (global.yup >= 150)
		{
			instance_deactivate_object(obj_pausescrn_arrowup)	
		}
		else if (global.yup <= -150)
		{
			instance_deactivate_object(obj_pausescrn_arrowdown)	
		}
	
	}

	//get out of map screen to another pause menu state
	if (instance_exists(obj_textblock_controls_generic))
	{
		with(obj_textblock_controls_generic)
		{
			if (delay = 1) && (selected = 1) && (waiting3 = 0)
			{
				with(other)
				{
					if (gamepad_button_check_pressed(correct_slot,gp_start)) && (global.pause_exit == 0) && ((!instance_exists(obj_pause_logbook)) && (global.pause_logbook == 0))
					&& (!instance_exists(obj_scrn_roomtransition))
					&& (obj_pausescrn1.instate == 0)
					{
						global.pause_map = 0;
						global.pause_logbook = 0;
						global.pause_options = 0;
						global.pause_status = 0;
						global.pause_exit = 1;
						global.pause_transition = 1;
						if (!instance_exists(obj_scrn_roomtransition))
							{
								instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrn_roomtransition);
							}
						instance_destroy();
					}
				}
			}
		}
	}
	else 
	{
		if (gamepad_button_check_pressed(correct_slot,gp_start)) && (global.pause_exit == 0) && ((!instance_exists(obj_pause_logbook)) && (global.pause_logbook == 0))
		&& (!instance_exists(obj_scrn_roomtransition))
		&& (obj_pausescrn1.instate == 0)
		{
			global.pause_map = 0;
			global.pause_logbook = 0;
			global.pause_options = 0;
			global.pause_status = 0;
			global.pause_exit = 1;
			global.pause_transition = 1;
			if (!instance_exists(obj_scrn_roomtransition))
				{
					instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrn_roomtransition);
				}
			instance_destroy();
		}	
	}
}
else if (!gamepad_is_connected(correct_slot))
{
	if (global.pause_map)
	{
		if (global.xleft < 150)
		{
		instance_activate_object(obj_pausescrn_arrowleft)	
		}

		if (global.xleft > -150)
		{
		instance_activate_object(obj_pausescrn_arrowright)	
		}

		if (global.yup < 150)
		{
		instance_activate_object(obj_pausescrn_arrowup)
		}

		if (global.yup > -150)
		{
		instance_activate_object(obj_pausescrn_arrowdown)	
		}

		if (global.xleft < 150) && (keyboard_check(vk_left))
		{
		global.xleft += 1
		instance_activate_object(obj_pausescrn_arrowleft)	
		}
		else if (global.xleft > -150) && (keyboard_check(vk_right))
		{
		global.xleft -= 1
		instance_activate_object(obj_pausescrn_arrowright)	
		}

		if (global.yup > -150) && (keyboard_check(vk_down))
		{
		global.yup -= 1
		instance_activate_object(obj_pausescrn_arrowup)
		}
		else if (global.yup < 150) && (keyboard_check(vk_up))
		{
		global.yup += 1
		instance_activate_object(obj_pausescrn_arrowdown)	
		}

		if (global.xleft >= 150)
		{
			instance_deactivate_object(obj_pausescrn_arrowleft)	
		}
		else if (global.xleft <= -150)
		{
			instance_deactivate_object(obj_pausescrn_arrowright)	
		}

		if (global.yup >= 150)
		{
			instance_deactivate_object(obj_pausescrn_arrowup)	
		}
		else if (global.yup <= -150)
		{
			instance_deactivate_object(obj_pausescrn_arrowdown)	
		}
	
	}


	//get out of map screen to another pause menu state
	if (instance_exists(obj_textblock_controls_generic))
	{
		with(obj_textblock_controls_generic)
		{
			if (delay = 1) && (selected = 1) && (waiting3 = 0)
			{
				with(other)
				{
					if (keyboard_check_pressed(vk_enter)) && (global.pause_exit == 0) && ((!instance_exists(obj_pause_logbook)) && (global.pause_logbook == 0))
					&& (!instance_exists(obj_scrn_roomtransition))
					&& (obj_pausescrn1.instate == 0)
					{
						global.pause_map = 0;
						global.pause_logbook = 0;
						global.pause_options = 0;
						global.pause_status = 0;
						global.pause_exit = 1;
						global.pause_transition = 1;
						if (!instance_exists(obj_scrn_roomtransition))
							{
								instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrn_roomtransition);
							}
						instance_destroy();
					}
				}
			}
		}
	}
	else 
	{
		if (keyboard_check_pressed(vk_enter)) && (global.pause_exit == 0) && ((!instance_exists(obj_pause_logbook)) && (global.pause_logbook == 0))
		&& (!instance_exists(obj_scrn_roomtransition))
		&& (obj_pausescrn1.instate == 0)
		{
			global.pause_map = 0;
			global.pause_logbook = 0;
			global.pause_options = 0;
			global.pause_status = 0;
			global.pause_exit = 1;
			global.pause_transition = 1;
			if (!instance_exists(obj_scrn_roomtransition))
				{
					instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrn_roomtransition);
				}
			instance_destroy();
		}	
	}
}