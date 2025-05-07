function Text(argument0, argument1, argument2) {
	tex = instance_create_depth(x+1,y+7,id.depth-1,obj_texty_generic_shorter);

	with(tex)
	{
		text = argument0;
		spd = argument1;
		spawnerID = argument2;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}


}
