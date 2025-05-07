function Tentacely_walk() {
	//get out of running state
	if (sprite_index = spr_tentaclely_walk_left) && ((inst2.inst_collision <= 0)
	or (inst2.inst_collision2 > 0) or (inst2.inst_blockfree > 0) or (idleanim_walktimer <= 0))
		{
			sprite_index = spr_tentaclely_idle_left;
			idleanim_walktimer = 0
			State_machine_switch_state(Tentacely_idle);
			exit;
		}
	else if (sprite_index = spr_tentaclely_walk_right) && ((inst2.inst_collision <= 0)
	or (inst2.inst_collision2 > 0) or (inst2.inst_blockfree > 0) or (idleanim_walktimer <= 0))
		{
			sprite_index = spr_tentaclely_idle_right;
			idleanim_walktimer = 0
			State_machine_switch_state(Tentacely_idle);
			exit;
		}
	
	idleanim_walktimer -= random_range((1/room_speed),(1/room_speed)/4)
	
	//actual running code
	if (sprite_index = spr_tentaclely_walk_left)
		{
			with(inst2)
				{
					hspd = -1
					DetermineMoveScript(hspd);
				}
		}
	else if (sprite_index = spr_tentaclely_walk_right)
		{
			with(inst2)
				{
					hspd = 1
					DetermineMoveScript(hspd);
				}
		}


}
