/// @description Insert description here
// You can write your code in this editor

//play jumpscare for long enough
if (audio_sound_get_track_position(snd) >= audio_sound_length(snd))
{
	audio_stop_sound(snd_xga_jumpscare);
	
	//create cutscene props
	instance_create_layer(848,168,layer_get_id("Inst_healthui_mapborder"),obj_midgame_flash)
	instance_create_layer(1055,285,layer_get_id("Inst_doors"),obj_midgame_cutscene1)
	
	instance_destroy();
}