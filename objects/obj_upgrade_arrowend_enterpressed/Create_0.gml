// You can write your code in this editor
counter1 = 0;
spawnerID = -1;
textyID = -1;
upgradeID = 0
markerX = 0
markerY = 0
markerID = -1
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
	textyID = obj_texty_generic
}
else if (instance_exists(obj_texty_generic_shorter))
{
	textyID = obj_texty_generic_shorter
}
else if (instance_exists(obj_texty_generic_upgrade))
{
	textyID = obj_texty_generic_upgrade
}
else if (instance_exists(obj_texty_generic_biome_1_2))
{
	textyID = obj_texty_generic_biome_1_2
}
else if (instance_exists(obj_texty_TRUEgeneric))
{
	textyID = obj_texty_TRUEgeneric
}
else if (instance_exists(obj_texty_TRUEgeneric_nonmarker))
{
	textyID = obj_texty_TRUEgeneric_nonmarker
}
else if (instance_exists(obj_texty_marker))
{
	textyID = obj_texty_marker
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
if (instance_exists(obj_text_spawning_S2_1))
{
	spawnerID = obj_text_spawning_S2_1
}

if (instance_exists(obj_item_link)) && (instance_exists(obj_texty_generic_upgrade))
{
	spawnerID = obj_texty_generic_upgrade.spawnerID
}

surface = -1;
surface2 = -1;
surface3 = -1;
surface2_alpha = 0;
surface2pos = 1;
surface2neg = 0;
navigation_effect_index = 0;