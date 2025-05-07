function Gbox_charge() {
	if (image_index >= image_number-1)
	{
		sprite_index = spr_Gbox_shoot
		
		if (!audio_is_playing(snd_electricity))
		{
			snd = audio_play_sound(snd_electricity,1000,false,global.sfx_volume)
			audio_sound_set_track_position(snd,2)
		}
	
		var inst1 = instance_create_layer(id.x+4,id.y+40,layer_get_id("Inst_level_0"),obj_boss_box_thunder)
		inst1.id1 = id
	
		var inst2 = instance_create_layer(inst1.x,inst1.bbox_bottom-31,layer_get_id("Inst_level_0"),obj_boss_box_thunder_ground)
		inst2.id1 = id
	
		State_machine_switch_state(Gbox_shoot)
		exit
	}


}
