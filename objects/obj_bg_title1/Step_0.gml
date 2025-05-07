/// @description Insert description here
// You can write your code in this editor

/*
if (surface2_alpha <= 0) && (surface2neg == 1)
{
	surface2neg = 0;
	surface2pos = 1;
}
else if (surface2_alpha > 0) && (surface2neg == 1)
{
	surface2_alpha -= 0.001;
}

if (surface2_alpha >= 0.2) && (surface2pos == 1)
{
	surface2neg = 1;
	surface2pos = 0;
}
else if (surface2_alpha < 0.2) && (surface2pos == 1)
{
	surface2_alpha += 0.001;
}
*/

Gamepad_variables();

if (go == 0) && ((enter_pressed) or (jump_pressed) or (ability_pressed) or (shoot_pressed) or (dash_pressed))
{
	go = 1;	
	
	audio_stop_sound(snd_button_confirm);
	audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume);
}

if (go = 1) && (image_alpha > 0)
{
	image_alpha -= 0.025;
	surface2_alpha = 1.0
	with(obj_bg_title2)
	{
		surface2_alpha = 1.0
		image_alpha -= 0.025;	
	}
}
else if (go = 1) && (image_alpha <= 0)
{
	instance_destroy()
	with(obj_bg_title2)
	{
		instance_destroy()	
	}
	instance_activate_object(obj_NEWmenu_intro);
	instance_create_layer(175,45,layer_get_id("Inst_healthui"),obj_NEWmenu_intro);
}