/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_darkeater_hitbox)) && (fadeup <= 0)
{
	fadeup = 1
	FadeNow = 0
}

if (fadeup = 1) && (FadeNow < fadeLimit) //fade up
{
	FadeNow += fadeSpeed
}
else if (fadeup = 1) && (FadeNow >= fadeLimit)
{
	fadeup = 0
	fadedown = 1
	
	//var sndy = audio_play_sound(snd_downloading,1000,true,global.sfx_volume)
	//audio_sound_gain(sndy,0,500)
}
else if (fadedown = 1) && (FadeNow > 0) //fade down
{
	FadeNow -= fadeSpeed
}
else if (fadedown = 1) && (FadeNow <= 0)
{
	fadedown = 0
	
	//instance_create_layer(obj_camera.x-160,obj_camera.y-90,layer_get_id("Inst_healthui"),obj_scrnDark_endgame)
	
	//audio_stop_sound(snd_downloading)
	
	//global.pause_player = 1
}