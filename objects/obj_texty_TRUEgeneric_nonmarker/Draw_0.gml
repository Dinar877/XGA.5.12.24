/// @description Insert description here
// You can write your code in this editor

if (switch1 <= 0) && (room != rm_trueintro_opening_xga)
{	
	draw_set_font(font)
	
	if (time < text_length) && (midpause <= 0)
	{
		time+=spd;
	}
	
	print = string_copy(text,0+(message_pos),floor(time))
	stringcount = (string_length(print))/2
	draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
}
else if (switch1 > 0) && (room != rm_trueintro_opening_xga)
{
	draw_set_font(font)
	print = string_copy(text,0+(message_pos),floor(time))
	stringcount = (string_length(print))/2
	draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
}

if (switch1 <= 0) && (room = rm_trueintro_opening_xga)
{	
	draw_set_font(font)
	draw_set_color(c_green)
	draw_set_alpha(image_alpha)
	
	if (time < text_length) && (midpause <= 0)
	{
		time+=spd;
	}
	
	print = string_copy(text,0+(message_pos),floor(time))
	stringcount = (string_length(print))/2
	draw_text_ext_color(x,y,print,11,286,c_green,c_green,c_green,c_green,image_alpha)
	draw_set_color(c_white)
	draw_set_alpha(1)
}
else if (switch1 > 0) && (room = rm_trueintro_opening_xga)
{
	draw_set_font(font)
	draw_set_color(c_green)
	draw_set_alpha(image_alpha)
	print = string_copy(text,0+(message_pos),floor(time))
	stringcount = (string_length(print))/2
	draw_text_ext_color(x,y,print,11,286,c_green,c_green,c_green,c_green,image_alpha)
	draw_set_color(c_white)
	draw_set_alpha(1)
}