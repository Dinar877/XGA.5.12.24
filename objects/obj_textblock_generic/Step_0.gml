/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables);

if (FadeNow <= 0)
{
	FadeNow = 0.4;	
}

if (delay < 1) && (selected == 1)
{
	delay += 0.05;	
}

//sprite index
if (lead2resolution = 0) && (lead2controls = 0) && (lead2audio = 0) && (lead2exitgame = 0) && (lead2exitmenu = 0) && (is_audio = 0) && (lead2goback = 0)
{
	if (on > 0)
	{
		sprite_index = spr_newpausescrn_options_block_on;
	}
	else sprite_index = spr_newpausescrn_options_block;
}
else if (is_audio = 0)
{
	sprite_index = spr_pause_options_greyblock  //prestate
}
else sprite_index = spr_pause_options_block //audio


//is audio
if (is_audio = 1) //AUDIO
{
	//turn on/off audio bars
	with(obj_textblock_generic)
	{
		if (selected <= 0)
		{
			if (instance_place(x,y,obj_pause_audiobar))
			{
				with(instance_place(x,y,obj_pause_audiobar))
				{
					selected = 0
				}		
			}	
		}
		else if (selected > 0)
		{
			if (instance_place(x,y,obj_pause_audiobar))
			{
				with(instance_place(x,y,obj_pause_audiobar))
				{
					selected = 1
				}		
			}	
		}
	}
}


if (selected > 0) && (delay >= 1) && (jump_pressed)
{
	//sfx
	audio_stop_sound(snd_button_confirm)
	audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
	
	//UPGRADES
	if (is_upgrade = 1)
	{
		if (charge > 0)
		{
			if (on > 0)
			{
				on = 0
				global.upgrade_charge = 0
			}
			else
			{
				on = 1
				global.upgrade_charge = 1
			}
		}
		else if (spread > 0)
		{
			if (on > 0)
			{
				on = 0
				global.beam_spread_available = 0
			}
			else
			{
				on = 1
				global.beam_spread_available = 1
			}
		}
		else if (burn > 0)
		{
			if (on > 0)
			{
				on = 0
				global.beam_burn_available = 0
			}
			else
			{
				on = 1
				global.beam_burn_available = 1
			}
		}
		else if (reflect > 0)
		{
			if (on > 0)
			{
				on = 0
				global.beam_homing_available = 0
			}
			else
			{
				on = 1
				global.beam_homing_available = 1
			}
		}
		else if (shield > 0)
		{
			if (on > 0)
			{
				on = 0
				global.beam_shield_available = 0
			}
			else
			{
				on = 1
				global.beam_shield_available = 1
			}
		}
		else if (suit_dash > 0)
		{
			if (on > 0)
			{
				on = 0
				global.suit_pure = 0
				global.airdash = 0
				global.speedboots = 0
			}
			else
			{
				on = 1
				global.suit_pure = 1
				global.airdash = 1
				global.speedboots = 1
			}
		}
		else if (suit_shock > 0)
		{
			if (on > 0)
			{
				on = 0
				global.suit_shock = 0
				global.screwjump = 0
			}
			else
			{
				on = 1
				global.suit_shock = 1
				global.screwjump = 1
			}
		}
		else if (wallscaler > 0)
		{
			if (on > 0)
			{
				on = 0
				global.wallscaler = 0
			}
			else
			{
				on = 1
				global.wallscaler = 1
			}
		}
		else if (xvision > 0)
		{
			if (on > 0)
			{
				on = 0
				global.xvision = 0
			}
			else
			{
				on = 1
				global.xvision = 1
			}
		}
		else if (instacharge > 0)
		{
			if (on > 0)
			{
				on = 0
				global.shoot_instacharge_upgrade = 0
			}
			else
			{
				on = 1
				global.shoot_instacharge_upgrade = 1
			}
		}
		else if (airdash > 0)
		{
			if (on > 0)
			{
				on = 0
				global.airdash = 0
			}
			else
			{
				on = 1
				global.airdash = 1
			}
		}
		else if (sword > 0)
		{
			if (on > 0)
			{
				on = 0
				global.sword_available = 0
			}
			else
			{
				on = 1
				global.sword_available = 1
			}
		}
		else if (sword_swing > 0)
		{
			if (on > 0)
			{
				on = 0
				global.sword_swing_available = 0
			}
			else
			{
				on = 1
				global.sword_swing_available = 1
			}
		}
		else if (sword_wave > 0)
		{
			if (on > 0)
			{
				on = 0
				global.sword_wave_available = 0
			}
			else
			{
				on = 1
				global.sword_wave_available = 1
			}
		}
		else if (kelvin > 0)
		{
			if (on > 0)
			{
				on = 0
				global.kelvin = 0
			}
			else
			{
				on = 1
				global.kelvin = 1
			}
		}
		else if (hydrodash > 0)
		{
			if (on > 0)
			{
				on = 0
				global.hydrodash = 0
			}
			else
			{
				on = 1
				global.hydrodash = 1
			}
		}
		else if (autohack > 0)
		{
			if (on > 0)
			{
				on = 0
				global.autohack = 0
			}
			else
			{
				on = 1
				global.autohack = 1
			}
		}
		else if (Sautohack > 0)
		{
			if (on > 0)
			{
				on = 0
				global.superautohack = 0
			}
			else
			{
				on = 1
				global.superautohack = 1
			}
		}
		else if (surgestrike > 0)
		{
			if (on > 0)
			{
				on = 0
				global.screwjump = 0
				if (instance_exists(obj_screwjump_sparks))
				{
					instance_destroy(obj_screwjump_sparks)
				}
			}
			else
			{
				on = 1
				global.screwjump = 1
			}
		}
		else if (spacejump > 0)
		{
			if (on > 0)
			{
				on = 0
				global.spacejump = 0
			}
			else
			{
				on = 1
				global.spacejump = 1
			}
		}
		else if (nanoshield > 0)
		{
			if (on > 0)
			{
				on = 0
				global.nanoshield_available = 0
				global.nanoshield = 0
			}
			else
			{
				on = 1
				global.nanoshield_available = 1
			}
		}
		else if (invisibility > 0)
		{
			if (on > 0)
			{
				on = 0
				global.invisibility_available = 0
				global.invisibility = 0
			}
			else
			{
				on = 1
				global.invisibility_available = 1
			}
		}
		else if (nuclearblast > 0)
		{
			if (on > 0)
			{
				on = 0
				global.nuclearblast_available = 0
				global.nuclearblast = 0
			}
			else
			{
				on = 1
				global.nuclearblast_available = 1
			}
		}
		else if (shockwave > 0)
		{
			if (on > 0)
			{
				on = 0
				global.shockwave_available = 0
				global.shockwave = 0
			}
			else
			{
				on = 1
				global.shockwave_available = 1
			}
		}
	}
	
	//SCREEN SIZES
	if (resolutions = 1) 
	{
		with(obj_textblock_generic)
		{
			if (selected <= 0)
			{
				on = 0	
			}
		}
		
		if (r_320x180 > 0)
		{
			if (on <= 0)
			{
				on = 1
				var view = view_camera[e__VW.Camera];
				window_set_fullscreen(false)
				window_set_size(320,180);
				surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
				global.screenScale = 0;
			}
		}
		else if (r_640x360 > 0)
		{
			if (on <= 0)
			{
				on = 1
				var view = view_camera[e__VW.Camera];
				window_set_fullscreen(false)
				window_set_size(640,360);
				surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
				global.screenScale = 2;
			}
		}
		else if (r_960x540 > 0)
		{
			if (on <= 0)
			{
				on = 1
				var view = view_camera[e__VW.Camera];
				window_set_fullscreen(false)
				window_set_size(960,540);
				surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
				global.screenScale = 4;
			}
		}
		else if (r_1366x768 > 0)
		{
			if (on <= 0)
			{
				on = 1
				var view = view_camera[e__VW.Camera];
				window_set_fullscreen(false)
				window_set_size(1366,768);
				surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
				global.screenScale = 6;
			}
		}
		else if (r_1920x1080 > 0)
		{
			if (on <= 0)
			{
				on = 1
				var view = view_camera[e__VW.Camera];
				window_set_fullscreen(false)
				window_set_size(1920,1080);
				surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
				global.screenScale = 8;
			}
		}
		else if (r_fullscrn > 0)
		{
			if (on <= 0)
			{
				on = 1
				
				if (window_get_fullscreen() == false)
				{
					var view = view_camera[e__VW.Camera];
					window_set_fullscreen(true)
					surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
					global.screenScale = 10;
				}		
			}
		}
		
		//save changes
		SavingUI("XGA.SAVEFILE.UI.dat");
	}
	
	if (lead2audio = 1)
	{
		with(obj_pausescrn1)
		{
			new1 = 0
			prestate = 0
			instate = 3
		}
	}
	else if (lead2controls = 1)
	{
		with(obj_pausescrn1)
		{
			new1 = 0
			prestate = 0
			instate = 2
		}
	}
	else if (lead2resolution = 1)
	{
		with(obj_pausescrn1)
		{
			new1 = 0
			prestate = 0
			instate = 1
		}
	}
	else if (lead2goback = 1)
	{
		//go back to outer option menu
		with(obj_pausescrn1)
		{
			new1 = 0;
			state = 2;
			prestate = 1;
			instate = 0;
			spawn = 0;
		}
		

	}
	else if (lead2exitmenu = 1)
	{
		if (TITLESCREENlead2exitmenu == 0) //normal go back to title screen
		{
			//deactivate
		    instance_activate_object(obj_link_healthUI);
			instance_activate_object(obj_link_audio);
			instance_activate_object(obj_maptile_tile);
			instance_activate_object(obj_link_map);
			instance_activate_object(obj_player_spawnhere);
			instance_activate_object(obj_player);
			instance_activate_object(object_player2_0_sprites);
			instance_activate_object(obj_camera);
			instance_activate_object(obj_link_audio);
		
			//audio stop
			if (global.sector_music > 0) && (audio_is_playing(global.sector_music))
			{
				audio_sound_gain(global.sector_music,0,0)
			}
		
			//global variables
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
		
			//stop all sfx
			audio_stop_all();
		
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
		
			//delete previous menu stuff
			#region
			if (instance_exists(obj_pausescrn1))
					{
						with(obj_pausescrn1)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_map_bg3))
					{
						with(obj_map_bg3)
						{
							instance_destroy();	
						}
					}
				
			if (instance_exists(obj_textblock_generic))
					{
						with(obj_textblock_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_controls_generic))
					{
						with(obj_textblock_controls_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_heading))
					{
						with(obj_textblock_heading)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_mover_generic))
					{
						with(obj_textblock_mover_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow_generic))
					{
						with(obj_textselector_arrow_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_texty_heading))
					{
						with(obj_texty_heading)
						{
							instance_destroy();	
						}
					}

			//map menu stuff delete
			if (instance_exists(obj_maptile_marker_cursor))
					{
						with(obj_maptile_marker_cursor)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowdown))
					{
						with(obj_pausescrn_arrowdown)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowup))
					{
						with(obj_pausescrn_arrowup)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowleft))
					{
						with(obj_pausescrn_arrowleft)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowright))
					{
						with(obj_pausescrn_arrowright)
						{
							instance_destroy();	
						}
					}

				
			//controllers
			if (instance_exists(obj_NEWpausemenu_controller))
					{
						with(obj_NEWpausemenu_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_screensize_controller))
					{
						with(obj_NEWpausemenu_screensize_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_prestate_controller))
					{
						with(obj_NEWpausemenu_prestate_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_audio_controller))
					{
						with(obj_NEWpausemenu_audio_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pause_audiobar))
					{
						with(obj_pause_audiobar)
						{
							instance_destroy();	
						}
					}
	
			//screensize blocks
			if (instance_exists(obj_textblock_320x180))
					{
						with(obj_textblock_320x180)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_640x360))
					{
						with(obj_textblock_640x360)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_960x540))
					{
						with(obj_textblock_960x540)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock1920x1080))
					{
						with(obj_textblock1920x1080)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_1366x768))
					{
						with(obj_textblock_1366x768)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_fullscrn))
					{
						with(obj_textblock_fullscrn)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow))
					{
						with(obj_textselector_arrow)
						{
							instance_destroy();	
						}
					}
										
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
			global.dead_ending = 0;
			global.lockdown_facingDir = 0;
		    global.stopper_2ndscrnshot = 0;
		    global.room_y = 0;
		    global.room_x = 0;
		    global.dashbegin = 0;
		    global.dashcharge = 0;
		    global.dashuse = 0;
		    global.dashend = 0;
			global.darkeater_active = 0
		
			global.pause = 0
			global.pause_transition = 0
			global.pause_exit = 0
			global.pause_map = 0
											
			//go back to titlescreen
			room_goto(rm_titleintro_1)
		}
		else if (TITLESCREENlead2exitmenu == 1) //when on title screen, go back to normal title without the intro
		{
			global.pause_map = 0;
			global.pause_logbook = 0;
			global.pause_options = 0;
			global.pause_status = 0;
			global.pause_exit = 1;
			global.pause_transition = 1;
			if (!instance_exists(obj_scrn_roomtransition))
			{
				instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrn_roomtransition);
			}
		}
	}
	else if (lead2exitgame = 1)
	{
		game_end()	
	}
}

