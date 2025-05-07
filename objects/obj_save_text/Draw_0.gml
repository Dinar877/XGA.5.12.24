/// @description Insert description here
// You can write your code in this editor
draw_self();

if (pauser <= 0)
	{
		draw_set_alpha(alpha)
		if (time < text_length)
		{
			time+=spd;
		}
		print = string_copy(text,0+(message_pos),text_length)
		stringcount = (string_length(print))/2
		draw_text_ext(x+6,y+5,print,11,286)
	}
else if (pauser > 0)
	{
		draw_set_alpha(alpha)
		print = string_copy(text,0+(message_pos),text_length)
		stringcount = (string_length(print))/2
		draw_text_ext(x+6,y+5,print,11,286)
	}