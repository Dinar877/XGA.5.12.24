function Text_readit2(argument0, argument1) {
	tex2 = instance_create_depth(x+1,y-12,obj_scrnDark_navigational2_test1.depth-1,obj_texty_heading);

	with(tex2)
	{
		text = argument0;
		spd = argument1;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}


}
