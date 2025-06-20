/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
//Text(message,spd)
scr_gamepad_test()
Gamepad_variables()

//intro text
if (new1 = 0) && (!instance_exists(obj_scrnDark_random_loadroom_intro))
{
	//relevant
	message2 = " DINAR87 AND CIRI PRESENT... "
	new1 = 2;
	
	textmap1 = instance_create_depth(x-(15*3),y,self.depth-1,obj_texty_generic_introONLY);

	with(textmap1)
	{
		text = other.message2;
		spd = other.spd;
		font = font_intro;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
}
else if (new1 = 1) && (!instance_exists(obj_texty_generic_introONLY)) //unused second intro text
{
	//relevant
	message2 = "XGA"
	new1 = 2;
	
	textmap1 = instance_create_depth(x+(15*5),y,self.depth-1,obj_texty_generic_introONLY);

	with(textmap1)
	{
		text = other.message2;
		spd = other.spd;
		font = font_intro;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
}
else if (new1 == 2) && (!instance_exists(obj_intro_spaceship1)) && (!instance_exists(obj_texty_generic_introONLY)) //spawns spaceship animation
{
	instance_create_depth(-200,-200,id.depth,obj_intro_spaceship1)
}
else if (new1 == 4) && (!instance_exists(obj_scrnLight)) //spawns spaceship destroying light
{
	instance_create_layer(0,0,layer_get_id("Inst_healthui_mapborder"),obj_scrnLight)
}

//skip intro animation
if (enter_pressed)
{
	with(obj_intro_spaceship1)
	{
		audio_stop_sound(snd_airplane_flight)
		audio_emitter_free(global.inst_audio_emitterID[inst_n])
		instance_destroy()
	}
	instance_activate_all()
	room_goto(rm_load)
}