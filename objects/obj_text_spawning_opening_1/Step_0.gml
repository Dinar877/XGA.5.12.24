/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
scr_gamepad_test()
Gamepad_variables()


//Text(message,spd)
if (new1 == 0)
{
	//relevant
	global.xleft = 0
	global.yup = 0
	message2 = " YOU MUST HIDE UNTIL THIS IS ALL OVER. YOU HAVE TO SURVIVE THE SLAUGHTER, AND YOU NEED TO GROW STRONGER, TO EVENTUALLY STOP XGA ONCE AND FOR ALL.";
	new1 = 1;
	
	var tex = instance_create_layer(x,y,layer_get_id("Inst_healthui"),obj_texty_TRUEgeneric_nonmarker);

	with(tex)
	{
		text = other.message2;
		spd = other.spd;
		spawnerID = other.id;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
}

if (enter_pressed) or (obj_texty_TRUEgeneric_nonmarker.time + obj_texty_TRUEgeneric_nonmarker.message_pos >= obj_texty_TRUEgeneric_nonmarker.text_length)
{
	audio_stop_sound(snd_beamexplosion1)
	audio_stop_sound(snd_beamexplosion)
	audio_stop_sound(snd_airplane_flight)
	instance_destroy(obj_texty_generic_upgrade)
	instance_destroy(obj_texty_TRUEgeneric_nonmarker)
	
	if (instance_exists(obj_scrnDark_opening_1_intro))
	{
		with(obj_scrnDark_opening_1_intro)
		{
			audio_emitter_free(global.inst_audio_emitterID[inst_n])
		}
	}
	
	instance_activate_all()
	
	if (global.mode_test > 0)
	{
		room_goto(rm_9_10_1)
	}
	else room_goto(rm_9_10_1_xgatest)
	
	instance_destroy()
	
	exit;
}