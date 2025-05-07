/// @description Insert description here
// You can write your code in this editor
image_alpha = 1;
endload = 0;
endload2 = 0;
endload3 = 0;
saving = 0;
endsaving = 0;

if (global.cutscene = 1)
{
	instance_deactivate_all(true)

	instance_activate_object(obj_cryounit_bg)
	instance_activate_object(obj_cryounit_front)
	instance_activate_object(obj_cryounit_player)

	instance_activate_object(obj_scrnDark_random_loadroom_fadeinandout)
	instance_activate_object(obj_cryounit)
	instance_activate_object(obj_camera_intro)
	
	instance_activate_object(obj_door_normal_left)
	instance_activate_object(object_bg_restrictedarea1)
	
	instance_activate_object(obj_marker_9_10_1)

	__view_set( e__VW.Object, 0, obj_camera_intro);
}
else instance_destroy()	

switch1 = 1;


//audio shit
inst_audio_emitterID = audio_emitter_create()
emitter_start = 0
emitter_pitch = 1;
emitter_vol = 0;
emitterSin = 0
audio_play_sound_on(inst_audio_emitterID,snd_airplane_flight,1000,true, global.sfx_volume)
audio_emitter_pitch(inst_audio_emitterID,emitter_pitch)
audio_emitter_gain(inst_audio_emitterID,emitter_vol)

stopsnd = 0;