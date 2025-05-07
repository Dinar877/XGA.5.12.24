/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables)

if (alpha < 1)
{
	alpha += spd/10;
}
else alpha = 1;

if (selected > 0)
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

if (selected) && (left_key_pressed)
{
	selected = 0;
	with(obj_texty_yes)
	{
		selected = 1;	
	}
}

if (selected) && (jump_pressed)
{
	with(obj_texty)
	{
		string_delete(text,0,all)
		time = 0;
		time2 = 0;
		message_pos = 0;
		text = obj_text_spawning.message2;
		string(text)
		text_length = string_length(text)
		pauser = 0;	
		pauser_end = 0;
		inst = -1;
	}
	instance_destroy()
	with(obj_texty_yes)
	{
		instance_destroy()	
	}
}