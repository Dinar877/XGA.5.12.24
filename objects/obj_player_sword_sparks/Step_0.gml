/// @description Insert description here
// You can write your code in this editor
if (obj_player.state != Sword_Charging_Fall) && (obj_player.state != Sword_Charging_Stand)
{
	audio_stop_sound(snd_electricity)
	instance_destroy()	
}