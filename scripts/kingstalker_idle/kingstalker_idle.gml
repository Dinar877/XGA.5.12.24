function kingstalker_idle() {
	
	if (obj_player.x > self.x) && (sprite_index = spr_kingstalker_idle_left)
	{
		image_index = 0
		State_machine_switch_state(kingstalker_turn);
		exit
	}
	else if (obj_player.x < self.x) && (sprite_index = spr_kingstalker_idle_right)
	{
		image_index = 0
		State_machine_switch_state(kingstalker_turn);
		exit
	}

	shinetimer += random_range(((1/room_speed)/1),((1/room_speed)/2.5))
	energytimer += random_range(((1/room_speed)/1),((1/room_speed)/2.5))
	jumptimer += random_range(((1/room_speed)/1),((1/room_speed)/2.5))

	if (obj_player.x < self.x) && (sprite_index = spr_kingstalker_idle_left) && (shinetimer >= 1)
	{
		image_index = 0
		shinetimer = 0
		spintimer = 0
		energytimer = 0;
		jumptimer = 0;
		State_machine_switch_state(kingstalker_flame)
		exit
	}
	else if (obj_player.x > self.x) && (sprite_index = spr_kingstalker_idle_right) && (shinetimer >= 1)
	{
		image_index = 0
		shinetimer = 0
		spintimer = 0
		energytimer = 0;
		jumptimer = 0;
		State_machine_switch_state(kingstalker_flame)
		exit
	}
	
	if (facing = -1) && (sprite_index = spr_kingstalker_idle_left) && (energytimer >= 1) && (obj_player.x < self.x)
	{
		image_index = 0
		shinetimer = 0
		spintimer = 0
		energytimer = 0;
		jumptimer = 0;
		State_machine_switch_state(kingstalker_roll)
		exit
	}
	else if (facing = 1) && (sprite_index = spr_kingstalker_idle_right) && (energytimer >= 1) && (obj_player.x > self.x)
	{
		image_index = 0
		shinetimer = 0
		spintimer = 0
		energytimer = 0;
		jumptimer = 0;
		State_machine_switch_state(kingstalker_roll)
		exit
	}


	if (obj_player.x < self.x) && (sprite_index = spr_kingstalker_idle_left) && (place_meeting(x+(facing*40),y,obj_player))
	{
		image_index = 0
		spintimer = 0
		shinetimer = 0
		energytimer = 0;
		jumptimer = 0;
		State_machine_switch_state(kingstalker_bite)
		exit
	}
	else if (obj_player.x > self.x) && (sprite_index = spr_kingstalker_idle_right) && (place_meeting(x+(facing*60),y,obj_player))
	{
		image_index = 0
		spintimer = 0
		shinetimer = 0
		energytimer = 0;
		jumptimer = 0;
		State_machine_switch_state(kingstalker_bite)
		exit
	}
	
	
	//bounce
	if (obj_player.x < self.x) && (sprite_index = spr_kingstalker_idle_left) && (jumptimer >= 1)
	{
		image_index = 0
		spintimer = 0
		shinetimer = 0
		energytimer = 0;
		jumptimer = 0;
		State_machine_switch_state(kingstalker_jump)
		exit
	}
	else if (obj_player.x > self.x) && (sprite_index = spr_kingstalker_idle_right) && (jumptimer >= 1)
	{
		image_index = 0
		spintimer = 0
		shinetimer = 0
		energytimer = 0;
		jumptimer = 0;
		State_machine_switch_state(kingstalker_jump)
		exit
	}

}
