function eyebot_idleanim() {
	idleanim_walktimer -= random_range((1/room_speed),(1/room_speed)/4)

	//shoot
	if (collision_circle(id.x,id.y,120,obj_player,false,false)) && (timer2shoot <= 0) && (global.invisibility = 0) && (place_meeting(x,y,obj_camera))
	{
		idleanim_walktimer = 0
		State_machine_switch_state(eyebot_charging)
		exit
	}

	//get out of running state
	if (sprite_index = spr_eyebot_idle_left) && ((global.invisibility = 1) or (position_meeting(inst2.x+(facing*8),inst2.y,obj_block)) or (idleanim_walktimer <= 0))
		{
			idleanim_walktimer = 0
			State_machine_switch_state(eyebot_idle);
			exit;
		}
	else if (sprite_index = spr_eyebot_idle_right) && ((global.invisibility = 1) or (position_meeting(inst2.x+(facing*8),inst2.y,obj_block)) or (idleanim_walktimer <= 0))
		{
			idleanim_walktimer = 0
			State_machine_switch_state(eyebot_idle);
			exit;
		}
	
	if (idleanim_walktimer > 0) && (!place_meeting(inst2.x+(facing*8),inst2.y,obj_block))
	{
		if (sprite_index = spr_eyebot_idle_left)
		{
			with(inst2)
			{
				x--
			}
		}
		else if (sprite_index = spr_eyebot_idle_right)
		{
			with(inst2)
			{
				x++
			}
		}
	}

	//turning
	if (obj_player.x > self.x) && (sprite_index = spr_eyebot_idle_left) && (global.invisibility = 0) && (collision_circle(id.x,id.y,120,obj_player,false,false))
	{
		State_machine_switch_state(eyebot_turning);
	}
	else if (obj_player.x < self.x) && (sprite_index = spr_eyebot_idle_right) && (global.invisibility = 0) && (collision_circle(id.x,id.y,120,obj_player,false,false))
	{
		State_machine_switch_state(eyebot_turning);
	}


}
