///DARK EATER FALL: THE CODE
function darkeater_fall() {
	
	state1 = darkeater_fall
	
	var inst_circle = collision_rectangle(x-60,y-55,x+60,y+5,obj_player,false,true)
	
	
	//jump again midair if no blocks above or in front
	if (pathYpos <= floor(y))
	&& ((!collision_line(floor(x),floor(y),floor(x),floor(y)-70,obj_block,false,true))
	or ((!collision_line(floor(x),floor(y),floor(x),floor(y)-32,obj_block,false,true)) && (place_meeting(x+(facing*1),y,obj_block))))
	&& (!place_meeting(x,y+1,obj_block)) 
	&& (!place_meeting(x,y+1,obj_slope1_left))
	&& (!place_meeting(x,y+1,obj_slope1_right))
	&& (!place_meeting(x,y+2,obj_newslope_left))
	&& (!place_meeting(x,y+2,obj_newslope_right))
	&& (((position_meeting(x+(facing*5),bbox_bottom,obj_block)) && (!position_meeting(x+(facing*5),bbox_top,obj_block)))
	or (!place_meeting(x+(facing*5),y,obj_block))
	or ((place_meeting(x+(facing*5),y,obj_block)) && (pathXpos_5 = floor(x))))
	{
		if (pathXpos > x) && (!place_meeting(floor(x)+hspd,floor(y),obj_block))
		{
			hspd = 3;
			x = floor(x) + hspd
		}
		else if (pathXpos < x) && (!place_meeting(floor(x)+hspd,floor(y),obj_block))
		{
			hspd = -3;
			x = floor(x) + hspd
		}
		
		if (!place_meeting(floor(x),floor(y)+vspd,obj_block))
		{
			vspd = -8;
			y = y + vspd
		}
		
		grav = 0
		jump_stopper0 = 1
		jump_stopper1 = 0
		State_machine_switch_state(darkeater_fall)
		exit;
	}
	else if ((place_meeting(x,y+1,obj_block)) or (place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right))
	or (place_meeting(x,y+2,obj_newslope_left)) or (place_meeting(x,y+2,obj_newslope_right)))
	//&& (pathYpos == 0)
	{
		vspd = 0
		grav = 0
		jump_stopper0 = 0
		jump_stopper1 = 0
		grav = 0
		
		with(obj_darkeater_sprites)
			{
				if (other.facing = 1)
				{
					image_index = 0
					sprite_index = spr_darkeater_idle_right
				}
				else if (other.facing = -1)
				{
					image_index = 0
					sprite_index = spr_darkeater_idle_left
				}
			}
		with(obj_darkeater_hitbox)
							{
								sndID = snd_beamexplosion
								audio_stop_sound(sndID)	
								audio_play_sound_on(global.inst_audio_emitterID[inst_n],sndID,false,1000, global.sfx_volume)	
							}
		
		
		State_machine_switch_state(darkeater_idle)
		exit;
	}



	if ((!place_meeting(x+round(hspd),y+round(vspd),obj_slope1_left)) && (!place_meeting(x+round(hspd),y+round(vspd),obj_slope1_right))
	&& (!place_meeting(x+round(hspd),y+round(vspd),obj_newslope_left))
	&& (!place_meeting(x+round(hspd),y+round(vspd),obj_newslope_right))) 
	or  (vspd >= 0)
	{
	    grav += 0.025;
	}

	if (vspd < 7) && (jump_stopper0 = 1)
	{
		vspd = vspd/2
		jump_stopper0 = 0
	}

	if (vspd < 7) && (vspd < 0)
	{
		vspd += grav;
	}

	if (vspd < 7) && (vspd >= 0) && (vspd < 1)
	{
		vspd += 1;
	}

	if (vspd < 7) && (vspd >= 1)
	{
		vspd += grav;
	}

	if (vspd > 7)
	{
		vspd = 7;
	}
	


	//horizontal
	if (speed_x < 3)
		    {
				speed_x += 0.5;
		    }
	else if (speed_x >= 3)
		    {
		        speed_x = 3;
		    }

	if (xadder >= 2) or (xadder <= -2) or ((facing = 1) or (dropdown_right))
	 or ((facing = -1) or (dropdown_left)) or ((runnow = 1) && (x != pathXpos))
	{
		hspd = floor(facing * speed_x)
	}
	else hspd = 0


	if (((place_meeting(x+facing,y+1,obj_block) && (place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y,obj_block))))
	or (place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right))
	or (place_meeting(x,y+2,obj_newslope_left)) or (place_meeting(x,y+2,obj_newslope_right)))
	&& (vspd > 0)// && (runnow <= 0)
	{
		jump_stopper0 = 0
		jump_stopper1 = 0
		grav = 0
		with(obj_darkeater_sprites)
			{
				if (other.facing = 1)
				{
					image_index = 0
					sprite_index = spr_darkeater_idle_right
				}
				else if (other.facing = -1)
				{
					image_index = 0
					sprite_index = spr_darkeater_idle_left
				}
			}
		with(obj_darkeater_hitbox)
							{
								sndID = snd_beamexplosion
								audio_stop_sound(sndID)	
								audio_play_sound_on(global.inst_audio_emitterID[inst_n],sndID,false,1000, global.sfx_volume)	
							}
		State_machine_switch_state(darkeater_idle)
		exit;
	}


	if (!place_meeting(x+(hspd),y+(vspd),obj_block))
	{
		y += vspd;
		x += hspd;
	}
	else if (!place_meeting(x,y+(vspd),obj_block))
	{
		y += vspd;
	}
	else if (!place_meeting(x+(hspd),y,obj_block))
	{
		x += hspd;
	}

	if (position_meeting(x,id.bbox_top-1,obj_block))
	{
		vspd = 0
		x = floor(x);
	}
	else
	{
		y = floor(y);
		x = floor(x);	
	}



}
