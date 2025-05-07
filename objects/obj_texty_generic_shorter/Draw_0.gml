/// @description Insert description here
// You can write your code in this editor
draw_set_font(font)	



if (pauser <= 0)
	{
		if (midpause <= 0) && (switch1 == 0)
		{
			time+=spd;
		}
		
		print = string_copy(text,0+(message_pos),time)
		stringcount = (string_length(print))/2
		draw_set_alpha(image_alpha)
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
		draw_set_alpha(1)
	}

	if (pauser > 0)
	{
		print = string_copy(text,0+(message_pos),time)
		draw_set_alpha(image_alpha)
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
		draw_set_alpha(1)
	}

	if (pauser_end > 0)
	{
		print = string_copy(text,0+(message_pos),time)
		draw_set_alpha(image_alpha)
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
		draw_set_alpha(1)
	}

