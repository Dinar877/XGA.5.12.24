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
else if (instance_exists(obj_texty_generic_upgrade))
{
	instance_destroy(obj_texty_generic_upgrade)
	textyID = obj_texty_generic_upgrade
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
else if (instance_exists(obj_text_spawning_S2_1))
{
	spawnerID = obj_text_spawning_S2_1
}
else if (instance_exists(obj_text_spawning_S3_1))
{
	spawnerID = obj_text_spawning_S3_1
}
else if (instance_exists(obj_text_spawning_S4_1))
{
	spawnerID = obj_text_spawning_S4_1
}


	if (instance_number(textyID) < 1)
	{
		var tex = instance_create_depth(spawnerID.x+1,spawnerID.y+7,self.depth-5,obj_texty_generic);

		with(tex)
		{
			time = 0;
			message_pos = 0;
			text = " OBJECTIVE UNDERSTOOD?"
			string(text)
			text_length = string_length(text)
			pauser = 0;
			spawnerID = other.spawnerID;
			
			font_size = font_get_size(font)
	
			draw_set_font(font);
	
			text_width = string_width_ext(text,font_size+(font_size/2),280);
			text_height = string_height_ext(text,font_size+(font_size/2),30);
			
			var texty1 = instance_create_depth(x+6,y+21,self.depth-5,obj_texty_yesbox)
			with(texty1)
			{
				time = 0;
				message_pos = 0;
				text = " YES"
				string(text)
				text_length = string_length(text)
				pauser = 0;
				selected = 1;
				spawnerID = other.spawnerID
			}
			var texty2 = instance_create_depth(x+50,y+21,self.depth-5,obj_texty_nobox)
			with(texty2)
			{
				time = 0;
				message_pos = 0;
				text = "  NO"
				string(text)
				text_length = string_length(text)
				pauser = 0;
				selected = 0;
				spawnerID = other.spawnerID
			}
			
			var texty3 = instance_create_depth(x+94,y+21,self.depth-5,obj_texty_exitbox)
			with(texty3)
			{
				time = 0;
				message_pos = 0;
				text = "CANCEL"
				string(text)
				text_length = string_length(text)
				pauser = 0;
				selected = 0;
				spawnerID = other.spawnerID
			}
		}
	}
	
	
	instance_destroy();