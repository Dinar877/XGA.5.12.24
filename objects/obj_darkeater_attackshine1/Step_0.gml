/// @description Insert description here
// You can write your code in this editor
image_angle += 1.3

if (image_index >= image_number-1)
{
	instance_destroy(obj_text_spawning_titleintro)
	instance_destroy(obj_texty_generic_introONLY)
	with(obj_intro_spaceship1)
	{
		audio_emitter_free(global.inst_audio_emitterID[inst_n])
		instance_destroy()
	}
	instance_destroy(obj_scrnLight)
	instance_destroy(obj_deathscreennuke_intro)
	instance_activate_all();
	__view_set( e__VW.Object, 0, obj_camera );
	room_goto(rm_load)	
	instance_destroy()
}