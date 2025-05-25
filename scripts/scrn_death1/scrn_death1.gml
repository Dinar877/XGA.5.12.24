/// @description player dies
function scrn_death1() {
	if (sprite_index == -1) && (global.dead == 1) && (deact1 == 0)
	{
		global.camera_shiftdown = 0
		with(obj_camera)
		{
			dontmove = 0	
		}
	   //make screenshot
	    scrn = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0);
	    FadeNow = 0.0;
	    notnow1 = 0;
	    started1 = 0;
	    image_alpha = 1;
	    sprite_index = scrn;
	}

	//make sure player is in correct position
	if (global.stopper_2ndscrnshot = 0) && (global.dead == 1) && (deact1 == 0) && (sprite_index == scrn)
	{
	    depth = -10;
	    FadeNow = 0.0;
	    instance_deactivate_all(obj_scrn_roomtransition);
	    instance_activate_object(obj_link_healthUI);
		instance_activate_object(obj_link_audio);
		instance_activate_object(obj_maptile_tile);
		instance_activate_object(obj_link_map);
		instance_activate_object(obj_player_spawnhere);
	
		global.inst_audio_N = 0
		for (var i = 0; i < 999; i++)
		{
			if (audio_emitter_exists(global.inst_audio_emitterID[i]))
			{
				audio_emitter_free(global.inst_audio_emitterID[i])
			}
			global.inst_audio_emitterID[i] = false
		}
	
		global.inst_particle_N = 0
		for (var i = 0; i < 999; i++)
		{
			if (audio_emitter_exists(global.inst_particle_emitterID[i]))
			{
				audio_emitter_free(global.inst_particle_emitterID[i])
			}
			global.inst_particle_emitterID[i] = false
		}
		for (var i = 0; i < 999; i++)
		{
			if (audio_emitter_exists(global.inst_particle_system[i]))
			{
				audio_emitter_free(global.inst_particle_system[i])
			}
			global.inst_particle_system[i] = false
		}
		for (var i = 0; i < 999; i++)
		{
			if (audio_emitter_exists(global.inst_particle_type[i]))
			{
				audio_emitter_free(global.inst_particle_type[i])
			}
			global.inst_particle_type[i] = false
		}
	
	    deact1 = 1;
	}

	///Make first screen shot and fade out with second one
	if (global.stopper_2ndscrnshot = 0) && (global.dead == 1) && (deact1 == 1) && (react == 0)
	{
		//if killed by xga, remember previous music
		if (global.sector_music_xga > 0)
		{
			global.sector_music = global.sector_music_xga;	
		}
	   
		audio_group_set_gain(audiogroup_sfx,0,100)
		audio_group_set_gain(audiogroup_music,0,100)
		audio_group_stop_all(audiogroup_music)
		audio_stop_all()
	
		if (global.dead == 1) && (started1 = 0) && (FadeNow <= 1.0)
	    {
	        FadeNow = 0.0;
	        started1 = 1;
	    }
	    if (FadeNow <= 1.0) && (global.dead == 1) && (started1 = 1)
	    {
	        FadeNow += 0.02;
	    }
	    if (FadeNow >= 1.0) && (global.dead == 1) && (started1 = 1)
	    {
	        FadeNow = 1.0;
	        react = 1;
	    }
	}

	//get second screenshot then fade out
	if (global.stopper_2ndscrnshot = 0) && (global.dead_ending == 0) && (global.dead == 1) && (deact1 == 1) && (react == 1) && (FadeNow = 1.0)
	{
		audio_stop_sound(snd_electricity)
		audio_group_set_gain(audiogroup_sfx,1,100)
		audio_group_set_gain(audiogroup_music,0.5,100)
	
		instance_activate_object(obj_player);
		instance_activate_object(object_player2_0_sprites);
		instance_activate_object(obj_camera);
		instance_activate_object(obj_link_audio);
		with(obj_camera)
		{
			x = 160;
			y = 90;
		}
		with(obj_player)
		{
			x = 160;
			y = 90;	
		}
		with(object_player2_0_sprites)
		{
			image_alpha = 1;	
		}
		global.hurt = 0;
		global.hurt2 = 0;
	    FadeNow = 1.0;
	    image_alpha = 1;
	    deact1 = 1;
	    react = 1;
		global.dead_ending = 1;
		global.dead = 0;
	}

	if (global.dead == 0) && (instance_exists(obj_player)) && (global.dead_ending == 1) && (image_alpha >= 1.0)
	{
		if (!file_exists("XGA.SAVEFILE.dat"))
			{
											global.upgradecollected[999] = 0;
											global.upgradecollected_main[999] = 0;
											global.upgradetrue[999] = 0;
	
											global.tilex[9999] = 0;
											global.tiley[9999] = 0;
											global.tiledata[9999] = 0;
											global.tilesprite[9999] = 0;
											global.tilesector[9999] = 0;
											global.tileroom[9999] = 0;
											
											global.tileblocker[9999] = 0;
											global.tileblocker2[9999] = 0;
											global.tileitem[9999] = 0;
											global.tiledataN = 0;
										
											global.sector_active = 0
											global.sector_music = -1
											global.music_volume = 1
											global.sfx_volume = 1
											global.darkeater_active = 0
	
											global.mapgrid_tilegivenX[9999] = 0;
											global.mapgrid_tilegivenY[9999] = 0;
											global.mapgrid_tilegivenN = 0;
										
											for (var i = 0; i < 999; i++)
											{
												global.doors_redblocker[i] = 0
											}
										
											for (var i = 0; i < 999; i++)
											{
												global.bossblockers[i] = 0
											}
										
										
											global.doors_redblocker[999] = 0;
											global.bossblockers[999] = 0
											
											audio_stop_sound(snd_xga_heartbeat)
											global.darkeater_active = 0;
										
											if (object_exists(obj_maptile_tile))
											{
												with(obj_maptile_tile)
												{
													instance_destroy()	
												}
											}
										
											if (object_exists(obj_healthblockstart))
											{
												with(obj_healthblockstart)
												{
													instance_destroy()	
												}
											}
									
											if (object_exists(obj_health_sparetank_100))
											{
												with(obj_health_sparetank_100)
												{
													instance_destroy()	
												}
											}
										
											if (object_exists(obj_ability_nanoshield))
											{
												with(obj_ability_nanoshield)
												{
													instance_destroy()	
												}
												with(obj_number_100_nanoshield)
												{
													instance_destroy()	
												}
												with(obj_number_10_nanoshield)
												{
													instance_destroy()	
												}
												with(obj_number_1_nanoshield)
												{
													instance_destroy()	
												}
											}
											
											//remove all markers
											#region
											for ( var n = 0; n < global.marker_N + 1; n += 1)
											{
												global.marker_no[n] = 0;
												global.marker_coordsX[n] = 0;
												global.marker_coordsY[n] = 0;
												global.marker_coordsX2[n] = 0;
												global.marker_coordsY2[n] = 0;
												global.marker_sectortile[n] = 0;
											}
			
											global.marker_N = 0;
			
											for ( var n = 0; n < 5; n += 1)
											{
												global.marker_inst[n] = 0;
											}
			
											if (instance_exists(obj_maptile_marker))
											{
												with(obj_maptile_marker)
												{
													instance_destroy();	
												}
											}
											#endregion
									   
											global.jumping = 0;
											global.jumpingdm = 0;
											global.walljump = 0;
											global.hurt = 0;
											global.turning = 0;
											global.dashbegin2 = 0;
											global.hurt = 0;
											global.hurt2 = 0;
											global.dash2 = 0;
											global.dead = 0;
											global.dashbegin2 = 0;
											global.dead_begin = 0;
											global.stopper_2ndscrnshot = 1;
											global.lockdown_facingDir = 0;
											
											//if not testing, go to last room saved at
											if (!instance_exists(obj_player_spawnhere))
											{
												room_goto(global.roomgoto1);
											} else room_goto(rm_load)
											
											image_alpha -= 0.025;
			}
		else if (file_exists("XGA.SAVEFILE.dat"))
		{
									if (global.dead_ending = 1)
									{
										with(obj_player)
										{
											State_machine_switch_state(Idle);
											hurt1 = 0;
										}	
								
										//DESTROY HEALTH UI
								
										if (instance_exists(obj_originalHP_block))
										{
											with(obj_originalHP_block)
											{
												instance_destroy()	
											}
										}
								
										if (instance_exists(obj_originalHP_block_start))
										{
											with(obj_originalHP_block_start)
											{
												instance_destroy()	
											}
										}
								
								
										//DESTROY MAPTILES
									
										if (instance_exists(obj_maptile_tile))
										{
											with(obj_maptile_tile)
											{
												instance_destroy()	
											}
										}
									
								
									
										if (instance_exists(obj_maptile_tile_hint))
										{
											with(obj_maptile_tile_hint)
											{
												instance_destroy()	
											}
										}
									
										if (instance_exists(obj_deathscreennuke_maptile))
										{
											with(obj_deathscreennuke_maptile)
											{
												instance_destroy()	
											}
										}
								
									//DESTROY ABILITIES IF EXIST
										if (instance_exists(obj_ability_invisibility))
										{
											with(obj_ability_invisibility)
											{
												instance_destroy()	
											}
											with(obj_number_1_invis)
											{
												instance_destroy()	
											}
											with(obj_number_10_invis)
											{
												instance_destroy()	
											}
											with(obj_number_100_invis)
											{
												instance_destroy()	
											}
										}
										if (instance_exists(obj_ability_nanoshield))
										{
											with(obj_ability_nanoshield)
											{
												instance_destroy()	
											}
											with(obj_number_1_nanoshield)
											{
												instance_destroy()	
											}
											with(obj_number_10_nanoshield)
											{
												instance_destroy()	
											}
											with(obj_number_100_nanoshield)
											{
												instance_destroy()	
											}
										}
										if (instance_exists(obj_ability_nuclearblast))
										{
											with(obj_ability_nuclearblast)
											{
												instance_destroy()	
											}
											with(obj_number_1_nuclearblast)
											{
												instance_destroy()	
											}
											with(obj_number_10_nuclearblast)
											{
												instance_destroy()	
											}
											with(obj_number_100_nuclearblast)
											{
												instance_destroy()	
											}
										}
										if (instance_exists(obj_ability_shockwave))
										{
											with(obj_ability_shockwave)
											{
												instance_destroy()	
											}
											with(obj_number_1_shockwave)
											{
												instance_destroy()	
											}
											with(obj_number_10_shockwave)
											{
												instance_destroy()	
											}
											with(obj_number_100_shockwave)
											{
												instance_destroy()	
											}
										}
									
										global.ability_limit = 0
										global.stopper_2ndscrnshot = 1;
										
										//remove all markers
										#region
										for ( var n = 0; n < global.marker_N + 1; n += 1)
										{
											global.marker_no[n] = 0;
											global.marker_coordsX[n] = 0;
											global.marker_coordsY[n] = 0;
											global.marker_coordsX2[n] = 0;
											global.marker_coordsY2[n] = 0;
											global.marker_sectortile[n] = 0;
										}
			
										global.marker_N = 0;
			
										for ( var n = 0; n < 5; n += 1)
										{
											global.marker_inst[n] = 0;
										}
			
										if (instance_exists(obj_maptile_marker))
										{
											with(obj_maptile_marker)
											{
												instance_destroy();	
											}
										}
										#endregion
										
										
										Loading_death()
										
										//if not testing, go to last room saved at
										if (!instance_exists(obj_player_spawnhere))
										{
											room_goto(global.roomgoto1);
										} else room_goto(room)
										
										image_alpha = image_alpha - 0.05;
								
									}
		}

	}


	if (global.stopper_2ndscrnshot = 1) && (image_alpha > 0.0)
	   {
			x = 0;
			y = 0;
			with(obj_player)
			{
				if (file_exists("XGA.SAVEFILE.dat"))
				{
					x = 168;
					y = 106;
				
					if (instance_exists(obj_NEWsav_standbyeffect))
						{
							with(obj_NEWsav_standbyeffect)
							{
								stopnow = 1	
							}
						}
				}
			}
			
			//spawning when obj_player_spawnhere is present
			if (instance_exists(obj_player_spawnhere))
			{
				if (instance_exists(obj_camera))
				{
					x = obj_camera.x-160;
					y = obj_camera.y-90;
				}
				
				with(obj_player)
				{
					x = obj_player_spawnhere.x;
					y = obj_player_spawnhere.y;	
				}
			}
			
			image_alpha = image_alpha - 0.05;
			layer = layer_get_id("Inst_scrn")
	   }
	//kill the screenshot object and reset everything
	if (image_alpha <= 0.0) && (global.stopper_2ndscrnshot = 1) && (global.dead_ending = 1)
	{   
	                sprite_delete(sprite_index);
	                sprite_index = -1;
					dead2 = 0;
					scrn = 0;
				
					instance_activate_object(obj_player)
					
					if (instance_exists(obj_NEWsav_standbyeffect))
					{
						with(obj_NEWsav_standbyeffect)
						{
							stopnow = 1	
						}
					}
					
					with(obj_player)
	                    {
							if (sprite_index = spr_player_jump)
						    {
						        with(obj_camera)
								{
									yspin = -7;
								}
								y -= 7;
						        sprite_index = spr_player;
						    } 
							
							//regular spawning for save rooms
							x = 168;
							y = 106;
							
							//spawning when obj_player_spawnhere is present
							if (instance_exists(obj_player_spawnhere))
							{
								x = obj_player_spawnhere.x;
								y = obj_player_spawnhere.y;
							}
					   
						   global.jumping = 0;
	                       global.jumpingdm = 0;
	                       global.walljump = 0;
	                       global.hurt = 0;
							global.hurt2 = 0;
	                       global.turning = 0;
	                       timer_death = 50;
						   
						   //health
	                       if (global.spacestation_active)
										{
											global.health1 = global.health_limit
										}
										else if (!global.spacestation_active)
										{
											global.health1 = 8
										}
										
							//ammo
							if (global.shoot_ammo != global.shoot_ammo_start)
							{
								global.shoot_ammo = global.shoot_ammo_start	
							}
							
	                       jumpoff = 0;
	                       hspd = 0;
	                       vspd = 0;
	                       input_horizontal = 0;
	                       lefty = 0;
	                       State_machine_switch_state(Idle);
	                    }
	                with(object_backgroundSnow_parallaxshit)
	                {
	                    started_hurt = 0;
	                }
				
					if (instance_exists(obj_link_enemies))
					{
						instance_destroy(obj_link_enemies)	
					}
				
	                global.dead = 0;
					global.dead_begin = 0;
					global.dead_ending = 0;
	                global.stopper_2ndscrnshot = 0;
	                global.boss_warning = 0;
					global.room_y = 0;
	                global.room_x = 0;
	                global.dashbegin = 0;
	                global.dashcharge = 0;
	                global.dashuse = 0;
	                global.dashend = 0;
					global.dashbegin2 = 0;
					global.dash2 = 0;
					global.darkeater_active = 0
	                global.lockdown_facingDir = 0;
	                __view_set( e__VW.Object, 0, obj_camera );
	                image_alpha = 0.0;
	                deact1 = 0;
	                react = 0;
	                started1 = 0;
	                FadeNow = 0.0;
	                notnow = 0;
	                notnow1 = 0;
	                stopper2 = 0;
	                black_screen_alpha = 0;  
	                instance_destroy();
	}


}
