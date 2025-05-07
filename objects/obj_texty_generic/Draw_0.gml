/// @description Insert description here
// You can write your code in this editor
draw_set_font(font)	



if (pauser <= 0)
	{
		if (time+message_pos < text_length) && (midpause <= 0)
		{
			time+=spd;
		}
		print = string_copy(text,0+(message_pos),time)
		stringcount = (string_length(print))/2
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
	}
	
if (pauser <= 0) && (font_gold)
	{
		if (time+message_pos < text_length) && (midpause <= 0)
		{
			time+=spd;
		}
		print = string_copy(text,time+(message_pos),time2)
		stringcount = (string_length(print))/2
		draw_set_color(c_yellow)
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
		draw_set_color(c_white)
	}

	if (pauser > 0)
	{
		print = string_copy(text,0+(message_pos),time)
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
	}

	if (pauser_end > 0) && (!instance_exists(obj_introtext_arrowender_destroyallnow))
	{
		print = string_copy(text,0+(message_pos),time)
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
		instance_create_depth(x+278,y+5,id.depth-5,obj_introtext_arrowender_destroyallnow)
	}

