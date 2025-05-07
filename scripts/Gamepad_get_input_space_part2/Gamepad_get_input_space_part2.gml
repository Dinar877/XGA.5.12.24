function Gamepad_get_input_space_part2() {
	if (gp_input != gp_input_old)
	{
		gp_input_temp = gp_input_old
		waiting3 = 1
			
				//if textblock was space
				if (gp_input_old = global.gp_space)
				{
						//checks the actual input
						if (gp_input = global.gp_ability)
						{
							global.gp_space = gp_input
							global.gp_ability = gp_input_old
						}
						else if (gp_input = global.gp_tab)
						{
							global.gp_space = gp_input
							global.gp_tab = gp_input_old
						}
						else if (gp_input = global.gp_G)
						{
							global.gp_space = gp_input
							global.gp_G = gp_input_old
						}
						else if (gp_input = global.gp_select)
						{
							global.gp_space = gp_input
							global.gp_select = gp_input_old
						}
						else if (gp_input = global.gp_enter)
						{
							global.gp_space = gp_input
							global.gp_enter = gp_input_old
						}
						else if (gp_input = global.gp_L1)
						{
							global.gp_space = gp_input
							global.gp_L1 = gp_input_old
						}
						else if (gp_input = global.gp_L2)
						{
							global.gp_space = gp_input
							global.gp_L2 = gp_input_old
						}
						else if (gp_input = global.gp_R1)
						{
							global.gp_space = gp_input
							global.gp_R1 = gp_input_old
						}
						else if (gp_input = global.gp_R2)
						{
							global.gp_space = gp_input
							global.gp_R2 = gp_input_old
						}
					
						gp_input_old = gp_input
						exit
				}
				else if (gp_input_old = global.gp_ability)
				{
					//checks the actual input
						if (gp_input = global.gp_space)
						{
							global.gp_ability = gp_input
							global.gp_space = gp_input_old
						}
						else if (gp_input = global.gp_tab)
						{
							global.gp_ability = gp_input
							global.gp_tab = gp_input_old
						}
						else if (gp_input = global.gp_G)
						{
							global.gp_ability = gp_input
							global.gp_G = gp_input_old
						}
						else if (gp_input = global.gp_select)
						{
							global.gp_ability = gp_input
							global.gp_select = gp_input_old
						}
						else if (gp_input = global.gp_enter)
						{
							global.gp_ability = gp_input
							global.gp_enter = gp_input_old
						}
						else if (gp_input = global.gp_L1)
						{
							global.gp_ability = gp_input
							global.gp_L1 = gp_input_old
						}
						else if (gp_input = global.gp_L2)
						{
							global.gp_ability = gp_input
							global.gp_L2 = gp_input_old
						}
						else if (gp_input = global.gp_R1)
						{
							global.gp_ability = gp_input
							global.gp_R1 = gp_input_old
						}
						else if (gp_input = global.gp_R2)
						{
							global.gp_ability = gp_input
							global.gp_R2 = gp_input_old
						}	
						gp_input_old = gp_input
						exit
				}
				else if (gp_input_old = global.gp_tab)
				{
					//checks the actual input
						if (gp_input = global.gp_space)
						{
							global.gp_tab = gp_input
							global.gp_space = gp_input_old
						}
						else if (gp_input = global.gp_ability)
						{
							global.gp_tab = gp_input
							global.gp_ability = gp_input_old
						}
						else if (gp_input = global.gp_G)
						{
							global.gp_tab = gp_input
							global.gp_G = gp_input_old
						}
						else if (gp_input = global.gp_select)
						{
							global.gp_tab = gp_input
							global.gp_select = gp_input_old
						}
						else if (gp_input = global.gp_enter)
						{
							global.gp_tab = gp_input
							global.gp_enter = gp_input_old
						}
						else if (gp_input = global.gp_L1)
						{
							global.gp_tab = gp_input
							global.gp_L1 = gp_input_old
						}
						else if (gp_input = global.gp_L2)
						{
							global.gp_tab = gp_input
							global.gp_L2 = gp_input_old
						}
						else if (gp_input = global.gp_R1)
						{
							global.gp_tab = gp_input
							global.gp_R1 = gp_input_old
						}
						else if (gp_input = global.gp_R2)
						{
							global.gp_tab = gp_input
							global.gp_R2 = gp_input_old
						}	
					
						gp_input_old = gp_input
						exit
				}
				else if (gp_input_old = global.gp_G)
				{
					//checks the actual input
						if (gp_input = global.gp_space)
						{
							global.gp_G = gp_input
							global.gp_space = gp_input_old
						}
						else if (gp_input = global.gp_ability)
						{
							global.gp_G = gp_input
							global.gp_ability = gp_input_old
						}
						else if (gp_input = global.gp_tab)
						{
							global.gp_G = gp_input
							global.gp_tab = gp_input_old
						}
						else if (gp_input = global.gp_select)
						{
							global.gp_G = gp_input
							global.gp_select = gp_input_old
						}
						else if (gp_input = global.gp_enter)
						{
							global.gp_G = gp_input
							global.gp_enter = gp_input_old
						}
						else if (gp_input = global.gp_L1)
						{
							global.gp_G = gp_input
							global.gp_L1 = gp_input_old
						}
						else if (gp_input = global.gp_L2)
						{
							global.gp_G = gp_input
							global.gp_L2 = gp_input_old
						}
						else if (gp_input = global.gp_R1)
						{
							global.gp_G = gp_input
							global.gp_R1 = gp_input_old
						}
						else if (gp_input = global.gp_R2)
						{
							global.gp_G = gp_input
							global.gp_R2 = gp_input_old
						}
					
						gp_input_old = gp_input
						exit
				}
				else if (gp_input_old = global.gp_select)
				{
					//checks the actual input
						if (gp_input = global.gp_space)
						{
							global.gp_select = gp_input
							global.gp_space = gp_input_old
						}
						else if (gp_input = global.gp_ability)
						{
							global.gp_select = gp_input
							global.gp_ability = gp_input_old
						}
						else if (gp_input = global.gp_tab)
						{
							global.gp_select = gp_input
							global.gp_tab = gp_input_old
						}
						else if (gp_input = global.gp_G)
						{
							global.gp_select = gp_input
							global.gp_G = gp_input_old
						}
						else if (gp_input = global.gp_enter)
						{
							global.gp_select = gp_input
							global.gp_enter = gp_input_old
						}
						else if (gp_input = global.gp_L1)
						{
							global.gp_select = gp_input
							global.gp_L1 = gp_input_old
						}
						else if (gp_input = global.gp_L2)
						{
							global.gp_select = gp_input
							global.gp_L2 = gp_input_old
						}
						else if (gp_input = global.gp_R1)
						{
							global.gp_select = gp_input
							global.gp_R1 = gp_input_old
						}
						else if (gp_input = global.gp_R2)
						{
							global.gp_select = gp_input
							global.gp_R2 = gp_input_old
						}	
					
						gp_input_old = gp_input
						exit
				}
				else if (gp_input_old = global.gp_enter)
				{
					//checks the actual input
						if (gp_input = global.gp_space)
						{
							global.gp_enter = gp_input
							global.gp_space = gp_input_old
						}
						else if (gp_input = global.gp_ability)
						{
							global.gp_enter = gp_input
							global.gp_ability = gp_input_old
						}
						else if (gp_input = global.gp_tab)
						{
							global.gp_enter = gp_input
							global.gp_tab = gp_input_old
						}
						else if (gp_input = global.gp_G)
						{
							global.gp_enter = gp_input
							global.gp_G = gp_input_old
						}
						else if (gp_input = global.gp_select)
						{
							global.gp_enter = gp_input
							global.gp_select = gp_input_old
						}
						else if (gp_input = global.gp_L1)
						{
							global.gp_enter = gp_input
							global.gp_L1 = gp_input_old
						}
						else if (gp_input = global.gp_L2)
						{
							global.gp_enter = gp_input
							global.gp_L2 = gp_input_old
						}
						else if (gp_input = global.gp_R1)
						{
							global.gp_enter = gp_input
							global.gp_R1 = gp_input_old
						}
						else if (gp_input = global.gp_R2)
						{
							global.gp_enter = gp_input
							global.gp_R2 = gp_input_old
						}
					
						gp_input_old = gp_input
						exit
				}
				else if (gp_input_old = global.gp_L1)
				{
					//checks the actual input
						if (gp_input = global.gp_space)
						{
							global.gp_L1 = gp_input
							global.gp_space = gp_input_old
						}
						else if (gp_input = global.gp_ability)
						{
							global.gp_L1 = gp_input
							global.gp_ability = gp_input_old
						}
						else if (gp_input = global.gp_tab)
						{
							global.gp_L1 = gp_input
							global.gp_tab = gp_input_old
						}
						else if (gp_input = global.gp_G)
						{
							global.gp_L1 = gp_input
							global.gp_G = gp_input_old
						}
						else if (gp_input = global.gp_select)
						{
							global.gp_L1 = gp_input
							global.gp_select = gp_input_old
						}
						else if (gp_input = global.gp_enter)
						{
							global.gp_L1 = gp_input
							global.gp_enter = gp_input_old
						}
						else if (gp_input = global.gp_L2)
						{
							global.gp_L1 = gp_input
							global.gp_L2 = gp_input_old
						}
						else if (gp_input = global.gp_R1)
						{
							global.gp_L1 = gp_input
							global.gp_R1 = gp_input_old
						}
						else if (gp_input = global.gp_R2)
						{
							global.gp_L1 = gp_input
							global.gp_R2 = gp_input_old
						}
					
						gp_input_old = gp_input
						exit
				}
				else if (gp_input_old = global.gp_L2)
				{
					//checks the actual input
						if (gp_input = global.gp_space)
						{
							global.gp_L2 = gp_input
							global.gp_space = gp_input_old
						}
						else if (gp_input = global.gp_ability)
						{
							global.gp_L2 = gp_input
							global.gp_ability = gp_input_old
						}
						else if (gp_input = global.gp_tab)
						{
							global.gp_L2 = gp_input
							global.gp_tab = gp_input_old
						}
						else if (gp_input = global.gp_G)
						{
							global.gp_L2 = gp_input
							global.gp_G = gp_input_old
						}
						else if (gp_input = global.gp_select)
						{
							global.gp_L2 = gp_input
							global.gp_select = gp_input_old
						}
						else if (gp_input = global.gp_enter)
						{
							global.gp_L2 = gp_input
							global.gp_enter = gp_input_old
						}
						else if (gp_input = global.gp_L1)
						{
							global.gp_L2 = gp_input
							global.gp_L1 = gp_input_old
						}
						else if (gp_input = global.gp_R1)
						{
							global.gp_L2 = gp_input
							global.gp_R1 = gp_input_old
						}
						else if (gp_input = global.gp_R2)
						{
							global.gp_L2 = gp_input
							global.gp_R2 = gp_input_old
						}
					
						gp_input_old = gp_input
						exit
				}
				else if (gp_input_old = global.gp_R1)
				{
					//checks the actual input
						if (gp_input = global.gp_space)
						{
							global.gp_R1 = gp_input
							global.gp_space = gp_input_old
						}
						else if (gp_input = global.gp_ability)
						{
							global.gp_R1 = gp_input
							global.gp_ability = gp_input_old
						}
						else if (gp_input = global.gp_tab)
						{
							global.gp_R1 = gp_input
							global.gp_tab = gp_input_old
						}
						else if (gp_input = global.gp_G)
						{
							global.gp_R1 = gp_input
							global.gp_G = gp_input_old
						}
						else if (gp_input = global.gp_select)
						{
							global.gp_R1 = gp_input
							global.gp_select = gp_input_old
						}
						else if (gp_input = global.gp_enter)
						{
							global.gp_R1 = gp_input
							global.gp_enter = gp_input_old
						}
						else if (gp_input = global.gp_L1)
						{
							global.gp_R1 = gp_input
							global.gp_L1 = gp_input_old
						}
						else if (gp_input = global.gp_L2)
						{
							global.gp_R1 = gp_input
							global.gp_L2 = gp_input_old
						}
						else if (gp_input = global.gp_R2)
						{
							global.gp_R1 = gp_input
							global.gp_R2 = gp_input_old
						}
					
						gp_input_old = gp_input
						exit
				}
				else if (gp_input_old = global.gp_R2)
				{
					//checks the actual input
						if (gp_input = global.gp_space)
						{
							global.gp_R2 = gp_input
							global.gp_space = gp_input_old
						}
						else if (gp_input = global.gp_ability)
						{
							global.gp_R2 = gp_input
							global.gp_ability = gp_input_old
						}
						else if (gp_input = global.gp_tab)
						{
							global.gp_R2 = gp_input
							global.gp_tab = gp_input_old
						}
						else if (gp_input = global.gp_G)
						{
							global.gp_R2 = gp_input
							global.gp_G = gp_input_old
						}
						else if (gp_input = global.gp_select)
						{
							global.gp_R2 = gp_input
							global.gp_select = gp_input_old
						}
						else if (gp_input = global.gp_enter)
						{
							global.gp_R2 = gp_input
							global.gp_enter = gp_input_old
						}
						else if (gp_input = global.gp_L1)
						{
							global.gp_R2 = gp_input
							global.gp_L1 = gp_input_old
						}
						else if (gp_input = global.gp_L2)
						{
							global.gp_R2 = gp_input
							global.gp_L2 = gp_input_old
						}
						else if (gp_input = global.gp_R1)
						{
							global.gp_R2 = gp_input
							global.gp_R1 = gp_input_old
						}
					
						gp_input_old = gp_input
						exit;
				}
	}


}
