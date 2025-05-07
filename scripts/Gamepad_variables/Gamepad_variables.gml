function Gamepad_variables() {
	scr_gamepad_test();

	//now make the gamepad inputs = those variables-for ps4
	if (gamepad_is_connected(correct_slot)) && (global.controls_changed == 0)
	{    
	     right_key = (gamepad_button_check(correct_slot,gp_padr)) or (gamepad_axis_value(correct_slot,gp_axislh) >= 0.5);
	     right_key_pressed = gamepad_button_check_pressed(correct_slot,gp_padr) or (gamepad_axis_value(correct_slot,gp_axislh) >= 0.9);
     
	     left_key = gamepad_button_check(correct_slot,gp_padl) or (gamepad_axis_value(correct_slot,gp_axislh) <= -0.5);
	     left_key_pressed = gamepad_button_check_pressed(correct_slot,gp_padl) or (gamepad_axis_value(correct_slot,gp_axislh) <= -0.9);
     
	     up_key = gamepad_button_check(correct_slot,gp_padu) or (gamepad_axis_value(correct_slot,gp_axislv) <= -0.5);
	     up_key_pressed = gamepad_button_check_pressed(correct_slot,gp_padu) or (gamepad_axis_value(correct_slot,gp_axislv) <= -0.9);
     
	     down_key = gamepad_button_check(correct_slot,gp_padd) or (gamepad_axis_value(correct_slot,gp_axislv) >= 0.5);
	     down_key_pressed = gamepad_button_check_pressed(correct_slot,gp_padd) or (gamepad_axis_value(correct_slot,gp_axislv) >= 0.9);
     
	     jump = gamepad_button_check(correct_slot,gp_face1);
	     jump_pressed = gamepad_button_check_pressed(correct_slot,gp_face1);
		 ability = gamepad_button_check(correct_slot,gp_face2);
	     ability_pressed = gamepad_button_check_pressed(correct_slot,gp_face2);
	     dash = gamepad_button_check(correct_slot,gp_face4);
	     dash_pressed = gamepad_button_check_pressed(correct_slot,gp_face4);
	     shoot = gamepad_button_check(correct_slot,gp_face3);
	     shoot_pressed = gamepad_button_check_pressed(correct_slot,gp_face3);
     
     
		 AimDown = gamepad_button_check(correct_slot,gp_shoulderl);
		 AimtrueUp = gamepad_button_check(correct_slot,gp_select);
		 AimUp = gamepad_button_check(correct_slot,gp_shoulderr);
	 
	     Select = gamepad_button_check(correct_slot,gp_select);
		 R1 = gamepad_button_check(correct_slot,gp_shoulderr);
		 L1 = gamepad_button_check(correct_slot,gp_shoulderl);
		 L2 = gamepad_button_check_pressed(correct_slot,gp_shoulderlb);
		 R2 = gamepad_button_check_pressed(correct_slot,gp_shoulderrb);
		 enter_pressed = gamepad_button_check_pressed(correct_slot,gp_start);
	}
	else if (!gamepad_is_connected(correct_slot)) && (global.controls_changed == 0)
	{
				///first make the variables
			right_key = keyboard_check(vk_right);
			right_key_pressed = keyboard_check_pressed(vk_right);

			left_key = keyboard_check(vk_left);
			left_key_pressed = keyboard_check_pressed(vk_left);

			up_key = keyboard_check(vk_up);
			up_key_pressed = keyboard_check_pressed(vk_up);

			down_key = keyboard_check(vk_down);
			down_key_pressed = keyboard_check_pressed(vk_down);


			jump = keyboard_check(ord("Z"));
			jump_pressed = keyboard_check_pressed(ord("Z"));
			dash = keyboard_check(ord("C"));
			dash_pressed = keyboard_check_pressed(ord("C"));
			shoot = keyboard_check(ord("X"));
			shoot_pressed = keyboard_check_pressed(ord("X"));
			ability = keyboard_check(ord("V"));
			ability_pressed = keyboard_check_pressed(ord("V"));

			
			L1 = keyboard_check(ord("A"))
			R1 = keyboard_check(ord("S"))
			L2 = keyboard_check_pressed(ord("D"));
			R2 = keyboard_check_pressed(ord("F"));

			Select = keyboard_check(vk_add);

			AimDown = keyboard_check(ord("A"))
			AimtrueUp = keyboard_check(vk_add)
			AimUp = keyboard_check(ord("S"))



			enter_pressed = keyboard_check_pressed(vk_enter);
		
		
			var getinput1 = right_key-left_key
			var getinput1_pressed = 0
	}
	else if (gamepad_is_connected(correct_slot)) && (global.controls_changed == 1)
	{    
			right_key = (gamepad_button_check(correct_slot,gp_padr)) or (gamepad_axis_value(correct_slot,gp_axislh) >= 0.5);
			right_key_pressed = gamepad_button_check_pressed(correct_slot,gp_padr) or (gamepad_axis_value(correct_slot,gp_axislh) >= 0.9);
     
			left_key = gamepad_button_check(correct_slot,gp_padl) or (gamepad_axis_value(correct_slot,gp_axislh) <= -0.5);
			left_key_pressed = gamepad_button_check_pressed(correct_slot,gp_padl) or (gamepad_axis_value(correct_slot,gp_axislh) <= -0.9);
     
			up_key = gamepad_button_check(correct_slot,gp_padu) or (gamepad_axis_value(correct_slot,gp_axislv) <= -0.5);
			up_key_pressed = gamepad_button_check_pressed(correct_slot,gp_padu) or (gamepad_axis_value(correct_slot,gp_axislv) <= -0.9);
     
			down_key = gamepad_button_check(correct_slot,gp_padd) or (gamepad_axis_value(correct_slot,gp_axislv) >= 0.5);
			down_key_pressed = gamepad_button_check_pressed(correct_slot,gp_padd) or (gamepad_axis_value(correct_slot,gp_axislv) >= 0.9);
     
		    jump = gamepad_button_check(correct_slot,global.gp_space);
		    jump_pressed = gamepad_button_check_pressed(correct_slot,global.gp_space);
			ability = gamepad_button_check(correct_slot,global.gp_ability);
		    ability_pressed = gamepad_button_check_pressed(correct_slot,global.gp_ability);
		    dash = gamepad_button_check(correct_slot,global.gp_G);
		    dash_pressed = gamepad_button_check_pressed(correct_slot,global.gp_G);
		    shoot = gamepad_button_check(correct_slot,global.gp_tab);
		    shoot_pressed = gamepad_button_check_pressed(correct_slot,global.gp_tab);
     
			AimDown = gamepad_button_check(correct_slot,global.gp_L1)
			AimtrueUp = gamepad_button_check(correct_slot,global.gp_select);
			AimUp = gamepad_button_check(correct_slot,global.gp_R1)
		
			R1 = gamepad_button_check(correct_slot,global.gp_R1)
			L1 = gamepad_button_check(correct_slot,global.gp_L1)
	 
		    Select = gamepad_button_check(correct_slot,global.gp_select);
			L2 = gamepad_button_check_pressed(correct_slot,global.gp_L2);
			R2 = gamepad_button_check_pressed(correct_slot,global.gp_R2);
			enter_pressed = gamepad_button_check_pressed(correct_slot,global.gp_enter);
	}
	else if (!gamepad_is_connected(correct_slot)) && (global.controls_changed == 1)
	{
				///first make the variables
			var getinput1 = keyboard_check(vk_right)-keyboard_check(vk_left)
			var getinput1_pressed = 0
			
			right_key = keyboard_check(vk_right);
			right_key_pressed = keyboard_check_pressed(vk_right);

			left_key = keyboard_check(vk_left);
			left_key_pressed = keyboard_check_pressed(vk_left);

			up_key = keyboard_check(vk_up);
			up_key_pressed = keyboard_check_pressed(vk_up);

			down_key = keyboard_check(vk_down);
			down_key_pressed = keyboard_check_pressed(vk_down);


			jump = keyboard_check(global.key_space);
			jump_pressed = keyboard_check_pressed(global.key_space);
			dash = keyboard_check(global.key_G);
			dash_pressed = keyboard_check_pressed(global.key_G);
			shoot = keyboard_check(global.key_tab);
			shoot_pressed = keyboard_check_pressed(global.key_tab);
			ability = keyboard_check(global.key_ability);
			ability_pressed = keyboard_check_pressed(global.key_ability);

			R1 = keyboard_check(global.key_R1)
			L1 = keyboard_check(global.key_L1)
			L2 = keyboard_check_pressed(global.key_L2);
			R2 = keyboard_check_pressed(global.key_R2);

			Select = keyboard_check(global.key_select);

			AimDown = keyboard_check(global.key_L1)
			AimtrueUp = keyboard_check(vk_add)
			AimUp = keyboard_check(global.key_R1)



			enter_pressed = keyboard_check_pressed(global.key_enter);
	}



}
