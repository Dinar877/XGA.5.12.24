/// @description Insert description here
// You can write your code in this editor
stringy = string_char_at(text,time+message_pos)
stringy2 = string_char_at(text,time+time2+message_pos+1)

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

if (spawn == 0)
{
	text = "SELECT OPTION..."
	spd = 0.5;
	font = font_regular1;
	
	text_length = string_length(text)
	font_size = font_get_size(font)
	
	draw_set_font(font);
	
	text_width = string_width_ext(text,font_size+(font_size/2),280);
	text_height = string_height_ext(text,font_size+(font_size/2),30);
	instance_create_layer(x,y+42,layer_get_id("Inst_healthui"),obj_setting_text_savefiles);
	instance_create_layer(x,y+64,layer_get_id("Inst_healthui"),obj_setting_text_options);
	//instance_create_layer(x,y+64,layer_get_id("Inst_healthui"),obj_load_text_no);	
	spawn = 1;
}

if (death1 == 0)
{
	if (alpha < 1)
	{
		image_alpha += 0.025;
		alpha += 0.025;
		with(obj_setting_text_savefiles)
		{
			image_alpha += 0.025;
		}
		with(obj_setting_text_options)
		{
			image_alpha += 0.025;
		}
	}
	if (alpha + 0.05>= 1) && (alpha < 1)
	{
		image_alpha += 0.05;
		alpha += 0.05;
		with(obj_setting_text_savefiles)
		{
			image_alpha += 0.05;
		}
		with(obj_setting_text_options)
		{
			image_alpha += 0.025;
		}
	}
}

if (death1) && (alpha > 0)
{
	alpha -= 0.05;
}
else if (alpha <= 0) && (death1)
{
	draw_set_alpha(1)
	instance_destroy()	
	instance_create_layer(175,45,layer_get_id("Inst_healthui"),obj_load_text)
}