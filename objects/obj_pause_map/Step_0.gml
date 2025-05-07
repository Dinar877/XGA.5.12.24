/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables);

if (delay > 0) && (global.pause_map)
{
	delay -= 0.05;	
}
else if (delay <= 0) 
{
	if (global.pause_map) && (!R2) && (!L2)
	{
		image_index = 3;	
	}
	if (global.pause_map) && (L2) && (!R2)
	{
		image_speed = 0;
		image_index = 0;
		delay = 1;
		global.pause_map = 0;
		global.pause_logbook = 1;
		instance_create_depth(__view_get( e__VW.XView, 0 )+176,__view_get( e__VW.YView, 0 )+5,obj_maptile_tile.depth-2,obj_pause_logbook);
		instance_destroy();
	}
	else if (global.pause_map) && (!L2) && (R2)
	{
		image_speed = 0;
		image_index = 0;
		delay = 1;
		global.pause_map = 0;
		global.pause_status = 1;
		instance_create_depth(__view_get( e__VW.XView, 0 )+148,__view_get( e__VW.YView, 0 )+5,obj_maptile_tile.depth-2,obj_pause_status);
		instance_destroy();
	}
}

if (global.pause_exit == 1)
{
	instance_destroy();
}