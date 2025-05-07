function darkeater_undetected_idlewalk() {
	
	var inst_circle_detected = collision_rectangle(floor(x)+(100*facing),floor(y)-50,floor(x),floor(y)+5,obj_player,false,true)
	
	if ((inst_circle_detected > -1) && (global.invisibility <= 0) && (player_dir_notfree <= 0)) or (global.darkeater_active = 1)
	{
		global.darkeater_active = 1
		State_machine_switch_state(darkeater_idle)
		exit
	}
	
	state1 = darkeater_undetected_idlewalk


	//if player is higher
	if (pathYpos <= floor(y))
	{
		if (pathXpos > (x))
		{
			hspd = 0.25;
			Moving_slow_right_lessthan1()
			
			//code for pushing xga off blocks, so he'll run off them
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
		else if (pathXpos < (x))
		{
			hspd = -0.25;
			Moving_slow_left_lessthan1()
			
			//code for pushing xga off blocks, so he'll run off them
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
	
	
		//if next Y path point is higher
		if (pathYpos < floor(y))
		&& ((!collision_line(x,y,x,y-70,obj_block,false,true))
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
		
			State_machine_switch_state(darkeater_fall_idle)
			exit
		}
		else 
		{
			with(obj_darkeater_sprites)
			{
				if (other.facing = 1) && (other.turning = 0)
				{
					sprite_index = spr_darkeater_walk_right
					if (sprite_index = spr_darkeater_walk_right)
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
					sprite_index = spr_darkeater_walk_left
					if (sprite_index = spr_darkeater_walk_left)
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
			
		}
	}

	//fall down off flatform-target below
	if (pathYpos > floor(y))
	{
		if (pathXpos > (x))
		{
			hspd = 0.25;
			Moving_slow_right_lessthan1()
			
			//code for pushing xga off blocks, so he'll run off them
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
		else if (pathXpos < (x))
		{
			hspd = -0.25;
			Moving_slow_left_lessthan1()
			
			//code for pushing xga off blocks, so he'll run off them
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
	
		if (pathYpos > floor(y)) && (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+2,obj_slope1_left)) && (!place_meeting(x,y+2,obj_slope1_right))
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
		
			State_machine_switch_state(darkeater_fall_idle)
			exit;
		}
		
	}
	
	//fall off platform-target above
	if (pathYpos < floor(y)) && (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+2,obj_slope1_left)) && (!place_meeting(x,y+2,obj_slope1_right))
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
		
			State_machine_switch_state(darkeater_fall_idle)
			exit;
		}
	
	//if player is below
	if (pathYpos > floor(y))
	{
		if (pathXpos > (x))
		{
			hspd = 0.25;
			Moving_slow_right_lessthan1()
			
			//code for pushing xga off blocks, so he'll run off them
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
		else if (pathXpos < (x))
		{
			hspd = -0.25;
			Moving_slow_left_lessthan1()
			
			//code for pushing xga off blocks, so he'll run off them
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
		go = 1
		with(obj_darkeater_sprites)
			{
				if (other.facing = 1) && (other.turning = 0)
				{
					sprite_index = spr_darkeater_walk_right
					if (sprite_index = spr_darkeater_walk_right)
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
					sprite_index = spr_darkeater_walk_left
					if (sprite_index = spr_darkeater_walk_left)
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
	else if (!place_meeting(floor(x)+xadder2,floor(y),obj_slope1_right)) && (!place_meeting(floor(x)+xadder2,floor(y),obj_slope1_left))
	&& (!place_meeting(floor(x)+xadder2,floor(y),obj_newslope_right)) && (!place_meeting(floor(x)+xadder2,floor(y),obj_newslope_left))
	{
		with(obj_darkeater_sprites)
			{				
				if (other.facing = 1) && (other.turning = 0)
				{
					sprite_index = spr_darkeater_walk_right
					if (sprite_index = spr_darkeater_walk_right)
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
					sprite_index = spr_darkeater_walk_left
					if (sprite_index = spr_darkeater_walk_left)
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
	}

}
