/// @description Insert description here
// You can write your code in this editor
scr_gamepad_test()
Gamepad_variables()

stringy = string_char_at(text,time+message_pos)
stringy2 = string_char_at(text,time+time2+message_pos+1)

image_alpha = alpha;

if (stringy == " ") && (stringy2 != " ") && (time+message_pos+time2+1 < text_length)
{
	while (stringy == " ") && (stringy2 != " ") && (time+message_pos+time2+1  < text_length)
	{
		time2++;
		stringy2 = string_char_at(text,time+message_pos+time2+1)
	}
}
else time2 = 0;

if ((time+message_pos+time2+1  >= text_length) && (stringy == ".")) && (pauser_end == 0)
{
	pauser_end = 1;
}

if (spawn == 0) && (file_exists("savedata.ini"))
{
	text = "LOAD LATEST SAVE FILE?"
	spd = 0.5;
	font = font_regular1;
	
	text_length = string_length(text)
	font_size = font_get_size(font)
	
	draw_set_font(font);
	
	text_width = string_width_ext(text,font_size+(font_size/2),280);
	text_height = string_height_ext(text,font_size+(font_size/2),30);
	instance_create_layer(x,y+42,layer_get_id("Inst_healthui"),obj_load_text_yes);
	instance_create_layer(x,y+64,layer_get_id("Inst_healthui"),obj_load_text_no);	
	spawn = 1;
}

if (death1 == 0) && (file_exists("savedata.ini")) && (!death3) && (goaway_back2settings <= 0)
{
	if (alpha < 1)
	{
		image_alpha += 0.025;
		alpha += 0.025;
		with(obj_load_text_yes)
		{
			image_alpha += 0.025;
		}
		with(obj_load_text_no)
		{
			image_alpha += 0.025;
		}
	}
	if (alpha + 0.05>= 1) && (alpha < 1)
	{
		image_alpha += 0.05;
		alpha += 0.05;
		with(obj_load_text_yes)
		{
			image_alpha += 0.05;
		}
		with(obj_load_text_no)
		{
			image_alpha += 0.05;
		}
	}
}
else if (!file_exists("savedata.ini")) && (death2 == 0) && (goaway_back2settings <= 0)
{
	death2 = 1
	text = "WHICH MODE?"
	spd = 0.5;
	font = font_regular1;
	alpha = 0;
	death2 = 1;
	death1 = 0;
	text_length = string_length(text)
	font_size = font_get_size(font)
	
	draw_set_font(font);
	
	text_width = string_width_ext(text,font_size+(font_size/2),280);
	text_height = string_height_ext(text,font_size+(font_size/2),30);
	
	instance_create_depth(x,y+42,self.depth-1,obj_casualmode);
	instance_create_depth(x,y+64,self.depth-1,obj_recommendedmode);
	instance_create_depth(x,y+86,self.depth-1,obj_testmode);
	with(obj_load_text_no)
	{
	instance_destroy()
	}
	with(obj_load_text_yes)
	{
	instance_destroy()
	}
}

if (death1) && (alpha > 0)
{
	alpha -= 0.05;
}
else if (death1) && (alpha <= 0) && (death2 <= 0)
{
	text = "WHICH MODE?"
	spd = 0.5;
	font = font_regular1;
	alpha = 0;
	death2 = 1;
	death1 = 0;
	text_length = string_length(text)
	font_size = font_get_size(font)
	
	draw_set_font(font);
	
	text_width = string_width_ext(text,font_size+(font_size/2),280);
	text_height = string_height_ext(text,font_size+(font_size/2),30);
}

if (death2) && (!death3) && (goaway_back2settings <= 0)
{
	if (alpha < 1)
	{
		image_alpha += 0.025;
		alpha += 0.025;
		with(obj_casualmode)
		{
			image_alpha += 0.025;
		}
		with(obj_recommendedmode)
		{
			image_alpha += 0.025;
		}
		with(obj_testmode)
		{
			image_alpha += 0.025;
		}
	}
	if (alpha + 0.05>= 1) && (alpha < 1)
	{
		image_alpha += 0.05;
		alpha += 0.05;
		with(obj_casualmode)
		{
			image_alpha += 0.05;
		}
		with(obj_recommendedmode)
		{
			image_alpha += 0.05;
		}
		with(obj_testmode)
		{
			image_alpha += 0.05;
		}
	}
}

if (death3) && (alpha > 0)
{
	alpha -= 0.25;
	with(obj_casualmode)
		{
			alpha -= 0.25;
		}
		with(obj_recommendedmode)
		{
			alpha -= 0.25;
		}
	with(obj_testmode)
		{
			alpha -= 0.25;
		}
}
else if (death3) && (alpha <= 0)
{
	draw_set_alpha(1)
	instance_destroy()
}

if (alpha > 0) && (shoot_pressed) && (goaway_back2settings <= 0)
{
	alpha -= 0.25;
	if (instance_exists(obj_casualmode)) && (instance_exists(obj_recommendedmode) && (instance_exists(obj_testmode)))
	{
		with(obj_casualmode)
		{
			alpha -= 0.25;
		}
		with(obj_recommendedmode)
		{
			alpha -= 0.25;
		}
		with(obj_testmode)
		{
			alpha -= 0.25;
		}
	}
	else if (instance_exists(obj_load_text_no)) && (instance_exists(obj_load_text_yes))
	{
		with(obj_load_text_no)
		{
			alpha -= 0.25;
		}
		with(obj_load_text_yes)
		{
			alpha -= 0.25;
		}
	}	
	
	goaway_back2settings = 1
}
else if (alpha <= 0) && (shoot_pressed) && (goaway_back2settings > 0)
{
	draw_set_alpha(1)
	instance_create_layer(175,45,layer_get_id("Inst_healthui"),obj_setting_text)	
	instance_destroy(obj_casualmode)	
	instance_destroy(obj_recommendedmode)	
	instance_destroy(obj_testmode)	
	
	if (instance_exists(obj_load_text_no)) && (instance_exists(obj_load_text_yes))
	{
		instance_destroy(obj_load_text_no)
		instance_destroy(obj_load_text_yes)
	}
	
	instance_destroy()	
}