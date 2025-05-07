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

global.doors_redblocker[999] = 0;
global.bossblockers[999] = 0
global.upgradecollected[999] = 0




//Reset all upgrades
//BEAMS
global.upgrade_charge = 0;
global.upgradecollected[950] = 0;
global.beam_spread_available = 0;
global.upgradecollected[951] = 0;
global.beam_burn_available = 0;
global.upgradecollected[952] = 0;
global.beam_homing_available = 0;
global.upgradecollected[953] = 0;
global.beam_shield_available = 0;
global.upgradecollected[954] = 0;





//suit palette testing
global.suit_pure = 0;
global.upgradecollected[955] = 0;

global.suit_shock = 0;
global.upgradecollected[966] = 0;
global.speedboots = 0;


//upgrades-abilities
global.ability_limit = 0;

global.nanoshield_available = 0;
global.nanoshield_limit = 0;
global.nanoshield_ammo = 0;
global.nanoshield_state = 0;
global.upgradecollected[962] = 0;

global.invisibility_available = 0;
global.invisibility_limit = 0;
global.invisibility_ammo = 0;
global.invisibility_state = 0;
global.upgradecollected[963] = 0;

global.nuclearblast_available = 0;
global.nuclearblast_limit = 0;
global.nuclearblast_ammo = 0;
global.nuclearblast_state = 0;
global.upgradecollected[965] = 0;

global.shockwave_available = 0;
global.shockwave_limit = 0;
global.shockwave_ammo = 0;
global.shockwave_state = 0;
global.upgradecollected[964] = 0;



global.screwjump = 0;
global.suit_count = 0;

//MISC.UPGRADES
global.xvision = 0;
global.upgradecollected[957] = 0;
global.kelvin = 0;
global.upgradecollected[958] = 0;
global.spacejump = 0;
global.upgradecollected[968] = 0;
global.hydrodash = 0;
global.upgradecollected[959] = 0;
global.shoot_instacharge_upgrade = 0;
global.upgradecollected[970] = 0;

//sword
global.sword_available = 0;
global.upgradecollected[967] = 0;
global.sword_swing_available = 0;
global.upgradecollected[969] = 0;
global.sword_wave_available = 0;
global.upgradecollected[971] = 0;

global.airdash = 0;







//reset all doorblockers
for (var i = 0; i < 999; i++)
{
	global.doors_redblocker[i] = 0;
	global.doors_true[i] = 0;
}
//turn off all bossblockerIDs
for (var i = 0; i < 99; i++)
{
	global.bossblockers[i] = 0;	
}
//turn off all cutsceneIDs
for (var i = 0; i < 99; i++)
{
	global.cutsceneID[i] = 0;	
}
//reset all upgradeIDs
for (var i = 0; i < 999; i++)
{
	global.upgradecollected[i] = 0;	
	global.upgradecollected_main[i] = 0;
	global.upgradeID_room[i] = 0;
	global.upgradetrue[i] = 0;
}
//reset all mapIDs
for (var i = 0; i < 999; i++)
{
	global.tiledata[i] = 0;
	global.tilesprite[i] = 0;
	global.tilex[i] = 0;
	global.tiley[i] = 0;
	global.tilesector[i] = 0;
	global.tileroom[i] = 0;
	global.tileitem[i] = 0;
	
	global.tileblocker[i] = 0;
	global.tileblocker2[i] = 0;
	
	global.tile_hazard[i] = 0;
	global.tile_hazard_sprite[i] = 0;
	global.tile_hazard_redblockerID[i] = 0;
}
//reset all mapmarkers
for (var i = 0; i < 999; i++)
{
	global.marker_no[i] = 0;
	global.marker_coordsX[i] = 0;
	global.marker_coordsX2[i] = 0;
	global.marker_coordsY[i] = 0;
	global.marker_coordsY2[i] = 0;
	global.marker_sectortile[i] = 0;
	
	//from nav rooms
	global.marker_inst[i] = 0;
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