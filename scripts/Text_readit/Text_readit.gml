function Text_readit(argument0, argument1) {
	tex = instance_create_depth(x+1,y-3,obj_scrnDark_navigational2.depth-5,obj_texty);

	with(tex)
	{
		text = argument0;
		spd = argument1;
		font = global.font_gray1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}


}
