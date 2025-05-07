/// @description Insert description here
// You can write your code in this editor

//when the object first spawns
if (switch2 == 0) && (global.loading_startgame != 1)
{
	switch2 = 1;
	ini_open("savedata.ini");
	ini_write_real("Global.Variables", "global.health1", global.health1);
	ini_write_real("Global.Variables", "global.upgrade_health", global.upgrade_health);
	ini_write_real("Global.Variables", "global.health_limit", global.health_limit);
	ini_write_real("Global.Variables", "global.health_tank_N", global.healthtankN);
	ini_write_real("Global.Variables", "global.upgrade_charge", global.upgrade_charge);

	//used for later with destroying already gotten upgrades
	for ( n = 0; n < 150; n += 1)
	{
		if (global.upgradecollected[n] == 1)
		{
			ini_write_real("Global.Variables", n, 1);
		}
	}
	
	//getting every discovered tile
	for ( n2 = 1; n2 < 9999; n2 += 1)
	{
		if (global.tiledata[n2] > 0)
		{
			ini_write_real("Tile.Data", n2, global.tiledata[n2]);
			ini_write_real("Tile.Data2", n2, global.tilesprite[n2]);
			ini_write_real("Tile.DataX", n2, global.tilex[n2]);
			ini_write_real("Tile.DataY", n2, global.tiley[n2]);
		}
	}
	
	//getting every map marker
	for ( nmarker = 1; nmarker < 999; nmarker += 1)
	{
		if (global.marker_no[nmarker] > 0)
		{
			ini_write_real("Marker.N", "N", global.marker_N);
			ini_write_real("Marker.Data", nmarker, global.marker_no[nmarker]);
			ini_write_real("Marker.DataX", nmarker, global.marker_coordsX[nmarker]);
			ini_write_real("Marker.DataY", nmarker, global.marker_coordsY[nmarker]);
			ini_write_real("Marker.DataX2", nmarker, global.marker_coordsX2[nmarker]);
			ini_write_real("Marker.DataY2", nmarker, global.marker_coordsY2[nmarker]);
		}
	}
	
	//abilities
	for ( nability = 0; nability < 5; nability += 1)
	{
		if (global.abilityID[nability] == 1)
		{
			ini_write_real("abilityID", nability, 1);
		}
	}
	
	ini_write_real("Global.Variables", "N_tile", global.tiledataN)
	ini_write_real("Global.Variables", "N_marker", global.marker_N)
	ini_write_real("Global.Variables", "hint_tile", global.hinty)
	
	for ( n_instmarker = 0; n_instmarker < 5; n_instmarker += 1)
	{
		if (global.marker_inst[n_instmarker] == 1)
		{
			ini_write_real("Global.Variables", n_instmarker, 1)
		}
	}
	
	//getting every destroyed red blocker
	for ( nRedblocker = 0; nRedblocker < 100; nRedblocker += 1)
	{
		if (global.doors_redblocker[nRedblocker] > 0)
		{
			ini_write_real("RedblockerData",nRedblocker,global.doors_redblocker[nRedblocker])
		}
	}
	
	ini_write_real("Tile.Startx",1,global.mapgrid_startroomx);
	ini_write_real("Tile.Starty",1,global.mapgrid_startroomy);
	ini_write_real("Tile.Startx",1,global.mapgrid_playerx);
	ini_write_real("Tile.Starty",1,global.mapgrid_playery);
	
	ini_write_real("Global.Variables", "global.ability_limit",global.ability_limit);
	ini_write_real("Global.Variables", "global.ability_select",global.ability_select);
	
	ini_write_real("Global.Variables", "global.invisibility_available",global.invisibility_available);
	ini_write_real("Global.Variables", "global.invisibility_ammo",global.invisibility_ammo);
	ini_write_real("Global.Variables", "global.invisibility_limit",global.invisibility_limit);
	
	ini_write_real("Global.Variables", "global.nanoshield_available",global.nanoshield_available);
	ini_write_real("Global.Variables", "global.nanoshield_ammo",global.nanoshield_ammo);
	ini_write_real("Global.Variables", "global.nanoshield_limit",global.nanoshield_limit);

	ini_write_real("Global.Variables", "global.beam_spread_available", global.beam_spread_available);
	ini_write_real("Global.Variables", "global.beam_burn_available", global.beam_burn_available);
	ini_write_real("Global.Variables", "global.beam_homing_available", global.beam_homing_available);
	
	ini_write_real("Global.Variables", "global.suit_pure", global.suit_pure);
	ini_write_real("Global.Variables", "global.screwjump", global.screwjump);
	ini_write_real("Global.Variables", "global.spacejumph", global.spacejump);
	ini_write_real("Global.Variables", "global.airdash", global.airdash);
	
	ini_write_real("Global.Variables", "global.money", global.money);
	
	ini_write_real("Room", "WhichSaveRoom", room);
	
	
	ini_write_real("Global.Variables", "mode_casual", global.mode_casual);
	ini_write_real("Global.Variables", "mode_corrupted", global.corrupted);
	ini_write_real("Global.Variables", "spacestationactivated", global.spacestation_active);

	ini_close();
}


if ((sprite_index = spr_saveroom1_playerspin) or (sprite_index = spr_savepillar_begin_puresuit)) && (image_index >= image_number-1)
{
	sprite_index = spr_savepillar_use;
	y += 5;
	instance_create_depth(x-1,y,obj_savepillar_tower.depth+1,obj_savepillar_playeruse);
	instance_create_depth(x-1,y,obj_savepillar_playeruse.depth-1,obj_savepillar_playereffectuse);
}

if (sprite_index = spr_savepillar_use) && (timer1 < 100)
{
	timer1 += 0.8;
	if (global.spacestation_active > 0)
	{
		if (global.health1 != 0) && (global.health_limit > global.health1+3)
		{
			global.health1 += 3;
		}
		else if (global.health_limit <= global.health1+3) && (global.health_limit > global.health1)
		{
			global.health1 += 0.5;
		}
		else if (global.health_limit < global.health1)
		{
			global.health1 = global.health_limit;
		}
		
		if (global.invisibility_recharge = 1) && (global.invisibility_ammo < global.invisibility_limit)
		{
			global.invisibility_ammo++;
		}
		
		if (global.nanoshield_recharge = 1) && (global.nanoshield_ammo < global.nanoshield_limit)
		{
			global.nanoshield_ammo++;
		}
	}
}
else if (sprite_index = spr_savepillar_use) && (timer1 >= 100)
{
	y -= 5;
	sprite_index = spr_saveroom1_playerspin_reverse;
	with(obj_savepillar_playeruse)
	{
	instance_destroy();
	}
	with(obj_savepillar_playereffectuse)
	{
	instance_destroy();
	}
	with(obj_scrnDark)
	{
		saving = 0;
		endsaving = 1;
	}
}

if ((sprite_index = spr_saveroom1_playerspin_reverse) or (sprite_index = spr_savepillar_begin_puresuit_reverse)) && (timer1 >= 100) && (image_index >= image_number-1)
{
	global.loading = 0;
	global.loading_startgame = 0;
	global.saving = 0;
	global.dead_ending = 0;
	instance_activate_object(obj_player);
	instance_activate_object(obj_savepillar_separated1);
	with(obj_player)
	{
		State_machine_switch_state(Idle);
		x = obj_savepillar_separated1.x+22;
		y = obj_savepillar_separated1.y-22;
	}
	with(obj_scrnDark)
	{
		instance_destroy();
	}
}

if (instance_exists(obj_player)) && (global.loading = 0)
{
	instance_activate_all()
	instance_destroy()
}