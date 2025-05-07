function Gamepad_get_input_key3() {
	//all the letters
	new_keymap = keyboard_get_map(gp_input) //lastkey pressed ascii code
	old_keymap = keyboard_get_map(gp_input_old) //original key ascii code


	//make original code = new1 input variable
	//make original input variable = new1 ascii code


	//global.key variables
	if (keyboard_get_map(global.key_ability)) = new_keymap
	{
		global.key_ability = old_keymap
		Gamepad_get_input_key4()//what kind of textblock did we have originally??? + set original global var. to original function
	
		exit
	}
	else if (keyboard_get_map(global.key_space)) = new_keymap
	{
		global.key_space = old_keymap
		Gamepad_get_input_key4()//what kind of textblock did we have originally??? + set original global var. to original function
	
		exit
	}
	else if (keyboard_get_map(global.key_G)) = new_keymap
	{
		global.key_G = old_keymap
	
		exit
	}
	else if (keyboard_get_map(global.key_tab)) = new_keymap
	{
		global.key_tab = old_keymap
		Gamepad_get_input_key4()
	
		exit
	}
	else if (keyboard_get_map(global.key_L1)) = new_keymap
	{
		global.key_L1 = old_keymap
		Gamepad_get_input_key4()//what kind of textblock did we have originally??? + set original global var. to original function
	
		exit
	}
	else if (keyboard_get_map(global.key_L2)) = new_keymap
	{
		global.key_L1 = old_keymap
		Gamepad_get_input_key4()//what kind of textblock did we have originally??? + set original global var. to original function
	
		exit
	}
	else if (keyboard_get_map(global.key_R1)) = new_keymap
	{
		global.key_R1 = old_keymap
		Gamepad_get_input_key4()//what kind of textblock did we have originally??? + set original global var. to original function
	
		exit
	}
	else if (keyboard_get_map(global.key_R2)) = new_keymap
	{
		global.key_R2 = old_keymap
		Gamepad_get_input_key4()//what kind of textblock did we have originally??? + set original global var. to original function
	
		exit
	}
	else if (keyboard_get_map(global.key_enter)) = new_keymap
	{
		global.key_enter = old_keymap
		Gamepad_get_input_key4()//what kind of textblock did we have originally??? + set original global var. to original function
	
		exit
	}
	else if (keyboard_get_map(global.key_select)) = new_keymap
	{
		global.key_select = old_keymap
		Gamepad_get_input_key4()//what kind of textblock did we have originally??? + set original global var. to original function
	
		exit
	}

	//checks every single key on the keyboard, and compares to original key. Sets keyboard map and swaps keys around.


	if (keyboard_get_map(ord("A"))) = new_keymap
	{
		Gamepad_get_input_key41() //coverts correct global.var key to old_keymap
		Gamepad_get_input_key4() //converts correct global.var key to new_keymap
	}
	else if (keyboard_get_map(ord("B"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("C"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("D"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("E"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("F"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("G"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("H"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("I"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("J"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("K"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("L"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("M"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("N"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("O"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("P"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("Q"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("R"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("S"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("T"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("U"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("V"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("W"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("X"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("Y"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(ord("Z"))) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}

	//all the vk_constants
	if (keyboard_get_map(vk_add)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_alt)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_backspace)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_control)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_decimal)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_delete)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_divide)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_end)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_enter)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_escape)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_f1)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_f2)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_f3)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_f4)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_f5)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_f6)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_f7)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_f8)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_f9)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_f10)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_f11)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_f12)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_home)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_insert)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_lalt)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_lcontrol)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_lshift)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_multiply)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_numpad0)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_numpad1)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_numpad2)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_numpad3)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_numpad4)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_numpad5)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_numpad6)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_numpad7)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_numpad8)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_numpad9)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_pagedown)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_printscreen)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_ralt)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_rcontrol)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_return)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_rshift)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()	
	}
	else if (keyboard_get_map(vk_shift)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_subtract)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_space)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}
	else if (keyboard_get_map(vk_tab)) = new_keymap
	{
		Gamepad_get_input_key41()
		Gamepad_get_input_key4()
	}



	//returns to control textblock object's step event
	exit


}
