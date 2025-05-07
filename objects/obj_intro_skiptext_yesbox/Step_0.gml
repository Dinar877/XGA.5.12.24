/// @description Insert description here
// You can write your code in this editor
Gamepad_variables()

if (delay < 1) && (active > 0)
{
    delay += 0.05;
}

if (active > 0)
{
	if FadeNow > 0
	{ 
	FadeNow -= 0.01; 
	}
	else if FadeNow <= 0
	{
	FadeNow = 0.8;
	}
}
else FadeNow = 0;

if (right_key_pressed) && (active = 1) && (delay = 1)
{
	active  = 0
	with(obj_intro_skiptext_nobox)
	{
		active = 1	
	}
}

if (jump_pressed) && (active = 1) && (delay = 1)
{
	with(obj_text_spawning_trueintro_opening)
	{
		if (room = rm_trueintro_opening_TEXT)
		{
			instance_create_depth(0,0,id.depth-50000,obj_scrnDark_trueintro_opening_intro)
			audio_stop_sound(ost_ciri_TheMission)
		}
		else if (room = rm_trueintro_opening_xga)
		{
			instance_create_depth(0,0,id.depth-50000,obj_scrnDark_trueintro_opening_intro1)
			audio_stop_sound(snd_lab_ambience)
		}
	}
	
	with(obj_intro_skiptext_nobox)
	{
		instance_destroy()	
	}
	
	instance_destroy()
}