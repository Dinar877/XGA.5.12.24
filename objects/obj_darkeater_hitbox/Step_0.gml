/// @description Insert description here
// You can write your code in this editor
if (global.bossblockers[bossblockers.xga] > 0)
{
	instance_destroy()	
	
	with(obj_darkeater_sprites)
	{
		instance_destroy()	
	}
	
	exit
}



if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (global.loading = 1)
or (global.pause = 1)
or (global.pause_exit = 1)
or (global.boss_warning = 1)
or (global.room_transition = 1)
or (global.room_transition1 = 1)
or (global.room_transition_more = 1)
or (global.room_transition_nodoors = 1)
or (global.room_transition_nodoors_more = 1)
or (global.room_transition_nodoors_2 = 1)
or (global.cutscene_suit = 1)
or (!instance_exists(obj_player))
or (!instance_exists(obj_darkeater_sprites))
{
	image_speed = 0;
	if (instance_exists(obj_darkeater_sprites))
	{
		obj_darkeater_sprites.image_speed = 0
	}
	
	if (sndID > -1)
	{
		audio_pause_sound(sndID)
	}
	exit;	
}
else if (instance_exists(obj_darkeater_sprites))
{
	with(obj_darkeater_sprites)
	{
		if (hp <= 0)
		{
			image_speed = 0
			other.image_speed = 0
			
			if (other.sndID > -1)
			{
				audio_pause_sound(other.sndID)
			}
		}
		else if (hp > 0)
		{
			image_speed = 1;
			other.image_speed = 1
			
			if (other.sndID > -1)
			{
				audio_resume_sound(other.sndID)
			}	
		}
	}
}


if (audio_emitter_exists(global.inst_audio_emitterID[inst_n]))
{
	dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
	audio_emitter_gain(global.inst_audio_emitterID[inst_n], (40/dist) * global.sfx_volume)
}


//BOSS BATTLE INITIATE
if (room == rm_redtemple_finalboss) && (global.pierce_killswitch = 0)
{
	if (collision_circle(x,y,160,obj_player,false,true)) && (warning = 0) && (!instance_exists(obj_scrnDark_warning)) && (global.bossblockers[BossblockerID] <= 0)
	&& (obj_darkeater_sprites.hp > 0)
	{
		with(object_player2_0_sprites)
		{
			image_speed = 0;	
		}
		image_speed = 0;
		
		warning = 1;
		State_machine_switch_state(darkeater_idle)
		
	
		if ((audio_is_playing(global.sector_music)) > 0)
			{
				audio_stop_sound(global.sector_music)
			}
	
		instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui2"),obj_scrnDark_warning);
		
		global.boss_warning = 1;
		
		with(obj_camera)
		{
			dontmove = 1	
		}
		
		
		//corelock boss door shut
		if (instance_exists(obj_corelock_sideways))
		{
			with(obj_corelock_sideways)
			{
				switch1 = 1	
			}
		}
	}
}





////A* PATHFINDING
if (global.darkeater_active = 1)
{
	global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_player.x,obj_player.y,true)
	
	//audio
	if (!audio_is_playing(ost_xga_chasemusic)) && (global.pierce_killswitch == 0)
	{
		instance_destroy(obj_sndmaker_xga_hunting)
		audio_stop_sound(snd_xga_heartbeat)
		
		if (!instance_exists(obj_scrnDark_warning))
		&& (obj_darkeater_sprites.hp > 0)
		{
			//music stop
			if ((audio_is_playing(global.sector_music)) > 0)
			{
				audio_stop_sound(global.sector_music)
			}
			
			instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui2"),obj_scrnDark_warning);
			
			
			//image speed stop
			with(object_player2_0_sprites)
			{
				image_speed = 0;	
			}
			with(obj_camera)
			{
				dontmove = 1	
			}
			image_speed = 0;
		
		
			warning = 1;
			
			global.boss_warning = 1;
		}
	}
}
else if (global.darkeater_active = 0) && (doorID > 0)
{
	
	//make pathfinding locate door
	if (instance_exists(obj_door_normal_left)) && (doorID = obj_door_normal_left)
	{
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_left.x,obj_door_normal_left.y+door_height,true)
	}
	else if (instance_exists(obj_door_normal_leftAlt)) && (doorID = obj_door_normal_leftAlt)
	{
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_leftAlt.x,obj_door_normal_leftAlt.y+door_height,true)
	}
	else if (instance_exists(obj_door_normal_left_more)) && (doorID = obj_door_normal_left_more)
	{
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_left_more.x,obj_door_normal_left_more.y+door_height,true)
	}
	else if (instance_exists(obj_door_normal_right)) && (doorID = obj_door_normal_right)
	{
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_right.x,obj_door_normal_right.y+door_height,true)
	}
	else if (instance_exists(obj_door_normal_rightAlt)) && (doorID = obj_door_normal_rightAlt)
	{
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_rightAlt.x,obj_door_normal_rightAlt.y+door_height,true)
	}
	else if (instance_exists(obj_door_normal_right_more)) && (doorID = obj_door_normal_right_more)
	{
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_right_more.x,obj_door_normal_right_more.y+door_height,true)
	}
	else if (instance_exists(obj_door_border_left)) && (doorID = obj_door_border_left)///////////////////////////////////////////////////////////////////////////////////////////////////DOORLESS
	{
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_left.x,obj_door_border_left.y+doorborder_height,true)
	}
	else if (instance_exists(obj_door_border_left_2)) && (doorID = obj_door_border_left_2)
	{
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_left_2.x,obj_door_border_left_2.y+doorborder_height,true)
	}
	else if (instance_exists(obj_door_border_left_more)) && (doorID = obj_door_border_left_more)
	{
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_left_more.x,obj_door_border_left_more.y+doorborder_height,true)
	}
	else if (instance_exists(obj_door_border_right)) && (doorID = obj_door_border_right)
	{
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_right.x,obj_door_border_right.y+doorborder_height,true)
	}
	else if (instance_exists(obj_door_border_right_2)) && (doorID = obj_door_border_right_2)
	{
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_right_2.x,obj_door_border_right_2.y+doorborder_height,true)
	}
	else if (instance_exists(obj_door_border_right_more)) && (doorID = obj_door_border_right_more)
	{
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_right_more.x,obj_door_border_right_more.y+doorborder_height,true)
	}
	
	
	//destroy xga instance
	if (doorID_start > 0)
	{
		if (!place_meeting(x,y,doorID_start))
		{
			if (instance_exists(obj_door_normal_left)) && (place_meeting(x-6,y,obj_door_normal_left))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_normal_leftAlt)) && (place_meeting(x-6,y,obj_door_normal_leftAlt))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_normal_left_more)) && (place_meeting(x-6,y,obj_door_normal_left_more))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_normal_right)) && (place_meeting(x+6,y,obj_door_normal_right))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_normal_rightAlt)) && (place_meeting(x+6,y,obj_door_normal_rightAlt))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_normal_right_more)) && (place_meeting(x+6,y,obj_door_normal_right_more))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_border_left)) && (place_meeting(x,y,obj_door_border_left))//////////////////////////////////////////////////////////////////////////DOORLESS
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_border_left_2)) && (place_meeting(x,y,obj_door_border_left_2))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_border_left_more)) && (place_meeting(x,y,obj_door_border_left_more))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_border_right)) && (place_meeting(x,y,obj_door_border_right))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_border_right_2)) && (place_meeting(x,y,obj_door_border_right_2))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_border_right_more)) && (place_meeting(x,y,obj_door_border_right_more))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
		}
	}
	else if (doorID_start <= 0)
	{
		if (instance_exists(obj_door_normal_left)) && (place_meeting(x-6,y,obj_door_normal_left))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_normal_leftAlt)) && (place_meeting(x-6,y,obj_door_normal_leftAlt))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_normal_left_more)) && (place_meeting(x-6,y,obj_door_normal_left_more))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_normal_right)) && (place_meeting(x+6,y,obj_door_normal_right))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_normal_rightAlt)) && (place_meeting(x+6,y,obj_door_normal_rightAlt))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_normal_right_more)) && (place_meeting(x+6,y,obj_door_normal_right_more))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_border_left)) && (place_meeting(x,y,obj_door_border_left))//////////////////////////////////////////////////////////////////////////DOORLESS
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_border_left_2)) && (place_meeting(x,y,obj_door_border_left_2))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_border_left_more)) && (place_meeting(x,y,obj_door_border_left_more))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_border_right)) && (place_meeting(x,y,obj_door_border_right))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_border_right_2)) && (place_meeting(x,y,obj_door_border_right_2))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}
			else if (instance_exists(obj_door_border_right_more)) && (place_meeting(x,y,obj_door_border_right_more))
			{
				instance_destroy()
				audio_stop_sound(snd_xga_heartbeat)
				with(obj_darkeater_sprites)
				{
					instance_destroy()	
				}
				exit
			}	
	}
}

//have xga telkeport away if no path available
if (global.darkeater_pathgeneral <= 0) && (global.pierce_killswitch = 0)
{
	if (instance_exists(obj_darkeater_sprites))
	{
		with(obj_darkeater_sprites)
		{
			//begin teleporting sprites
			if (sprite_index != spr_darkeater_teleport_left_part1) && (other.facing = -1)
			{
				sprite_index = spr_darkeater_teleport_left_part1
				image_index = 0
				audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)
			}
			else if (sprite_index != spr_darkeater_teleport_right_part1) && (other.facing = 1)
			{
				sprite_index = spr_darkeater_teleport_right_part1
				image_index = 0
				audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)
			}
			
			//once animation is done, delete
			if (sprite_index == spr_darkeater_teleport_left_part1) && (other.facing = -1) && (image_index >= image_number-1)
			{
				instance_destroy()
				with(other)
				{
					instance_destroy()	
				}
				
				//end music & sfx
				audio_stop_sound(ost_xga_chasemusic)
				audio_stop_sound(snd_xga_heartbeat)
				audio_stop_sound(snd_swordswoosh)
				audio_stop_sound(snd_dash_spark)
				audio_stop_sound(snd_xga_amb1)
				audio_stop_sound(snd_xga_amb2)
				audio_stop_sound(snd_xga_amb3)
				audio_stop_sound(snd_xga_amb4)
				
				exit
			}
			else if (sprite_index == spr_darkeater_teleport_right_part1) && (other.facing = 1) && (image_index >= image_number-1)
			{
				instance_destroy()
				with(other)
				{
					instance_destroy()	
				}
				
				//end music & sfx
				audio_stop_sound(ost_xga_chasemusic)
				audio_stop_sound(snd_xga_heartbeat)
				audio_stop_sound(snd_swordswoosh)
				audio_stop_sound(snd_dash_spark)
				audio_stop_sound(snd_xga_amb1)
				audio_stop_sound(snd_xga_amb2)
				audio_stop_sound(snd_xga_amb3)
				audio_stop_sound(snd_xga_amb4)
				
				exit
			}
		}
	}
	
	exit
}


//PATH CO-ORDS
pathXpos = (path_get_point_x(global.darkeater_pathadd,1))
pathYpos = (path_get_point_y(global.darkeater_pathadd,1))

pathXpos_5 = path_get_point_x(global.darkeater_pathadd,5)
pathYpos_5 = path_get_point_y(global.darkeater_pathadd,5)

pathYpos2num = (path_get_number(global.darkeater_pathadd))-1
pathYpos2 = path_get_point_y(global.darkeater_pathadd,pathYpos2num)
pathXpos2 = path_get_point_x(global.darkeater_pathadd,pathYpos2num)












//variables
xadder2 = obj_player.x-x
yadder2 = obj_player.y-y
player_dir = point_direction(id.x+xadder,id.y+yadder,obj_player.x,obj_player.y)
player_dist = point_distance(id.x+xadder,id.y+yadder,obj_player.x,obj_player.y)







player_dir_notfree = (collision_line(x,y,obj_player.x,obj_player.y,obj_block2,false,true))
or (collision_line(x,y,obj_player.x,obj_player.y,obj_slope1_left,false,true))
or (collision_line(x,y,obj_player.x,obj_player.y,obj_slope1_right,false,true))

var player_dir_notfree_slope = (collision_line(x,y,obj_player.x,obj_player.y,obj_slope1_left,false,true))
or (collision_line(x,y,obj_player.x,obj_player.y,obj_slope1_right,false,true))


//there's a wall in front of you to the left + ground below you
turnaround_left = (collision_line(x,y,x-40,y,obj_block,false,true)) && (collision_line(x,bbox_bottom,x-40,bbox_bottom,obj_block,false,true)) && (collision_line(x,bbox_top,x-40,bbox_top,obj_block,false,true))
 && (!collision_line(x,y,x+80,y,obj_block,false,true)) && (place_meeting(x,y+sprite_height,obj_block)) && (!place_meeting(x,y-sprite_height,obj_block))
  && (player_dir_notfree > 0) && (pathXpos > x)

//there's a wall in front of you to the right + ground below you
turnaround_right = (collision_line(x,y,x+40,y,obj_block,false,true)) && (collision_line(x,bbox_bottom,x+40,bbox_bottom,obj_block,false,true)) && (collision_line(x,bbox_top,x+40,bbox_top,obj_block,false,true))
 && (!collision_line(x,y,x-80,y,obj_block,false,true)) && (place_meeting(x,y+sprite_height,obj_block)) && (!place_meeting(x,y-sprite_height,obj_block))
  && (player_dir_notfree > 0) && (pathXpos < x)
  
//there's a wall in front of you to the left + no ground below you + ceiling above you
turnaround_left_air = ((collision_line(x,y,x-40,y,obj_block,false,true)) && (collision_line(x,bbox_bottom,x-40,bbox_bottom,obj_block,false,true)) && (collision_line(x,bbox_top,x-40,bbox_top,obj_block,false,true)) && (collision_line(x,bbox_top,x-40,bbox_top-50,obj_block,false,true)))
&& (!collision_line(x,y,obj_player.x,y,obj_player,false,true))
 && (!place_meeting(x,y+sprite_height,obj_block)) && (place_meeting(x,y-sprite_height,obj_block))
  && (player_dir_notfree > 0) && (pathXpos > x)

//there's a wall in front of you to the right + no ground below you + ceiling above you
turnaround_right_air = ((collision_line(x,y,x+40,y,obj_block,false,true)) && (collision_line(x,bbox_bottom,x+40,bbox_bottom,obj_block,false,true)) && (collision_line(x,bbox_top,x+40,bbox_top,obj_block,false,true)) && (collision_line(x,bbox_top,x+40,bbox_top-50,obj_block,false,true)))
&& (!collision_line(x,y,obj_player.x,y,obj_player,false,true))
 && (!place_meeting(x,y+sprite_height,obj_block)) && (place_meeting(x,y-sprite_height,obj_block))
  && (player_dir_notfree > 0) && (pathXpos < x)
  






dropdown_right = ((!place_meeting(x+8,y+9,obj_block)) or (!place_meeting(x+24,y+9,obj_block)) or (!place_meeting(x+40,y+9,obj_block))
or (!place_meeting(x+56,y+9,obj_block)) or (!place_meeting(x+72,y+9,obj_block)))
&& (!place_meeting(x+8,y,obj_block)) && (place_meeting(x,y+sprite_height,obj_block)) && (!turnaround_left) && (!turnaround_right) && (pathXpos < x)

dropdown_left = ((!place_meeting(x-8,y+9,obj_block)) or (!place_meeting(x-24,y+9,obj_block))
or (!place_meeting(x-40,y+9,obj_block)) or (!place_meeting(x-56,y+9,obj_block)) or (!place_meeting(x-72,y+9,obj_block)))
&& (!place_meeting(x-8,y,obj_block)) && (place_meeting(x,y+sprite_height,obj_block)) && (!turnaround_left) && (!turnaround_right) && (pathXpos > x)



//stuck on ceiling
falldown = (player_dir_notfree > 0) && ((collision_line(x,y,x+(facing*40),y,obj_block,false,true)) or (collision_line(x,bbox_bottom,x+(facing*40),bbox_bottom,obj_block,false,true)) or (collision_line(x,bbox_top,x+(facing*40),bbox_top,obj_block,false,true))) && (collision_line(x,bbox_top,x+(facing*40),bbox_top-40,obj_block,false,true))
 && (place_meeting(x,y-20,obj_block)) && (!place_meeting(x,y+sprite_height,obj_block))

//floating up a wall
falldown_wall = (player_dir_notfree > 0) && ((pathYpos > y) or ((collision_line(x,y,obj_player.x,y,obj_player,false,true)) && (collision_line(x,y,obj_player.x,y,obj_block,false,true))))
&& ((collision_line(x,y,x+(facing*40),y,obj_block,false,true)) or (collision_line(x,bbox_bottom,x+(facing*40),bbox_bottom,obj_block,false,true)) or (collision_line(x,bbox_top,x+(facing*40),bbox_top,obj_block,false,true))) && (collision_line(x,bbox_top,x+(facing*40),bbox_top-40,obj_block,false,true))
 && (!place_meeting(x,y-sprite_height,obj_block)) && (!place_meeting(x,y+sprite_height,obj_block))

//player is below xga
falldown_any = (player_dir_notfree > 0) && ((pathYpos > y) or ((pathYpos2 < y) && (pathYpos < y) && (collision_line(x,bbox_top,x+(facing*40),bbox_top,obj_block,false,true)) && (!collision_line(x,bbox_bottom,x+(facing*40),bbox_bottom,obj_block,false,true))))


//stuck on wall and won't jump
jumpup = (player_dir_notfree > 0) && (pathYpos < y) && ((collision_line(x,y,x+(facing*40),y,obj_block,false,true)) or (collision_line(x,bbox_bottom,x+(facing*40),bbox_bottom,obj_block,false,true)) or (collision_line(x,bbox_top,x+(facing*40),bbox_top,obj_block,false,true)))
&& (collision_line(x,y,x+(-facing*sprite_height),y+sprite_height,obj_block,false,true)) && (collision_line(x,y,x+(facing*sprite_height),y+sprite_height,obj_block,false,true))
 && (!place_meeting(x,y-sprite_height,obj_block)) && (place_meeting(x,y+sprite_height,obj_block))

//stuck on wall and won't jump up high enough to get over- in the air with no ground below
jumpup_air = (player_dir_notfree > 0) && (pathYpos < y)  && (place_meeting(x+hspd,y,obj_block))
 && (!place_meeting(x,y-sprite_height,obj_block)) && (!place_meeting(x,y+sprite_height,obj_block))

//player is above xga
jumpup_any = (player_dir_notfree > 0) && (pathYpos < y) && (pathYpos2 < y)  && (!collision_line(x,y,obj_player.x,y,obj_player,false,true))
&& (falldown <= 0) && (falldown_any <= 0) && (turnaround_left <= 0) && (turnaround_right <= 0) && (turnaround_left_air <= 0) && (turnaround_right_air <= 0)



player_dir_notfreeX = (collision_line(x,y,obj_player.x,y,obj_block2,false,true)) or (collision_line(x,y,obj_player.x,y,obj_slope1_left,false,true)) or (collision_line(x,y,obj_player.x,y,obj_slope1_right,false,true))
player_dir_notfreeY = (collision_line(x,y,x,obj_player.y,obj_block2,false,true)) or (collision_line(x,y,x,obj_player.y,obj_slope1_left,false,true)) or (collision_line(x,y,x,obj_player.y,obj_slope1_right,false,true))


onground = place_meeting(x,y+2,obj_block) or place_meeting(x,y+2,obj_slope1_left) or place_meeting(x,y+2,obj_slope1_right) or place_meeting(x,y+2,obj_newslope_left) or place_meeting(x,y+2,obj_newslope_right)








//there's a wall in front of you to the left + ceiling and ground above and below you
turnaround_left_both = ((collision_line(x,y,x-40,y,obj_block,false,true)) && (collision_line(x,bbox_bottom,x-40,bbox_bottom,obj_block,false,true)) && (collision_line(x,bbox_top,x-40,bbox_top,obj_block,false,true)) && (collision_line(x,bbox_top,x-40,bbox_top-50,obj_block,false,true)))
&& (collision_line(x,y,x-40,y-20,obj_block,false,true)) && (collision_line(x,y,x-40,y-40,obj_block,false,true))
&& (collision_line(x,y,x-40,y+20,obj_block,false,true)) && (collision_line(x,y,x-40,y+40,obj_block,false,true))
 && (collision_line(x,y,x,y-120,obj_block,false,true)) && (place_meeting(x,y+sprite_height,obj_block)) && (place_meeting(x,y-sprite_height,obj_block))
  && (player_dir_notfree > 0) && (turnaround_left = 0) && (turnaround_left_air = 0) && (turnaround_right = 0) && (turnaround_right_air = 0)&& (jumpup <= 0) && (jumpup_air <= 0) && (falldown <= 0)

//there's a wall in front of you to the right + ceiling and ground above and below you
turnaround_right_both = ((collision_line(x,y,x+40,y,obj_block,false,true)) && (collision_line(x,bbox_bottom,x+40,bbox_bottom,obj_block,false,true)) && (collision_line(x,bbox_top,x+40,bbox_top,obj_block,false,true)) && (collision_line(x,bbox_top,x+40,bbox_top-50,obj_block,false,true)))
&& (collision_line(x,y,x+40,y-20,obj_block,false,true)) && (collision_line(x,y,x+40,y-40,obj_block,false,true))
&& (collision_line(x,y,x+40,y+20,obj_block,false,true)) && (collision_line(x,y,x+40,y+40,obj_block,false,true))
 && (collision_line(x,y,x,y-120,obj_block,false,true)) && (place_meeting(x,y+sprite_height,obj_block)) && (place_meeting(x,y-sprite_height,obj_block))
  && (player_dir_notfree > 0) && (turnaround_left = 0) && (turnaround_left_air = 0) && (turnaround_right = 0) && (turnaround_right_air = 0)&& (jumpup <= 0) && (jumpup_air <= 0) && (falldown <= 0)

var notblockbehind = (!place_meeting(x-hspd,y-2,obj_block))
var notblockbehindpart2 = (!place_meeting(x,y-2,obj_block))




//turning and facing
if (global.darkeater_active = 1) && (global.pierce_killswitch = 0)
{
	if (facing = -1) && (pathXpos > floor(x)) && (pathXpos_5 > floor(x))
	&& (turning <= 0) && (state != darkeater_fall) && ((state = darkeater_idle) or (state = darkeater_move))
				{
					turning = 1
					State_machine_switch_state(darkeater_turning_idlewalk)
				}
	else if (facing = 1) && (pathXpos < floor(x)) && (pathXpos_5 < floor(x))
	&& (turning <= 0) && (state != darkeater_fall) && ((state = darkeater_idle) or (state = darkeater_move))
				{
					turning = 1	
					State_machine_switch_state(darkeater_turning_idlewalk)
				}
			
	if (facing = -1) && (pathXpos > floor(x)) && (state = darkeater_fall) && (notblockbehind) && (notblockbehindpart2)
				{
					facing = 1	
				}
	else if (facing = 1) && (pathXpos < floor(x)) && (state = darkeater_fall) && (notblockbehind) && (notblockbehindpart2)
				{
					facing = -1	
				}
			
			
	if (turning > 0) && (state = darkeater_fall)
	{
		turning = 0
	}

	//changing facing direction in air
	if (state = darkeater_fall)
	{
		if (instance_exists(obj_darkeater_sprites))
		{
			with(obj_darkeater_sprites)
			{
				if (other.facing = 1)
				{
					sprite_index = spr_darkeater_spin_right
				}
				else if (other.facing = -1)
				{
					sprite_index = spr_darkeater_spin_left
				}
			
				if (sprite_index = spr_darkeater_spin_right) or (sprite_index = spr_darkeater_spin_left)
				{
					if (image_index >= image_number-1)
					{
						with(other)
						{
							sndID = snd_xga_jump
							audio_stop_sound(sndID)	
							audio_play_sound_on(global.inst_audio_emitterID[inst_n],sndID,false,100,global.sfx_volume)
						}
					}
				}
			}
		}
	}
}

//turning and facing-not detected
if (global.darkeater_active = 0) && (global.pierce_killswitch = 0)
{
	if (facing = -1) && (pathXpos > floor(x))
	&& (turning <= 0) && (state != darkeater_fall_idle)
				{
					turning = 1
					State_machine_switch_state(darkeater_turning_idlewalk)
				}
	else if (facing = 1) && (pathXpos < floor(x))
	&& (turning <= 0) && (state != darkeater_fall_idle)
				{
					turning = 1	
					State_machine_switch_state(darkeater_turning_idlewalk)
				}
			
	if (facing = -1) && (pathXpos > floor(x)) && (state = darkeater_fall_idle) && (notblockbehind) && (notblockbehindpart2)
				{
					facing = 1	
				}
	else if (facing = 1) && (pathXpos < floor(x)) && (state = darkeater_fall_idle) && (notblockbehind) && (notblockbehindpart2)
				{
					facing = -1	
				}
			
			
	if (turning > 0) && (state = darkeater_fall_idle)
	{
		turning = 0
	}

	//changing facing direction in air
	if (state = darkeater_fall_idle)
	{
		if (instance_exists(obj_darkeater_sprites))
		{
			with(obj_darkeater_sprites)
			{
				if (other.facing = 1)
				{
					sprite_index = spr_darkeater_spin_right
				}
				else if (other.facing = -1)
				{
					sprite_index = spr_darkeater_spin_left
				}
			
				if (sprite_index = spr_darkeater_spin_right) or (sprite_index = spr_darkeater_spin_left)
				{
					if (image_index >= image_number-1)
					{
						with(other)
						{
							sndID = snd_xga_jump
							audio_stop_sound(sndID)	
							audio_play_sound_on(global.inst_audio_emitterID[inst_n],sndID,false,100,global.sfx_volume)
						}
					}
				}
			}
		}
	}
}

//fail safe if inside collision block
//top
if (position_meeting(x,bbox_top-1,obj_block))
&& (!position_meeting(x,bbox_bottom+1,obj_block)) && (!place_meeting(x,y,obj_block2_nano))
	{
		while (position_meeting(x,id.bbox_top,obj_block)) && (!place_meeting(x,y,obj_block2_nano))
			{
				y ++;	
			}
	}

//bottom
if (position_meeting(x,bbox_bottom+1,obj_block))
&& (!position_meeting(x,bbox_top-1,obj_block)) && (!place_meeting(x,y,obj_block2_nano))
	{
		while (position_meeting(x,id.bbox_bottom,obj_block)) && (!place_meeting(x,y,obj_block2_nano))
			{
				y --;	
			}
	}
	
//left
if (position_meeting(bbox_left-1,y,obj_block))
&& (!position_meeting(bbox_right+1,y,obj_block)) && (!place_meeting(x,y,obj_block2_nano))
	{
		while (position_meeting(bbox_left,id.y,obj_block)) && (!place_meeting(x,y,obj_block2_nano))
			{
				x ++;	
			}
	}

//right
if (position_meeting(bbox_right+1,y,obj_block))
&& (!position_meeting(bbox_left-1,y,obj_block)) && (!place_meeting(x,y,obj_block2_nano))
	{
		while (position_meeting(bbox_right,id.y,obj_block)) && (!place_meeting(x,y,obj_block2_nano))
			{
				x --;	
			}
	}

//while loop collision code for blocks only
if (place_meeting(floor(x)+(hspd),floor(y)+(vspd),obj_block))
&& (!place_meeting(floor(x)+(hspd),floor(y)+(vspd),obj_slope1_right)) && (!place_meeting(floor(x)+(hspd),floor(y)+(vspd),obj_slope1_left))
&& (!place_meeting(floor(x)+(hspd),floor(y)+(vspd),obj_newslope_right)) && (!place_meeting(floor(x)+(hspd),floor(y)+(vspd),obj_newslope_left))
&& ((hspd != 0) or (vspd != 0))
	            {
					
					//if close to block-hspd and vspd
					while (!place_meeting(floor(x)+sign(hspd),floor(y)+sign(vspd),obj_block))
					&& (place_meeting(floor(x)+(hspd),floor(y)+(vspd),obj_block))
					&& (!place_meeting(floor(x),floor(y),obj_block))
					&& (!place_meeting(floor(x)+(hspd),floor(y)+(vspd),obj_slope1_right)) && (!place_meeting(floor(x)+(hspd),floor(y)+(vspd),obj_slope1_left))
					&& ((hspd != 0) or (vspd != 0))
	                {
	                    x = floor(x) + sign(hspd)
						y = floor(y) + sign(vspd)
	                }
					
					//if close to block-hspd
					while (!place_meeting(floor(x)+sign(hspd),floor(y),obj_block))
					&& (place_meeting(floor(x)+(hspd),floor(y),obj_block))
					&& (!place_meeting(floor(x),floor(y),obj_block))
					&& (!place_meeting(floor(x)+(hspd),floor(y),obj_slope1_right)) && (!place_meeting(floor(x)+(hspd),floor(y),obj_slope1_left))
					&& (hspd != 0)
	                {
	                    x = floor(x) + sign(hspd)
	                }
					
					//if close to block-vspd
					while (!place_meeting(floor(x),floor(y)+sign(vspd),obj_block))
					&& (place_meeting(floor(x),floor(y)+(vspd),obj_block))
					&& (!place_meeting(floor(x),floor(y),obj_block))
					&& (!place_meeting(floor(x),floor(y)+(vspd),obj_slope1_right)) && (!place_meeting(floor(x),floor(y)+(vspd),obj_slope1_left))
					&& (vspd != 0)
	                {
						y = floor(y) + sign(vspd)
	                }
					
					
					
				
					//if inside block
					while (place_meeting((x),(y),obj_block))
					&& (!place_meeting((x)+(hspd),(y)+(vspd),obj_slope1_right)) && (!place_meeting((x)+(hspd),(y)+round(vspd),obj_slope1_left))
					&& ((hspd != 0) && (vspd != 0))
	                {
	                    x = floor(x) - sign(hspd)
						y = floor(y) - sign(vspd)
	                }
	            
				}


	
//while loop collision code for blocks and slopes
if (state != darkeater_move)
{
	if ((place_meeting(x+hspd,y+(vspd),obj_slope1_left)) or (place_meeting(x+hspd,y+(vspd),obj_slope1_right))) && (place_meeting(x+hspd,y+(vspd),obj_block)) && ((hspd != 0) or (vspd != 0))
	&& (!place_meeting(x,y+1,obj_slope1_right)) && (!place_meeting(x,y+1,obj_slope1_left))
	&& (!place_meeting(x,y+2,obj_newslope_right)) && (!place_meeting(x,y+2,obj_newslope_left))
	{
		while ((!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left)) && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right))) && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_block))
		&& ((place_meeting(x+hspd,y+(vspd),obj_slope1_left)) or (place_meeting(x+hspd,y+(vspd),obj_slope1_right))) && (place_meeting(x+hspd,y+(vspd),obj_block)) && ((hspd != 0) or (vspd != 0))
		 && (!place_meeting(x,y+1,obj_slope1_right)) && (!place_meeting(x,y+1,obj_slope1_left))
		{
			x = floor(x) + sign(hspd)
			y = floor(y) + sign(vspd)
		}
	}

	if ((place_meeting(x,y+(vspd),obj_slope1_left)) or (place_meeting(x,y+(vspd),obj_slope1_right)) or (place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right)))
	&& (place_meeting(x,y+(vspd),obj_block)) && ((hspd != 0) or (vspd != 0))
	&& (!place_meeting(x,y+2,obj_newslope_right)) && (!place_meeting(x,y+2,obj_newslope_left))
	{
		while ((!place_meeting(x,y+sign(vspd),obj_slope1_left)) && (!place_meeting(x,y+sign(vspd),obj_slope1_right)))
		&& ((place_meeting(x,y+(vspd),obj_slope1_left)) or (place_meeting(x,y+(vspd),obj_slope1_right)) or (place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right)))
		&& (place_meeting(x,y+(vspd),obj_block)) && (vspd != 0)
		{
			y = floor(y)+ sign(vspd)
		}
	}
	
	if ((place_meeting(x+hspd,y,obj_slope1_left)) or (place_meeting(x+hspd,y,obj_slope1_right)) or (place_meeting(x+1,y,obj_slope1_left)) or (place_meeting(x-1,y,obj_slope1_right)))
	&& (place_meeting(x+hspd,y,obj_block)) && ((hspd != 0) or (vspd != 0))
	&& (!place_meeting(x,y+2,obj_newslope_right)) && (!place_meeting(x,y+2,obj_newslope_left))
	{
		while ((!place_meeting(x+sign(hspd),y,obj_slope1_left)) && (!place_meeting(x+sign(hspd),y,obj_slope1_right)))
		&& ((place_meeting(x+hspd,y,obj_slope1_left)) or (place_meeting(x+hspd,y,obj_slope1_right)) or (place_meeting(x+1,y,obj_slope1_left)) or (place_meeting(x-1,y,obj_slope1_right)))
		&& (place_meeting(x+hspd,y,obj_block)) && (hspd != 0)
		{
			x = floor(x) + sign(hspd)
		}
	}
}




	
//for inside left slope, with block below
while (position_meeting(bbox_right,bbox_bottom,obj_slope1_left))
&& (hspd != 0)
{
		y = y-0.5;
}


//for inside right slope, with block below
while (position_meeting(bbox_left,bbox_bottom,obj_slope1_right))
&& (hspd != 0)
{
	y = y-0.5;
}





if (hp > 0) && (warning > 0)
{
	State_machine_execute()	
}