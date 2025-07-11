//checks what location, relative to the overall area map (not the map of the room, but
//the map of the entire collection of rooms), where each map tile is.
global.lockdown_facingDir = 0;
global.dead = 0
global.dead_begin = 0
global.dead_ending = 0
global.teleport = 0

global.mode_casual = 0
global.mode_test = 0
global.mode_recommended = 0
global.stopper_2ndscrnshot = 0

global.tiledataN = 0





//Reset all upgrades
//BEAMS
global.upgrade_charge = 0;
global.beam_spread_available = 0;
global.beam_burn_available = 0;
global.beam_homing_available = 0;
global.beam_shield_available = 0;





//suit palette testing
global.suit_pure = 0;

global.suit_shock = 0;
global.speedboots = 0;


//upgrades-abilities
global.ability_limit = 0;

global.nanoshield_available = 0;
global.nanoshield_limit = 0;
global.nanoshield_ammo = 0;
global.nanoshield_state = 0;

global.invisibility_available = 0;
global.invisibility_limit = 0;
global.invisibility_ammo = 0;
global.invisibility_state = 0;

global.nuclearblast_available = 0;
global.nuclearblast_limit = 0;
global.nuclearblast_ammo = 0;
global.nuclearblast_state = 0;

global.shockwave_available = 0;
global.shockwave_limit = 0;
global.shockwave_ammo = 0;
global.shockwave_state = 0;



global.screwjump = 0;
global.suit_count = 0;

//MISC.UPGRADES
global.xvision = 0;
global.kelvin = 0;
global.spacejump = 0;
global.hydrodash = 0;
global.shoot_instacharge_upgrade = 0;

//sword
global.sword_available = 0;
global.sword_swing_available = 0;
global.sword_wave_available = 0;

global.airdash = 0;








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










global.doorpath1 = rm_trueintro_opening_TEXT

if (instance_exists(obj_scrn_roomtransition))
{
	instance_destroy(obj_scrn_roomtransition)
}

if (instance_exists(obj_player))
{
	with(obj_player)
	{
		State_machine_switch_state(Idle)	
	}
}