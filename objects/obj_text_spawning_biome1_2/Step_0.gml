/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
//Text(message,spd)
Gamepad_variables()

if (instance_exists(obj_texty_generic_biome_1_2))
{
	if (jump)
	{
		with(obj_texty_generic_biome_1_2)
		{
			time = floor(time)
			spd = 1
		}
	}
	else if (!jump)
	{
		with(obj_texty_generic_biome_1_2)
		{
			spd = 0.25	
		}
	}
}

if (instance_exists(obj_texty_generic_shorter))
{
	if (jump)
	{
		with(obj_texty_generic_shorter)
		{
			time = floor(time)
			spd = 1
		}
	}
	else if (!jump)
	{
		with(obj_texty_generic_shorter)
		{
			spd = 0.25	
		}
	}
}

if (new1 == 0) && (global.wallscaler = 1)
{
	global.xleft = 0
	global.yup = 0
	text = "..................................................................................................STARTING.SYSTEM.REBOOT. ";
	Text_generic_1_2(text,0.5,self)
	new1 = 1;
	message3 = " ? ? ?";
	Text_readit2_generic(message3,0.5);
	message4 = " PRESS 'START' TO SKIP TEXT. ";
	Text_skiptext(message4,0.15)
	
	global.doors_redblocker[1] = 1
}

if (new2 == 0) && (global.wallscaler = 0)
{
	global.xleft = 0
	global.yup = 0
	text = " ...destroy...it...quickly.........below us...";
	Text(text,0.5,self)
	new2 = 1;
	message3 = " ? ? ?";
	Text_readit2_generic(message3,0.5);
	//message4 = " PRESS 'START' TO SKIP TEXT. ";
	//Text_skiptext(message4,0.15)
}

if (instance_exists(obj_texty_generic_shorter))
{
	if (((floor(obj_texty_generic_shorter.time)+obj_texty_generic_shorter.message_pos+1 >= obj_texty_generic_shorter.text_length) && (obj_texty_generic_shorter.text_length > 25))
	or (enter_pressed)) && (new1 == 1)
	{	
		if (instance_exists(obj_text_spawning_arrow_preender_any_any))
		{
			instance_destroy(obj_text_spawning_arrow_preender_any_any)
		}
	
		with(obj_texty_generic_shorter)
		{
			instance_destroy()
		}
		with(obj_texty_heading)
		{
			instance_destroy()
		}
		if (instance_exists(obj_texty_skip))
		{
			with(obj_texty_skip)
			{
				instance_destroy()
			}
		}
		with(obj_scrnDark_navigational)
		{
			instance_destroy()
		}
		with(obj_scrnDark_lockdown)
		{
			sprite_index = spr_bg_navigational2_rev
		}
	
		global.upgrade_process_data_active = 1
		instance_activate_object(obj_link_healthUI)
		instance_activate_object(obj_link_map)
	
		instance_destroy();
	}
}