function Gamepad_get_input_space_key() {
	gp_input = keyboard_lastkey

	if (keyboard_check_pressed(gp_input)) && (gp_input > 0) && (gp_input != gp_input_old)
		{
				//change input and changes controls
				script_execute(Gamepad_get_input_space_part2_key)
		
				with(obj_textblock_controls_generic)
					{
							//change other control textblock too
							if (other.gp_input = gp_input_old) && (selected = 0)
							{
								gp_input_old = other.gp_input_temp	
							}
							
							///NEW 31/1/22
							//figures out and gets the name for each 'obj_textblock_controls_generic' object as we loop through each one
							Gamepad_get_input_space_name_key()
					}
			
				waiting = 0;
				waiting2 = 0;
				gp_input = 0
			
				global.controls_changed = 1;
				global.pause_logbook = 0
				exit;
		}



}
