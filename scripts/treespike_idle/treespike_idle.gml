function treespike_idle() {
	if (obj_player.x < self.x) && (global.invisibility = 0) && (inst_player > 0) && (timer >= 1) && (inst_player)
		{
			State_machine_switch_state(treespike_shoot);
			sprite_index = spr_treespike_hurl_left;
			image_index = 0
			timer = 0;
		}
	else if (obj_player.x > self.x) && (global.invisibility = 0) && (inst_player > 0) && (timer >= 1) && (inst_player)
		{
			State_machine_switch_state(treespike_shoot);
			sprite_index = spr_treespike_hurl_right;
			image_index = 0
			timer = 0;
		}
	
	if (obj_player.x < self.x) && (global.invisibility = 0) && (inst_player > 0) && (timer2burst >= 1) && (inst_player)
		{
			State_machine_switch_state(treespike_shoot_burst);
			sprite_index = spr_treespike_burst;
			image_index = 0
			timer2burst = 0
		}
	else if (obj_player.x > self.x) && (global.invisibility = 0) && (inst_player > 0) && (timer2burst >= 1) && (inst_player)
		{
			State_machine_switch_state(treespike_shoot_burst);
			sprite_index = spr_treespike_burst;
			image_index = 0
			timer2burst = 0
		}

	if (inst_player)
	{
		timer += random_range(((1/room_speed)),((1/room_speed)/3))
	}

	if (inst_player)
	{
		timer2burst += random_range((1/room_speed),((1/room_speed)/3))
	}


}
