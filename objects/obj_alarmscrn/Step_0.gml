/// @description Insert description here
// You can write your code in this editor


if (image_alpha < 1)
{
	image_alpha += alphaAdder
}
else if (image_alpha >= 1) && (flashAmount > 0)
{
	flashAmount--
	image_alpha = 0
}
else if (image_alpha >= 1) && (flashAmount <= 0)
{
	audio_stop_sound(snd_sc_alarm)
	
	global.sc_timelimit = 600 + round(random_range(60,300))
	global.boss_warning = 0
	global.cutsceneID[Cutscenes.sc_key_aquired] = 1
	
	//insert system core music here
	
	instance_create_depth(x,y,depth-1,obj_sc_clock_manager)
	
	instance_destroy()
	exit
}