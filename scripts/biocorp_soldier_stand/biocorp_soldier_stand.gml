// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function biocorp_soldier_stand(){
	
	//shoot player
	if (obj_player.x < self.x) && (global.invisibility <= 0) && (sprite_index = spr_biocorp_soldier_stand_left) && (inst2.inst_circle > 0)
	{
		State_machine_switch_state(biocorp_soldier_shoot)
		sprite_index = spr_biocorp_soldier_shoot_left
		image_index = 0
		
		idleanim_walktimer = 0
		idleanim_turntimer = 0
		
		exit;
	}
	else if (obj_player.x > self.x) && (global.invisibility <= 0) && (sprite_index = spr_biocorp_soldier_stand_right) && (inst2.inst_circle > 0)
	{
		State_machine_switch_state(biocorp_soldier_shoot)
		sprite_index = spr_biocorp_soldier_shoot_right
		image_index = 0
		
		idleanim_walktimer = 0
		idleanim_turntimer = 0
		
		exit;
	}
	
	
	//turn if wrong facing direction from player
	if (obj_player.x > self.x) && (global.invisibility <= 0) && (sprite_index = spr_biocorp_soldier_stand_left) && (inst2.inst_circle > 0)
	{
		State_machine_switch_state(biocorp_soldier_turn)
		idleanim_walktimer = 0
		idleanim_turntimer = 0
		exit;
	}
	else if (obj_player.x < self.x) && (global.invisibility <= 0) && (sprite_index = spr_biocorp_soldier_stand_right) && (inst2.inst_circle > 0)
	{
		State_machine_switch_state(biocorp_soldier_turn)
		idleanim_walktimer = 0
		idleanim_turntimer = 0
		exit;
	}

	//idle walking animation
	idleanim_walktimer += random_range((1/room_speed),(1/room_speed)/4)

	if (idleanim_walktimer >= 1)
	 && (!position_meeting(inst2.x+(facing*8),inst2.y,obj_block)) && (inst2.inst_collision2 <= 0)
	 && (inst2.inst_circle <= 0) && (enemy_hurt <= 0) && (inst2.inst_blockfree <= 0)
	{
		if (sprite_index = spr_biocorp_soldier_stand_left)
		{
			sprite_index = spr_biocorp_soldier_walk_left
		}
		else if (sprite_index = spr_biocorp_soldier_stand_right)
		{
			sprite_index = spr_biocorp_soldier_walk_right
		}
		
		idleanim_turntimer = 0
		
		State_machine_switch_state(biocorp_soldier_walk)
		exit
	}

	//idle animation-random turning
	idleanim_turntimer += random_range((1/room_speed),(1/room_speed)/4)

	if (idleanim_turntimer >= 1)
	 && (inst2.inst_circle <= 0) && (enemy_hurt <= 0)
	{
		idleanim_walktimer = 0
		idleanim_turntimer = 0
		
		State_machine_switch_state(biocorp_soldier_turn)
		exit
	}

	

}