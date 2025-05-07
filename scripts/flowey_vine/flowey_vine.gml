function flowey_vine() {
	if (sprite_index = spr_flowey_vine) && (image_index >= image_number-1)
	{
		 sprite_index = spr_flowey_idle;
		 image_index = 0;
		 dist = 0
		 State_machine_switch_state(flowey_idle)
	}

	if (sprite_index = spr_flowey_vine) && (image_index < image_number-1) && (image_index < 22) && (image_index >= 16) && (dist = 0)
	{
		dist = obj_player.x
	}

	if (sprite_index = spr_flowey_vine) && (image_index < image_number-1) && (image_index >= 22) && (!instance_exists(obj_boss_flowey_vine)) && (dist > 0)
	{
		instance_create_depth(dist,464,id.depth-1,obj_boss_flowey_vine)
		
		instance_create_depth(x+33,y+43,id.depth-1,obj_chunk_slow)
		instance_create_depth(x+33,y+43,id.depth-1,obj_chunk_slow)
		instance_create_depth(x+33,y+43,id.depth-1,obj_chunk_slow)
		instance_create_depth(x+33,y+43,id.depth-1,obj_chunk_slow)
		instance_create_depth(x+33,y+43,id.depth-1,obj_chunk_slow)
		image_speed = 0
		dist = 0
	
		snd = audio_play_sound(snd_grassrustle,1000,false,global.sfx_volume)
		audio_sound_gain(snd,0,1500)
		audio_sound_pitch(snd,random_range(0.9,1.2))
	}

	if (sprite_index = spr_flowey_vine) && (image_index < image_number-1) && (image_index >= 22) && (!instance_exists(obj_boss_flowey_vine)) && (image_speed = 0)
	{
		image_speed = 1
	}


}
