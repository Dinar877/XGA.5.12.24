function Text_skiptext_trueintro(argument0, argument1, argument2) {
	tex2 = instance_create_layer(__view_get( e__VW.XView, 0 )+4,__view_get( e__VW.YView, 0 )+171,layer_get_id("Inst_healthui_mapborder"),obj_texty_skip);

	with(tex2)
	{
		text = argument0;
		spd = argument1;
		spawnerID = argument2;
		font = font_regular2;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}


}
