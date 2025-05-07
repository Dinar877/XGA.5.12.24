// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Gamepad_xbox_ps(){
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