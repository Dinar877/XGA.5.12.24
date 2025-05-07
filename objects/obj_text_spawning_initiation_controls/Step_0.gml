/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
//Text(message,spd)
if (new1 == 0)
{
	message2 = "GAMEPAD CONTROLS: \ 'A' IS JUMP, 'X' IS SHOOT, 'Y' IS DASH AND 'Select' IS AIM LOCK."

	tex = instance_create_layer(x,y,layer_get_id("Inst_healthui_mapborder"),obj_texty_heading);

	with(tex)
	{
		text = other.message2;
		spd = other.spd;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	message3 = "KEYBOARD CONTROLS: \ 'Z' IS JUMP, 'X' IS SHOOT, 'dash IS DASH AND 'A' IS AIM LOCK."

	tex2 = instance_create_layer(x,y+33,layer_get_id("Inst_healthui_mapborder"),obj_texty_heading);

	with(tex2)
	{
		text = other.message3;
		spd = other.spd;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}

	new1 = 1;
}