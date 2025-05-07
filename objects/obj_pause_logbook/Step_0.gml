/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables);

if (delay > 0) && (global.pause_logbook)
{
	delay -= 0.05;	
}
else if (delay <= 0)
{
	if (global.pause_logbook) && (!L2) && (!R2)
	{
		image_index = 3;	
	}
	else if (global.pause_logbook) && (L2) && (!R2)
	{
		image_speed = 0;
		image_index = 0;
		delay = 1;
		global.pause_logbook = 0;
		global.pause_options = 1;
		//button remapping-NOT ACTIVE!!!
		if (instance_exists(obj_BUTTONREMAPPING))
		{
			with(obj_BUTTONREMAPPING)
			{
				instance_destroy();
			}
					//left
			if (instance_exists(obj_textblock_left))
			{
				with(obj_textblock_left)
				{
					instance_destroy();
				}
			}
			//right
			if (instance_exists(obj_textblock_right))
			{
				with(obj_textblock_right)
				{
					instance_destroy();
				}
			}
			//up
			if (instance_exists(obj_textblock_up))
			{
				with(obj_textblock_up)
				{
					instance_destroy();
				}
			}
			//down
			if (instance_exists(obj_textblock_down))
			{
				with(obj_textblock_down)
				{
					instance_destroy();
				}
			}
			//jump
			if (instance_exists(obj_textblock_space))
			{
				with(obj_textblock_space)
				{
					instance_destroy();
				}
			}
			//shoot
			if (instance_exists(obj_textblock_tab))
			{
				with(obj_textblock_tab)
				{
					instance_destroy();
				}
			}
			//dash
			if (instance_exists(obj_textblock_G))
			{
				with(obj_textblock_G)
				{
					instance_destroy();
				}
			}
			//dash
			if (instance_exists(obj_textblock_ability))
			{
				with(obj_textblock_ability)
				{
					instance_destroy();
				}
			}
			//Select
			if (instance_exists(obj_textblock_L2))
			{
				with(obj_textblock_L2)
				{
					instance_destroy();
				}
			}
			
			//R2
			if (instance_exists(obj_textblock_R1))
			{
				with(obj_textblock_R1)
				{
					instance_destroy();
				}
			}
			//L2
			if (instance_exists(obj_textblock_L1))
			{
				with(obj_textblock_L1)
				{
					instance_destroy();
				}
			}
			//ENTER
			if (instance_exists(obj_textblock_ENTER))
			{
				with(obj_textblock_ENTER)
				{
					instance_destroy();
				}
			}
			//RESET
			if (instance_exists(obj_textblock_RESET))
			{
				with(obj_textblock_RESET)
				{
					instance_destroy();
				}
			}
		}
		instance_create_depth(__view_get( e__VW.XView, 0 )+162,__view_get( e__VW.YView, 0 )+5,obj_maptile_tile.depth-2,obj_pause_options);
		instance_destroy();
	}
	else if (global.pause_logbook) && (!L2) && (R2)
	{
		image_speed = 0;
		image_index = 0;
		delay = 1;
		global.pause_logbook = 0;
		global.pause_map = 1;
		//button remapping-NOT ACTIVE!!!
		if (instance_exists(obj_BUTTONREMAPPING))
		{
			with(obj_BUTTONREMAPPING)
			{
				instance_destroy();
			}
					//left
			if (instance_exists(obj_textblock_left))
			{
				with(obj_textblock_left)
				{
					instance_destroy();
				}
			}
			//right
			if (instance_exists(obj_textblock_right))
			{
				with(obj_textblock_right)
				{
					instance_destroy();
				}
			}
			//up
			if (instance_exists(obj_textblock_up))
			{
				with(obj_textblock_up)
				{
					instance_destroy();
				}
			}
			//down
			if (instance_exists(obj_textblock_down))
			{
				with(obj_textblock_down)
				{
					instance_destroy();
				}
			}
			//jump
			if (instance_exists(obj_textblock_space))
			{
				with(obj_textblock_space)
				{
					instance_destroy();
				}
			}
			//shoot
			if (instance_exists(obj_textblock_tab))
			{
				with(obj_textblock_tab)
				{
					instance_destroy();
				}
			}
			//dash
			if (instance_exists(obj_textblock_G))
			{
				with(obj_textblock_G)
				{
					instance_destroy();
				}
			}
			//dash
			if (instance_exists(obj_textblock_ability))
			{
				with(obj_textblock_ability)
				{
					instance_destroy();
				}
			}
			//Select
			if (instance_exists(obj_textblock_L2))
			{
				with(obj_textblock_L2)
				{
					instance_destroy();
				}
			}
			
			//R2
			if (instance_exists(obj_textblock_R1))
			{
				with(obj_textblock_R1)
				{
					instance_destroy();
				}
			}
			//L2
			if (instance_exists(obj_textblock_L1))
			{
				with(obj_textblock_L1)
				{
					instance_destroy();
				}
			}
			//ENTER
			if (instance_exists(obj_textblock_ENTER))
			{
				with(obj_textblock_ENTER)
				{
					instance_destroy();
				}
			}
			//RESET
			if (instance_exists(obj_textblock_RESET))
			{
				with(obj_textblock_RESET)
				{
					instance_destroy();
				}
			}
		}
		instance_create_depth(__view_get( e__VW.XView, 0 )+134,__view_get( e__VW.YView, 0 )+5,obj_maptile_tile.depth-2,obj_pause_map);
		instance_destroy();
	}
}

if (global.pause_exit == 1)
{
	//button remapping-NOT ACTIVE!!!
		if (instance_exists(obj_BUTTONREMAPPING))
		{
			with(obj_BUTTONREMAPPING)
			{
				instance_destroy();
			}
					//left
			if (instance_exists(obj_textblock_left))
			{
				with(obj_textblock_left)
				{
					instance_destroy();
				}
			}
			//right
			if (instance_exists(obj_textblock_right))
			{
				with(obj_textblock_right)
				{
					instance_destroy();
				}
			}
			//up
			if (instance_exists(obj_textblock_up))
			{
				with(obj_textblock_up)
				{
					instance_destroy();
				}
			}
			//down
			if (instance_exists(obj_textblock_down))
			{
				with(obj_textblock_down)
				{
					instance_destroy();
				}
			}
			//jump
			if (instance_exists(obj_textblock_space))
			{
				with(obj_textblock_space)
				{
					instance_destroy();
				}
			}
			//shoot
			if (instance_exists(obj_textblock_tab))
			{
				with(obj_textblock_tab)
				{
					instance_destroy();
				}
			}
			//dash
			if (instance_exists(obj_textblock_G))
			{
				with(obj_textblock_G)
				{
					instance_destroy();
				}
			}
			//dash
			if (instance_exists(obj_textblock_ability))
			{
				with(obj_textblock_ability)
				{
					instance_destroy();
				}
			}
			//Select
			if (instance_exists(obj_textblock_L2))
			{
				with(obj_textblock_L2)
				{
					instance_destroy();
				}
			}
			
			//R2
			if (instance_exists(obj_textblock_R1))
			{
				with(obj_textblock_R1)
				{
					instance_destroy();
				}
			}
			//L2
			if (instance_exists(obj_textblock_L1))
			{
				with(obj_textblock_L1)
				{
					instance_destroy();
				}
			}
			//ENTER
			if (instance_exists(obj_textblock_ENTER))
			{
				with(obj_textblock_ENTER)
				{
					instance_destroy();
				}
			}
			//RESET
			if (instance_exists(obj_textblock_RESET))
			{
				with(obj_textblock_RESET)
				{
					instance_destroy();
				}
			}
		}
	instance_destroy();
}