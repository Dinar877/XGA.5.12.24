function Toad_walk() {
	
	//test
	with(inst2)
	{
		//get correct hspd for collision checks
		if (inst.sprite_index = spr_enemy_toad_walkleft)
		{
			hspd = -1;
		}
		else if (inst.sprite_index = spr_enemy_toad_walkright)
		{
			hspd = 1;
		}
		
		var blockInFront = (place_meeting(x+hspd,y,obj_block));
		var notOnSlope = (!place_meeting(x,y+2,obj_slope1_left)) 
		&& (!place_meeting(x,y+2,obj_slope1_right)) 
		&& (!place_meeting(x,y+2,obj_newslope_left))
		&& (!place_meeting(x,y+2,obj_newslope_right))
		var notOnBlock = (!place_meeting(x,y+2,obj_block))
		var almostAtBlockEdgeRight = (position_meeting(bbox_right-1,bbox_bottom+1,obj_block)) 
		&& (!position_meeting(bbox_right-2,bbox_bottom+1,obj_block)) && (notOnSlope) && (facing = -1)
		var almostAtBlockEdgeLeft = (position_meeting(bbox_left+1,bbox_bottom+1,obj_block))
		&& (!position_meeting(bbox_left+2,bbox_bottom+1,obj_block)) && (notOnSlope) && (facing = 1)
	
		//get out of running state
		if (inst.idleanim_walktimer <= 0 )
		or ((blockInFront) && (notOnSlope))
		or (almostAtBlockEdgeLeft) 
		or (almostAtBlockEdgeRight)
		{
			if (inst.sprite_index = spr_enemy_toad_walkleft)
			{
				with(inst)
				{
					sprite_index = spr_enemy_toad_standleft;
					idleanim_walktimer = 0
					State_machine_switch_state(Toad_stand);
					exit;
				}
			}
			else if (inst.sprite_index = spr_enemy_toad_walkright) 
			{
				with(inst)
				{
					sprite_index = spr_enemy_toad_standright;
					idleanim_walktimer = 0
					State_machine_switch_state(Toad_stand);
					exit;
				}
			}
		}
	}
	
	idleanim_walktimer -= random_range((1/room_speed),(1/room_speed)/4)
	
	//actual running code
	if (sprite_index = spr_enemy_toad_walkleft)
		{
			with(inst2)
				{
					hspd = -1
					Moving_slow_left_biggerthan1()
				}
		}
	else if (sprite_index = spr_enemy_toad_walkright)
		{
			with(inst2)
				{
					hspd = 1
					Moving_slow_right_biggerthan1()
				}
		}


}
