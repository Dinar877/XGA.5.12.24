function stalker_idle() {

	if (obj_player.x > self.x) && (sprite_index = spr_stalker_idleL) && (global.invisibility = 0)
		{
			State_machine_switch_state(stalker_turning);
			exit;
		}
	else if (obj_player.x < self.x) && (sprite_index = spr_stalker_idleR) && (global.invisibility = 0)
		{
			State_machine_switch_state(stalker_turning);
			exit;
		}

	var player_collision = collision_rectangle(x+50,y,x-50,y,obj_player,false,true)
	var player_collision2 = collision_circle(x,y,150,obj_player,false,true)

	if (sprite_index = spr_stalker_idleL) && (global.invisibility = 0) && (player_collision)
		{
			State_machine_switch_state(stalker_bite);
			exit;
		}
	else if (sprite_index = spr_stalker_idleR) && (global.invisibility = 0) && (player_collision)
		{
			State_machine_switch_state(stalker_bite);
			exit;
		}

	if (obj_player.x < self.x) && (sprite_index = spr_stalker_idleL) && (global.invisibility = 0) && (player_collision2 > 0)
		{
			State_machine_switch_state(stalker_walking);
			sprite_index = spr_stalker_run_left;
			exit;
		}
	else if (obj_player.x > self.x) && (sprite_index = spr_stalker_idleR) && (global.invisibility = 0) && (player_collision2 > 0)
		{
			State_machine_switch_state(stalker_walking);
			sprite_index = spr_stalker_run_right;
			exit;
		}



}
