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
else if (instance_exists(obj_texty_generic_biome_1_2))
{
	instance_destroy(obj_texty_generic_biome_1_2)
	textyID = obj_texty_generic_biome_1_2
}
else if (instance_exists(obj_texty_TRUEgeneric))
{
	instance_destroy(obj_texty_TRUEgeneric)
	textyID = obj_texty_TRUEgeneric
}
else if (instance_exists(obj_texty_TRUEgeneric_nonmarker))
{
	instance_destroy(obj_texty_TRUEgeneric_nonmarker)
	textyID = obj_texty_TRUEgeneric_nonmarker
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



	if (instance_number(textyID) < 1)
	{
		var tex = instance_create_depth(obj_camera.x-160+12,obj_camera.y-90+22,self.depth-5,textyID);

		with(tex)
		{
			time = 0;
			message_pos = 0;
			spawnerID = other.spawnerID
			text = spawnerID.message2
			string(text)
			text_length = string_length(text)
			pauser = 0;
			
			font_size = font_get_size(font)
	
			draw_set_font(font);
	
			text_width = string_width_ext(text,font_size+(font_size/2),280);
			text_height = string_height_ext(text,font_size+(font_size/2),30);
		}
	}
	
	
	instance_destroy();