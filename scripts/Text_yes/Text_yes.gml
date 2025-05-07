function Text_yes(argument0, argument1) {
	tex = instance_create_layer(x,y,layer_get_id("Inst_healthui"),obj_texty_yes);

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
