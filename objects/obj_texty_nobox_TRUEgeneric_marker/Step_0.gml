/// @description Insert description here
// You can write your code in this editor
if (alpha < 1)
{
	alpha += spd/10;
}
else alpha = 1;

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


script_execute(Gamepad_variables)


if (selected > 0)
{
	if FadeNow > 0 
	{ 
	FadeNow -= 0.01; 
	}
	else if FadeNow <= 0
	{
	FadeNow = 0.8;
	}
}
else FadeNow = 0;

if (selected) && (left_key_pressed)
{
	selected = 0;
	with(obj_texty_yesbox_TRUEgeneric_marker)
	{
		selected = 1;	
	}
}

if (selected) && (jump_pressed)
{
	var tex = instance_create_depth(obj_text_spawning_any.x+1,obj_text_spawning_any.y+7,self.depth-5,obj_texty_TRUEgeneric_marker);
	
	with(tex)
	{
		time = 0;
		time2 = 0;
		message_pos = 0;
		text = obj_text_spawning_any.message2;
		string(text)
		text_length = string_length(text)
		pauser = 0;	
		pauser_end = 0;
		inst = -1;
		
		spd = 0.5;
		marker_target = obj_maptile_tile_hint;
		markerX = obj_text_spawning_any.markerX
		markerY = obj_text_spawning_any.markerY
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
		
		marker_arrow = obj_text_spawning_any.marker_arrow;
	}
	instance_destroy()
	with(obj_texty_yesbox_TRUEgeneric_marker)
	{
		instance_destroy()	
	}	
	with(obj_texty_TRUEgeneric_nonmarker)
	{
		instance_destroy()	
	}	
}

