function spikebot_idle() {
	if (obj_player.x > self.x) && (sprite_index = spr_spikebot_idle_left)&& (global.invisibility = 0)
		{
			State_machine_switch_state(spikebot_turn);
			sprite_index = spr_spikebot_turn_l2r
			image_index = 0
			hspd = 0
			exit;
		}
	else if (obj_player.x < self.x) && (sprite_index = spr_spikebot_idle_right) && (global.invisibility = 0)
		{
			State_machine_switch_state(spikebot_turn);
			sprite_index = spr_spikebot_turn_r2l
			image_index = 0
			hspd = 0
			exit;
		}
	
	
	//attacks
	if (obj_player.x < self.x) && (sprite_index = spr_spikebot_idle_left) && (global.invisibility = 0) 
	 && (attackclosego > 0)
		{
			image_index = 0
			sprite_index = spr_spikebot_punch_left;
			State_machine_switch_state(spikebot_punch)
			exit
		}
	else if (obj_player.x > self.x) && (sprite_index = spr_spikebot_idle_right) && (global.invisibility = 0)
	 && (attackclosego > 0)
		{
			image_index = 0
			sprite_index = spr_spikebot_punch_right;
			State_machine_switch_state(spikebot_punch)
			exit
		}
	
	if (obj_player.x < self.x) && (sprite_index = spr_spikebot_idle_left) && (global.invisibility = 0) 
	 && (attackclosego <= 0) && (attackrangego > 0) && (attackrangego2 <= 0)
		{
			image_index = 0
			sprite_index = spr_spikebot_spikearmlaunch_left;
			State_machine_switch_state(spikebot_superpunch)
			exit
		}
	else if (obj_player.x > self.x) && (sprite_index = spr_spikebot_idle_right) && (global.invisibility = 0)
	 && (attackclosego <= 0) && (attackrangego > 0) && (attackrangego2 <= 0)
		{
			image_index = 0
			sprite_index = spr_spikebot_spikearmlaunch_right;
			State_machine_switch_state(spikebot_superpunch)
			exit
		}
	
	if (obj_player.x < self.x) && (sprite_index = spr_spikebot_idle_left) && (global.invisibility = 0) 
	 && (attackclosego <= 0) && (attackrangego2 > 0)
		{
			image_index = 0
			sprite_index = spr_spikebot_shoot_left;
			State_machine_switch_state(spikebot_shoot)
			exit
		}
	else if (obj_player.x > self.x) && (sprite_index = spr_spikebot_idle_right) && (global.invisibility = 0)
	 && (attackclosego <= 0) && (attackrangego2 > 0)
		{
			image_index = 0
			sprite_index = spr_spikebot_shoot_right;
			State_machine_switch_state(spikebot_shoot)
			exit
		}


}
