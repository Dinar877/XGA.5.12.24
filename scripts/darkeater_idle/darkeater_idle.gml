function darkeater_idle() {
	
	state1 = darkeater_idle
	global.darkeater_active = 1
	
	var inst_pierce = collision_rectangle(x-55,y-16,x+55,y-9,obj_player,false,true);
	var inst_circle2 = collision_rectangle(x-100,y-55,x+100,y+5,obj_player,false,true);
	var inst_whip = collision_rectangle(x-100,y,x+100,y+3,obj_player,false,true);
	var onground = ((place_meeting(x,y+2,obj_block)) or(place_meeting(x,y+2,obj_slope2_left))  or (place_meeting(x,y+2,obj_slope2_right)) or (place_meeting(x,y+2,obj_newslope_left)) or (place_meeting(x,y+2,obj_newslope_right)));
	
	//decide on attack
	if (attack_state <= 0)
	{
		attack_state = (round(random_range(1,3)))	
		//attack_state = 1
	}

	//execute attack and change state
	if (inst_circle2 > -1) && (turning == 0)
	{
		if (inst_pierce > -1)
		{
			State_machine_switch_state(darkeater_pierce)
			exit	
		}
		else if (attack_state = 2)
		{
			State_machine_switch_state(darkeater_armburst)
			exit	
		}
		else if (attack_state = 3) && (inst_whip > -1)
		{
			State_machine_switch_state(darkeater_whip)
			exit	
		}
		else attack_state = 0;
	}



	//if player is higher
	if (pathYpos <= floor(y))
	{
		if (pathXpos > floor(x))
		{
			hspd = 3;
			Moving_slow_right_biggerthan1()
			
			//code for pushing xga off blocks, so he'll run off them and continue chasing the player
			//
			//if on top of block, about to move onto thin air
			if (!place_meeting(x+(facing*3),y,obj_block)) //no blocks to the side of us 
			&& (!position_meeting(bbox_left+(facing*3),bbox_bottom+1,obj_block))  //no block under us along our current path
			&& (place_meeting(x,y+1,obj_block)) //already standing on a block
			&& (!place_meeting(x-(facing*3),y,obj_slope1_left)) && (!place_meeting(x+(facing*3),y,obj_slope1_right)) //no slopes involved
			&& (!place_meeting(x+1,y,obj_slope1_left))
			&& (!place_meeting(x-1,y,obj_slope1_right))
			{
				//before object is standing only 1 pixel remaining on block's edge, move object closer.
				while (position_meeting(bbox_left+sign(facing),bbox_bottom+1,obj_block)) 
				&& (place_meeting(x,y+1,obj_block))
				{
					x += sign(facing);
				}
		
				//stop object at exactly 1 pixel remaining on block edge
				if (!position_meeting(bbox_left+sign(facing),bbox_bottom+1,obj_block)) && (position_meeting(bbox_left,bbox_bottom+1,obj_block))
				&& (place_meeting(x,y+1,obj_block))
				{
					x += (facing*3);	
				}
			}
		}
		else if (pathXpos < floor(x))
		{
			hspd = -3;
			Moving_slow_left_biggerthan1()
			
			//code for pushing xga off blocks, so he'll run off them and continue chasing the player
			//
			//if on top of block, about to move onto thin air
			if (!place_meeting(x+(facing*3),y,obj_block)) //no blocks to the side of us 
			&& (!position_meeting(bbox_right+(facing*3),bbox_bottom+1,obj_block))  //no block under us along our current path
			&& (place_meeting(x,y+1,obj_block)) //already standing on a block
			&& (!place_meeting(x-(facing*3),y,obj_slope1_left)) && (!place_meeting(x+(facing*3),y,obj_slope1_right)) //no slopes involved
			&& (!place_meeting(x+1,y,obj_slope1_left))
			&& (!place_meeting(x-1,y,obj_slope1_right))
			{
				//before object is standing only 1 pixel remaining on block's edge, move object closer.
				while (position_meeting(bbox_right+sign(facing),bbox_bottom+1,obj_block)) 
				&& (place_meeting(x,y+1,obj_block))
				{
					x += sign(facing);
				}
		
				//stop object at exactly 1 pixel remaining on block edge
				if (!position_meeting(bbox_right+sign(facing),bbox_bottom+1,obj_block)) && (position_meeting(bbox_right,bbox_bottom+1,obj_block))
				&& (place_meeting(x,y+1,obj_block))
				{
					x += (facing*3);	
				}
			}
		}
		
		
	
		
		//fall below
		if (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
		&& (!place_meeting(x,y-10,obj_block))
		&& (!place_meeting(x,y+2,obj_newslope_left))
		&& (!place_meeting(x,y+2,obj_newslope_right))
		{
			vspd = -8;
			jump_stopper0 = 1
			go = 0
	
			y += vspd
		
			with(obj_darkeater_sprites)
			{
				if (other.facing = 1)
				{
					image_index = 0
					sprite_index = spr_darkeater_spin_right
				}
				else if (other.facing = -1)
				{
					image_index = 0
					sprite_index = spr_darkeater_spin_left
				}
			}
		
			State_machine_switch_state(darkeater_fall)
			exit
		}
	
	
		//jump up against wall or slope
		if (pathYpos < floor(y))
		&& ((!collision_line(x,y,x,y-100,obj_block,false,true))
		or ((!collision_line(x,y,x,y-32,obj_block,false,true))
		&& ((place_meeting(x+facing,y,obj_block)) 
		or (place_meeting(x+facing,y,obj_slope1_left)) or (place_meeting(x+facing,y,obj_slope1_right))
		or (place_meeting(x+(facing*2),y,obj_newslope_left)) or (place_meeting(x+(facing*2),y,obj_newslope_right)))))
		{
			vspd = -8;
			jump_stopper0 = 1
			go = 0
	
			y += vspd
		
			with(obj_darkeater_sprites)
			{
				if (other.facing = 1)
				{
					image_index = 0
					sprite_index = spr_darkeater_spin_right
				}
				else if (other.facing = -1)
				{
					image_index = 0
					sprite_index = spr_darkeater_spin_left
				}
			}
		
			State_machine_switch_state(darkeater_fall)
			exit
		}
		else //running
		{
			with(obj_darkeater_sprites)
			{
				if (other.facing = 1) && (other.turning = 0)
				{
					sprite_index = spr_darkeater_run_right
					if (sprite_index = spr_darkeater_run_right)
					{
						if (round(image_index) == 8) or (round(image_index) == 0)
						{
							with(obj_camera)
							{
								if (yshake <= 0)
								{
									yshake = 2;
									yshakeno = 3;
								}
							}
							with(obj_darkeater_hitbox)
							{
								sndID = snd_beamexplosion
								audio_stop_sound(sndID)	
								audio_play_sound_on(global.inst_audio_emitterID[inst_n],sndID,false,1000, global.sfx_volume)	
							}
						}
					}
				}
				else if (other.facing = -1) && (other.turning = 0)
				{
					sprite_index = spr_darkeater_run_left
					if (sprite_index = spr_darkeater_run_left)
					{
						if (round(image_index) == 8) or (round(image_index) == 0)
						{
							with(obj_camera)
							{
								if (yshake <= 0)
								{
									yshake = 2;
									yshakeno = 3;
								}
							}
							with(obj_darkeater_hitbox)
							{
								sndID = snd_beamexplosion
								audio_stop_sound(sndID)	
								audio_play_sound_on(global.inst_audio_emitterID[inst_n],sndID,false,1000,global.sfx_volume)	
							}
						}
					}
				}
			}
			
		}
		exit;
	}

	//fall down off flatform
	if (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
	&& (!place_meeting(x,y+2,obj_newslope_left))
	&& (!place_meeting(x,y+2,obj_newslope_right))
	{
		if (pathXpos > floor(x))
		{
			hspd = 3;
			Moving_slow_right_biggerthan1()
			
			//code for pushing xga off blocks, so he'll run off them and continue chasing the player
			//
			//if on top of block, about to move onto thin air
			if (!place_meeting(x+(facing*3),y,obj_block)) //no blocks to the side of us 
			&& (!position_meeting(bbox_right+(facing*3),bbox_bottom+1,obj_block))  //no block under us along our current path
			&& (place_meeting(x,y+1,obj_block)) //already standing on a block
			&& (!place_meeting(x-(facing*3),y,obj_slope1_left)) && (!place_meeting(x+(facing*3),y,obj_slope1_right)) //no slopes involved
			&& (!place_meeting(x+1,y,obj_slope1_left))
			&& (!place_meeting(x-1,y,obj_slope1_right))
			{
				//before object is standing only 1 pixel remaining on block's edge, move object closer.
				while (position_meeting(bbox_right+sign(facing),bbox_bottom+1,obj_block)) 
				&& (place_meeting(x,y+1,obj_block))
				{
					x += sign(facing);
				}
		
				//stop object at exactly 1 pixel remaining on block edge
				if (!position_meeting(bbox_right+sign(facing),bbox_bottom+1,obj_block)) && (position_meeting(bbox_right,bbox_bottom+1,obj_block))
				&& (place_meeting(x,y+1,obj_block))
				{
					x += (facing*3);	
				}
			}
		}
		else if (pathXpos < floor(x))
		{
			hspd = -3;
			Moving_slow_left_biggerthan1()
			
			//code for pushing xga off blocks, so he'll run off them and continue chasing the player
			//
			//if on top of block, about to move onto thin air
			if (!place_meeting(x+(facing*3),y,obj_block)) //no blocks to the side of us 
			&& (!position_meeting(bbox_right+(facing*3),bbox_bottom+1,obj_block))  //no block under us along our current path
			&& (place_meeting(x,y+1,obj_block)) //already standing on a block
			&& (!place_meeting(x-(facing*3),y,obj_slope1_left)) && (!place_meeting(x+(facing*3),y,obj_slope1_right)) //no slopes involved
			&& (!place_meeting(x+1,y,obj_slope1_left))
			&& (!place_meeting(x-1,y,obj_slope1_right))
			{
				//before object is standing only 1 pixel remaining on block's edge, move object closer.
				while (position_meeting(bbox_right+sign(facing),bbox_bottom+1,obj_block)) 
				&& (place_meeting(x,y+1,obj_block))
				{
					x += sign(facing);
				}
		
				//stop object at exactly 1 pixel remaining on block edge
				if (!position_meeting(bbox_right+sign(facing),bbox_bottom+1,obj_block)) && (position_meeting(bbox_right,bbox_bottom+1,obj_block))
				&& (place_meeting(x,y+1,obj_block))
				{
					x += (facing*3);	
				}
			}
		}
	
		if (pathYpos > floor(y)) && (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
		&& (!place_meeting(x,y+2,obj_newslope_left))
		&& (!place_meeting(x,y+2,obj_newslope_right))
		{
			vspd = 7;
			jump_stopper0 = 1
			go = 0
	
			y += vspd
		
			with(obj_darkeater_sprites)
			{
				if (other.facing = 1)
				{
					image_index = 0
					sprite_index = spr_darkeater_spin_right
				}
				else if (other.facing = -1)
				{
					image_index = 0
					sprite_index = spr_darkeater_spin_left
				}
			}
		
			State_machine_switch_state(darkeater_fall)
		}
		exit;
	}

	//if player is below
	if (pathYpos > floor(y))
	{
		if (pathXpos > floor(x))
		{
			hspd = 3
			Moving_slow_right_biggerthan1()
			
			//code for pushing xga off blocks, so he'll run off them and continue chasing the player
			//
			//if on top of block, about to move onto thin air
			if (!place_meeting(x+(facing*3),y,obj_block)) //no blocks to the side of us 
			&& (!position_meeting(bbox_right+(facing*3),bbox_bottom+1,obj_block))  //no block under us along our current path
			&& (place_meeting(x,y+1,obj_block)) //already standing on a block
			&& (!place_meeting(x-(facing*3),y,obj_slope1_left)) && (!place_meeting(x+(facing*3),y,obj_slope1_right)) //no slopes involved
			&& (!place_meeting(x+1,y,obj_slope1_left))
			&& (!place_meeting(x-1,y,obj_slope1_right))
			{
				//before object is standing only 1 pixel remaining on block's edge, move object closer.
				while (position_meeting(bbox_right+sign(facing),bbox_bottom+1,obj_block)) 
				&& (place_meeting(x,y+1,obj_block))
				{
					x += sign(facing);
				}
		
				//stop object at exactly 1 pixel remaining on block edge
				if (!position_meeting(bbox_right+sign(facing),bbox_bottom+1,obj_block)) && (position_meeting(bbox_right,bbox_bottom+1,obj_block))
				&& (place_meeting(x,y+1,obj_block))
				{
					x += (facing*3);	
				}
			}
		}
		else if (pathXpos < floor(x))
		{
			hspd = -3
			Moving_slow_left_biggerthan1()
			
			//code for pushing xga off blocks, so he'll run off them and continue chasing the player
			//
			//if on top of block, about to move onto thin air
			if (!place_meeting(x+(facing*3),y,obj_block)) //no blocks to the side of us 
			&& (!position_meeting(bbox_right+(facing*3),bbox_bottom+1,obj_block))  //no block under us along our current path
			&& (place_meeting(x,y+1,obj_block)) //already standing on a block
			&& (!place_meeting(x-(facing*3),y,obj_slope1_left)) && (!place_meeting(x+(facing*3),y,obj_slope1_right)) //no slopes involved
			&& (!place_meeting(x+1,y,obj_slope1_left))
			&& (!place_meeting(x-1,y,obj_slope1_right))
			{
				//before object is standing only 1 pixel remaining on block's edge, move object closer.
				while (position_meeting(bbox_right+sign(facing),bbox_bottom+1,obj_block)) 
				&& (place_meeting(x,y+1,obj_block))
				{
					x += sign(facing);
				}
		
				//stop object at exactly 1 pixel remaining on block edge
				if (!position_meeting(bbox_right+sign(facing),bbox_bottom+1,obj_block)) && (position_meeting(bbox_right,bbox_bottom+1,obj_block))
				&& (place_meeting(x,y+1,obj_block))
				{
					x += (facing*3);	
				}
			}
		}
		
		//if not on anything, fall off
		if (pathYpos > floor(y)) && (!place_meeting(x+hspd,y+1,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
		&& (!place_meeting(x,y+2,obj_newslope_left))
		&& (!place_meeting(x,y+2,obj_newslope_right))
		{
			vspd = 7;
			jump_stopper0 = 1
			go = 0
	
			x += hspd
			y += vspd
		
			with(obj_darkeater_sprites)
			{
				if (other.facing = 1)
				{
					image_index = 0
					sprite_index = spr_darkeater_spin_right
				}
				else if (other.facing = -1)
				{
					image_index = 0
					sprite_index = spr_darkeater_spin_left
				}
			}
		
			State_machine_switch_state(darkeater_fall)
		}
		
		
		go = 1
		with(obj_darkeater_sprites)
			{
				if (other.facing = 1) && (other.turning = 0)
				{
					sprite_index = spr_darkeater_run_right
					if (sprite_index = spr_darkeater_run_right)
					{
						if (round(image_index) == 8) or (round(image_index) == 0)
						{
							with(obj_camera)
							{
								if (yshake <= 0)
								{
									yshake = 2;
									yshakeno = 3;
								}
							}
							with(obj_darkeater_hitbox)
							{
								sndID = snd_beamexplosion
								audio_stop_sound(sndID)	
								audio_play_sound_on(global.inst_audio_emitterID[inst_n],sndID,false,1000, global.sfx_volume)	
							}
						}
					}
				}
				else if (other.facing = -1) && (other.turning = 0)
				{
					sprite_index = spr_darkeater_run_left
					if (sprite_index = spr_darkeater_run_left)
					{
						if (round(image_index) == 8) or (round(image_index) == 0)
						{
							with(obj_camera)
							{
								if (yshake <= 0)
								{
									yshake = 2;
									yshakeno = 3;
								}
							}
							with(obj_darkeater_hitbox)
							{
								sndID = snd_beamexplosion
								audio_stop_sound(sndID)	
								audio_play_sound_on(global.inst_audio_emitterID[inst_n],sndID,false,1000, global.sfx_volume)	
							}
						}
					}
				}
			}
		exit;
	}
	else if (xadder = 0) && (runnow = 0) && (onground > 0) && (!place_meeting(x+xadder2,y,obj_slope1_right)) && (!place_meeting(x+xadder2,y,obj_slope1_left))
	 && (!place_meeting(x+xadder2,y,obj_newslope_right)) && (!place_meeting(x+xadder2,y,obj_newslope_left))
	{
		with(obj_darkeater_sprites)
			{
				if (other.facing = 1) && (other.turning = 0)
				{
					sprite_index = spr_darkeater_idle_right
				}
				else if (other.facing = -1) && (other.turning = 0)
				{
					sprite_index = spr_darkeater_idle_left
				}
			}	
	}


}
