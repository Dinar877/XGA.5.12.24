/// @description Insert description here
// You can write your code in this editor
counter1 = 0;
spawnerID = -1;
textyID = -1;
//gamepad variable stuff
gamepad_counter = 0;
gamepad_counter2 = 0;
correct_slot = 0;

right_key = 0
right_key_pressed = 0

left_key = 0
left_key_pressed = 0

up_key = 0
up_key_pressed = 0

down_key = 0
down_key_pressed = 0


jump = 0
dash = 0
shoot = 0
shoot_pressed = 0

Select = 0;

surface = -1;
surface2 = -1;
surface3 = -1;
surface2_alpha = 0;
surface2pos = 1;
surface2neg = 0;
navigation_effect_index = 0;

if (instance_exists(obj_texty_skip))
{
	instance_destroy(obj_texty_skip)
}

if (instance_exists(obj_texty_generic))
{
	instance_destroy(obj_texty_generic)
	textyID = obj_texty_generic
}

if (instance_exists(obj_texty_generic_biome_1_2))
{
	instance_destroy(obj_texty_generic_biome_1_2)
	textyID = obj_texty_generic_biome_1_2
}

if (instance_exists(obj_texty_TRUEgeneric))
{
	instance_destroy(obj_texty_TRUEgeneric)
	textyID = obj_texty_TRUEgeneric
}

if (instance_exists(obj_texty_TRUEgeneric_nonmarker))
{
	instance_destroy(obj_texty_TRUEgeneric_nonmarker)
	textyID = obj_texty_TRUEgeneric_nonmarker
}

if (instance_exists(obj_texty_heading))
{
	instance_destroy(obj_texty_heading)
	textyID = obj_texty_heading
}


if (instance_exists(obj_text_spawning_0_1))
{
	spawnerID = obj_text_spawning_0_1
}
else if (instance_exists(obj_text_spawning_any))
{
	spawnerID = obj_text_spawning_any
}
else if (instance_exists(obj_text_spawning_biome1_1))
{
	spawnerID = obj_text_spawning_biome1_1
}
else if (instance_exists(obj_text_spawning_biome1_2))
{
	spawnerID = obj_text_spawning_biome1_2
}

if (instance_exists(obj_scrnDark_navigational2))
{
	with(obj_scrnDark_navigational2)
	{
		sprite_index = spr_bg_navigational2_rev
		image_index = 0
		image_speed = 1
	}
}

if (instance_exists(obj_scrnDark_navigational2_test1))
{
	with(obj_scrnDark_navigational2_test1)
	{
		sprite_index = spr_bg_navigational2_rev
		image_index = 0
		image_speed = 1
	}
}

if (instance_exists(obj_scrnDark_lockdown))
{
	with(obj_scrnDark_lockdown)
	{
		sprite_index = spr_bg_navigational2_rev
		image_index = 0
		image_speed = 1
	}
}

if (instance_exists(obj_scrnDark_lockdown2))
{
	with(obj_scrnDark_lockdown2)
	{
		sprite_index = spr_bg_navigational2_rev
		image_index = 0
		image_speed = 1
	}
}

if (instance_exists(obj_scrnDark_navigational))
{
	with(obj_scrnDark_navigational)
	{
		instance_destroy()
	}
}

global.upgrade_process_data_active = 1
	
	
instance_destroy();