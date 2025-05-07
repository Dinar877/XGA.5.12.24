function Text_generic(argument0, argument1) {
	tex2 = instance_create_layer(x+10,y+7,layer_get_id("Inst_healthui_mapborder"),obj_texty_TRUEgeneric_nonmarker);

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
