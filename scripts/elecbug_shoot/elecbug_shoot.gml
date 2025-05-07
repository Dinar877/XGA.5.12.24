function elecbug_shoot() {
	if (floor(image_index) == 23) && (!instance_exists(obj_elecbug_elecball))
	{	
		audio_stop_sound(snd_electricity)
		var snd_elecbug = audio_play_sound(snd_electricity,1000,false,global.sfx_volume)
		audio_sound_set_track_position(snd_elecbug,2)
		audio_sound_gain(snd_elecbug,1,0)
		audio_sound_gain(snd_elecbug,0,3000)
		
		var instbullet11 = instance_create_layer(id.x,id.y-5,layer_get_id("Inst_doors"),obj_elecbug_elecball)
		var instbullet12 = instance_create_layer(id.x,id.y-5,layer_get_id("Inst_doors"),obj_elecbug_elecball)
		var instbullet13 = instance_create_layer(id.x,id.y-5,layer_get_id("Inst_doors"),obj_elecbug_elecball)
		var instbullet14 = instance_create_layer(id.x,id.y-5,layer_get_id("Inst_doors"),obj_elecbug_elecball)
	}

	if (image_index == 54)
	{
		audio_stop_sound(snd_electricity)
	}

	if (image_index >= image_number-1)
	{
		instbullet0 = 0
		snd_elecbug = -1
		audio_stop_sound(snd_electricity)
		if (sprite_index = spr_elecbug_shock_left)
		{
			sprite_index = spr_elecbug_idle_left
		}
		else if (sprite_index = spr_elecbug_shock_right)
		{
			sprite_index = spr_elecbug_idle_right
		}
	
		State_machine_switch_state(elecbug_idle)
	}


}
