/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables);

if (FadeNow <= 0)
{
	FadeNow = 0.4;	
}

if (delay < 1) && (selected == 1)
{
	delay += 0.05;	
}

if (selected == 0) && (jump_pressed)
{
	on = 0;	
}

if (on > 0)
{
	sprite_index = spr_newpausescrn_options_block_on;
}
else sprite_index = spr_newpausescrn_options_block;

if (jump_pressed) && (delay == 1) && (selected == 1)
{
	var view = view_camera[e__VW.Camera];
	window_set_fullscreen(false)
	window_set_size(640,360);
	on = 1;
	surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
}
else if (down_key_pressed) && (delay == 1) && (selected == 1)
{
	selected = 0
	delay = 0;
	with(obj_textblock_960x540)
	{
		selected = 1;	
		delay = 0;
	}
}
else if (up_key_pressed) && (delay == 1) && (selected == 1)
{
	selected = 0
	delay = 0;
	with(obj_textblock_320x180)
	{
		selected = 1;	
		delay = 0;
	}
}

