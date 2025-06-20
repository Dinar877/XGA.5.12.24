text = "WARNING: THIS GAME CONTAINS FLASHING LIGHTS, SUDDEN VISUAL CHANGES AND LOUD NOISES.";
spd = 0.25;
font = font_regular1;
	
text_length = string_length(text)
font_size = font_get_size(font)
	
draw_set_font(font);
	
text_width = string_width_ext(text,font_size+(font_size/2),300);
text_height = string_height_ext(text,font_size+(font_size/2),30);

time = text_length