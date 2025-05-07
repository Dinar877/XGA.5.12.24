function scr_gamepad_test() {
	
	//if gamepads not supported
	if (gamepad_is_supported() <= 0)
	{
		show_debug_message("gamepads not supported")
		exit	
	}
	else
	{
		//get number of potential gamepad slots
		var gamepad_device_count = gamepad_get_device_count()
		
		//loops through all 12 gamepad slots GMS2 recognizes, and finds the one it's connected to
		while (!gamepad_is_connected(0+gamepad_counter)) && (gamepad_counter < gamepad_device_count)
		{
		    gamepad_counter += 1;
		}
		if (gamepad_is_connected(0+gamepad_counter))
		{
			correct_slot = gamepad_counter;
			gamepad_counter2 = gamepad_counter;
			
			//for changing controls objects
			if (variable_instance_exists(self,"xbox_or_ps"))
			{
				if (gamepad_counter <= 3)
				{
					xbox_or_ps = 1	
				}
				else xbox_or_ps = -1
			}
		}
	}
}
