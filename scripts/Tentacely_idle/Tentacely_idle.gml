function Tentacely_idle() {
	
	snd = 0
	
	//idle animations
	if (((inst2.inst_circle <= 0) && (global.invisibility = 0))
	or (global.invisibility = 1))
	{
		idleanim_walktimer += random_range((1/room_speed),(1/room_speed)/4);
		idleanim_turntimer += random_range((1/room_speed),(1/room_speed)/4);
	}
	
	
	
	//turning and walking
	if (obj_player.x > self.x) && ((sprite_index = spr_tentaclely_idle_left) or (sprite_index = spr_tentaclely_walk_left))
	&& (global.invisibility = 0) && (inst2.inst_circle > 0)
		{
			State_machine_switch_state(Tentacely_turning);
			hspd = 0
			idleanim_walktimer = 0
			idleanim_turntimer = 0
			
			exit;
		}
	else if (obj_player.x < self.x) && ((sprite_index = spr_tentaclely_idle_right) or (sprite_index = spr_tentaclely_walk_right))
	&& (global.invisibility = 0) && (inst2.inst_circle > 0)
		{
			State_machine_switch_state(Tentacely_turning);
			hspd = 0
			idleanim_walktimer = 0
			idleanim_turntimer = 0
			
			exit;
		}

	
	
	//walk
	if (idleanim_walktimer >= 1)
	&& (((inst2.inst_circle <= 0) && (global.invisibility = 0))
	or (global.invisibility = 1))
	&& (enemy_hurt <= 0) && (inst2.inst_blockfree <= 0)
	{
			if ((sprite_index = spr_tentaclely_idle_left) or (sprite_index = spr_tentaclely_walk_left))
			{
				sprite_index = spr_tentaclely_walk_left;
				with(inst2)
				{
					hspd = -1
					Moving_slow_left_biggerthan1()
				}
			}
			else if ((sprite_index = spr_tentaclely_idle_right) or (sprite_index = spr_tentaclely_walk_right))
			{
				sprite_index = spr_tentaclely_walk_right;
				with(inst2)
				{
					hspd = 1
					Moving_slow_right_biggerthan1()
				}
			}
			State_machine_switch_state(Tentacely_walk)
			exit
	}
	
	
	//idle turning
	if (idleanim_turntimer >= 1)
	&& (((inst2.inst_circle <= 0) && (global.invisibility = 0))
	or (global.invisibility = 1))
	&& (enemy_hurt <= 0)
	{
		idleanim_walktimer = 0
		idleanim_turntimer = 0
		
		State_machine_switch_state(Tentacely_turning)
		exit
	}
	
	//attacks
	if (obj_player.x < self.x) && ((sprite_index = spr_tentaclely_idle_left) or (sprite_index = spr_tentaclely_walk_left)) && (global.invisibility = 0) 
	 && (attackclosego > 0) && (inst2.inst_circle > 0)
		{
			sprite_index = spr_tentaclely_closeattack_left_prep;
			image_index = 0
			
			idleanim_walktimer = 0
			idleanim_turntimer = 0
			
			State_machine_switch_state(Tentacely_closeattack)
			exit
		}
	else if (obj_player.x > self.x) && ((sprite_index = spr_tentaclely_idle_right) or (sprite_index = spr_tentaclely_walk_right)) && (global.invisibility = 0)
	 && (attackclosego > 0) && (inst2.inst_circle > 0)
		{
			sprite_index = spr_tentaclely_closeattack_right_prep;
			image_index = 0
			
			idleanim_walktimer = 0
			idleanim_turntimer = 0
			
			State_machine_switch_state(Tentacely_closeattack)
			exit
		}
	
	if (obj_player.x < self.x) && ((sprite_index = spr_tentaclely_idle_left) or (sprite_index = spr_tentaclely_walk_left)) && (global.invisibility = 0) 
	 && (attackclosego <= 0) && (attackrangego > 0) && (inst2.inst_circle > 0)
		{
			sprite_index = spr_tentaclely_rangedattack_left;
			image_index = 0
			
			idleanim_walktimer = 0
			idleanim_turntimer = 0
			
			State_machine_switch_state(Tentacely_rangedattack)
			exit
		}
	else if (obj_player.x > self.x) && ((sprite_index = spr_tentaclely_idle_right) or (sprite_index = spr_tentaclely_walk_right)) && (global.invisibility = 0)
	 && (attackclosego <= 0) && (attackrangego > 0) && (inst2.inst_circle > 0)
		{
			sprite_index = spr_tentaclely_rangedattack_right;
			image_index = 0
			
			idleanim_walktimer = 0
			idleanim_turntimer = 0
			
			State_machine_switch_state(Tentacely_rangedattack)
			exit
		}
	



}
