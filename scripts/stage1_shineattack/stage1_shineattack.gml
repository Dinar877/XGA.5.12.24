function stage1_shineattack() {
	if (sprite_index = spr_stage1_stand_left)
	{
		sprite_index = spr_stage1_shiner_left
	}
	else if (sprite_index = spr_stage1_shiner_left) && (image_index >= 21) && (image_index < 22) && (!instance_exists(obj_boss_darkeater_shine_prep))
	{
		instance_create_layer(obj_player.x,obj_player.y,layer_get_id("Inst_doors"),obj_boss_darkeater_shine_prep)	
		instance_create_layer(obj_player.x,obj_player.y,layer_get_id("Inst_level_0"),obj_boss_darkeater_shine_flashy)	
	}
	else if (sprite_index = spr_stage1_shiner_left) && (image_index >= image_number-1)
	{
		sprite_index = spr_stage1_stand_left
		State_machine_switch_state(stage1_idle)
	}

	if (sprite_index = spr_stage1_stand_right)
	{
		sprite_index = spr_stage1_shiner_right
	}
	else if (sprite_index = spr_stage1_shiner_right) && (image_index >= 21) && (image_index < 22) && (!instance_exists(obj_boss_darkeater_shine_prep))
	{
		instance_create_layer(obj_player.x,obj_player.y,layer_get_id("Inst_doors"),obj_boss_darkeater_shine_prep)	
		instance_create_layer(obj_player.x,obj_player.y,layer_get_id("Inst_level_0"),obj_boss_darkeater_shine_flashy)
	}
	else if (sprite_index = spr_stage1_shiner_right) && (image_index >= image_number-1)
	{
		sprite_index = spr_stage1_stand_right
		State_machine_switch_state(stage1_idle)
	}
	
	
	
	//sfx
	if (floor(image_index) == 9)
	{
		audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)	
	}


}
