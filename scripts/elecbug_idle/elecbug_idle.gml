function elecbug_idle() {
	if (obj_player.x > self.x) && (facing = -1) && (global.invisibility = 0)
		{
			State_machine_switch_state(elecbug_turn);
			sprite_index = spr_elecbug_turn_l2r
			image_index = 0
			hspd = 0
			exit;
		}
	else if (obj_player.x < self.x) && (facing = 1) && (global.invisibility = 0)
		{
			State_machine_switch_state(elecbug_turn);
			sprite_index = spr_elecbug_turn_r2l
			image_index = 0
			hspd = 0
			exit;
		}
	
	

	if (obj_player.x < self.x) && (facing = -1) && (global.invisibility = 0) && (player_inrange > -1)
		{
			image_index = 0
			sprite_index = spr_elecbug_shock_left;
			State_machine_switch_state(elecbug_shoot)
			exit
		}
	else if (obj_player.x > self.x) && (facing = 1) && (global.invisibility = 0) && (player_inrange > -1)
		{
			image_index = 0
			sprite_index = spr_elecbug_shock_right;
			State_machine_switch_state(elecbug_shoot)
			exit
		}


}
