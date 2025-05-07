function firebug_idle() {
	//TURNING
	if (obj_player.x > self.x) && (facing = -1)&& (global.invisibility = 0) && (player_inrange_walk > -1)
		{
			State_machine_switch_state(firebug_turn);
			sprite_index = spr_firebug_turn_l2r
			image_index = 0
			hspd = 0
			exit;
		}
	else if (obj_player.x < self.x) && (facing = 1) && (global.invisibility = 0) && (player_inrange_walk > -1)
		{
			State_machine_switch_state(firebug_turn);
			sprite_index = spr_firebug_turn_r2l
			image_index = 0
			hspd = 0
			exit;
		}

	
	

	if (obj_player.x < self.x) && (facing = -1) && (global.invisibility = 0) && (player_inrange > -1)
		{
			image_index = 0
			sprite_index = spr_firebug_shoot_left;
			State_machine_switch_state(firebug_shoot)
			exit
		}
	else if (obj_player.x > self.x) && (facing = 1) && (global.invisibility = 0) && (player_inrange > -1)
		{
			image_index = 0
			sprite_index = spr_firebug_shoot_right;
			State_machine_switch_state(firebug_shoot)
			exit
		}

	
	//WALKING
	if (obj_player.x < self.x) && (facing = -1) && (global.invisibility = 0) && (player_inrange_walk > -1)
		{
			image_index = 0
			sprite_index = spr_firebug_walk_left;
			State_machine_switch_state(firebug_walk)
			exit
		}
	else if (obj_player.x > self.x) && (facing = 1) && (global.invisibility = 0) && (player_inrange_walk > -1)
		{
			image_index = 0
			sprite_index = spr_firebug_walk_right;
			State_machine_switch_state(firebug_walk)
			exit
		}


}
