/// @description Insert description here
// You can write your code in this editor
counter1 = 0;

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


with(obj_texty)
	{
		instance_destroy()
	}
with(obj_texty_skip)
	{
		instance_destroy()
	}
	with(obj_text_spawning_biome1_1)
	{
		time = 0;	
	}
	if (instance_number(obj_texty) < 1)
	{
		var tex = instance_create_depth(obj_text_spawning_biome1_1.x+1,obj_text_spawning_biome1_1.y+7,self.depth-1,obj_texty);

		with(tex)
		{
			time = 0;
			message_pos = 0;
			text = " OBJECTIVE UNDERSTOOD?"
			string(text)
			pauser = 0;
			var texty1 = instance_create_depth(x+6,y+21,obj_scrnDark_navigational2.depth-5,obj_texty_yesbox)
			with(texty1)
			{
				time = 0;
				message_pos = 0;
				text = " YES"
				string(text)
				text_length = string_length(text)
				pauser = 0;
				selected = 1;
			}
			var texty2 = instance_create_depth(x+50,y+21,obj_scrnDark_navigational2.depth-5,obj_texty_nobox)
			with(texty2)
			{
				time = 0;
				message_pos = 0;
				text = "  NO"
				string(text)
				text_length = string_length(text)
				pauser = 0;
				selected = 0;
			}
		}
	}
	
	
	instance_destroy();