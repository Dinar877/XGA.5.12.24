/// @description Insert description here
// You can write your code in this editor
draw_set_font(font)
if (pauser <= 0)
	{
		time+=spd;
		print = string_copy(text,0+(message_pos),time)
		stringcount = (string_length(print))/2
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_gray,c_gray,image_alpha)
	}



	if (pauser > 0)
	{
		print = string_copy(text,0+(message_pos),time)
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_gray,c_gray,image_alpha)
	}

	if (pauser_end > 0) && (!instance_exists(obj_text_spawning_arrow_ender_any_biome_1_2))
	{
		print = string_copy(text,0+(message_pos),time)
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_gray,c_gray,image_alpha)
		instance_create_depth(x+278,y+5,id.depth-5,obj_text_spawning_arrow_ender_any_biome_1_2)
	}

	if (pauser_end > 0) && (instance_exists(obj_text_spawning_arrow_ender_any_biome_1_2))
	{
		print = string_copy(text,0+(message_pos),time)
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_gray,c_gray,image_alpha)
	}

