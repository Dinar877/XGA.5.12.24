function Toad_stand() {
	//turn if wrong facing direction from player
	if (obj_player.x > self.x) && (global.invisibility <= 0) && (sprite_index = spr_enemy_toad_standleft) 
	&& (inst2.inst_circle > 0)
	{
		State_machine_switch_state(Toad_turning)
		
		idleanim_turntimer = 0;
		idleanim_walktimer = 0;
		
		exit;
	}
	else if (obj_player.x < self.x) && (global.invisibility <= 0) && (sprite_index = spr_enemy_toad_standright) 
	&& (inst2.inst_circle > 0)
	{
		State_machine_switch_state(Toad_turning)
		
		idleanim_turntimer = 0;
		idleanim_walktimer = 0;
		
		exit;
	}

	//idle animation-random turning
	idleanim_turntimer += random_range((1/room_speed),(1/room_speed)/4)

	if (idleanim_turntimer >= 1)
	&& (global.invisibility <= 0) 
	&& ((inst2.inst_circle <= 0) 
	or ((inst2.inst_circle > 0) && (inst2.blockInFrontOfMe <= 0) && (inst2.inst_blockfree <= 0)))
	&& (enemy_hurt <= 0)
	{
		idleanim_turntimer = 0;
		idleanim_walktimer = 0;
		State_machine_switch_state(Toad_turning)
		exit
	}


	//normal stand to prep
	if (obj_player.x<self.x) && (global.invisibility <= 0) && (sprite_index = spr_enemy_toad_standleft) 
	&& (inst2.inst_collision > 0) && (!position_meeting(inst2.x+(facing*8),inst2.y,obj_block)) 
	&& (inst2.inst_collision2 <= 0) && ((inst2.inst_circle > -1) or (enemy_hurt > 0)) && (inst2.inst_blockfree <= 0)
	{
		idleanim_turntimer = 0;
		idleanim_walktimer = 0;
		State_machine_switch_state(Toad_prep)
		exit;
	}
	else if (obj_player.x>self.x) && (global.invisibility <= 0) && (sprite_index = spr_enemy_toad_standright) 
	&& (inst2.inst_collision > 0) && (!position_meeting(inst2.x+(facing*8),inst2.y,obj_block)) 
	&& (inst2.inst_collision2 <= 0) && ((inst2.inst_circle > -1) or (enemy_hurt > 0)) && (inst2.inst_blockfree <= 0)
	{
		idleanim_turntimer = 0;
		idleanim_walktimer = 0;
		State_machine_switch_state(Toad_prep)
		exit;
	}

	//idle walking animation
	idleanim_walktimer += random_range((1/room_speed),(1/room_speed)/4)

	if (idleanim_walktimer >= 1) 
	&& (!position_meeting(inst2.x+(facing*8),inst2.y,obj_block)) && (inst2.inst_collision2 <= 0)
	&& (enemy_hurt <= 0) && (inst2.inst_blockfree <= 0) && (inst2.collision_othertoad <= 0)
	{
		if (sprite_index = spr_enemy_toad_standleft)
		{
			sprite_index = spr_enemy_toad_walkleft
		}
		else if (sprite_index = spr_enemy_toad_standright)
		{
			sprite_index = spr_enemy_toad_walkright
		}
		
		idleanim_turntimer = 0;
		State_machine_switch_state(Toad_walk)
		exit
	}
}
