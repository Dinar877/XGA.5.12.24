/// @description Insert description here
// You can write your code in this editor
draw_set_font(font)

if (switch1 <= 0)
	{
		if (midpause <= 0)
		{
			time+=spd;
		}
		print = string_copy(text,0+(message_pos),time)
		stringcount = (string_length(print))/2
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
	}
	
	if (switch1 > 0)
	{
		print = string_copy(text,0+(message_pos),time)
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
	}

	if (pauser > 0) && (!instance_exists(obj_text_spawning_arrow)) && (instance_number(obj_texty_marker) > 2)
	{
		print = string_copy(text,0+(message_pos),time)
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
		var inst_arrow = instance_create_depth(x+278,y+5,id.depth-5,obj_text_spawning_arrow)
		with(inst_arrow)
		{
			markerX = other.markerX
			markerY = other.markerY	
			markerID = other.markerID
			spawnerID = other.spawnerID
		}
		
	}

	if (pauser > 0) && (instance_exists(obj_text_spawning_arrow))
	{
		print = string_copy(text,0+(message_pos),time)
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
	}

	if (pauser_end > 0) && (!instance_exists(obj_text_spawning_arrow_ender_any_trueend))
	{
		print = string_copy(text,0+(message_pos),time)
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
	}

	if (pauser_end > 0) && (instance_exists(obj_text_spawning_arrow_ender_any_trueend))
	{
		print = string_copy(text,0+(message_pos),time)
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
	}