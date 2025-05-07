/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables);

stringy = string_char_at(text,time+message_pos)
stringy2 = string_char_at(text,time+time2+message_pos+1)

if (stringy == " ") && (stringy2 != " ") && (time+message_pos+time2+1 < text_length)
{
	while (stringy == " ") && (stringy2 != " ") && (time+message_pos+time2+1  < text_length)
	{
		time2++;
		stringy2 = string_char_at(text,time+message_pos+time2+1)
	}
}
else time2 = 0;

if ((time+message_pos+time2+1  >= text_length) && (stringy == ".")) && (pauser_end == 0)
{
	pauser_end = 1;
}


//delay
if (delay < 1)
{
	delay += 0.05	
}




if (death1 == 0)
{
	if (alpha < 1)
	{
		alpha += 0.025;
	}
	if (alpha + 0.05>= 1) && (alpha < 1)
	{
		alpha += 0.05;
	}
}

if (alpha == 1) && (down_key_pressed) && (selected > 0)
&& (delay >= 1)
{
	selected = 0;
	FadeNow = 0;
	delay = 0
	
	with(obj_NEWsav_text_no)
	{
		selected = 1;	
		delay = 0
	}
	with(obj_NEWsav_text_travel)
	{
		selected = 0;	
		delay = 0
	}
}

if (selected = 1)
{
	if (FadeNow < 0.6)
	{
		FadeNow += 0.02;	
	}
	else if (FadeNow >= 0.6)
	{
		FadeNow = 0.0;	
	}
}

if (death1) && (alpha > 0)
{
	alpha -= 0.05;
}

if (selected = 1) && (jump_pressed)
{
	audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
	audio_play_sound(snd_saveroom_laser,1000,true,global.sfx_volume)
	
	global.charging = 0;
	global.dash2 = 0;
	global.dashbegin2 = 0;
	global.turning_dash2 = 0;
	instance_activate_all();
	instance_deactivate_object(obj_player)
	instance_deactivate_object(object_player2_0_sprites)
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrnDark);
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_saver);
	with(obj_scrnDark)
	{
		saving = 1;
		image_alpha = 0.6
	}
	
	with(obj_scrn_roomtransition)
	{
		fadeout1 = 1;
		FadeNow = 0.6;
	}
	
	if (instance_exists(obj_player_sword_sparks))
		{
			instance_destroy(obj_player_sword_sparks)	
		}
	audio_stop_sound(snd_electricity)
	
	with(obj_NEWsav_text_no)
		{
			instance_destroy();
		}
	with(obj_NEWsav_text_travel)
		{
			instance_destroy();
		}
	with(obj_NEWsav_text)
		{
			instance_destroy();
		}
	
	with(obj_NEWsav_bottom)
	{
		instance_create_depth(x+23,y-17,obj_scrnDark.depth-1,obj_player_saving)	
		instance_create_depth(x+24,y-1,obj_scrnDark.depth-2,obj_NEWsav_activepillar)	
		//id.depth = obj_scrn_roomtransition.depth-3;
	}
	with(obj_NEWsav_top)
	{
		//id.depth = obj_scrn_roomtransition.depth-3;
		dontsave = 1
	}
	draw_set_alpha(1)
	instance_destroy()
}