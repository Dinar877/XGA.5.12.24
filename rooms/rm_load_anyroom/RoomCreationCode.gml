//global.corrupted = 1;

//variables-all upgrades

global.wallscaler = 1;
global.upgradecollected[upgrades.wallscaler] = 1

global.health_limit = 6
global.health1 = 6


#region
//disable upgrades or not



//BEAMS
global.upgrade_charge = 1;
global.upgradecollected[upgrades.chargeshot] = 1;
global.beam_spread_available = 1;
global.upgradecollected[upgrades.spreadshot] = 1;
global.beam_burn_available = 1;
global.upgradecollected[upgrades.impactshot] = 1;
global.beam_homing_available = 1;
global.upgradecollected[upgrades.reflectshot] = 1;
global.beam_shield_available = 1;
global.upgradecollected[upgrades.shieldshot] = 1;




//suit palette testing

global.suit_pure = 1;
global.upgradecollected[upgrades.dashengine] = 1;

global.suit_shock = 1
global.upgradecollected[upgrades.voltengine] = 1
global.speedboots = 1
global.screwjump = 1

global.suit_count = 2




//upgrades-abilities
global.ability_select = 0;

global.nanoshield_available = 1;
global.nanoshield_limit = 50;
global.nanoshield_ammo = 50;
global.nanoshield_state = 1;
global.upgradecollected[upgrades.nanoshield] = 1;
if (!instance_exists(obj_ability_nanoshield))
{
	global.ability_limit += 1;
	var inst = instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_ability_nanoshield)
	with(inst)
	{
		abilitylimitID = global.ability_limit	
	}
}

global.invisibility_available = 1;
global.invisibility_limit = 50;
global.invisibility_ammo = 50;
global.invisibility_state = 1;
global.upgradecollected[upgrades.invisibility] = 1;
if (!instance_exists(obj_ability_invisibility))
{
	global.ability_limit += 1;
	var inst = instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_ability_invisibility)
	with(inst)
	{
		abilitylimitID = global.ability_limit	
	}
}

global.nuclearblast_available = 1;
global.nuclearblast_limit = 30;
global.nuclearblast_ammo = 30;
global.nuclearblast_state = 1;
global.upgradecollected[upgrades.shockwave] = 1;
if (!instance_exists(obj_ability_nuclearblast))
{
	global.ability_limit += 1;
	var inst = instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_ability_nuclearblast)
	with(inst)
	{
		abilitylimitID = global.ability_limit	
	}
}

global.shockwave_available = 1;
global.shockwave_limit = 50;
global.shockwave_ammo = 50;
global.shockwave_state = 1;
global.upgradecollected[upgrades.nuclearblast] = 1;
if (!instance_exists(obj_ability_shockwave))
{
	global.ability_limit += 1;
	var inst = instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_ability_shockwave)
	with(inst)
	{
		abilitylimitID = global.ability_limit	
	}
}


//MISC.UPGRADES
global.xvision = 1;
global.upgradecollected[upgrades.xVision] = 1;
global.kelvin = 1;
global.upgradecollected[upgrades.heatBalancer] = 1;
global.spacejump = 1;
global.upgradecollected[upgrades.jetjump] = 1;
global.hydrodash = 1;
global.upgradecollected[upgrades.hydrodash] = 1;
global.shoot_instacharge_upgrade = 1;
global.upgradecollected[upgrades.instacharge] = 1;


global.airdash = 1;




//SWORD UPGRADES
global.sword_available = 1;
global.upgradecollected[upgrades.xsaber] = 1;
global.sword_swing_available = 1;
global.upgradecollected[upgrades.xswing] = 1;
global.sword_wave_available  = 1;
global.upgradecollected[upgrades.xwave] = 1;



#endregion




//testing
global.darkeater_active = 0;

global.sector_music = 0;


//in case I die
global.roomgoto1 = rm_load_anyroom;




//screen size
window_set_size(960,540);
//window_set_size(320,180);
surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
//window_set_fullscreen(true);
texture_set_interpolation(false);

//SPECIFIC PLAYER PROGRESS


//test cutscenes
global.corrupted = 0
global.midgame = 0
global.sector_active = 2

global.cutscene = 0
global.cutscene_presuit = 0
global.cutscene_suit = 0

global.cutsceneID[Cutscenes.blackholetalk1] = 0
global.cutsceneID[Cutscenes.blackholetalk2] = 0
global.cutsceneID[Cutscenes.midgameScientist] = 0
global.bossblockers[bossblockers.kingstalker] = 0
global.bossblockers[bossblockers.turtle] = 0
global.bossblockers[bossblockers.gorilla] = 0
global.bossblockers[bossblockers.darklord] = 0
global.pause_player = 0



//goto desired room
room_goto(rm_11_7_6_xgatest)
