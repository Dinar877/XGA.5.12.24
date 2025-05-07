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

if (alpha == 1) && (down_key_pressed)
{
	selected = 0;
	FadeNow = 0;
	with(obj_save_text_no)
	{
		selected = 1;	
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
	global.charging = 0;
	global.dash2 = 0;
	global.dashbegin2 = 0;
	global.turning_dash2 = 0;
	instance_activate_all();
	instance_deactivate_object(obj_savepillar_standbyeffect);
	instance_deactivate_object(obj_savepillar_separated1);
	instance_deactivate_object(obj_savepillar_separated2);	
	instance_create_depth(obj_savepillar_coverup.x-1,obj_savepillar_coverup.y+25,obj_savepillar_coverup.depth+1,obj_savepillar_tower);
	instance_deactivate_object(obj_player);
	instance_deactivate_object(object_player2_0_sprites);
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrnDark);
	with(obj_scrnDark)
	{
		saving = 1;
	}
	
	with(obj_savepillar_coverup1)
	{
		depth = obj_scrnDark.depth-4
	}
	with(obj_savepillar_coverup)
	{
		depth = obj_scrnDark.depth-4
	}
	with(obj_savepillar_playereffectuse)
	{
		depth = obj_scrnDark.depth-3
	}
	with(obj_savepillar_playeruse)
	{
		depth = obj_scrnDark.depth-2
	}
	with(obj_savepillar_tower)
	{
		depth = obj_scrnDark.depth-3
	}
	
	with(obj_scrn_roomtransition)
	{
		fadeout1 = 1;
		FadeNow = 0.6;
	}
	
	with(obj_save_text_no)
		{
			instance_destroy();
		}
	with(obj_save_text)
		{
			instance_destroy();
		}
	draw_set_alpha(1)
	instance_destroy()
}