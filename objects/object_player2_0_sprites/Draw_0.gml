 //palette stuff
if (!surface_exists(surface))
{
	surface = surface_create(200,200);	
}
if (!surface_exists(surface2))
{
	surface2 = surface_create(200,200);	
}
if (!surface_exists(surface3))
{
	surface3 = surface_create(200,200);	
}

if (surface_exists(surface)) && (global.pause <= 0) 
&& (image_alpha > 0) && (sprite_index > 0)
{
	surface_set_target(surface3);
	
	draw_clear_alpha(c_white,0);
	
	draw_set_alpha(image_alpha)
	
	draw_sprite(sprite_index, image_index, 100, 100);
	
	
	//suit palette swapping
	if (global.suit_shock = 1)
	{
		palette_drawevent()
	}
	else if (global.suit_pure = 1)
	{
		palette_drawevent()
	}
	
	
	surface_reset_target();
	
	if (global.nanoshield = 1) or (global.nuclearblast = 1) or (global.shockwave = 1) or (global.invisibility == 1)
	{
		draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,1.0)
	}
	else if (global.invisibility == 0) && (global.nuclearblast <= 0) && (global.nanoshield == 0) && (global.navigation_effect == 0)
	{
		draw_surface(surface3,x-100,y-100)
	}
	
	//Invisibility
	#region
	if (global.invisibility > 0)
	{
		surface_set_target(surface);
		draw_clear_alpha(c_black, 0);
		draw_sprite(sprite_index, image_index, 100, 100);
		surface_reset_target();
		
		surface_set_target(surface2);
		draw_clear_alpha(c_black, 1);
		gpu_set_blendmode(bm_subtract);
		draw_surface(surface,0,0);
		gpu_set_blendmode(bm_normal);
		surface_reset_target()
		
		surface_set_target(surface);
		draw_clear_alpha(c_black, 1);
		if (global.invisibility_state = 0)
		{
			draw_sprite(spr_invisibility_effect, 0, 100, 100);
		}
		else if (global.invisibility_state = 1)
		{
			draw_sprite(spr_super_invisibility_effect, 0, 100, 100);
		}
		gpu_set_blendmode(bm_subtract);
		draw_surface(surface2,0,0);
		gpu_set_blendmode(bm_normal);
		surface_reset_target();
	}
	
	if (surface != -1) && (global.invisibility > 0)
	{
		draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.1)
		draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
	}
	#endregion
	
	//Nanoshield
	#region
	if (global.nanoshield> 0)
	{
		surface_set_target(surface);
		draw_clear_alpha(c_black, 0);
		draw_sprite(sprite_index, image_index, 100, 100);
		surface_reset_target();
		
		surface_set_target(surface2);
		draw_clear_alpha(c_black, 1);
		gpu_set_blendmode(bm_subtract);
		draw_surface(surface,0,0);
		gpu_set_blendmode(bm_normal);
		surface_reset_target()
		
		surface_set_target(surface);
		draw_clear_alpha(c_black, 1);
		if (global.nanoshield_state = 0)
		{
			draw_sprite(spr_nanoshield_effect, 0, 100, 100);
		}
		else if (global.nanoshield_state = 1)
		{
			draw_sprite(spr_super_nanoshield_effect, 0, 100, 100);
		}
		gpu_set_blendmode(bm_subtract);
		draw_surface(surface2,0,0);
		gpu_set_blendmode(bm_normal);
		surface_reset_target();
	}
	
	if (surface != -1) && (global.nanoshield > 0)
	{
		draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,1.0)
		draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
	}
	#endregion
	
	//Nuclearblast
	#region
	if (global.nuclearblast > 0)
	{
		surface_set_target(surface);
		draw_clear_alpha(c_black, 0);
		draw_sprite(sprite_index, image_index, 100, 100);
		surface_reset_target();
		
		surface_set_target(surface2);
		draw_clear_alpha(c_black, 1);
		gpu_set_blendmode(bm_subtract);
		draw_surface(surface,0,0);
		gpu_set_blendmode(bm_normal);
		surface_reset_target()
		
		surface_set_target(surface);
		draw_clear_alpha(c_black, 1);
		if (global.nuclearblast_state = 0)
		{
			draw_sprite(spr_nuclearblast_effect, 0, 100, 100);
		}
		else if (global.nuclearblast_state = 1)
		{
			draw_sprite(spr_super_nuclearblast_effect, 0, 100, 100);
		}
		gpu_set_blendmode(bm_subtract);
		draw_surface(surface2,0,0);
		gpu_set_blendmode(bm_normal);
		surface_reset_target();
	}
	
	if (surface != -1) && (global.nuclearblast > 0)
	{
		draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,1.0)
		draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
	}
	#endregion
	
	//SHOCKWAVE
	#region
	if (global.shockwave > 0)
	{
		surface_set_target(surface);
		draw_clear_alpha(c_black, 0);
		draw_sprite(sprite_index, image_index, 100, 100);
		surface_reset_target();
		
		surface_set_target(surface2);
		draw_clear_alpha(c_black, 1);
		gpu_set_blendmode(bm_subtract);
		draw_surface(surface,0,0);
		gpu_set_blendmode(bm_normal);
		surface_reset_target()
		
		surface_set_target(surface);
		draw_clear_alpha(c_black, 1);
		if (global.shockwave_state = 0)
		{
			draw_sprite(spr_shockwave_effect, 0, 100, 100);
		}
		else if (global.shockwave_state = 1)
		{
			draw_sprite(spr_super_shockwave_effect, 0, 100, 100);
		}
		gpu_set_blendmode(bm_subtract);
		draw_surface(surface2,0,0);
		gpu_set_blendmode(bm_normal);
		surface_reset_target();
	}
	
	if (surface != -1) && (global.shockwave > 0)
	{
		draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,1.0)
		draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
	}
	#endregion
	
	
	//NAV Room effects
	#region
	//DATAROOM EFFECT
	if (global.corelock_engage = 0)
	{
		if (global.upgrade_process_data_active > 0)
		{				
			surface_set_target(surface);
			draw_clear_alpha(c_black, 0);
			
			//draw normal sprite
			if (global.suit_shock = 1)
			{
				palette_drawevent()
			}
			else if (global.suit_pure = 1)
			{
				palette_drawevent()
			}
			else draw_sprite(sprite_index, image_index, 100, 100);
			
			
			surface_reset_target();
		
			surface_set_target(surface2);
			draw_clear_alpha(c_black, 1);
			gpu_set_blendmode(bm_subtract);
			draw_surface(surface,0,0);
			gpu_set_blendmode(bm_normal);
			surface_reset_target()
		
			surface_set_target(surface);
			draw_clear_alpha(c_black, 1);
			draw_sprite(spr_corelock_scrn, surface3index, 50, 50);
			gpu_set_blendmode(bm_subtract);
			draw_surface(surface2,0,0);
			gpu_set_blendmode(bm_normal);
			surface_reset_target();
		}
	
		if (surface != -1) && (global.upgrade_process_data_active > 0)
		{
			with(obj_player)
			{
				input_horizontal = 0
				jump_pressed = 0
				global.charging = 0
				global.charge_ready = 0
				if (state = Move)
				{
					State_machine_switch_state(Idle)
				}
				else if (state = Shooting)
				{
					State_machine_switch_state(Idle)
				}
			}
			
			audio_stop_sound(global.sector_music)
			
			shader_set(shd_fade_whitegreen);
			shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, surface3alpha);
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,1.0)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,0.7);
			shader_reset();
		
			if (data_timer < 60*5)
			{
				data_timer++	
				
				if (!audio_is_playing(snd_downloading))
				{
					audio_play_sound(snd_downloading,1000,true,global.sfx_volume)
					audio_sound_gain(snd_downloading,0,0)
					audio_sound_gain(snd_downloading,global.music_volume,1200)
				}
			}
			else if (data_timer >= 60*5)
			{
				data_timer = 0
				global.upgrade_process_data_active = 0;
				global.upgrade_process_data = 0;
				global.upgrade_process = 0
				global.spacestation_active = 1
				global.xleft = 0
				global.yup = 0
				global.navigation = 1
				
				//unlocks yellow door leading to main sector
				global.doors_redblocker[11] = 1
				
				audio_stop_sound(snd_downloading)
				
				global.sector_music = ost_ciri_TheMission
				
				audio_play_sound(global.sector_music,2000,true)
				audio_sound_gain(global.sector_music,0,0)
				audio_sound_gain(global.sector_music,global.music_volume,1500)
				
				instance_deactivate_object(obj_link_healthUI)
				instance_deactivate_object(obj_link_map)
				instance_deactivate_object(obj_maptile_tile_differentsector)
				instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui2"),obj_scrnDark_navigational);
				instance_create_layer(__view_get( e__VW.XView, 0 ),obj_camera.y-80,layer_get_id("Inst_healthui_mapborder"),obj_scrnDark_navigational2_test1);
				with(obj_scrnDark_navigational2_test1)
				{
					spawningID = other.textspawnerID;
				}
			}
		}
	}
	
	//DATA EFFECT
	if (global.corelock_engage = 1) && (global.corelock_engage_xvision = 1)
	{
		if (global.upgrade_process_data_active > 0)
		{
			//so the animation doesn't get stopped by any abilities
			global.nanoshield = 0
			global.invisibility = 0
			global.nuclearblast = 0
			global.shockwave = 0;
			
			surface_set_target(surface);
			draw_clear_alpha(c_black, 0);
			
			//draw normal sprite
			if (global.suit_shock = 1)
			{
				palette_drawevent()
			}
			else if (global.suit_pure = 1)
			{
				palette_drawevent()
			}
			else draw_sprite(sprite_index, image_index, 100, 100);
			
			surface_reset_target();
		
			surface_set_target(surface2);
			draw_clear_alpha(c_black, 1);
			gpu_set_blendmode(bm_subtract);
			draw_surface(surface,0,0);
			gpu_set_blendmode(bm_normal);
			surface_reset_target()
		
			surface_set_target(surface);
			draw_clear_alpha(c_black, 1);
			draw_sprite(spr_shop_scrn, surface3index, 50, 50);
			gpu_set_blendmode(bm_subtract);
			draw_surface(surface2,0,0);
			gpu_set_blendmode(bm_normal);
			surface_reset_target();
		}
	
		if (surface != -1) && (global.upgrade_process_data_active > 0)
		{
			with(obj_player)
			{
				input_horizontal = 0
				if (state = Move)
				{
					State_machine_switch_state(Idle)
				}
				else if (state = Shooting)
				{
					State_machine_switch_state(Idle)
				}
			}
			
			shader_set(shd_fade_whitegreen);
			shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, surface3alpha);
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,1.0)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,0.7);
			shader_reset();
		
			if (data_timer < 60*5)
			{
				data_timer++	
				
				if (!audio_is_playing(snd_downloading))
				{
					audio_play_sound(snd_downloading,1000,true,global.sfx_volume)
					audio_sound_gain(snd_downloading,0,0)
					audio_sound_gain(snd_downloading,global.sfx_volume,1200)
				}
			}
			else if (data_timer >= 60*5)
			{
				data_timer = 0
				global.upgrade_process_data_active = 0;
				global.upgrade_process_data = 0;
				global.upgrade_process = 0
				global.corelock_engage = 0;
				
				audio_stop_sound(snd_downloading)
				
				audio_stop_sound(snd_player_footstep)
				audio_stop_sound(snd_player_hang)
				audio_stop_sound(snd_player_climb)
				audio_stop_sound(snd_player_screwattack)
				var snd = irandom_range(snd_pickup1,snd_pickup2)
				audio_play_sound(snd,1,false,global.sfx_volume)
				global.upgrade_process = 1;
				
				Item_upgradegot_effect()
		
				/*
				instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrn_roomtransition)
				
				instance_create_layer(obj_camera.x-160,obj_camera.y-22,layer_get_id("Inst_healthui2"),obj_upgradeprocess_text_underside);
				var tex = instance_create_layer(obj_camera.x-35,obj_camera.y-16,layer_get_id("Inst_healthui"),obj_texty_generic_upgrade);
				text = " X VISION";
				upgradeID = 957
				
				with(tex)
				{
					text = " X VISION";
					spd = 1;
					spawnerID = object_player2_0_sprites.id;
					font = font_regular1;
	
					text_length = string_length(text)
					font_size = font_get_size(font)
	
					draw_set_font(font);
	
					text_width = string_width_ext(text,font_size+(font_size/2),280);
					text_height = string_height_ext(text,font_size+(font_size/2),30);
				}
	
	
				var tex2 = instance_create_layer(obj_camera.x-131,obj_camera.y+4,layer_get_id("Inst_healthui"),obj_texty_generic_upgrade);

				with(tex2)
				{
					text = " LETS YOU SEE MORE CLEARLY IN PITCH BLACK DARKNESS.";
					spd = 1;
					spawnerID = object_player2_0_sprites.id;
					font = font_regular1;
	
					text_length = string_length(text)
					font_size = font_get_size(font)
	
					draw_set_font(font);
	
					text_width = string_width_ext(text,font_size+(font_size/2),280);
					text_height = string_height_ext(text,font_size+(font_size/2),30);
				}
				*/
				
				global.xvision = 1
				global.corelock_engage_xvision = 0

				global.pause_player = 0
				
				global.upgradecollected[957] = 1
				
				with(obj_player)
				{
					State_machine_switch_state(Idle)	
				}
			}
		}
	}
	
	
	//navigation
	if (global.navigation_effect > 0)
	{	
		with(obj_player)
		{
			input_horizontal = 0
			if (state = Move)
			{
				State_machine_switch_state(Idle)
			}
			else if (state = Shooting)
				{
					State_machine_switch_state(Idle)
				}
		}
		
		surface_set_target(surface);
		draw_clear_alpha(c_black, 0);
		
		//draw normal sprite
		if (global.suit_shock = 1)
		{
			palette_drawevent()
		}
		else if (global.suit_pure = 1)
		{
			palette_drawevent()
		}
		else draw_sprite(sprite_index, image_index, 100, 100);
		
		surface_reset_target();
		
		
		surface_set_target(surface2);
		draw_clear_alpha(c_black, 1);
		gpu_set_blendmode(bm_subtract);
		draw_surface(surface,0,0);
		gpu_set_blendmode(bm_normal);
		surface_reset_target()
		
		surface_set_target(surface);
		draw_sprite(spr_navigation_player_effect1, navigation_effect_index, 100, 100);
		gpu_set_blendmode(bm_subtract);
		draw_surface(surface2,0,0);
		gpu_set_blendmode(bm_normal);
		surface_reset_target();
	}
	
	if (surface != -1) && (global.navigation_effect > 0)
	{
		draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,1.0);
		draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,1.0);
	}
	#endregion
	
	if (global.invincible > 0)
	{
		shader_set(shd_flash_white);
		//if ability and charging
		if (surface != -1) && (global.invisibility > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.shockwave > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nanoshield > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nuclearblast > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (global.invisibility == 0) && (global.nuclearblast <= 0) && (global.nanoshield == 0) && (global.navigation_effect == 0)
		{
			draw_surface(surface3,x-100,y-100)
		}
		
		shader_reset();
	}
	
	if (global.frozen > 0) && (FadeNow4 > 0)
	{
		shader_set(shd_fade_whitegreen);
		shader_set_uniform_f(fade_color, 0.4, 1.0, 1.0, FadeNow4);
		//if ability and charging
		if (surface != -1) && (global.invisibility > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.shockwave > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nanoshield > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nuclearblast > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (global.invisibility == 0) && (global.nuclearblast <= 0) && (global.nanoshield == 0) && (global.navigation_effect == 0)
		{
			draw_surface(surface3,x-100,y-100)
		}
		
		shader_reset();
	}
	else if (global.superheated > 0) && (FadeNow4 > 0)
	{
		shader_set(shd_fade_whitegreen);
		shader_set_uniform_f(fade_color, 1.0, 0.0, 0.0, FadeNow4);
		//if ability and charging
		if (surface != -1) && (global.invisibility > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.shockwave > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nanoshield > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nuclearblast > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (global.invisibility == 0) && (global.nuclearblast <= 0) && (global.nanoshield == 0) && (global.navigation_effect == 0)
		{
			draw_surface(surface3,x-100,y-100)
		}
		
		shader_reset();
	}
	
	
	//SWORD Swing state
	if (instance_exists(obj_player))
	{
		if (obj_player.state = Sword_spin) && (global.sword_swing_available > 0)
		{
			shader_set(shd_fade_whitegreen);
			
			if (global.suit_shock <= 0) && (global.suit_pure <= 0)
			{
				shader_set_uniform_f(fade_color, 0.3, 1.0, 0.0, 0.3)
			}
			else if (global.suit_shock <= 0) && (global.suit_pure > 0)
			{
				shader_set_uniform_f(fade_color, 1.0, 0.0, 0.3, 0.3)
			}
			else if (global.suit_shock > 0)
			{
				shader_set_uniform_f(fade_color, 0.9, 0.9, 0.9, 0.3)
			}
			
			//if ability and charging
			if (surface != -1) && (global.invisibility > 0)
			{
				draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
				draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
			}
			else if (surface != -1) && (global.shockwave > 0)
			{
				draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
				draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
			}
			else if (surface != -1) && (global.nanoshield > 0)
			{
				draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
				draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
			}
			else if (surface != -1) && (global.nuclearblast > 0)
			{
				draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
				draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
			}
			else if (global.invisibility == 0) && (global.nuclearblast <= 0) && (global.nanoshield == 0) && (global.navigation_effect == 0)
			{
				draw_surface(surface3,x-100,y-100)
			}
			
			shader_reset();
		}
	}
	
	
	
	//Charging beam
	#region
	if (global.charge_ready > 0) && (global.beam_spread_available = 0) && (global.beam_burn_available = 0) && (global.beam_homing_available = 0)
	 && (global.beam_shield_available = 0)
	{
		shader_set(shd_fade_whitegreen);
		shader_set_uniform_f(fade_color, 0.3, 0.3, 0.8, FadeNow3);
		
		//if ability and charging
		if (surface != -1) && (global.invisibility > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.shockwave > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nanoshield > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nuclearblast > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (global.invisibility == 0) && (global.nuclearblast <= 0) && (global.nanoshield == 0) && (global.navigation_effect == 0)
		{
			draw_surface(surface3,x-100,y-100)
		}
		
		shader_reset();
	}
	
	if (global.charge_ready > 0) && (global.beam_spread_available = 1) && (global.beam_burn_available = 0) && (global.beam_homing_available = 0)
	 && (global.beam_shield_available = 0)
	{
		shader_set(shd_fade_whitegreen);
		shader_set_uniform_f(fade_color, 0.7, 0.1, 0.8, FadeNow3);
		
		//if ability and charging
		if (surface != -1) && (global.invisibility > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.shockwave > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nanoshield > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nuclearblast > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (global.invisibility == 0) && (global.nuclearblast <= 0) && (global.nanoshield == 0) && (global.navigation_effect == 0)
		{
			draw_surface(surface3,x-100,y-100)
		}
		
		shader_reset();
	}
	
	if (global.charge_ready > 0) && (global.beam_burn_available = 1) && (global.beam_homing_available = 0)
	 && (global.beam_shield_available = 0)
	{
		shader_set(shd_fade_whitegreen);
		shader_set_uniform_f(fade_color, 1.0, 0.3, 0.3, FadeNow3);
		//if ability and charging
		if (surface != -1) && (global.invisibility > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.shockwave > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nanoshield > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nuclearblast > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (global.invisibility == 0) && (global.nuclearblast <= 0) && (global.nanoshield == 0) && (global.navigation_effect == 0)
		{
			draw_surface(surface3,x-100,y-100)
		}
		
		shader_reset();
	}
	
	if (global.charge_ready > 0) && (global.beam_homing_available = 1)
	 && (global.beam_shield_available = 0)
	{
		shader_set(shd_fade_whitegreen);
		shader_set_uniform_f(fade_color, 0.2, 1.0, 0.2, FadeNow3);
		//if ability and charging
		if (surface != -1) && (global.invisibility > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.shockwave > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nanoshield > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nuclearblast > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (global.invisibility == 0) && (global.nuclearblast <= 0) && (global.nanoshield == 0) && (global.navigation_effect == 0)
		{
			draw_surface(surface3,x-100,y-100)
		}
		
		shader_reset();
	}
	
	if (global.charge_ready > 0) && (global.beam_shield_available = 1)
	{
		shader_set(shd_fade_whitegreen);
		shader_set_uniform_f(fade_color, 0.8, 0.8, 0.8, FadeNow3);
		//if ability and charging
		if (surface != -1) && (global.invisibility > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.shockwave > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nanoshield > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nuclearblast > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (global.invisibility == 0) && (global.nuclearblast <= 0) && (global.nanoshield == 0) && (global.navigation_effect == 0)
		{
			draw_surface(surface3,x-100,y-100)
		}
		
		shader_reset();
	}
	#endregion
	
	
	//health pickup effect
	if (global.pickup_health > 0) or (global.pickup_health_smaller > 0)
	{
		shader_set(shd_fade_whitegreen);
		shader_set_uniform_f(fade_color, 0.7, 1.0, 0.7, FadeNow);
		//if ability and charging
		if (surface != -1) && (global.invisibility > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.shockwave > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nanoshield > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nuclearblast > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (global.invisibility == 0) && (global.nuclearblast <= 0) && (global.nanoshield == 0) && (global.navigation_effect == 0)
		{
			draw_surface(surface3,x-100,y-100)
		}
		
		shader_reset();
	}
	
	//true intro cutscene
	if (FadeNow_trueintro > 0)
	{
		shader_set(shd_fade_whitegreen);
		shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, FadeNow_trueintro);
		//if ability and charging
		if (surface != -1) && (global.invisibility > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.shockwave > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nanoshield > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (surface != -1) && (global.nuclearblast > 0)
		{
			draw_surface_ext(surface3,x-100,y-100,1,1,0,c_white,0.5)
			draw_surface_ext(surface,x-100,y-100,1,1,0,c_white,surface2_alpha);
		}
		else if (global.invisibility == 0) && (global.nuclearblast <= 0) && (global.nanoshield == 0) && (global.navigation_effect == 0)
		{
			draw_surface(surface3,x-100,y-100)
		}
		
		shader_reset();
	}
	
	
	
	//Distortion Effect
	/*
	if (global.testing_shader_distortion = 1)
	{
		surface_set_target(surface);
		draw_clear_alpha(c_black, 0);
		
		//distortion shader
		shader_set(shd_distortion);
		shader_set_uniform_f( tex, );
			
		//draw normal sprite
		if (global.suit_shock = 1)
		{
			palette_drawevent()
		}
		else if (global.suit_pure = 1)
		{
			palette_drawevent()
		}
		else draw_sprite(sprite_index, image_index, 100, 100);
			
		surface_reset_target();
	}*/
	
	draw_set_alpha(1)
	
	
	surface_free(surface);
	surface_free(surface2);
	surface_free(surface3);
}
else if (!surface_exists(surface)) or (global.pause > 0)
{
	draw_self()
}
/*
else if (sprite_index != -1) && (global.pause_map = 0) && (global.loading = 0)
{
	draw_self();
}
/* */
/*  */
