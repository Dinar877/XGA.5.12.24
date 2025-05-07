/// @description Insert description here
// You can write your code in this editor
if (counter < 1.0) && (counterkill <= 0)
{
	counter += 0.005	
}
else if (counterkill > 0) && (counter > 0)
{
	counter -= 0.005	
}
else if (counterkill > 0) && (counter <= 0)
{
	audio_stop_sound(ost_startscrn)
	if (audio_emitter_exists(global.inst_audio_emitterID[inst_n]))
	{
		audio_emitter_free(global.inst_audio_emitterID[inst_n]);
	}
}

if (audio_emitter_exists(global.inst_audio_emitterID[inst_n]))
{
	if (!audio_is_paused(ost_startscrn)) && (counterkill <= 0) && (!audio_is_playing(ost_startscrn))
	{
		audio_play_sound_on(global.inst_audio_emitterID[inst_n],ost_startscrn,true,100,global.music_volume)
	}
	audio_emitter_gain(global.inst_audio_emitterID[inst_n],counter)
}

_time += 0.25

if (instance_exists(obj_floatpoint11))
{	
	counterkill = 1
	if (instance_exists(obj_texty))
	{
		instance_destroy(obj_texty)
	}
	
	if (instance_exists(obj_load_text))
	{
		obj_load_text.death3 = 1
		with(obj_load_text)
		{
			alpha -= 0.15;
		}
	}
	
	if (instance_exists(obj_load_text_no))
	{
		obj_load_text_no.death1 = 1
		if (instance_exists(obj_load_text_no))
		{
			with(obj_load_text_no)
			{
				alpha -= 0.15;
				text = -1
			}
		}
	}
	
	if (instance_exists(obj_load_text_yes))
	{
		obj_load_text_yes.death1 = 1
		if (instance_exists(obj_load_text_yes))
		{
			with(obj_load_text_yes)
			{
				alpha -= 0.15;
				text = -1
			}
		}
	}
	
	if (instance_exists(obj_casualmode))
	{
		with(obj_casualmode)
		{
			alpha -= 0.15;
		}
	}
	
	if (instance_exists(obj_recommendedmode))
	{
		obj_recommendedmode.death1 = 1
		with(obj_recommendedmode)
		{
			alpha -= 0.15;
		}
	}
	
	if (x < obj_floatpoint11.x-30) && (x < obj_floatpoint11.x)
	{
		x+= 16;	
	}
	else if (x >= obj_floatpoint11.x-30) && (x < obj_floatpoint11.x)
	{
		x+= 1/2;	
	}
	
	if (y > obj_floatpoint11.y-30) && (y > obj_floatpoint11.y)
	{
		y-= 16;	
	}
	else if (y <= obj_floatpoint11.y-30) && (y > obj_floatpoint11.y)
	{
		y-= 1/2;	
	}
	
	if (y <= obj_floatpoint11.y) && (x >= obj_floatpoint11.x)
	{
		id.layer = layer_get_id("Inst_healthui_mapborder")
		image_xscale += 1;
		image_yscale += 1;
	}
}

if (image_xscale >= 40) && (death1 = 0)
{
	draw_set_alpha(1)
	
	if (file_exists("XGA.SAVEFILE.dat")) && (global.loading_startgame = 1)
	{
		Loading()
		
		instance_activate_all()
		
		
		//health blocks
		var np1 = (instance_number(obj_originalHP_block))
		var np2 = (instance_number(obj_originalHP_block_start))
	
		if (global.health_limit > np1+np2)
		{
			while (global.health_limit > np1+np2)
			{
				instance_create_layer(__view_get( e__VW.XView, 0 )+28,__view_get( e__VW.YView, 0 )+3,layer_get_id("Inst_healthui"),obj_originalHP_block);
				var np1 = (instance_number(obj_originalHP_block))
				var np2 = (instance_number(obj_originalHP_block_start))
			}
		}
		
		
		
		//health
		#region
			if (instance_exists(obj_link_healthUI))
			{
				with(obj_link_healthUI)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_healthbar))
			{
				with(obj_healthbar)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_healthblock1))
			{
				with(obj_healthblock1)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_healthblockstart))
			{
				with(obj_healthblockstart)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_health_sparetank_100))
			{
				with(obj_health_sparetank_100)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_healthnumberone))
			{
				with(obj_healthnumberone)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_healthnumberten))
			{
				with(obj_healthnumberten)
				{
					image_alpha = 0
				}
			}
			#endregion
			
		//ammo
		#region
		if (instance_exists(obj_number_100_ammo))
			{
				with(obj_number_100_ammo)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_number_10_ammo))
			{
				with(obj_number_10_ammo)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_number_1_ammo))
			{
				with(obj_number_1_ammo)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_ammo_icon))
			{
				with(obj_ammo_icon)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_number_ammo_bg))
			{
				with(obj_number_ammo_bg)
				{
					image_alpha = 0
				}
			}
		#endregion
	
		//map
		#region
		if (instance_exists(obj_link_map))
			{
				with(obj_link_map)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_maptile_tile))
			{
				with(obj_maptile_tile)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_maptile_tile_differentsector))
			{
				with(obj_maptile_tile_differentsector)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_maptile_tile_hint))
			{
				with(obj_maptile_tile_hint)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_maptile_tile_hint_item))
			{
				with(obj_maptile_tile_hint_item)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_mapborder))
			{
				with(obj_mapborder)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_mapborder_underside))
			{
				with(obj_mapborder_underside)
				{
					image_alpha = 0
				}
			}
		#endregion
	
		//abilities
		#region
			if (instance_exists(obj_link_healthUI))
			{
				with(obj_link_healthUI)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_ability_invisibility))
			{
				with(obj_ability_invisibility)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_ability_nanoshield))
			{
				with(obj_ability_nanoshield)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_ability_nuclearblast))
			{
				with(obj_ability_nuclearblast)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_number_1_invis))
			{
				with(obj_number_1_invis)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_number_10_invis))
			{
				with(obj_number_10_invis)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_number_100_invis))
			{
				with(obj_number_100_invis)
				{
					image_alpha = 0
				}
			}
		
			if (instance_exists(obj_number_1_nanoshield))
			{
				with(obj_number_1_nanoshield)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_number_10_nanoshield))
			{
				with(obj_number_10_nanoshield)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_number_100_nanoshield))
			{
				with(obj_number_100_nanoshield)
				{
					image_alpha = 0
				}
			}
		
			if (instance_exists(obj_number_1_nuclearblast))
			{
				with(obj_number_1_nuclearblast)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_number_10_nuclearblast))
			{
				with(obj_number_10_nuclearblast)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_number_100_nuclearblast))
			{
				with(obj_number_100_nuclearblast)
				{
					image_alpha = 0
				}
			}
			#endregion
		
		room_goto(global.roomgoto1)
		
		audio_stop_sound(ost_startscrn)
	}
	else if (!file_exists("XGA.SAVEFILE.dat")) or (global.loading_startgame = 0)
	{
		if (file_exists("XGA.SAVEFILE.dat"))
		{
			file_delete("XGA.SAVEFILE.dat")
		}
		global.upgradecollected[999] = 0;
		global.upgradecollected_main[999] = 0;
		global.upgradetrue[999] = 0;
		global.upgradeID_room[999] = 0
		global.upgradeID_N = 0;
	
		global.tilex[9999] = 0;
		global.tiley[9999] = 0;
		global.tiledata[9999] = 0;
		global.tilesprite[9999] = 0;
		global.tilesector[9999] = 0;
		global.tileroom[9999] = 0;
		
		global.tileblocker[9999] = 0;
		global.tileblocker2[9999] = 0;
		global.tileitem[9999] = 0;
		global.tile_hazard[9999] = 0;
		global.tile_hazard_sprite[9999] = 0;
		global.tile_hazard_redblockerID[9999] = 0;
		global.tiledataN = 0;
	
		global.mapgrid_tilegivenX[9999] = 0;
		global.mapgrid_tilegivenY[9999] = 0;
		global.mapgrid_tilegivenN = 0;
		
		global.doors_redblocker[999] = 0;
		global.bossblockers[999] = 0
		
		instance_activate_all()
		
		//health
		#region
			if (instance_exists(obj_link_healthUI))
			{
				with(obj_link_healthUI)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_healthbar))
			{
				with(obj_healthbar)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_healthblock1))
			{
				with(obj_healthblock1)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_healthblockstart))
			{
				with(obj_healthblockstart)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_health_sparetank_100))
			{
				with(obj_health_sparetank_100)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_healthnumberone))
			{
				with(obj_healthnumberone)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_healthnumberten))
			{
				with(obj_healthnumberten)
				{
					image_alpha = 0
				}
			}
			#endregion
	
		//ammo
		#region
		if (instance_exists(obj_number_100_ammo))
			{
				with(obj_number_100_ammo)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_number_10_ammo))
			{
				with(obj_number_10_ammo)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_number_1_ammo))
			{
				with(obj_number_1_ammo)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_ammo_icon))
			{
				with(obj_ammo_icon)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_number_ammo_bg))
			{
				with(obj_number_ammo_bg)
				{
					image_alpha = 0
				}
			}
		#endregion
	
		//map
		#region
		if (instance_exists(obj_link_map))
			{
				with(obj_link_map)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_maptile_tile))
			{
				with(obj_maptile_tile)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_maptile_tile_differentsector))
			{
				with(obj_maptile_tile_differentsector)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_maptile_tile_hint))
			{
				with(obj_maptile_tile_hint)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_maptile_tile_hint_item))
			{
				with(obj_maptile_tile_hint_item)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_mapborder))
			{
				with(obj_mapborder)
				{
					image_alpha = 0
				}
			}
		if (instance_exists(obj_mapborder_underside))
			{
				with(obj_mapborder_underside)
				{
					image_alpha = 0
				}
			}
		#endregion
	
		//abilities
		#region
			if (instance_exists(obj_link_healthUI))
			{
				with(obj_link_healthUI)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_ability_invisibility))
			{
				with(obj_ability_invisibility)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_ability_nanoshield))
			{
				with(obj_ability_nanoshield)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_ability_nuclearblast))
			{
				with(obj_ability_nuclearblast)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_number_1_invis))
			{
				with(obj_number_1_invis)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_number_10_invis))
			{
				with(obj_number_10_invis)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_number_100_invis))
			{
				with(obj_number_100_invis)
				{
					image_alpha = 0
				}
			}
		
			if (instance_exists(obj_number_1_nanoshield))
			{
				with(obj_number_1_nanoshield)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_number_10_nanoshield))
			{
				with(obj_number_10_nanoshield)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_number_100_nanoshield))
			{
				with(obj_number_100_nanoshield)
				{
					image_alpha = 0
				}
			}
		
			if (instance_exists(obj_number_1_nuclearblast))
			{
				with(obj_number_1_nuclearblast)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_number_10_nuclearblast))
			{
				with(obj_number_10_nuclearblast)
				{
					image_alpha = 0
				}
			}
			if (instance_exists(obj_number_100_nuclearblast))
			{
				with(obj_number_100_nuclearblast)
				{
					image_alpha = 0
				}
			}
			#endregion
		
		if (global.mode_test == 0)
		{
			room_goto(rm_opening_x1)
			
			audio_stop_sound(ost_startscrn)
		}
		else if (global.mode_test == 1)
		{
			room_goto(global.doorpath1)
			
			audio_stop_sound(ost_startscrn)
		}
	}
	death1 = 1;
}

if (death1 = 1) && (room != rm_load)
{
	if (global.loading_startgame = 1)
	{
		global.cutscene = 0
		instance_deactivate_object(obj_player);
		instance_deactivate_object(object_player2_0_sprites);
	}
	draw_set_alpha(1)
	
	if (!instance_exists(obj_text_spawning_opening_1)) && (global.cutscene = 1) && (room != rm_trueintro_opening_TEXT)
	{
		instance_deactivate_all(true);
	}
	
	
	sprite_index = spr_scrnDark
	image_alpha -= (1/room_speed)/3;
	
	//health
	#region
		if (instance_exists(obj_link_healthUI))
		{
			with(obj_link_healthUI)
			{
				image_alpha += 0.08
			}
		}
		if (instance_exists(obj_healthbar))
		{
			with(obj_healthbar)
			{
				image_alpha += 0.08
			}
		}
		if (instance_exists(obj_healthblock1))
		{
			with(obj_healthblock1)
			{
				image_alpha += 0.08
			}
		}
		if (instance_exists(obj_healthblockstart))
		{
			with(obj_healthblockstart)
			{
				image_alpha += 0.08
			}
		}
		if (instance_exists(obj_health_sparetank_100))
		{
			with(obj_health_sparetank_100)
			{
				image_alpha += 0.08
			}
		}
		if (instance_exists(obj_healthnumberone))
		{
			with(obj_healthnumberone)
			{
				image_alpha += 0.08
			}
		}
		if (instance_exists(obj_healthnumberten))
		{
			with(obj_healthnumberten)
			{
				image_alpha += 0.08
			}
		}
		#endregion
	
	//ammo
	#region
		if (instance_exists(obj_number_100_ammo))
			{
				with(obj_number_100_ammo)
				{
					image_alpha += 0.08
				}
			}
		if (instance_exists(obj_number_10_ammo))
			{
				with(obj_number_10_ammo)
				{
					image_alpha += 0.08
				}
			}
		if (instance_exists(obj_number_1_ammo))
			{
				with(obj_number_1_ammo)
				{
					image_alpha += 0.08
				}
			}
		if (instance_exists(obj_ammo_icon))
			{
				with(obj_ammo_icon)
				{
					image_alpha += 0.08
				}
			}
		if (instance_exists(obj_number_ammo_bg))
			{
				with(obj_number_ammo_bg)
				{
					image_alpha += 0.08
				}
			}
		#endregion
	
	//map
	#region
	if (instance_exists(obj_link_map))
		{
			with(obj_link_map)
			{
				image_alpha += 0.08
			}
		}
	if (instance_exists(obj_maptile_tile))
		{
			with(obj_maptile_tile)
			{
				image_alpha += 0.08
			}
		}
	if (instance_exists(obj_maptile_tile_differentsector))
		{
			with(obj_maptile_tile_differentsector)
			{
				image_alpha += 0.08
			}
		}
	if (instance_exists(obj_maptile_tile_hint))
		{
			with(obj_maptile_tile_hint)
			{
				image_alpha += 0.08
			}
		}
	if (instance_exists(obj_maptile_tile_hint_item))
		{
			with(obj_maptile_tile_hint_item)
			{
				image_alpha += 0.08
			}
		}
	if (instance_exists(obj_mapborder))
		{
			with(obj_mapborder)
			{
				image_alpha += 0.08
			}
		}
	if (instance_exists(obj_mapborder_underside))
		{
			with(obj_mapborder_underside)
			{
				image_alpha += 0.08
			}
		}
	#endregion
	
	//abilities
	#region
		if (instance_exists(obj_link_healthUI))
		{
			with(obj_link_healthUI)
			{
				image_alpha += 0.08
			}
		}
		if (instance_exists(obj_ability_invisibility))
		{
			with(obj_ability_invisibility)
			{
				image_alpha += 0.08
			}
		}
		if (instance_exists(obj_ability_nanoshield))
		{
			with(obj_ability_nanoshield)
			{
				image_alpha += 0.08
			}
		}
		if (instance_exists(obj_ability_nuclearblast))
		{
			with(obj_ability_nuclearblast)
			{
				image_alpha += 0.08
			}
		}
		if (instance_exists(obj_number_1_invis))
		{
			with(obj_number_1_invis)
			{
				image_alpha += 0.08
			}
		}
		if (instance_exists(obj_number_10_invis))
		{
			with(obj_number_10_invis)
			{
				image_alpha += 0.08
			}
		}
		if (instance_exists(obj_number_100_invis))
		{
			with(obj_number_100_invis)
			{
				image_alpha += 0.08
			}
		}
		
		if (instance_exists(obj_number_1_nanoshield))
		{
			with(obj_number_1_nanoshield)
			{
				image_alpha += 0.08
			}
		}
		if (instance_exists(obj_number_10_nanoshield))
		{
			with(obj_number_10_nanoshield)
			{
				image_alpha += 0.08
			}
		}
		if (instance_exists(obj_number_100_nanoshield))
		{
			with(obj_number_100_nanoshield)
			{
				image_alpha += 0.08
			}
		}
		
		if (instance_exists(obj_number_1_nuclearblast))
		{
			with(obj_number_1_nuclearblast)
			{
				image_alpha += 0.08
			}
		}
		if (instance_exists(obj_number_10_nuclearblast))
		{
			with(obj_number_10_nuclearblast)
			{
				image_alpha += 0.08
			}
		}
		if (instance_exists(obj_number_100_nuclearblast))
		{
			with(obj_number_100_nuclearblast)
			{
				image_alpha += 0.08
			}
		}
		#endregion
	
	
	if (scrn > -1)
	{
		sprite_delete(scrn)	
	}
	x = __view_get( e__VW.XView, 0 )-150;
    y = __view_get( e__VW.YView, 0 )-152;
	
	if (global.cutscene = 1) && (image_alpha <= 0) && (room != rm_trueintro_opening_TEXT)
	{
		draw_set_alpha(1)
		instance_activate_object(obj_text_spawning_opening_1);
		instance_activate_object(obj_texty_generic_upgrade);
		instance_activate_object(obj_intro_cutsceneplayer);
		instance_activate_object(obj_camera_intro);
		instance_create(26,20,obj_text_spawning_opening_1)
		
		audio_stop_sound(ost_startscrn)
		
		instance_destroy()
	}

	if (image_alpha <= 0) && (global.cutscene = 0)
	{
			draw_set_alpha(1)
			
			audio_stop_sound(ost_startscrn)
			
			instance_destroy()
	}
}