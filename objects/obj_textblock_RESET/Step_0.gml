if (selected == 1) && (waiting2 >= 1)
{
	if (jump_pressed) && (global.controls_changed == 1)
			{
				//custom controls-gamepad shit
				global.gp_left = gp_padl;
				global.gp_up = gp_padu;
				global.gp_down = gp_padd;
				global.gp_right = gp_padr;
				global.gp_enter = gp_start;

				global.gp_space = gp_face1;
				global.gp_G = gp_face2;
				global.gp_tab = gp_face4;
				global.gp_ability = gp_face3;

				global.gp_L1 = gp_shoulderl;
				global.gp_R1 = gp_shoulderr;
				global.gp_L2 = gp_shoulderlb;
			}	
	waiting = 0;
	waiting2 = 0;
	global.pause_logbook = 0;
	script_execute(Gamepad_variables)
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
	with(obj_textblock_ENTER)
	{
		selected = 1;
	}
}
else if (selected == 1) && (waiting == 1) && (down_key_pressed)
{
	selected = 0;
	waiting = 0;
	with(obj_textblock_left)
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
