/// @description Insert description here
// You can write your code in this editor
Gamepad_variables()

if (jump_pressed)
{	
	with(obj_texty_generic)
	{
		instance_destroy()
	}
	with(obj_texty_heading)
	{
		instance_destroy()
	}
	with(obj_texty_skip)
	{
		instance_destroy()
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