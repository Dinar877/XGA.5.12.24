function firebug_walk() {

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




	if (obj_player.x >= self.x) && (sprite_index = spr_firebug_walk_left) && (global.invisibility = 0)
		{
			sprite_index = spr_firebug_idle_left;
			State_machine_switch_state(firebug_idle);
			exit
		}
	else if (obj_player.x <= self.x) && (sprite_index = spr_firebug_walk_right) && (global.invisibility = 0)
		{
			sprite_index = spr_firebug_idle_right;
			State_machine_switch_state(firebug_idle);
			exit
		}
	
	if (obj_player.x < self.x) && (sprite_index = spr_firebug_walk_left) && (global.invisibility > 0)
		{
			sprite_index = spr_firebug_idle_left;
			State_machine_switch_state(firebug_idle);
			exit
		}
	else if (obj_player.x > self.x) && (sprite_index = spr_firebug_walk_right) && (global.invisibility > 0)
		{
			sprite_index = spr_firebug_idle_right;
			State_machine_switch_state(firebug_idle);
			exit
		}
	
	
	
	
	if (sprite_index = spr_firebug_walk_left) && (global.invisibility = 0)
		{
			with(instance_place(x,y,obj_enemy_firebug_hitbox))
			{
				hspd = -1/2;
				DetermineMoveScript(hspd);
			}
		}
	else if (sprite_index = spr_firebug_walk_right) && (global.invisibility = 0)
		{
			with(instance_place(x,y,obj_enemy_firebug_hitbox))
			{
				hspd = 1/2;
				DetermineMoveScript(hspd);
			}
		}




}
