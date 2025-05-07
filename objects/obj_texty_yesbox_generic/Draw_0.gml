/// @description Insert description here
// You can write your code in this editor
if (FadeNow > 0)
{
	shader_set(shd_flash_fade_white);
	shader_set_uniform_f(fade_color, 1, 1, 1, FadeNow); // 1,1,1 for white
	draw_self();
	shader_reset();
	if (pauser <= 0)
	{
		draw_set_font(font)
		if (time < text_length)
		{
			time+=spd;
		}
		print = string_copy(text,0+(message_pos),text_length)
		stringcount = (string_length(print))/2
		draw_text_ext(x,y,print,11,286)
	}
}
else if (FadeNow <= 0)
{
	draw_self();
	if (pauser <= 0)
	{
		draw_set_font(font)
		if (time < text_length)
		{
			time+=spd;
		}
		print = string_copy(text,0+(message_pos),text_length)
		stringcount = (string_length(print))/2
		draw_text_ext(x,y,print,11,286)
	}
}