/// @description Insert description here
// You can write your code in this editor
Gamepad_variables()
if (done = 0)
{
	timer += 1/room_speed
}

if (jump_pressed) or (enter_pressed) or (shoot_pressed) or (timer >= 10)
{
	done = 1
	instance_create_layer(0,0,layer_get_id("Inst_healthui_mapborder"),obj_scrnDark_random_loadroom_outro)	
	if (!audio_group_is_loaded(audiogroup_sfx))
	{
		audio_group_load(audiogroup_sfx)
	}
}

if (instance_exists(obj_scrnDark_random_loadroom_outro))
{
	if (obj_scrnDark_random_loadroom_outro.image_alpha >= 1) && (audio_group_is_loaded(audiogroup_sfx))
	{
		with(obj_scrnDark_random_loadroom_outro)
		{
			instance_destroy()	
		}
		instance_destroy()
		instance_activate_all();
		room_goto(rm_controller_recommended)
	}
}













