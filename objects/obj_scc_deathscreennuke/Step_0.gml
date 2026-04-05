/// @description Insert description here
// You can write your code in this editor
if (turnOffSwitch = false)
{
	image_alpha += 0.015;
	image_xscale += 0.2;
	image_yscale += 0.2;
}
else if (turnOffSwitch = true)
{
	image_alpha -= 0.015;
	
	if (image_alpha <= 0)
	{
		instance_destroy()
		
		room_goto(rm_SC_entrance)
		
		exit
	}
}
		
		
//turnOff
if (image_xscale >= 20)
{
	turnOffSwitch = true	
	
	instance_destroy(obj_scc_globe_lazer)
	
	if (!instance_exists(obj_scrnDark_random_loadroom_intro))
	{
		instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrnDark_random_loadroom_intro);
	}
}

		
//sfx
if (!audio_is_playing(snd_missile))
{
	sndy = audio_play_sound(snd_missile,1000,false,global.sfx_volume)
	audio_sound_gain(sndy,0,0)
	audio_sound_gain(sndy,image_alpha,0)
}
else if (sndy > 0)
{
	audio_sound_gain(sndy,image_alpha,0)	
}
