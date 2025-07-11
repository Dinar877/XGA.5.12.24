function white_soldier_walk() {
	//get out of running state
	if (sprite_index = spr_white_soldier_walk_left) && ((global.invisibility = 1) or (inst2.inst_collision <= 0)
	or (position_meeting(inst2.x+(facing*8),inst2.y,obj_block)) or (inst2.inst_collision2 > 0) or (inst2.inst_blockfree > 0) or (idleanim_walktimer <= 0))
		{
			sprite_index = spr_white_soldier_stand_left;
			idleanim_walktimer = 0
			State_machine_switch_state(white_soldier_stand);
			exit;
		}
	else if (sprite_index = spr_white_soldier_walk_right) && ((global.invisibility = 1) or (inst2.inst_collision <= 0)
	or (position_meeting(inst2.x+(facing*8),inst2.y,obj_block)) or (inst2.inst_collision2 > 0) or (inst2.inst_blockfree > 0) or (idleanim_walktimer <= 0))
		{
			sprite_index = spr_white_soldier_stand_right;
			idleanim_walktimer = 0
			State_machine_switch_state(white_soldier_stand);
			exit;
		}
	
	idleanim_walktimer -= random_range((1/room_speed),(1/room_speed)/4)
	
	//actual running code
	if (sprite_index = spr_white_soldier_walk_left) && (global.invisibility = 0)
		{
			with(inst2)
				{
					hspd = -1/4;
					DetermineMoveScript(hspd);
				}
		}
	else if (sprite_index = spr_white_soldier_walk_right) && (global.invisibility = 0)
		{
			with(inst2)
				{
					hspd = 1/4;
					DetermineMoveScript(hspd);
				}
		}


}
