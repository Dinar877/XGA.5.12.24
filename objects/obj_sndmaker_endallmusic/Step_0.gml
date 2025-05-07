/// @description Insert description here
// You can write your code in this editor
if (new1 = 0) && ((audio_sound_get_gain(global.sector_music)) > 0)
{
	audio_sound_gain(global.sector_music,0,700)
	new1 = 1
	instance_destroy()
}