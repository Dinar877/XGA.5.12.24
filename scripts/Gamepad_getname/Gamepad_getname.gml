function Gamepad_getname() {
	//all the controls
	scr_gamepad_test();

	//now make the gamepad inputs = those variables-for ps4
	if (gamepad_is_connected(correct_slot))
	{ 
			//jump
		#region
			if (global.gp_space = gp_face1)
			{
				jump = " X"
			}
			else if (global.gp_space = gp_face2)
			{
				jump = "CIRCLE"
			}
			else if (global.gp_space = gp_face3)
			{
				jump = "SQUARE"
			}
			else if (global.gp_space = gp_face4)
			{
				jump = "TRIANGLE"
			}
			else if (global.gp_space = gp_shoulderr)
			{
				jump = "R1"
			}
			else if (global.gp_space = gp_shoulderl)
			{
				jump = "L1"
			}
			else if (global.gp_space = gp_shoulderrb)
			{
				jump = "R2"
			}
			else if (global.gp_space = gp_shoulderlb)
			{
				jump = "L2"
			}
			else if (global.gp_space = gp_select)
			{
				jump = "SELECT"
			}
			else if (global.gp_space = gp_start)
			{
				jump = "START"
			}
		#endregion
		
			//ability
		#region
			if (global.gp_ability = gp_face1)
			{
				ability = " X"
			}
			else if (global.gp_ability = gp_face2)
			{
				ability = "CIRCLE"
			}
			else if (global.gp_ability = gp_face3)
			{
				ability = "SQUARE"
			}
			else if (global.gp_ability = gp_face4)
			{
				ability = "TRIANGLE"
			}
			else if (global.gp_ability = gp_shoulderr)
			{
				ability = "R1"
			}
			else if (global.gp_ability = gp_shoulderl)
			{
				ability = "L1"
			}
			else if (global.gp_ability = gp_shoulderrb)
			{
				ability = "R2"
			}
			else if (global.gp_ability = gp_shoulderlb)
			{
				ability = "L2"
			}
			else if (global.gp_ability = gp_select)
			{
				ability = "SELECT"
			}
			else if (global.gp_ability = gp_start)
			{
				ability = "START"
			}
		#endregion
		
			//dash
		#region
			if (global.gp_G = gp_face1)
			{
				dash = " X"
			}
			else if (global.gp_G = gp_face2)
			{
				dash = "CIRCLE"
			}
			else if (global.gp_G = gp_face3)
			{
				dash = "SQUARE"
			}
			else if (global.gp_G = gp_face4)
			{
				dash = "TRIANGLE"
			}
			else if (global.gp_G = gp_shoulderr)
			{
				dash = "R1"
			}
			else if (global.gp_G = gp_shoulderl)
			{
				dash = "L1"
			}
			else if (global.gp_G = gp_shoulderrb)
			{
				dash = "R2"
			}
			else if (global.gp_G = gp_shoulderlb)
			{
				dash = "L2"
			}
			else if (global.gp_G = gp_select)
			{
				dash = "SELECT"
			}
			else if (global.gp_G = gp_start)
			{
				dash = "START"
			}
		#endregion
		
			//shoot
		#region
			if (global.gp_tab = gp_face1)
			{
				shoot = " X"
			}
			else if (global.gp_tab = gp_face2)
			{
				shoot = "CIRCLE"
			}
			else if (global.gp_tab = gp_face3)
			{
				shoot = "SQUARE"
			}
			else if (global.gp_tab = gp_face4)
			{
				shoot = "TRIANGLE"
			}
			else if (global.gp_tab = gp_shoulderr)
			{
				shoot = "R1"
			}
			else if (global.gp_tab = gp_shoulderl)
			{
				shoot = "L1"
			}
			else if (global.gp_tab = gp_shoulderrb)
			{
				shoot = "R2"
			}
			else if (global.gp_tab = gp_shoulderlb)
			{
				shoot = "L2"
			}
			else if (global.gp_tab = gp_select)
			{
				shoot = "SELECT"
			}
			else if (global.gp_tab = gp_start)
			{
				shoot = "START"
			}
		#endregion
	    
			//start
		#region
			if (global.gp_enter = gp_face1)
			{
				enter_pressed = " X"
			}
			else if (global.gp_enter = gp_face2)
			{
				enter_pressed = "CIRCLE"
			}
			else if (global.gp_enter = gp_face3)
			{
				enter_pressed = "SQUARE"
			}
			else if (global.gp_enter = gp_face4)
			{
				enter_pressed = "TRIANGLE"
			}
			else if (global.gp_enter = gp_shoulderr)
			{
				enter_pressed = "R1"
			}
			else if (global.gp_enter = gp_shoulderl)
			{
				enter_pressed = "L1"
			}
			else if (global.gp_enter = gp_shoulderrb)
			{
				enter_pressed = "R2"
			}
			else if (global.gp_enter = gp_shoulderlb)
			{
				enter_pressed = "L2"
			}
			else if (global.gp_enter = gp_select)
			{
				enter_pressed = "SELECT"
			}
			else if (global.gp_enter = gp_start)
			{
				enter_pressed = "START"
			}
		#endregion

			//select
		#region
			if (global.gp_select = gp_face1)
			{
				Select = " X"
			}
			else if (global.gp_select = gp_face2)
			{
				Select = "CIRCLE"
			}
			else if (global.gp_select = gp_face3)
			{
				Select = "SQUARE"
			}
			else if (global.gp_select = gp_face4)
			{
				Select = "TRIANGLE"
			}
			else if (global.gp_select = gp_shoulderr)
			{
				Select = "R1"
			}
			else if (global.gp_select = gp_shoulderl)
			{
				Select = "L1"
			}
			else if (global.gp_select = gp_shoulderrb)
			{
				Select = "R2"
			}
			else if (global.gp_select = gp_shoulderlb)
			{
				Select = "L2"
			}
			else if (global.gp_select = gp_select)
			{
				Select = "SELECT"
			}
			else if (global.gp_select = gp_start)
			{
				Select = "START"
			}
		#endregion
		
			//R1
		#region
			if (global.gp_R1 = gp_face1)
			{
				R1 = " X"
			}
			else if (global.gp_R1 = gp_face2)
			{
				R1 = "CIRCLE"
			}
			else if (global.gp_R1 = gp_face3)
			{
				R1 = "SQUARE"
			}
			else if (global.gp_R1 = gp_face4)
			{
				R1 = "TRIANGLE"
			}
			else if (global.gp_R1 = gp_shoulderr)
			{
				R1 = "R1"
			}
			else if (global.gp_R1 = gp_shoulderl)
			{
				R1 = "R1"
			}
			else if (global.gp_R1 = gp_shoulderrb)
			{
				R1 = "R2"
			}
			else if (global.gp_R1 = gp_shoulderlb)
			{
				R1 = "L2"
			}
			else if (global.gp_R1 = gp_select)
			{
				R1 = "SELECT"
			}
			else if (global.gp_R1 = gp_start)
			{
				R1 = "START"
			}
		#endregion

			//R2
		#region
			if (global.gp_R2 = gp_face1)
			{
				R2 = " X"
			}
			else if (global.gp_R2 = gp_face2)
			{
				R2 = "CIRCLE"
			}
			else if (global.gp_R2 = gp_face3)
			{
				R2 = "SQUARE"
			}
			else if (global.gp_R2 = gp_face4)
			{
				R2 = "TRIANGLE"
			}
			else if (global.gp_R2 = gp_shoulderr)
			{
				R2 = "R1"
			}
			else if (global.gp_R2 = gp_shoulderl)
			{
				R2 = "L1"
			}
			else if (global.gp_R2 = gp_shoulderrb)
			{
				R2 = "R2"
			}
			else if (global.gp_R2 = gp_shoulderlb)
			{
				R2 = "R2"
			}
			else if (global.gp_R2 = gp_select)
			{
				R2 = "R2"
			}
			else if (global.gp_R2 = gp_start)
			{
				R2 = "START"
			}
		#endregion
	    
			//L1
		#region
			if (global.gp_L1 = gp_face1)
			{
				L1 = " X"
			}
			else if (global.gp_L1 = gp_face2)
			{
				L1 = "CIRCLE"
			}
			else if (global.gp_L1 = gp_face3)
			{
				L1 = "SQUARE"
			}
			else if (global.gp_L1 = gp_face4)
			{
				L1 = "TRIANGLE"
			}
			else if (global.gp_L1 = gp_shoulderr)
			{
				L1 = "R1"
			}
			else if (global.gp_L1 = gp_shoulderl)
			{
				L1 = "L1"
			}
			else if (global.gp_L1 = gp_shoulderrb)
			{
				L1 = "R2"
			}
			else if (global.gp_L1 = gp_shoulderlb)
			{
				L1 = "L2"
			}
			else if (global.gp_L1 = gp_select)
			{
				L1 = "SELECT"
			}
			else if (global.gp_L1 = gp_start)
			{
				L1 = "START"
			}
		#endregion

			//L2
		#region
			if (global.gp_L2 = gp_face1)
			{
				L2 = " X"
			}
			else if (global.gp_L2 = gp_face2)
			{
				L2 = "CIRCLE"
			}
			else if (global.gp_L2 = gp_face3)
			{
				L2 = "SQUARE"
			}
			else if (global.gp_L2 = gp_face4)
			{
				L2 = "TRIANGLE"
			}
			else if (global.gp_L2 = gp_shoulderr)
			{
				L2 = "R1"
			}
			else if (global.gp_L2 = gp_shoulderl)
			{
				L2 = "L1"
			}
			else if (global.gp_L2 = gp_shoulderrb)
			{
				L2 = "R2"
			}
			else if (global.gp_L2 = gp_shoulderlb)
			{
				L2 = "L2"
			}
			else if (global.gp_L2 = gp_select)
			{
				L2 = "L2"
			}
			else if (global.gp_L2 = gp_start)
			{
				L2 = "START"
			}
		#endregion
		
		
	}
	else if (!gamepad_is_connected(correct_slot))
	{
			//returns correct key name
			var bob1 = Gamepad_getname_keyboard(global.key_space)
			var bob2 = Gamepad_getname_keyboard(global.key_ability)
			var bob3 = Gamepad_getname_keyboard(global.key_G)
			var bob4 = Gamepad_getname_keyboard(global.key_tab)
		
			var bob5 = Gamepad_getname_keyboard(global.key_L1)
			var bob6 = Gamepad_getname_keyboard(global.key_L2)
			var bob7 = Gamepad_getname_keyboard(global.key_R1)
			var bob8 = Gamepad_getname_keyboard(global.key_R2)
		
			var bob9 = Gamepad_getname_keyboard(global.key_enter)
			var bob10 = Gamepad_getname_keyboard(global.key_select)
		
		
		
		
		
			jump = bob1
			jump_pressed = bob1
			dash = bob3
			dash_pressed = bob3
			shoot = bob4
			shoot_pressed = bob4
			ability = bob2
			ability_pressed = bob2

			R1 = bob7
			L1 = bob5
			L2 = bob6
			R2 = bob8

			Select = bob10

			AimDown = bob5
			AimtrueUp = bob10
			AimUp = bob7



			enter_pressed = bob9
	}



	//returns to object's original code block
	exit


}
