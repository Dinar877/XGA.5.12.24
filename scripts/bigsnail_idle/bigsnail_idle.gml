function bigsnail_idle() {
	
	if (obj_player.x > self.x) && (sprite_index = spr_bigsnail_left)
	{
		image_index = 0
		State_machine_switch_state(bigsnail_turn);
		exit
	}
	else if (obj_player.x < self.x) && (sprite_index = spr_bigsnail_right)
	{
		image_index = 0
		State_machine_switch_state(bigsnail_turn);
		exit
	}

	spintimer += random_range(((1/room_speed)/1),((1/room_speed)/2))
	shinetimer += random_range(((1/room_speed)/1),((1/room_speed)/2))
	
	if (facing = -1) && (sprite_index = spr_bigsnail_left) && (spintimer >= 1) && (obj_player.x < self.x)
	{
		image_index = 0
		shinetimer = 0
		spintimer = 0
		energytimer = 0;
		State_machine_switch_state(bigsnail_roll)
		exit
	}
	else if (facing = 1) && (sprite_index = spr_bigsnail_right) && (spintimer >= 1) && (obj_player.x > self.x)
	{
		image_index = 0
		shinetimer = 0
		spintimer = 0
		energytimer = 0;
		State_machine_switch_state(bigsnail_roll)
		exit
	}
	
	if (facing = -1) && (sprite_index = spr_bigsnail_left) && (shinetimer >= 1) && (obj_player.x < self.x)
	{
		image_index = 0
		shinetimer = 0
		spintimer = 0
		energytimer = 0;
		
		//get unstuck if we're stuck inside block
		with(obj_boss_bigsnail_hitbox)
		{
			y = floor(y)
				
			//get object 1 pixel above floor
			while (!position_meeting(x,bbox_bottom+1,obj_block))
			&& (!position_meeting(x,bbox_bottom+1,obj_slope1_left)) && (!position_meeting(x,bbox_bottom+1,obj_slope1_right))
			&& (!place_meeting(x,y+1,obj_block))
			&& (!place_meeting(x,y+1,obj_slope1_left))&& (!place_meeting(x,y+1,obj_slope1_right))
			{
				y = floor(y);
				y ++;	
			}
				
			//if stuck inside floor, move up
			while ((position_meeting(x,bbox_bottom,obj_block))
			or (position_meeting(x,bbox_bottom,obj_slope1_left)) or (position_meeting(x,bbox_bottom,obj_slope1_right))
			or (place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right)))
			{
				y = floor(y)
				y --;	
			}	
		}
		
		State_machine_switch_state(bigsnail_jump)
		exit
	}
	else if (facing = 1) && (sprite_index = spr_bigsnail_right) && (shinetimer >= 1) && (obj_player.x > self.x)
	{
		image_index = 0
		shinetimer = 0
		spintimer = 0
		energytimer = 0;
		
		//get unstuck if we're stuck inside block
		with(obj_boss_bigsnail_hitbox)
		{
			y = floor(y)
				
			//get object 1 pixel above floor
			while (!position_meeting(x,bbox_bottom+1,obj_block))
			&& (!position_meeting(x,bbox_bottom+1,obj_slope1_left)) && (!position_meeting(x,bbox_bottom+1,obj_slope1_right))
			&& (!place_meeting(x,y+1,obj_block))
			&& (!place_meeting(x,y+1,obj_slope1_left))&& (!place_meeting(x,y+1,obj_slope1_right))
			{
				y = floor(y);
				y ++;	
			}
				
			//if stuck inside floor, move up
			while ((position_meeting(x,bbox_bottom,obj_block))
			or (position_meeting(x,bbox_bottom,obj_slope1_left)) or (position_meeting(x,bbox_bottom,obj_slope1_right))
			or (place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right)))
			{
				y = floor(y)
				y --;	
			}	
		}
		
		State_machine_switch_state(bigsnail_jump)
		exit
	}


}
