/// @description Insert description here
// You can write your code in this editor
if (image_index >= image_number-1) && (activate == false)
{
	activate = true
	image_speed = 0
	image_index = image_number-1
	
	instance_create_depth(obj_player.x,obj_player.y,depth-1,obj_scc_deathscreennuke)
	
	audio_stop_sound(snd_scc_poweringup)
	audio_play_sound(snd_scc_teleport,1000,false,global.sfx_volume)
}