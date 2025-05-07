/// @description Insert description here
// You can write your code in this editor

draw_set_font(font)
if (time < text_length)
	{
		time+=spd;
	}
print = string_copy(text,0+(message_pos),text_length)
stringcount = (string_length(print))/2
draw_text_ext(x,y,print,11,286)
