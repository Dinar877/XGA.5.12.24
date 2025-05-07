function eyebot_idle() {
	if (obj_player.x > self.x) && (sprite_index = spr_eyebot_idle_left) && (global.invisibility = 0)
	{
		State_machine_switch_state(eyebot_turning);
	}
	else if (obj_player.x < self.x) && (sprite_index = spr_eyebot_idle_right) && (global.invisibility = 0)
	{
		State_machine_switch_state(eyebot_turning);
	}

	if (collision_circle(id.x,id.y,120,obj_player,false,false)) && (timer2shoot <= 0) && (global.invisibility = 0) && (place_meeting(x,y,obj_camera))
	{
		State_machine_switch_state(eyebot_charging)
	}
	else if (!collision_circle(id.x,id.y,120,obj_player,false,false)) && (timer2shoot <= 0) && (global.invisibility = 0)
	{
		State_machine_switch_state(eyebot_idleanim)
	}

	if (timer2shoot > 0)
	{
		timer2shoot -= 0.02;
	}

	//idle walking animation
	idleanim_walktimer += random_range((1/room_speed),(1/room_speed)/4)

	if (idleanim_walktimer >= 1) && (!collision_circle(id.x,id.y,120,obj_player,false,false)) && (timer2shoot <= 0) && (global.invisibility = 0)
	{
		State_machine_switch_state(eyebot_idleanim)
	}

	//idle animation-random turning
	idleanim_turntimer += random_range((1/room_speed),(1/room_speed)/4)

	if (idleanim_turntimer >= 1) && (!collision_circle(id.x,id.y,120,obj_player,false,false)) && (timer2shoot <= 0) && (global.invisibility = 0)
	 && (enemy_hurt <= 0)
	{
		idleanim_turntimer = 0
		State_machine_switch_state(eyebot_turning)
		exit
	}


}
