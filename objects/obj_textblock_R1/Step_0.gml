if (selected == 1) && (waiting2 >= 1) && (!jump)
{	
	script_execute(Gamepad_variables);
	script_execute(Gamepad_get_input_R1);
}
else script_execute(Gamepad_variables);

if (FadeNow <= 0)
{
	FadeNow = 0.4;	
}

if (selected = 1) && (waiting < 1)
{
	waiting += 0.05;	
}


if (selected == 1) && (waiting == 1) && (up_key_pressed)
{
	selected = 0;
	waiting = 0;
	with(obj_textblock_L1)
	{
		selected = 1;
	}
}
else if (selected == 1) && (waiting == 1) && (down_key_pressed)
{
	selected = 0;
	waiting = 0;
	with(obj_textblock_ENTER)
	{
		selected = 1;
	}
}
if (selected == 1) && (waiting == 1) && (jump_pressed)
{
	waiting = 2;
	global.pause_logbook = 1;
	global.controls_changed = 0;
}


if (waiting == 2) && (waiting2 < 1)
{
	waiting2 += 0.01;	
}