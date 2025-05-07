function bugspider_energy() {
	if (image_index >= 7) && (image_index < 8)
	{
		if (!instance_exists(obj_boss_bugspider_energycircle_warn))
		{
			instance_create_layer(x,y,layer_get_id("Inst_afterimages"),obj_boss_bugspider_energycircle_warn)
		}	
	}

	if (image_index >= 45) && (image_index < 46)
	{
		if (!instance_exists(obj_boss_bugspider_energycircle))
		{
			var sndId = audio_play_sound(snd_dash_spark,1000,false,global.sfx_volume)
			audio_sound_gain(sndId, 0 , 3500)
			
			instance_create(x,y,obj_boss_bugspider_energycircle)
		}	
	}

	if (image_index >= image_number - 1)
	{
		sprite_index = spr_boss_bugspider_walkleft;
		image_index = 0;
		
		State_machine_switch_state(bugspider_walking);
	}


}
