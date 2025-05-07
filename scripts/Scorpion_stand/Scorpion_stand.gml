function Scorpion_stand() {
	
	
	//strike
	if (collision_rectangle(id.x,id.y+20,id.x+(facing*50),id.y-20,obj_player,false,false)) && (global.invisibility = 0) && (place_meeting(x,y,obj_camera))
	{
		State_machine_switch_state(Scorpion_strike)
		image_index = 0
		
		if (facing = -1)
		{
			sprite_index = spr_scorpion_strike_left	
		}
		else if (facing = 1)
		{
			sprite_index = spr_scorpion_strike_right
		}
		
		exit
	}
	
	//shoot
	if (collision_rectangle(id.x,id.y+10,id.x+(facing*200),id.y-10,obj_player,false,false)) && (timer2shoot <= 0) && (global.invisibility = 0) && (place_meeting(x,y,obj_camera))
	{
		State_machine_switch_state(Scorpion_shoot)
		image_index = 0
		
		if (facing = -1)
		{
			sprite_index = spr_scorpion_shoot_left	
		}
		else if (facing = 1)
		{
			sprite_index = spr_scorpion_shoot_right
		}
		
		exit
	}

	if (timer2shoot > 0)
	{
		timer2shoot -= 0.02;
	}
	

	
	
	//turn if wrong facing direction from player
	if (obj_player.x > self.x) && (global.invisibility <= 0) && (sprite_index = spr_scorpion_stand_left) && (inst2.inst_circle > 0)
	{
		State_machine_switch_state(Scorpion_turning)
		image_index = 0
		exit;
	}
	else if (obj_player.x < self.x) && (global.invisibility <= 0) && (sprite_index = spr_scorpion_stand_right) && (inst2.inst_circle > 0)
	{
		State_machine_switch_state(Scorpion_turning)
		image_index = 0
		exit;
	}
	

	//idle walking animation
	idleanim_walktimer += random_range((1/room_speed),(1/room_speed)/4)

	if (idleanim_walktimer >= 1) && (inst2.inst_circle <= 0) && (enemy_hurt <= 0)
	&& (inst2.collision_othertoad <= 0)
	&& (inst2.inst_collision > 0)
	&& (inst2.blockInFront <= 0)
	{
		if (sprite_index = spr_scorpion_stand_left)
		{
			sprite_index = spr_scorpion_walk_left
		}
		else if (sprite_index = spr_scorpion_stand_right)
		{
			sprite_index = spr_scorpion_walk_right
		}
		State_machine_switch_state(Scorpion_walk)
		exit
	}

	//idle animation-random turning
	idleanim_turntimer += random_range((1/room_speed),(1/room_speed)/4)

	if (idleanim_turntimer >= 1)
	 && (inst2.inst_circle <= 0) && (enemy_hurt <= 0)
	{
		idleanim_turntimer = 0;
		image_index = 0
		State_machine_switch_state(Scorpion_turning)
		exit
	}


}
