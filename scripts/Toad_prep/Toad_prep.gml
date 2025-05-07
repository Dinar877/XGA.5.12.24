function Toad_prep() {
	//turn if wrong facing direction from player
	if (obj_player.x < self.x) && (sprite_index = spr_enemy_toad_dash_left) && (global.invisibility = 0)
		{
			sprite_index = spr_enemy_toad_standleft;
			State_machine_switch_state(Toad_stand);
			exit;
		}
	else if (obj_player.x > self.x) && (sprite_index = spr_enemy_toad_dash_right) && (global.invisibility = 0)
		{
			sprite_index = spr_enemy_toad_standright;
			State_machine_switch_state(Toad_stand);
			exit;
		}

	if (obj_player.x > self.x) && (sprite_index = spr_enemy_toad_dash_left) && (global.invisibility = 0)
		{
			sprite_index = spr_enemy_toad_standleft;
			State_machine_switch_state(Toad_turning);
			exit;
		}
	else if (obj_player.x < self.x) && (sprite_index = spr_enemy_toad_dash_right) && (global.invisibility = 0)
		{
			sprite_index = spr_enemy_toad_standright;
			State_machine_switch_state(Toad_turning);
			exit;
		}


	//stand to prep animation
	if (sprite_index = spr_enemy_toad_standleft)
		{
			sprite_index = spr_enemy_toad_prepleft_normal
			image_index = 0
		}
	else if (sprite_index = spr_enemy_toad_standright)
		{
			sprite_index = spr_enemy_toad_prepright_normal
			image_index = 0
		}
	
	//prep to run state change
	if (sprite_index = spr_enemy_toad_prepleft_normal) && (image_index >= image_number-1)
		{
			sprite_index = spr_enemy_toad_dash_left
			image_index = 0
			State_machine_switch_state(Toad_run)
		}
	else if (sprite_index = spr_enemy_toad_prepright_normal) && (image_index >= image_number-1)
		{
			sprite_index = spr_enemy_toad_dash_right
			image_index = 0
			State_machine_switch_state(Toad_run)
		}


}
