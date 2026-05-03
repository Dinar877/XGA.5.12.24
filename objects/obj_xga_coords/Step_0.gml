/// @description Insert description here
// You can write your code in this editor

//despawn xga if in save room, or if XGA has spawned but left the room
if (((instance_exists(obj_NEWsav_bottom)) && (xgaEnterSafeZones > 5)) //xga has a 5% chance of ignoring the safe room restrictions and chasing you anyway
or ((instance_exists(obj_navigation_pillar1)) && (xgaEnterSafeZones > 5)) //xga has a 5% chance of ignoring the safe room restrictions and chasing you anyway
or ((instance_exists(obj_elevator_bottom)) && (xgaEnterSafeZones > 5)) //xga has a 5% chance of ignoring the safe room restrictions and chasing you anyway
or ((doortype1 = 1) && (!instance_exists(obj_darkeater_hitbox)) && (global.darkeater_active = 0)))
&& (xgaMusicSwitch == 1)
{	
	//reset to original music if escaped xga
	ResetOriginalMusic()

	footstep_total = 8 + (random_range(1,-1))
	footstep_limiter -= 0.4
	
	doortype1 = 0
	timer_xga = 0
	difference_y = 1
	
	audio_stop_sound(snd_xga_heartbeat)
	
	//instance_destroy();
	//exit;
}

//despawn xga during cooldown
if (global.darkeater_death_limit >= 3)
{
	//reset to original music if escaped xga
	ResetOriginalMusic()

	
	global.darkeater_active = 0;
	
	instance_destroy();
	exit;
}

//save xga's state and respawn him exactly as before if the player tries to despawn him by switching rooms
if (instance_exists(obj_darkeater_hitbox)) && (instance_exists(obj_darkeater_sprites)) 
&& (global.darkeater_active == 0)
&& (room == global.darkeater_saved_state[8])
{
	if (obj_darkeater_hitbox.doorID > 0) && (obj_darkeater_hitbox.state1 > 0)
	&& (obj_darkeater_sprites.sprite_index > 0)
	{
		global.darkeater_saved_state = [obj_darkeater_hitbox.x, obj_darkeater_hitbox.y, obj_darkeater_hitbox.facing, obj_darkeater_hitbox.doorID, obj_darkeater_hitbox.doorID_start, obj_darkeater_hitbox.state1, obj_darkeater_sprites.sprite_index, obj_darkeater_sprites.image_index, room]
	}
}
else if (!instance_exists(obj_darkeater_hitbox))
&& (global.darkeater_active == 0)
&& (global.darkeater_saved_state_xga_has_spawned = 1)
&& (room == global.darkeater_saved_state[8])
{
	difference_y = 0;
	timer_xga = 1;
	spawn_xga_at_door = 0
	
	spawn_xga_from_saved_state = 1
}




//check how often the player is switching rooms during a chase
if (global.darkeater_active = 1)
{
	if (global.darkeater_room_transition_penalty >= 5)
	&& ((global.room_transition) or (global.room_transition1) or (global.room_transition_more) or (global.room_transition_3)
	or (global.room_transition_nodoors) or (global.room_transition_nodoors_2) or (global.room_transition_nodoors_more) or (global.room_transition_nodoors_3))
	&& (global.stopper_2ndscrnshot = 1)
	&& (room != global.darkeater_current_room)
	&& (global.darkeater_room_transition_penalty_timelimit <= 0)
	{
		global.darkeater_room_transition_penalty_timelimit = (2*60)
	}
	else if ((global.room_transition) or (global.room_transition1) or (global.room_transition_more) or (global.room_transition_3)
	or (global.room_transition_nodoors) or (global.room_transition_nodoors_2) or (global.room_transition_nodoors_more) or (global.room_transition_nodoors_3))
	&& (global.stopper_2ndscrnshot = 1)
	&& (room != global.darkeater_current_room)
	&& (global.darkeater_room_transition_penalty_timelimit > 0)
	{
		global.darkeater_current_room = room
		global.darkeater_room_transition_penalty--
		global.darkeater_room_transition_penalty_timelimit = (2*60)
	}
		
	if (global.darkeater_room_transition_penalty <= 0)
	{
		difference_y = 0;
		timer_xga = 1;
			
		global.darkeater_room_transition_penalty_spawn_xga = 1
	}
	
	if (room = global.darkeater_current_room) && (global.darkeater_room_transition_penalty_spawn_xga = 0)
	{
		if (global.darkeater_room_transition_penalty_timelimit > 0)
		{
			global.darkeater_room_transition_penalty_timelimit--	
		}
		else global.darkeater_room_transition_penalty_timelimit = 0
	}
	
	
}


//despawn xga in final boss room
if (room = rm_redtemple_finalboss)
{
	//reset to original music if escaped xga
	ResetOriginalMusic()

	
	audio_stop_sound(snd_xga_heartbeat)
	
	global.darkeater_active = 0;
	
	instance_destroy();
	exit;
}

//do not spawn xga in any boss room unless already being chased
if (room = rm_9_16_2)
or (room = rm_sector1_bigsnail) or (room = rm_15_11_3) or (room = rm_sector1_cave_boss)
or (room = rm_S3_15_28) or (room = rm_sector2_boss_gorilla)
or (room = rm_S4_BOX_bossroom) or (room = rm_kingstalker_test1)
or (room = rm_sector4_robospider) or (room = rm_sector4_turtle)
&& (global.darkeater_active == 0)
{
	audio_stop_sound(ost_xga_chasemusic);
	audio_stop_sound(snd_xga_heartbeat)
	
	global.darkeater_active = 0;
	
	instance_destroy();
	exit;
}

//XGA is afraid of electricity. That's his one weakness.
if (instance_exists(obj_harmful_electricity_emitter_L)) or (instance_exists(obj_harmful_electricity_emitter_u))
{
	//destroy all eye orbs if electricity present
	if (instance_exists(obj_detection_orb))
	{
		with(obj_detection_orb)
		{
			instance_destroy();
		}	
	}
	
	//destroy all ground orbs if electricity present
	if (instance_exists(obj_detection_orb_ground_body))
	{
		with(obj_detection_orb_ground_body)
		{
			instance_destroy();
		}	
	}
	if (instance_exists(obj_detection_orb_ground_light))
	{
		with(obj_detection_orb_ground_light)
		{
			instance_destroy();
		}	
	}
	
	//reset to original music if escaped xga
	ResetOriginalMusic()

	
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


//able to spawn xga from the door you just entered if you wait long enough and you saw it
if (!instance_exists(obj_darkeater_hitbox))
&& (!instance_exists(obj_harmful_electricity_emitter_L)) && (!instance_exists(obj_harmful_electricity_emitter_u))
&& ((global.doorpath1 = global.darkeater_saved_state[8]) or (global.doorpath2 = global.darkeater_saved_state[8])
or (global.doorpath3 = global.darkeater_saved_state[8]) or (global.doorpath4 = global.darkeater_saved_state[8])
or (global.doorpath5 = global.darkeater_saved_state[8]) or (global.doorpath6 = global.darkeater_saved_state[8])
or (global.doorpath7 = global.darkeater_saved_state[8]) or (global.doorpath8 = global.darkeater_saved_state[8]))
&& (global.darkeater_active == 0)
&& (global.darkeater_saved_state_xga_has_spawned = 1)
&& (room != global.darkeater_saved_state[8])
&& (room = global.darkeater_saved_state_room_nextdoor_id)
{
	var bob = 0
	
	
	//see if doorID matches the opposite door player used
	if (place_meeting(x,y,obj_door_normal_left)) && (global.darkeater_saved_state[3] = obj_door_normal_right)
	{
		bob = 1
	}
	else if (place_meeting(x,y,obj_door_normal_right)) && (global.darkeater_saved_state[3] = obj_door_normal_left)
	{
		bob = 1
	}
	else if (place_meeting(x,y,obj_door_normal_leftAlt)) && (global.darkeater_saved_state[3] = obj_door_normal_rightAlt)
	{
		bob = 1
	}
	else if (place_meeting(x,y,obj_door_normal_rightAlt)) && (global.darkeater_saved_state[3] = obj_door_normal_leftAlt)
	{
		bob = 1
	}
	else if (place_meeting(x,y,obj_door_normal_left_more)) && (global.darkeater_saved_state[3] = obj_door_normal_right)
	{
		bob = 1
	}
	else if (place_meeting(x,y,obj_door_normal_right_more)) && (global.darkeater_saved_state[3] = obj_door_normal_left_more)
	{
		bob = 1
	}
	else if (place_meeting(x,y,obj_door_normal_left_3)) && (global.darkeater_saved_state[3] = obj_door_normal_right_3)
	{
		bob = 1
	}
	else if (place_meeting(x,y,obj_door_normal_right_3)) && (global.darkeater_saved_state[3] = obj_door_normal_left_3)
	{
		bob = 1
	}
	else if (place_meeting(x,y,obj_door_border_left)) && (global.darkeater_saved_state[3] = obj_door_border_right)
	{
		bob = 1
	}
	else if (place_meeting(x,y,obj_door_border_right)) && (global.darkeater_saved_state[3] = obj_door_border_left)
	{
		bob = 1
	}
	else if (place_meeting(x,y,obj_door_border_left_2)) && (global.darkeater_saved_state[3] = obj_door_border_right_2)
	{
		bob = 1
	}
	else if (place_meeting(x,y,obj_door_border_right_2)) && (global.darkeater_saved_state[3] = obj_door_border_left_2)
	{
		bob = 1
	}
	else if (place_meeting(x,y,obj_door_border_left_more)) && (global.darkeater_saved_state[3] = obj_door_border_right)
	{
		bob = 1
	}
	else if (place_meeting(x,y,obj_door_border_right_more)) && (global.darkeater_saved_state[3] = obj_door_border_left_more)
	{
		bob = 1
	}
	else if (place_meeting(x,y,obj_door_border_left_3)) && (global.darkeater_saved_state[3] = obj_door_border_right_3)
	{
		bob = 1
	}
	else if (place_meeting(x,y,obj_door_border_right_3)) && (global.darkeater_saved_state[3] = obj_door_border_left_3)
	{
		bob = 1
	}
	
	//if doorID matches the opposite door object to the door the player just entered the room in
	if (bob = 1)
	{
		footstep_total = 8 + (random_range(1,-1))
		footstep_limiter = 0.4
		difference_y = 1;
		spawn_xga_at_door = 1
		global.darkeater_saved_state_xga_has_spawned = 0
		global.darkeater_saved_state_room_counter = 0
		global.darkeater_saved_state_room_nextdoor_id = 0	
	}	
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
//&& (doortype1 = 0)
&& (cancel_footsteps = 0)
&& (!instance_exists(obj_darkeater_hitbox))
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
		footstep_total += round(random_range(-1, 1.3)) + footstep_limiter
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
		if (!audio_is_playing(snd_beamexplosion))
		{
			var sndy1 = audio_play_sound(snd_beamexplosion, 1000, false, global.sfx_volume)
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
		else if (audio_is_playing(snd_beamexplosion))
		{
			audio_stop_sound(snd_beamexplosion)
			var sndy1 = audio_play_sound(snd_beamexplosion, 1000, false, global.sfx_volume)
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
else if (timer_xga < 1) 
&& (((spawn_xga_at_door = 0) && (door_xga_spawned_at_before <= 0)) 
or ((footstep_total >= 10) && (door_xga_spawned_at_before > 0) && (spawn_xga_at_door = 0)))
&& (doortype1 = 0)
{
	difference_y = 0;
	timer_xga = 1;
}


//always spawn xga
//difference_y = 0;
//timer_xga = 1;
//spawn_xga_at_door = 0


//leading up to player // creating xga instance
if ((abs(difference_y) == 0) or (global.darkeater_active = 1) or (footstep_total >= 10))
&& (timer_xga >= 1) 
&& (doortype1 = 0)
&& (room != rm_redtemple_finalboss)
&& (!instance_exists(obj_darkeater_hitbox)) 
&& (!instance_exists(obj_boss_bugspider_hitbox))
&& (!instance_exists(obj_boss_darklord_hitbox))
&& (!instance_exists(obj_boss_flowey))
&& (!instance_exists(obj_boss_gorilla_hitbox))
&& (!instance_exists(obj_boss_Greybox_inside))
&& (!instance_exists(obj_boss_kingstalker_hitbox))
&& (!instance_exists(obj_boss_spider_hitbox))
&& (!instance_exists(obj_boss_turtle_hitbox))
&& (!instance_exists(obj_boss_bigsnail_hitbox))
&& (!instance_exists(obj_NEWsav_bottom))
&& (!instance_exists(obj_navigation_pillar1))
{	
	global.darkeater_roomN = round(random_range(5,8))
	
	//save the original music globally
	//global.sector_music_xga = global.sector_music;
	
	doortype1 = 1
	
	var door_height = 20
	
	//punish the player for trying to cheese xga's ai
	if (global.darkeater_room_transition_penalty_spawn_xga = 1)
	{
		var positioner = 30
		
		if (place_meeting(x,y,obj_door_border_left))
		{
			instance_create_depth(x-positioner,y+49,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = 1	
			}
		}
		else if (place_meeting(x,y,obj_door_border_left_2))
		{
			instance_create_depth(x-positioner,y+49,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = 1	
			}
		}
		else if (place_meeting(x,y,obj_door_border_left_more))
		{
			instance_create_depth(x-positioner,y+49,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = 1	
			}
		}
		else if (place_meeting(x,y,obj_door_border_left_3))
		{
			instance_create_depth(x-positioner,y+49,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = 1	
			}
		}
		else if (place_meeting(x,y,obj_door_border_right))
		{
			instance_create_depth(x+positioner,y+49,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = -1	
			}
		}
		else if (place_meeting(x,y,obj_door_border_right_2))
		{
			instance_create_depth(x+positioner,y+49,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = -1	
			}
		}
		else if (place_meeting(x,y,obj_door_border_right_more))
		{
			instance_create_depth(x+positioner,y+49,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = -1	
			}
		}
		else if (place_meeting(x,y,obj_door_border_right_3))
		{
			instance_create_depth(x+positioner,y+49,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = -1	
			}
		}
		else if (place_meeting(x,y,obj_door_normal_left)) /////////////////////////////////////////////////////////////////////////////////////////////normal doors
		{
			instance_create_depth(x-positioner,y+door_height,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = 1	
			}
		}
		else if (place_meeting(x,y,obj_door_normal_leftAlt))
		{
			instance_create_depth(x-positioner,y+door_height,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = 1	
			}
		}
		else if (place_meeting(x,y,obj_door_normal_left_more))
		{
			instance_create_depth(x-positioner,y+door_height,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = 1	
			}
		}
		else if (place_meeting(x,y,obj_door_normal_left_3))
		{
			instance_create_depth(x-positioner,y+door_height,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = 1	
			}
		}
		else if (place_meeting(x,y,obj_door_normal_right))
		{
			instance_create_depth(x+positioner,y+door_height,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = -1	
			}
		}
		else if (place_meeting(x,y,obj_door_normal_rightAlt))
		{
			instance_create_depth(x+positioner,y+door_height,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = -1	
			}
		}
		else if (place_meeting(x,y,obj_door_normal_right_more))
		{
			instance_create_depth(x+positioner,y+door_height,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = -1	
			}
		}
		else if (place_meeting(x,y,obj_door_normal_right_3))
		{
			instance_create_depth(x+positioner,y+door_height,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = -1	
			}
		}
		
		
		exit
	}
	
	
	//if player is trying to abuse xga's ai by despawning him by exiting and re-entering the room
	if (spawn_xga_from_saved_state = 1)
	{
		instance_create_depth(global.darkeater_saved_state[0],global.darkeater_saved_state[1],id.depth+1,obj_darkeater_hitbox)
		
		with(obj_darkeater_hitbox)
		{
			facing = global.darkeater_saved_state[2]
			doorID = global.darkeater_saved_state[3]
			doorID_start = global.darkeater_saved_state[4]
			state1 = global.darkeater_saved_state[5]
		}
		
		with(obj_darkeater_sprites)
		{
			sprite_index = global.darkeater_saved_state[6]
			image_index = global.darkeater_saved_state[7]
		}
	}
	
	
	///////door borders
	if (door_xga_spawned_at_before <= 0) //first time spawning in room from a door
	&& ((spawn_xga_at_door > 0) or (global.darkeater_active == 1))
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
		else if (place_meeting(x,y,obj_door_border_left_3))
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
		else if (place_meeting(x,y,obj_door_border_right_3))
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
		else if (place_meeting(x,y,obj_door_normal_left_3))
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
		else if (place_meeting(x,y,obj_door_normal_right_3))
		{
			instance_create_depth(x,y+door_height,id.depth+1,obj_darkeater_hitbox)
		
			with(obj_darkeater_hitbox)
			{
				facing = 1	
			}
		}
		
		exit
	}
	else if (door_xga_spawned_at_before > 0) //xga has already spawned here and is coming back into the room
	{
		if (door_xga_spawned_at_normal_check = true) //based on if it was a normal door or a door border
		{
			door_height = 20	
		}
		else door_height = 49
		
		//spawn him again
		instance_create_depth(door_xga_spawned_at_before.x,door_xga_spawned_at_before.y+door_height,id.depth+1,obj_darkeater_hitbox)
		
		exit
	}
	else if (spawn_xga_at_door == 0) && (global.darkeater_active == 0) //spawn xga midway into the room instead of at the door
	&& (instance_exists(obj_mapchecker2)) && (instance_exists(obj_maptile_drawer2))
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
							else if (instance_exists(obj_door_normal_left_3)) && (!place_meeting(x+10,y,obj_door_normal_left_3))
							{
								doorID = obj_door_normal_left_3
								global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_left_3.x,obj_door_normal_left_3.y+door_height,true)
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
							else if (instance_exists(obj_door_border_left_3)) && (!place_meeting(x,y,obj_door_border_left_3))
							{
								doorID = obj_door_border_left_3
								global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_left_3.x,obj_door_border_left_3.y+doorborder_height,true)
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
							else if (instance_exists(obj_door_normal_right_3)) && (!place_meeting(x-10,y,obj_door_normal_right_3))
							{
								doorID = obj_door_normal_right_3
								global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_right_3.x,obj_door_normal_right_3.y+door_height,true)
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
							else if (instance_exists(obj_door_border_right_3)) && (!place_meeting(x,y,obj_door_border_right_3))
							{
								doorID = obj_door_border_right_3
								global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_right_3.x,obj_door_border_right_3.y+doorborder_height,true)
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
