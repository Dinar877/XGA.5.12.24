/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables);

if (delay > 0) && (global.pause_options)
{
	delay -= 0.05;	
}
else if (delay <= 0) && (global.pause_logbook != 1)
{
	if (global.pause_options) && (!L2) && (!R2)
	{
		image_index = 3;	
	}
	else if (global.pause_options) && (L2) && (!R2)
	{
		image_speed = 0;
		image_index = 0;
		delay = 1;
		global.pause_options = 0;
		global.pause_status = 1;
		instance_create_depth(__view_get( e__VW.XView, 0 )+148,__view_get( e__VW.YView, 0 )+5,obj_maptile_tile.depth-2,obj_pause_status);
		
				//screen sizes
		if (instance_exists(obj_screensize))
		{
			with(obj_screensize)
			{
				instance_destroy();
			}
		}
		if (instance_exists(obj_textblock_320x180))
			{
				with(obj_textblock_320x180)
				{
					instance_destroy();	
				}
			}
		if (instance_exists(obj_textblock_640x360))
			{
				with(obj_textblock_640x360)
				{
					instance_destroy();	
				}
			}
		if (instance_exists(obj_textblock_960x540))
			{
				with(obj_textblock_960x540)
				{
					instance_destroy();	
				}
			}
		if (instance_exists(obj_textblock1920x1080))
			{
				with(obj_textblock1920x1080)
				{
					instance_destroy();	
				}
			}
		if (instance_exists(obj_textblock_1366x768))
			{
				with(obj_textblock_1366x768)
				{
					instance_destroy();	
				}
			}
		
		
		instance_destroy();
	}
	else if (global.pause_options) && (!L2) && (R2)
	{
		image_speed = 0;
		image_index = 0;
		delay = 1;
		global.pause_options = 0;
		global.pause_logbook = 1;
		instance_create_depth(__view_get( e__VW.XView, 0 )+176,__view_get( e__VW.YView, 0 )+5,obj_maptile_tile.depth-2,obj_pause_logbook);
		
				//screen sizes
		if (instance_exists(obj_screensize))
		{
			with(obj_screensize)
			{
				instance_destroy();
			}
		}
		if (instance_exists(obj_textblock_320x180))
			{
				with(obj_textblock_320x180)
				{
					instance_destroy();	
				}
			}
		if (instance_exists(obj_textblock_640x360))
			{
				with(obj_textblock_640x360)
				{
					instance_destroy();	
				}
			}
			if (instance_exists(obj_textblock_960x540))
			{
				with(obj_textblock_960x540)
				{
					instance_destroy();	
				}
			}
			if (instance_exists(obj_textblock1920x1080))
			{
				with(obj_textblock1920x1080)
				{
					instance_destroy();	
				}
			}
			if (instance_exists(obj_textblock_1366x768))
			{
				with(obj_textblock_1366x768)
				{
					instance_destroy();	
				}
			}
		
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
			//Select
			if (instance_exists(obj_textblock_L2))
			{
				with(obj_textblock_L2)
				{
					instance_destroy();
				}
			}
		}
		
				//screen sizes
		if (instance_exists(obj_screensize))
		{
			with(obj_screensize)
			{
				instance_destroy();
			}
		}
		if (instance_exists(obj_textblock_320x180))
			{
				with(obj_textblock_320x180)
				{
					instance_destroy();	
				}
			}
		if (instance_exists(obj_textblock_640x360))
			{
				with(obj_textblock_640x360)
				{
					instance_destroy();	
				}
			}
			if (instance_exists(obj_textblock_960x540))
			{
				with(obj_textblock_960x540)
				{
					instance_destroy();	
				}
			}
			if (instance_exists(obj_textblock1920x1080))
			{
				with(obj_textblock1920x1080)
				{
					instance_destroy();	
				}
			}
		if (instance_exists(obj_textblock_1366x768))
			{
				with(obj_textblock_1366x768)
				{
					instance_destroy();	
				}
			}
		font_delete(global.font_gray1);
		
		instance_destroy();	
}