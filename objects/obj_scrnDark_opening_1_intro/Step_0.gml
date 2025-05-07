/// @description Insert description here
// You can write your code in this editor
scr_gamepad_test()
Gamepad_variables()

image_alpha += 0.0009;
audio_emitter_gain(global.inst_audio_emitterID[inst_n],image_alpha)

if (image_alpha >= 1)
{
	audio_stop_sound(snd_beamexplosion1)
	audio_stop_sound(snd_beamexplosion)
	audio_stop_sound(snd_airplane_flight)
	audio_emitter_free(global.inst_audio_emitterID[inst_n])
	instance_destroy(obj_texty_generic_upgrade)
	audio_play_sound(snd_xga_roar,100,false,global.sfx_volume)
	
	instance_activate_all()
	room_goto(rm_9_10_1)
	instance_destroy()
	
	exit;
}
else if (image_alpha < 1) && (!audio_is_playing(snd_beamexplosion1))
{
	audio_play_sound_on(global.inst_audio_emitterID[inst_n],snd_beamexplosion1,true,1000,global.sfx_volume)
}