/// @description Insert description here
// You can write your code in this editor

//despawn xga if in save room, or if XGA has spawned but left the room
if (instance_exists(obj_NEWsav_bottom))
or (instance_exists(obj_navigation_pillar1))
or (instance_exists(obj_elevator_bottom))
or ((doortype1 = 1) && (!instance_exists(obj_darkeater_hitbox)) && (global.darkeater_active = 0))
{
	if (audio_is_playing(ost_xga_chasemusic))
	{
		audio_stop_sound(ost_xga_chasemusic);
	}
	
	//remember previous music if any
	if (global.sector_music_xga > 0)
	{
		global.sector_music = global.sector_music_xga;
	}
	
	//get previous music based on what global.sector_music is
	RefMusicLoop()

	
	audio_stop_sound(snd_xga_heartbeat)
	
	global.darkeater_active = 0;
	
	instance_destroy();
	exit;
}

//despawn xga in final boss room
if (room = rm_redtemple_finalboss)
{
	if (audio_is_playing(ost_xga_chasemusic))
	{
		audio_stop_sound(ost_xga_chasemusic);
	}
	
	//remember previous music if any
	if (global.sector_music_xga > 0)
	{
		global.sector_music = global.sector_music_xga;
	}
	
	//get previous music based on what global.sector_music is
	RefMusicLoop()

	
	audio_stop_sound(snd_xga_heartbeat)
	
	global.darkeater_active = 0;
	
	instance_destroy();
	exit;
}

//do not spawn xga in any boss room unless already being chased
if (room = rm_sector1_bigsnail) or (room = rm_15_11_3) or (room = rm_sector1_cave_boss)
or (room = rm_S3_15_28) or (room = rm_sector2_boss_gorilla)
or (room = rm_S4_BOX_bossroom) or (room = rm_kingstalker_test1)
or (room = rm_sector4_robospider) or (room = rm_sector4_turtle)
&& (global.darkeater_active == 0)
{
	if (audio_is_playing(ost_xga_chasemusic))
	{
		audio_stop_sound(ost_xga_chasemusic);
	}
	
	audio_stop_sound(snd_xga_heartbeat)
	
	global.darkeater_active = 0;
	
	instance_destroy();
	exit;
}

//XGA is afraid of electricity. That's his one weakness.
if (instance_exists(obj_harmful_electricity_emitter_L)) or (instance_exists(obj_harmful_electricity_emitter_u))
{
	if (audio_is_playing(ost_xga_chasemusic))
	{
		audio_stop_sound(ost_xga_chasemusic);
	}
	
	//destroy all eye orbs if electricity present
	if (instance_exists(obj_detection_orb))
	{
		with(obj_detection_orb)
		{
			instance_destroy();
		}	
	}
	
	//remember previous music if any
	if (global.sector_music_xga > 0)
	{
		global.sector_music = global.sector_music_xga;
	}
	
	//get previous music based on what global.sector_music is
	RefMusicLoop()

	
	audio_stop_sound(snd_xga_heartbeat)
	
	global.darkeater_active = 0;
	
	instance_destroy();
	exit;
}

//doortype1 is for when we've already spawned xga once
if (doortype = 0) && (doortype1 = 0) 
{
	global.darkeater_y = global.mapgrid_playery+round(random_range(6,0))
	global.darkeater_x = global.mapgrid_playerx+round(random_range(6,0))
	//xga co ords
	difference_x = global.mapgrid_playerx-global.darkeater_x
	difference_y = global.mapgrid_playery-global.darkeater_y
	doortype = 1
}



//creepy ambience
if (snd_choose2_timer > 0) && (snd_choose2 > 0) && (doortype1 = 0)
{
	snd_choose2_timer -= 1/room_speed
}
else if (snd_choose2_timer <= 0) && (snd_choose2 > 0) && (doortype1 = 0)
{
	if (snd_choose2 == 6)
	{
		if (!audio_is_playing(snd_xga_amb1))	
		{
			var sndy = audio_play_sound(snd_xga_amb1,1000,false,global.sfx_volume)	
			audio_sound_pitch(sndy, snd_choose2_pitch)
		}
		else if (audio_is_playing(snd_xga_amb1))	
		{
			audio_stop_sound(snd_xga_amb1)
			var sndy = audio_play_sound(snd_xga_amb1,1000,false,global.sfx_volume)	
			audio_sound_pitch(sndy, snd_choose2_pitch)
		}
	
		snd_choose2 = 0
	}
	else if (snd_choose2 == 7)
	{
		if (!audio_is_playing(snd_xga_amb2))	
		{
			var sndy = audio_play_sound(snd_xga_amb2,1000,false,global.sfx_volume)	
			audio_sound_pitch(sndy, snd_choose2_pitch)
		}
		else if (audio_is_playing(snd_xga_amb2))	
		{
			audio_stop_sound(snd_xga_amb2)
			var sndy = audio_play_sound(snd_xga_amb2,1000,false,global.sfx_volume)	
			audio_sound_pitch(sndy, snd_choose2_pitch)
		}
	
		snd_choose2 = 0
	}
	else if (snd_choose2 == 8)
	{
		if (!audio_is_playing(snd_xga_amb3))	
		{
			var sndy = audio_play_sound(snd_xga_amb3,1000,false,global.sfx_volume)	
			audio_sound_pitch(sndy, snd_choose2_pitch)	
		}
		else if (audio_is_playing(snd_xga_amb3))	
		{
			audio_stop_sound(snd_xga_amb3)
			var sndy = audio_play_sound(snd_xga_amb3,1000,false,global.sfx_volume)	
			audio_sound_pitch(sndy, snd_choose2_pitch)
		}
	
		snd_choose2 = 0
	}
	else if (snd_choose2 == 5)
	{
		if (!audio_is_playing(snd_xga_amb4))	
		{
			var sndy = audio_play_sound(snd_xga_amb4,1000,false,global.sfx_volume)	
			audio_sound_pitch(sndy, snd_choose2_pitch)	
		}
		else if (audio_is_playing(snd_xga_amb4))	
		{
			audio_stop_sound(snd_xga_amb4)
			var sndy = audio_play_sound(snd_xga_amb4,1000,false,global.sfx_volume)	
			audio_sound_pitch(sndy, snd_choose2_pitch)
		}
	
		snd_choose2 = 0
	}
}

//create illusion of monster walking in other rooms
if (abs(difference_y) <= 2) && (abs(difference_y) > 0) && (global.darkeater_active = 0)
&& (doortype1 = 0)
&& (cancel_footsteps = 0)
{
	if (footstep_timer > 0)
	{
		if (footstep_alternator = 0) // 7 frames before next footstep
		{
			footstep_timer -= (2.25/60);
		}
		else if (footstep_alternator = 1) // 6 frames before next footstep
		{
			footstep_timer -= (2/60);
		}
	}
	else
	{
		footstep_total += round(random_range(-1, 1.3))
		footstep_volume = (footstep_total/50);
		footstep_timer = 1;
		
		if (footstep_alternator = 0)
		{
			footstep_alternator = 1;
		}
		else if (footstep_alternator = 1)
		{
			footstep_alternator = 0;
		}
		
		//play footstep sfx and visual screen shake
		if (!audio_is_playing(snd_beamexplosion1))
		{
			var sndy1 = audio_play_sound(snd_beamexplosion1, 1000, false, global.sfx_volume)
			audio_sound_gain(sndy1, footstep_volume * global.sfx_volume, 0)
			if (instance_exists(obj_camera))
			{
				with(obj_camera)
				{
					yshake = round(other.footstep_total/10)
					yshakeno = 2
				}
			}
		}
		else if (audio_is_playing(snd_beamexplosion1))
		{
			audio_stop_sound(snd_beamexplosion1)
			var sndy1 = audio_play_sound(snd_beamexplosion1, 1000, false, global.sfx_volume)
			audio_sound_gain(sndy1, footstep_volume * global.sfx_volume,0)
			if (instance_exists(obj_camera))
			{
				with(obj_camera)
				{
					yshake = round(other.footstep_total/10)
					yshakeno = 2
				}
			}
		}
		
		//decide whether to stop footsteps sfx
		var decider = round(random_range(0,100));
		if (decider == 100)
		{
			cancel_footsteps = 1;
		}
	}
	
	
}



//spawn xga timer
if (timer_xga < 1) && ((global.darkeater_active = 1) or ((footstep_total >= 10) && (spawn_xga_at_door != 0)))
&& (doortype1 = 0)
{
	timer_xga += random_range((1/room_speed),(0.5/room_speed))
}
else if (timer_xga < 1) && (spawn_xga_at_door = 0)
&& (doortype1 = 0)
{
	difference_y = 0;
	timer_xga = 1;
}


//always spawn xga
//difference_y = 0;
//timer_xga = 1;


//leading up to player // creating xga instance
if ((abs(difference_y) == 0) or (global.darkeater_active = 1) or (footstep_total >= 10))
&& (!instance_exists(obj_darkeater_hitbox)) && (timer_xga >= 1) && (doortype1 = 0)
&& (!instance_exists(obj_boss_bugspider_hitbox))
&& (!instance_exists(obj_boss_darklord_hitbox))
&& (!instance_exists(obj_boss_flowey))
&& (!instance_exists(obj_boss_gorilla_hitbox))
&& (!instance_exists(obj_boss_Greybox_inside))
&& (!instance_exists(obj_boss_kingstalker_hitbox))
&& (!instance_exists(obj_boss_spider_hitbox))
&& (!instance_exists(obj_boss_turtle_hitbox))
&& (!instance_exists(obj_boss_bigsnail_hitbox))
&& (room != rm_redtemple_finalboss)
&& (!instance_exists(obj_NEWsav_bottom))
&& (!instance_exists(obj_navigation_pillar1))
{	
	global.darkeater_roomN = round(random_range(5,8))
	
	//save the original music globally
	global.sector_music_xga = global.sector_music;
	
	doortype1 = 1
	
	var door_height = 20
	
	///////door borders
	if (spawn_xga_at_door > 0) or (global.darkeater_active == 1)
	{
		if (place_meeting(x,y,obj_door_border_left))
		{
			instance_create_depth(x,y+49,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = -1	
			}
		}
		else if (place_meeting(x,y,obj_door_border_left_2))
		{
			instance_create_depth(x,y+49,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = -1	
			}
		}
		else if (place_meeting(x,y,obj_door_border_left_more))
		{
			instance_create_depth(x,y+49,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = -1	
			}
		}
		else if (place_meeting(x,y,obj_door_border_right))
		{
			instance_create_depth(x,y+49,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = 1	
			}
		}
		else if (place_meeting(x,y,obj_door_border_right_2))
		{
			instance_create_depth(x,y+49,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = 1	
			}
		}
		else if (place_meeting(x,y,obj_door_border_right_more))
		{
			instance_create_depth(x,y+49,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = 1	
			}
		}
		else if (place_meeting(x,y,obj_door_normal_left)) /////////////////////////////////////////////////////////////////////////////////////////////normal doors
		{
			instance_create_depth(x,y+door_height,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = -1	
			}
		}
		else if (place_meeting(x,y,obj_door_normal_leftAlt))
		{
			instance_create_depth(x,y+door_height,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = -1	
			}
		}
		else if (place_meeting(x,y,obj_door_normal_left_more))
		{
			instance_create_depth(x,y+door_height,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = -1	
			}
		}
		else if (place_meeting(x,y,obj_door_normal_right))
		{
			instance_create_depth(x,y+door_height,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = 1	
			}
		}
		else if (place_meeting(x,y,obj_door_normal_rightAlt))
		{
			instance_create_depth(x,y+door_height,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = 1	
			}
		}
		else if (place_meeting(x,y,obj_door_normal_right_more))
		{
			instance_create_depth(x,y+door_height,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = 1	
			}
		}
	}
	else if (spawn_xga_at_door == 0) && (global.darkeater_active == 0) //spawn xga midway into the room instead of at the door
	{
		//analyze room
		roomHowBigTotal = instance_number(obj_mapchecker2) //total map squares in room
		roomStartX = (instance_nearest(obj_maptile_drawer2.x, obj_maptile_drawer2.y, obj_mapchecker2)).x //nearest mapchecker X
		roomStartY = (instance_nearest(obj_maptile_drawer2.x, obj_maptile_drawer2.y, obj_mapchecker2)).y //nearest mapchecker Y
		roomHowBigX = (instance_furthest(obj_maptile_drawer2.x, obj_maptile_drawer2.y, obj_mapchecker2)).x+320 //furthest point in room X
		roomHowBigY = (instance_furthest(obj_maptile_drawer2.x, obj_maptile_drawer2.y, obj_mapchecker2)).y+180 //furthest point in room Y
		
		preSpawnX = floor(random_range(roomStartX,roomHowBigX));
		preSpawnY = floor(random_range(roomStartY,roomHowBigY));
		
		//check the randomly generated spacial position
		//
		//use darkeater hitbox's sprite to check collisions
		while (!instance_exists(obj_darkeater_hitbox))
		&& (instance_exists(object_player2_0_sprites)) // make sure player is already spawned in
		&& (xgaStopSpawning < 1000) //fail safe switch to break while loop if xga spawn is always impossible (stops while loop after 1000 attempts fail)
		{
			//reset preSpawn x and y everytime
			preSpawnX = floor(random_range(roomStartX,roomHowBigX));
			preSpawnY = floor(random_range(roomStartY,roomHowBigY));
			
			x = preSpawnX;
			y = preSpawnY;
			
			//increase fail safe counter with each attempt
			xgaStopSpawning++;
			

			sprite_index = spr_darkeater_hitbox_smaller;
		
			//check if inside any collision objects
			if (place_meeting(x,y,obj_block))
			or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))
			or (place_meeting(x,y,obj_newslope_left)) or (place_meeting(x,y,obj_newslope_right))
			{
				//try going up first
				while (place_meeting(x,y,obj_mapchecker2)) && (position_meeting(x,bbox_top,obj_mapchecker2))
				&& ((place_meeting(x,y,obj_block))
				or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))
				or (place_meeting(x,y,obj_newslope_left)) or (place_meeting(x,y,obj_newslope_right)))
				{
					y--;	
				}
				
				//if exited room bounds
				if ((!place_meeting(x,y,obj_mapchecker2)) or (!position_meeting(x,bbox_top,obj_mapchecker2)))
				&& (!place_meeting(x,y,obj_block))
				&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
				&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
				{
					y = preSpawnY;
				}
				
				//try going down
				while (place_meeting(x,y,obj_mapchecker2)) && (position_meeting(x,bbox_bottom,obj_mapchecker2))
				&& ((place_meeting(x,y,obj_block))
				or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))
				or (place_meeting(x,y,obj_newslope_left)) or (place_meeting(x,y,obj_newslope_right)))
				{
					y++;	
				}
				
				//if exited room bounds
				if ((!place_meeting(x,y,obj_mapchecker2)) or (!position_meeting(x,bbox_bottom,obj_mapchecker2)))
				&& (!place_meeting(x,y,obj_block))
				&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
				&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
				{
					y = preSpawnY;
				}
			}
			
			
			//check if we're midair
			if (place_meeting(x,y,obj_mapchecker2))
			&& (!place_meeting(x,y,obj_block))
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			{
				//try going down
				if (place_meeting(x,y,obj_mapchecker2)) && (position_meeting(x,bbox_bottom,obj_mapchecker2))
				&& (!place_meeting(x,y+1,obj_block))
				&& (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
				&& (!place_meeting(x,y+1,obj_newslope_left)) && (!place_meeting(x,y+1,obj_newslope_right))
				{
					while (place_meeting(x,y,obj_mapchecker2)) 
					&& (!place_meeting(x,y+1,obj_block))
					&& (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
					&& (!place_meeting(x,y+1,obj_newslope_left)) && (!place_meeting(x,y+1,obj_newslope_right))
					{
						y++;	
					}
				}
			}
			
			
			//check if we're touching player and move if so
			var resetwhileloopswitch = 0;
			
			y -= 15;
			
			sprite_index = spr_darkeater_spin_left;
			
			if (place_meeting(x,y,object_player2_0_sprites)) //are we touching the player sprites? If so reset.
			{
				x = preSpawnX;
				y = preSpawnY;
				
				resetwhileloopswitch = 1;	
			}
			else if (place_meeting(x,y,obj_door_xga_donotspawnhere)) //are we too close to the doors? If so reset.
			{
				x = preSpawnX;
				y = preSpawnY;
				
				resetwhileloopswitch = 1;	
			}

			
			//reset sprite index
			y += 15;
			sprite_index = spr_redenemy;
			

		
			//if all previous checks have gone through, continue
			if (resetwhileloopswitch == 0)
			{		
				instance_create_depth(x,y,id.depth-1,obj_darkeater_hitbox);
				if (instance_exists(obj_darkeater_hitbox))
				{
					with(obj_darkeater_hitbox)
					{
						facing = other.xgaFacingChoice	
			
						if (facing = 1)
						{
							//get target destination
							if (instance_exists(obj_door_normal_left)) && (!place_meeting(x+10,y,obj_door_normal_left))
							{
								doorID = obj_door_normal_left
								global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_left.x,obj_door_normal_left.y+door_height,true)
							}
							else if (instance_exists(obj_door_normal_leftAlt)) && (!place_meeting(x+10,y,obj_door_normal_leftAlt))
							{
								doorID = obj_door_normal_leftAlt
								global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_leftAlt.x,obj_door_normal_leftAlt.y+door_height,true)
							}
							else if (instance_exists(obj_door_normal_left_more)) && (!place_meeting(x+10,y,obj_door_normal_left_more))
							{
								doorID = obj_door_normal_left_more
								global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_left_more.x,obj_door_normal_left_more.y+door_height,true)
							}
							else if (instance_exists(obj_door_border_left)) && (!place_meeting(x,y,obj_door_border_left))///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////DOORLESS
							{
								doorID = obj_door_border_left
								global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_left.x,obj_door_border_left.y+doorborder_height,true)
							}
							else if (instance_exists(obj_door_border_left_2)) && (!place_meeting(x,y,obj_door_border_left_2))
							{
								doorID = obj_door_border_left_2
								global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_left_2.x,obj_door_border_left_2.y+doorborder_height,true)
							}
							else if (instance_exists(obj_door_border_left_more)) && (!place_meeting(x,y,obj_door_border_left_more))
							{
								doorID = obj_door_border_left_more
								global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_left_more.x,obj_door_border_left_more.y+doorborder_height,true)
							}
						}
						else if (facing = -1)
						{
							//get target destination
							if (instance_exists(obj_door_normal_right)) && (!place_meeting(x-10,y,obj_door_normal_right))
							{
								doorID = obj_door_normal_right
								global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_right.x,obj_door_normal_right.y+door_height,true)
							}
							else if (instance_exists(obj_door_normal_rightAlt)) && (!place_meeting(x-10,y,obj_door_normal_rightAlt))
							{
								doorID = obj_door_normal_rightAlt
								global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_rightAlt.x,obj_door_normal_rightAlt.y+door_height,true)
							}
							else if (instance_exists(obj_door_normal_right_more)) && (!place_meeting(x-10,y,obj_door_normal_right_more))
							{
								doorID = obj_door_normal_right_more
								global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_right_more.x,obj_door_normal_right_more.y+door_height,true)
							}
							else if (instance_exists(obj_door_border_right)) && (!place_meeting(x,y,obj_door_border_right))
							{
								doorID = obj_door_border_right
								global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_right.x,obj_door_border_right.y+doorborder_height,true)
							}
							else if (instance_exists(obj_door_border_right_2)) && (!place_meeting(x,y,obj_door_border_right_2))
							{
								doorID = obj_door_border_right_2
								global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_right_2.x,obj_door_border_right_2.y+doorborder_height,true)
							}
							else if (instance_exists(obj_door_border_right_more)) && (!place_meeting(x,y,obj_door_border_right_more))
							{
								doorID = obj_door_border_right_more
								global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_right_more.x,obj_door_border_right_more.y+doorborder_height,true)
							}	
						}
					}
				}
				if (instance_exists(obj_darkeater_sprites))
				{
					with(obj_darkeater_sprites)
					{
						facing = other.xgaFacingChoice	
						if (facing = 1)
						{
							sprite_index = spr_darkeater_idle_right	
						}
						else if (facing = -1)
						{
							sprite_index = spr_darkeater_idle_left
						}
					}
				}
			}
		}
	}
	
	//instance_destroy()
	exit
}
