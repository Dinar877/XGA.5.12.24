function stage1_idle() {
	if (obj_player.x > self.x) && (sprite_index = spr_stage1_stand_left)
	{
		image_index = 0
		State_machine_switch_state(stage1_turning);
	}
	else if (obj_player.x < self.x) && (sprite_index = spr_stage1_stand_right)
	{
		image_index = 0
		State_machine_switch_state(stage1_turning);
	}

	shinetimer += random_range(((1/room_speed)/3),((1/room_speed)/5))
	spintimer += random_range(((1/room_speed)/3),((1/room_speed)/5))

	if (obj_player.x < self.x) && (sprite_index = spr_stage1_stand_left) && (shinetimer >= 1)
	{
		image_index = 0
		shinetimer = 0
		spintimer = 0
		State_machine_switch_state(stage1_shineattack)
	}
	else if (obj_player.x > self.x) && (sprite_index = spr_stage1_stand_right) && (shinetimer >= 1)
	{
		image_index = 0
		shinetimer = 0
		spintimer = 0
		State_machine_switch_state(stage1_shineattack)
	}


	if (obj_player.x < self.x) && (sprite_index = spr_stage1_stand_left) && (spintimer >= 1)
	{
		image_index = 0
		spintimer = 0
		shinetimer = 0
		State_machine_switch_state(stage1_spin)
	}
	else if (obj_player.x > self.x) && (sprite_index = spr_stage1_stand_right) && (spintimer >= 1)
	{
		image_index = 0
		spintimer = 0
		shinetimer = 0
		State_machine_switch_state(stage1_spin)
	}


}
