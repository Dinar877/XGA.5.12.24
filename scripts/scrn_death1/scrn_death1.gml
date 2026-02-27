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
		
		//darkeater potential cooldown
		if (instance_exists(obj_darkeater_hitbox))
		{
			global.darkeater_death_limit++;
			
			if (global.darkeater_death_limit >= 3) && (global.darkeater_death_pre_time_limit > 0)
			{
				global.darkeater_death_time_limit = (4*60*60);	
			}
			
			//start the pre potenital cooldown time limit
			if (global.darkeater_death_pre_time_limit == 0)
			{
				global.darkeater_death_pre_time_limit = (1*60*60);
			}
		}
		
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
		audio_group_set_gain(audiogroup_sfx,0,100)
		audio_group_set_gain(audiogroup_music,0,100)
		audio_group_stop_all(audiogroup_music)
		audio_group_stop_all(audiogroup_sfx)
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
				//for making collected upgrades not respawn
				global.upgradeID_N = 0;
				//upgrades
				global.walljump = 0;
				global.airdash = 0;
				global.hydrodash = 0;
				global.shoot_autoR_upgrade = 0;
	
				//choose abilities
				global.ability_select = 1;
				global.ability_limit = 0;

				//sword
				global.sword_available = 0;
				global.sword_swing_available = 0;
				global.sword_wave_available = 0;


				//abilities-invisibility
				global.invisibility_state = 0
				global.invisibility_available = 0;
				global.invisibility_ammo = 0;
				global.invisibility_limit = 0;
				global.invisibility_prep = 0

				global.invisibility_recharge = 0;

				//abilities-nanoshield
				global.nanoshield_state = 0
				global.nanoshield_available = 0;
				global.nanoshield_ammo = 0;
				global.nanoshield_limit = 0;

				//abilities-nuclearblast
				global.nuclearblast_state = 0;		
				global.nuclearblast_available = 0;
				global.nuclearblast_ammo = 0;
				global.nuclearblast_limit = 0;

				//abilities-shockwave
				global.shockwave_state = 0
				global.shockwave_available = 0
				global.shockwave_ammo = 0
				global.shockwave_limit = 0
				global.shockwave = 0

				global.nanoshield_recharge = 0;

				global.explosiveammo = 0
				global.animation_end = 0
				global.jumping_maxheight = 0

				global.constantspd = 0;
				global.facingDir = 1;
				global.turning = 0;
				global.turning_dash2 = 0;
				global.turningLedge = 0;
				global.lockdown_facingDir = 0;
				global.grounded = 1;
				global.landed = 0;
				global.crouching = 0;

				global.wallscaler = 0;
				global.speedboots = 0;
				global.screwjump = 0;
				global.spacejump = 0;
				global.suit_count = 0;
				global.invisibility = 0;
				global.nanoshield = 0;
				global.nuclearblast = 0
				global.xvision = 0
				global.kelvin = 0

				global.autohack = 0
				global.superautohack = 0

				global.upgrade_charge = 0;
				global.charging = 0;
				global.charge_ready = 0;
				global.charge_shot = 0;

				global.beam_spread_available = 0;
				global.beam_spread = 0;

				global.beam_burn = 0;
				global.beam_burn_available = 0;

				global.beam_homing = 0;
				global.beam_homing_available = 0;

				global.beam_shield = 0;
				global.beam_shield_available = 0;

				global.suit_pure = 0;
				global.suit_shell = 0
				global.suit_shock = 0
	
	
	
				//global.vars that are not arrays
				global.ability_limit = 0
				global.ability_select = 0
				global.tiledataN = 0;
				global.tileHazardDataN = 0;
				global.mapgrid_tilegivenN = 0;
				global.sector_active = 0;
				global.midgame = 0;
				global.corrupted = 0;
	
	
	
				//all 99 arrays
				for (var p1 = 0; p1 < 99; p1++)
				{
					//cutscenes
					global.cutsceneID[p1] = 0
				}

				//all 999 arrays
				for (var p2 = 0; p2 < 999; p2++)
				{
					//global.switches
					global.doors_redblocker[p2] = 0;
					global.doors_true[p2] = 0;

					global.bossblockers[p2] = 0;
	
					//upgrade
					global.upgradecollected[p2] = 0;
					global.upgradecollected_main[p2] = 0;
					global.upgradetrue[p2] = 0;
					global.upgradeID_room[p2] = 0
	
					//particle systems
					global.inst_particle_N = 0;
					global.inst_particle_system[p2] = 0
					global.inst_particle_emitterID[p2] = 0
					global.inst_particle_type[p2] = 0
	
					//audio
					global.inst_audio_emitterID[p2] = 0
				}

				//all 9999 arrays
				for (var p3 = 0; p3 < 9999; p3++)
				{
					//mapgrid
					global.mapgrid_tilegivenX[p3] = 0;
					global.mapgrid_tilegivenY[p3] = 0;
	
					//markers
					global.marker_inst[p3] = 0;
					global.marker_no[p3] = 0;
					global.marker_coordsX[p3] = 0;
					global.marker_coordsY[p3] = 0;
					global.marker_coordsX2[p3] = 0;
					global.marker_coordsY2[p3] = 0;
					global.marker_sectortile[p3] = 0;
	
					//maps
					global.tilex[p3] = 0;
					global.tiley[p3] = 0;
					global.tiledata[p3] = 0;
					global.tilesprite[p3] = 0;
					global.tilesector[p3] = 0;
					global.tileroom[p3] = 0;

					global.tileblocker[p3] = 0;
					global.tileblocker2[p3] = 0;
					global.tileitem[p3] = 0;
					global.tile_hazard[p3] = 0;
					global.tile_hazard_sprite[p3] = 0;
					global.tile_hazard_redblockerID[p3] = 0;
				}
											
				audio_stop_sound(snd_xga_heartbeat)
				global.darkeater_active = 0;
										
										
										
				//DESTROY HEALTH UI
								
				if (instance_exists(obj_originalHP_block))
				{
					with(obj_originalHP_block)
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
				if (!instance_exists(obj_player_spawnhere)) && (!instance_exists(obj_player_jumpingDM_spawnhere))
				{
					room_goto(rm_load);
				} 
				else if (instance_exists(obj_player_spawnhere)) or (instance_exists(obj_player_jumpingDM_spawnhere))
				{
					room_goto(room)
				}
											
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
				if (!instance_exists(obj_player_spawnhere)) && (!instance_exists(obj_player_jumpingDM_spawnhere))
				{
					room_goto(global.roomgoto1);
				} 
				else if (instance_exists(obj_player_spawnhere)) or (instance_exists(obj_player_jumpingDM_spawnhere))
				{
					room_goto(room)
				}
										
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
					
					//HEALTH UI	CO-ORDS
					if (instance_exists(obj_originalHP_block))
					{
						with(obj_originalHP_block)
						{
							x = 28+xpos-sprite_width;
							y = 3+ypos;
						}
					}
								
					if (instance_exists(obj_originalHP_block_start))
					{
						with(obj_originalHP_block_start)
						{
							x = 28+xpos-sprite_width;
							y = 3+ypos;
						}
					}
					
					//ABILITY CO-ORDS
					abilities();
					
					if (instance_exists(obj_ability_invisibility))
					{
						with(obj_ability_invisibility)
						{
							x = drawX+(abilitylimitID*17)-17;
							y = drawY;
						}
						with(obj_number_1_invis)
						{
							x = obj_ability_invisibility.x+10;
							y = obj_ability_invisibility.y+15;
						}
						with(obj_number_10_invis)
						{
							x = obj_ability_invisibility.x+6;
							y = obj_ability_invisibility.y+15;
						}
						with(obj_number_100_invis)
						{
							x = obj_ability_invisibility.x+2;
							y = obj_ability_invisibility.y+15;
						}
					}
					if (instance_exists(obj_ability_nanoshield))
					{
						with(obj_ability_nanoshield)
						{
							x = drawX+(abilitylimitID*17)-17;
							y = drawY;
						}
						with(obj_number_1_nanoshield)
						{
							x = obj_ability_nanoshield.x+10;
							y = obj_ability_nanoshield.y+15;
						}
						with(obj_number_10_nanoshield)
						{
							x = obj_ability_nanoshield.x+6;
							y = obj_ability_nanoshield.y+15;
						}
						with(obj_number_100_nanoshield)
						{
							x = obj_ability_nanoshield.x+2;
							y = obj_ability_nanoshield.y+15;
						}
					}
					if (instance_exists(obj_ability_nuclearblast))
					{
						with(obj_ability_nuclearblast)
						{
							x = drawX+(abilitylimitID*17)-17;
							y = drawY;
						}
						with(obj_number_1_nuclearblast)
						{
							x = obj_ability_nuclearblast.x+10
							y = obj_ability_nuclearblast.y+15;
						}
						with(obj_number_10_nuclearblast)
						{
							x = obj_ability_nuclearblast.x+6
							y = obj_ability_nuclearblast.y+15;
						}
						with(obj_number_100_nuclearblast)
						{
							x = obj_ability_nuclearblast.x+2;
							y = obj_ability_nuclearblast.y+15;
						}
					}
					if (instance_exists(obj_ability_shockwave))
					{
						with(obj_ability_shockwave)
						{
							x = drawX+(abilitylimitID*17)-17;
							y = drawY;
						}
						with(obj_number_1_shockwave)
						{
							x = obj_ability_shockwave.x+10
							y = obj_ability_shockwave.y+15;
						}
						with(obj_number_10_shockwave)
						{
							x = obj_ability_shockwave.x+6
							y = obj_ability_shockwave.y+15;
						}
						with(obj_number_100_shockwave)
						{
							x = obj_ability_shockwave.x+2
							y = obj_ability_shockwave.y+15;
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
								global.health1 = 6
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
	                global.lockdown_facingDir = 0;
					
					//reset to original music is escaped xga
					ResetOriginalMusic()
					
					global.darkeater_active = 0
					
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
