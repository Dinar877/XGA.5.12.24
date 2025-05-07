if (FadeNow > 0)
{
	shader_set(shd_flash_fade_white);
	shader_set_uniform_f(fade_color, 1, 1, 1, FadeNow); // 1,1,1 for white
	draw_self();
	shader_reset();
	if (pauser <= 0)
	{
		draw_set_font(font)
		draw_set_alpha(alpha)
		if (time < text_length)
		{
			time+=spd;
		}
		print = string_copy(text,0+(message_pos),text_length)
		stringcount = (string_length(print))/2
		draw_text_ext(x+6,y+5,print,11,286)
	}
}
else if (FadeNow <= 0)
{
	draw_self();
	if (pauser <= 0)
	{
		draw_set_font(font)
		if (!death1)
		{
		draw_set_alpha(alpha)
		}
		if (time < text_length)
		{
			time+=spd;
		}
		print = string_copy(text,0+(message_pos),text_length)
		stringcount = (string_length(print))/2
		draw_text_ext(x+6,y+5,print,11,286)
	}
}
