//makes sure gamepad inputs are recognized
script_execute(Gamepad_variables);


//if game is paused, essentially deactivate player without using the deactivate function
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (global.loading = 1)
or (global.pause = 1)
or (global.pause_exit = 1)
or (global.boss_warning = 1)
or (global.cutscene_suit = 1)
or (global.teleport = 1)
{
	script_execute(player2_0_sprites_standing);
	image_speed = 0;
	if (instance_exists(obj_screwjump_sparks))
	{
		obj_screwjump_sparks.image_speed = 0	
	}
	
	exit;	
}




if (global.invisibility <= 0) && (global.nuclearblast <= 0) && (global.nanoshield <= 0) && ((global.upgrade_process_data > 0) or (global.upgrade_process_data_active > 0))
{
	
	surface3index += 1/4

	if (surface3alpha <= 0.5) && (surface2neg == 1)
	{
		surface2neg = 0;
		surface2pos = 1;
	}
	else if(surface3alpha > 0.5) && (surface2neg == 1)
	{
		surface3alpha -= 0.005;
	}

	if (surface3alpha >= 0.7) && (surface2pos == 1)
	{
		surface2neg = 1;
		surface2pos = 0;
	}
	else if (surface3alpha < 0.7) && (surface2pos == 1)
	{
		surface3alpha += 0.005;
	}

}
else if (global.upgrade_process_data_active <= 0) && (global.upgrade_process_data <= 0)
{
	surface3index = 0;
}

if (global.pause_player > 0)
{
	//typing elevator
	if ((sprite_index = spr_typing_begin_left) or (sprite_index = spr_typing_begin_right)) && (image_index >= image_number-1)
	{
		image_speed = 0;
		image_index = image_number-1
		if (instance_exists(obj_screwjump_sparks))
		{
			instance_destroy(obj_screwjump_sparks)
		}
	}
	if (sprite_index = spr_typing_active_left) && (image_index >= image_number-1)
	{
		image_speed = 0;
		sprite_index = spr_typing_stand
	}
	if (image_index >= image_number-1) && ((sprite_index = spr_typing_end_left) or (sprite_index = spr_typing_end_right))
	{
			image_speed = 1
			global.pause_elevator = 0;
			global.pause_player = 0;
		with(obj_player)
			{
				State_machine_switch_state(Idle)	
			}
	}
	
	
	
	
	
	
	//cutscene- xga being made
	if ((sprite_index = spr_death_left) or (sprite_index = spr_death_right)) && (floor(image_index) == 3) && (image_index < image_number-1) && (!audio_is_playing(snd_electricity1))
	{
		if (!audio_is_playing(snd_electricity1))
		{
			snd = audio_play_sound(snd_electricity1,1000,false,global.sfx_volume)
			audio_sound_set_track_position(snd,2)
		}
	}
	else if ((sprite_index = spr_death_left) or (sprite_index = spr_death_right)) && (floor(image_index) == 9) && (image_index < image_number-1) && (audio_is_playing(snd_electricity1))
	{
		audio_stop_sound(snd_electricity1)
	}
	
	if ((sprite_index = spr_death_left) or (sprite_index = spr_death_right)) && (floor(image_index) == 12) && (image_index < image_number-1)
	{
		if (!audio_is_playing(snd_player_land))
		{
			audio_play_sound(snd_player_land,1000,false,global.sfx_volume)
		}
	}
	
	if ((sprite_index = spr_death_left) or (sprite_index = spr_death_right)) && (floor(image_index) == 26) && (image_index < image_number-1)
	{
		if (!audio_is_playing(snd_player_land))
		{
			audio_play_sound(snd_player_land,1000,false,global.sfx_volume)
		}
		else if (audio_is_playing(snd_player_land))
		{
			audio_stop_sound(snd_player_land)
			audio_play_sound(snd_player_land,1000,false,global.sfx_volume)
		}
	}
	
	//go to main game tutorial area
	if ((sprite_index = spr_death_left) or (sprite_index = spr_death_right)) && (image_index >= image_number-1) && (image_speed != 0)
	{
		image_speed = 0;
		
		if (room == rm_trueintro_3)
		{
			if (!instance_exists(obj_scrnDark_trueintro_xgaroom))
			{
				instance_create_layer(obj_camera.x,obj_camera.y,layer_get_id("Inst_healthui_mapborder"),obj_scrnDark_trueintro_xgaroom)
			}
		}
	}
	
	/////cutscene-getting corrupted-flashing
	if ((sprite_index = spr_midgame_player_flash_left) or (sprite_index = spr_midgame_player_flash_right))
	&& (image_index >= image_number-1)
	&& (image_speed != 0)
	&& (suit_timer < 1)
	{
		suit_timer += ((1/room_speed)/2);
		
		if (!audio_is_playing(snd_electricity1))
		{
			audio_play_sound(snd_electricity1,1000,false,global.sfx_volume)
		}
		
		if (suit_timer > 0.8) && (suit_timer < 0.9)
		{
			//remember previous music if any
			if (global.sector_music_xga > 0)
			{
				global.sector_music = global.sector_music_xga;
			}
			//get previous music based on what global.sector_music is
			RefMusicLoop()
			
			//suit
			if (room = rm_midgame_cutscsne_room)
			{
				if (global.suit_pure == 0) && (global.upgradecollected[955] <= 0)
				{
					instance_create_layer(x,bbox_bottom,layer_get_id("Inst_level_0"),obj_item_Puresuit)	
				}
			}
			else
			{
				if (global.suit_shock == 0) && (global.upgradecollected[966] <= 0)
				{
					instance_create_layer(x,bbox_bottom,layer_get_id("Inst_level_0"),obj_item_shocksuit)	
				}
			}
		}
	}
	else if ((sprite_index = spr_midgame_player_flash_left) or (sprite_index = spr_midgame_player_flash_right))
	&& (image_index >= image_number-1)
	&& (image_speed != 0)
	&& (suit_timer >= 1)
	&& (!instance_exists(obj_trueopening_player_wakeup))
	{
		global.cutscene = 1;
		
		audio_stop_sound(snd_electricity1)
		
		//player wakeup sprites object
		if (global.facingDir > 0)
		{
			instance_create_layer(x+6,y-1,layer_get_id("Inst_level_0"),obj_trueopening_player_wakeup)
		}
		else if (global.facingDir < 0)
		{
			instance_create_layer(x-6,y-1,layer_get_id("Inst_level_0"),obj_trueopening_player_wakeup)
		}
		
		with(obj_trueopening_player_wakeup)
		{
			go = 1
			image_alpha = 1
		}
		
		
		image_alpha = 0
	}
	
	
	
	exit;	
}








with(obj_player)
{
	if (enemy_slowdownswitch = 1) && (global.hurt <= 0) && (!image_speed_stop)
	&& (global.invisibility_prep = 0) && (global.image_speed_lockdown == 0) && (state != NanoShield) && (state != Nuclearblast) && (state != Invisibility)
		{
			with(object_player2_0_sprites)
			{
				image_speed = 0.5;	
				script_execute(player2_0_sprites_standing_sloweddown);
			}
		}
	else if ((enemy_slowdownswitch < 1) or (global.hurt > 0)) && (global.image_speed_lockdown == 0) && (!image_speed_stop)
		{
			with(object_player2_0_sprites)
			{
				image_speed = 1;	
				if (instance_exists(obj_screwjump_sparks))
				{
					obj_screwjump_sparks.image_speed = 1
				}
				script_execute(player2_0_sprites_standing);
			}
		}
	else if (image_speed_stop)
		{
			with(object_player2_0_sprites)
			{
				image_speed = 0;	
				y = obj_player.y+1;
                x = obj_player.x;
				
				if (instance_exists(obj_screwjump_sparks))
				{
					obj_screwjump_sparks.image_speed = 0
				}
				
				script_execute(player2_0_sprites_standing_noimagespd);
			}
		}
}

if ((global.pickup_health = 1) or (global.pickup_health_smaller = 1)) && (started1 = 0)
{
    FadeNow = 0.5;
    started1 = 1;
}
if (FadeNow > 0) && ((global.pickup_health = 1) or (global.pickup_health_smaller = 1))
{
    FadeNow -= 0.01;
}
if (FadeNow <= 0) && ((global.pickup_health = 1) or (global.pickup_health_smaller = 1)) && (started1 = 1)
{
    global.pickup_health = 0;
    global.pickup_health_smaller = 0;
    FadeNow = 0;
    started1 = 0;
}

if (room = rm_trueintro_3) && (global.cutscene_trueintro_sparkexchange = 0) && (!instance_exists(obj_player_energycircle))
&& (FadeNow_trueintro < 0.5)
{
	FadeNow_trueintro += (1/60)/8
}
else if (room = rm_trueintro_3) && (global.cutscene_trueintro_sparkexchange = 0) && (!instance_exists(obj_player_energycircle))
&& (FadeNow_trueintro >= 0.5)
{
	instance_create_layer(x,y,layer_get_id("Inst_healthui_mapborder"),obj_player_energycircle)
	FadeNow_trueintro = 0
}
else if (room != rm_trueintro_3) && (global.cutscene_trueintro_sparkexchange = 0) && (!instance_exists(obj_player_energycircle))
&& (FadeNow_trueintro > 0)
{
	FadeNow_trueintro = 0
}






//no abilities or navigation effects
if (global.invisibility <= 0) && (global.nuclearblast <= 0) && (global.nanoshield <= 0)  && (global.shockwave <= 0)
&& (global.navigation <= 0)
{
	surface2_alpha = 0;
}


//for the invisibility effect
if (global.invisibility > 0) && (surface2_alpha <= 0.6) && (surface2neg == 1)
{
	surface2neg = 0;
	surface2pos = 1;
}
else if (global.invisibility > 0) && (surface2_alpha > 0.6) && (surface2neg == 1)
{
	surface2_alpha -= 1/room_speed;
}

if (global.invisibility > 0) && (surface2_alpha >= 1.0) && (surface2pos == 1)
{
	surface2neg = 1;
	surface2pos = 0;
}
else if (global.invisibility > 0) && (surface2_alpha < 1.0) && (surface2pos == 1)
{
	surface2_alpha += 1/room_speed;
}


//for the shockwave effect
if (global.shockwave > 0) && (surface2_alpha <= 0.6) && (surface2neg == 1)
{
	surface2neg = 0;
	surface2pos = 1;
}
else if (global.shockwave > 0) && (surface2_alpha > 0.6) && (surface2neg == 1)
{
	surface2_alpha -= 1/room_speed;
}

if (global.shockwave > 0) && (surface2_alpha >= 1.0) && (surface2pos == 1)
{
	surface2neg = 1;
	surface2pos = 0;
}
else if (global.shockwave > 0) && (surface2_alpha < 1.0) && (surface2pos == 1)
{
	surface2_alpha += 1/room_speed;
}



//for the nanoshield effect
if (global.nanoshield_ammo > 0) && (global.nanoshield > 0)
{
	if (global.nanoshield > 0) && (surface2_alpha <= 0.6) && (surface2neg == 1)
	{
		surface2neg = 0;
		surface2pos = 1;
	}
	else if (global.nanoshield > 0) && (surface2_alpha > 0.6) && (surface2neg == 1)
	{
		surface2_alpha -= 1/room_speed;
	}

	if (global.nanoshield > 0) && (surface2_alpha >= 1.0) && (surface2pos == 1)
	{
		surface2neg = 1;
		surface2pos = 0;
	}
	else if (global.nanoshield > 0) && (surface2_alpha < 1.0) && (surface2pos == 1)
	{
		surface2_alpha += 1/room_speed;
	}
}
else if (global.nanoshield_ammo <= 0) && (global.nanoshield > 0)
{
	surface2_alpha = 0.3;
}


//for the nuclearblast
if (global.nuclearblast > 0) && (surface2_alpha <= 0.6) && (surface2neg == 1)
{
	surface2neg = 0;
	surface2pos = 1;
}
else if (global.nuclearblast > 0) && (surface2_alpha > 0.6) && (surface2neg == 1)
{
	surface2_alpha -= 1/room_speed;
}

if (global.nuclearblast > 0) && (surface2_alpha >= 1.0) && (surface2pos == 1)
{
	surface2neg = 1;
	surface2pos = 0;
}
else if (global.nuclearblast > 0) && (surface2_alpha < 1.0) && (surface2pos == 1)
{
	surface2_alpha += 1/room_speed;
}








//for charging
if (global.charging = 1) && ((started4 = 0))
{
    FadeNow3 = 0.8;
    started4 = 1;
}
if (FadeNow3 > 0) && (global.charging = 1) && (started4 = 1)
{
    FadeNow3 -= 0.05;
}
if ((FadeNow3 <= 0) && (global.charging = 1) && (started4 = 1)) or (global.charging = 0)
{
    FadeNow3 = 0;
    started4 = 0;
}
if (global.invincible > 0)
{
    global.charging = 0;
}




if (global.dashcharge = 1)
{
    FadeNow2 += 0.05;
}
if (FadeNow2 >= 0.8)
{
    FadeNow2 -= 0.8;
}

if (global.dashcharge = 0)
{
    FadeNow2 = 0;
}


if (global.invincible > 0) && (global.hurt2 = 1)
{
    global.invincible -= 2;
    flashwhite_limit += 0.1; 
}
if (global.invincible <= 1) && (flashwhite_limit > -1) && (global.hurt2 = 1)
{
    global.invincible +=1 - flashwhite_limit;
}
if (flashwhite_limit >= 1) && (flashwhite_limit > 0) && (global.hurt2 = 1)
{
    global.invincible = 0;
    global.hurt2 = 0;
    flashwhite_limit = 0;
}




//frozen
if (global.frozen > 0) && (FadeNow4 > 0) && ((global.pickup_health = 0) && (global.pickup_health_smaller = 0) && (global.nanoshield == 0) && (global.kelvin <= 0))
{
		//getting hurt by cold environemnt
	if (global.frozen > 0) && (global.hurt = 0) && (global.hurt2 = 0)
	{
		FadeNow4 -= (1/room_speed);
	}
}
else if (global.frozen > 0) && (FadeNow4 <= 0) && ((global.pickup_health = 0) && (global.pickup_health_smaller = 0) && (global.nanoshield == 0) && (global.kelvin <= 0))
{
		//getting hurt by cold environemnt
	if (global.frozen > 0) && (global.hurt = 0) && (global.hurt2 = 0)
	{
		global.health1 -= 1;
		FadeNow4 += 0.8;
	}
}



//superheated
if (global.superheated > 0) && (FadeNow4 > 0) && (global.pickup_health = 0) && (global.pickup_health_smaller = 0) && (global.kelvin <= 0)
{
		//getting hurt by cold environemnt
	if (global.superheated > 0) && (global.hurt = 0) && (global.hurt2 = 0)
	{
		FadeNow4 -= (1/room_speed);
	}
}
else if (global.superheated > 0) && (FadeNow4 <= 0) && ((global.pickup_health = 0) && (global.pickup_health_smaller = 0) && (global.kelvin <= 0))
{
		//getting hurt by cold environemnt
	if (global.superheated > 0) && (global.hurt = 0) && (global.hurt2 = 0)
	{
		global.health1 -= 1;
		FadeNow4 += 0.8;
	}
}


if ((global.superheated <= 0) && (global.frozen = 0)) or (global.pickup_health = 1) or (global.pickup_health_smaller = 1) or (global.kelvin > 0)
{
	FadeNow4 = 0;	
}


///////NAVIGATION ROOMS
if (navigation_effect_index <= 0) && (global.navigation_effect > 0)
{
	navigation_effect_index += (1/room_speed)*13;
}
else if (navigation_effect_index > 0) && (navigation_effect_index < 16) && (global.navigation_effect > 0)
{
	navigation_effect_index += (1/room_speed)*13;
}
else if (navigation_effect_index >= 16) && (global.navigation_effect > 0)
{	
	navigation_effect_index = 0;
	
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
	
	global.navigation_effect = 0;
	global.navigation = 1;
	global.xleft = 0
	global.yup = 0
	
	instance_deactivate_object(obj_link_healthUI)
	instance_deactivate_object(obj_mapborder)
	instance_deactivate_object(obj_mapborder_underside)
	instance_deactivate_object(obj_maptile_tile_differentsector)
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui2"),obj_scrnDark_navigational);
	instance_create_layer(__view_get( e__VW.XView, 0 ),obj_camera.y-80,layer_get_id("Inst_healthui_mapborder"),obj_scrnDark_navigational2_test1);
	with(obj_scrnDark_navigational2_test1)
	{
		spawningID = other.textspawnerID;
	}
}
