function stalker_idle_idlewalk() {
	if (inst_player <= 0)
	{
			idlewait -= 1;
	
			with(inst2)
				{
					if (place_meeting(x+other.facing,y,obj_block))
					{
						with(other)
						{
							State_machine_switch_state(stalker_turning_idlewalk);	
						}
					}
				}
		
		var player_collision = collision_rectangle(x+50,y,x-50,y,obj_player,false,true)
		var player_collision2 = collision_circle(x,y,150,obj_player,false,true)
	
		if (obj_player.x < self.x) && (sprite_index = spr_stalker_idleL) && (player_collision2 <= 0)
			{
				sprite_index = spr_stalker_idleL;
				State_machine_switch_state(stalker_idle);
				exit;
			}
		else if (obj_player.x > self.x) && (sprite_index = spr_stalker_idleR) && (player_collision2 <= 0)
			{
				sprite_index = spr_stalker_idleR;
				State_machine_switch_state(stalker_idle);
				exit;
			}

		if (sprite_index = spr_stalker_idleL) && (global.invisibility = 0) && (player_collision)
			{
				State_machine_switch_state(stalker_bite);
				exit;
			}
		else if (sprite_index = spr_stalker_idleR) && (global.invisibility = 0) && (player_collision)
			{
				State_machine_switch_state(stalker_bite);
				exit;
			}

		if (sprite_index = spr_stalker_idleL) && (global.invisibility = 0) && (idlewalk > 0) && (idlewait <= 0)
			{
				State_machine_switch_state(stalker_turning_idlewalk);
			}
		else if (sprite_index = spr_stalker_idleR) && (global.invisibility = 0) && (idlewalk < 0) && (idlewait <= 0)
			{
				State_machine_switch_state(stalker_turning_idlewalk);
			}


		if (sprite_index = spr_stalker_idleL) && (global.invisibility = 0) && (idlewalk < 0) && (idlewait <= 0)
			{
				State_machine_switch_state(stalker_walking_idlewalk);
				sprite_index = spr_stalker_walkingL;
				idlewait = 200;
			}
		else if (sprite_index = spr_stalker_idleR) && (global.invisibility = 0) && (idlewalk > 0) && (idlewait <= 0)
			{
				State_machine_switch_state(stalker_walking_idlewalk);
				sprite_index = spr_stalker_walkingR;
				idlewait = 200;
			}
			
			
		
			
			
	}
	else State_machine_switch_state(stalker_idle)





}
