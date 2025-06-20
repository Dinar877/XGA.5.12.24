//global.corrupted = 1;

//variables-all upgrades

global.wallscaler = 1;
global.upgradecollected[1] = 1

global.health_limit = 6
global.health1 = 6


#region
//disable upgrades or not



//BEAMS
global.upgrade_charge = 1;
global.upgradecollected[950] = 1;
global.beam_spread_available = 1;
global.upgradecollected[951] = 1;
global.beam_burn_available = 1;
global.upgradecollected[952] = 1;
global.beam_homing_available = 1;
global.upgradecollected[953] = 1;
global.beam_shield_available = 1;
global.upgradecollected[954] = 1;




//suit palette testing

global.suit_pure = 1;
global.upgradecollected[955] = 1;

global.suit_shock = 0
global.upgradecollected[966] = 0
global.speedboots = 0
global.screwjump = 0

global.suit_count = 1




//upgrades-abilities
global.ability_select = 0;

global.nanoshield_available = 1;
global.nanoshield_limit = 50;
global.nanoshield_ammo = 50;
global.nanoshield_state = 1;
global.upgradecollected[962] = 1;
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
global.invisibility_limit = 9999999999999999;
global.invisibility_ammo = 9999999999999999;
global.invisibility_state = 1;
global.upgradecollected[963] = 1;
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
global.upgradecollected[965] = 1;
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
global.upgradecollected[964] = 1;
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
global.upgradecollected[957] = 1;
global.kelvin = 1;
global.upgradecollected[958] = 1;
global.spacejump = 1;
global.upgradecollected[968] = 1;
global.hydrodash = 1;
global.upgradecollected[959] = 1;
global.shoot_instacharge_upgrade = 1;
global.upgradecollected[970] = 1;


global.airdash = 1;




//SWORD UPGRADES
global.sword_available = 1;
global.upgradecollected[967] = 1;
global.sword_swing_available = 1;
global.upgradecollected[969] = 1;
global.sword_wave_available  = 1;
global.upgradecollected[971] = 1;



#endregion




//testing
global.darkeater_active = 0;

global.sector_music = 0;


//in case I die
global.roomgoto1 = rm_load_anyroom;

//testing BH
/*
global.bossblockers[1] = 1;
global.bossblockers[2] = 1;
global.bossblockers[3] = 1;
global.bossblockers[4] = 1;
global.bossblockers[5] = 1;
global.bossblockers[20] = 1;
global.bossblockers[21] = 1;
global.bossblockers[22] = 1;
global.bossblockers[66] = 1;
global.bossblockers[90] = 1;
global.bossblockers[91] = 1;

global.cutsceneID[1] = 1;
global.cutsceneID[2] = 1;
global.cutsceneID[3] = 1;
global.cutsceneID[4] = 1;
global.cutsceneID[5] = 1;
global.cutsceneID[10] = 1;
global.cutsceneID[11] = 1;
global.cutsceneID[12] = 1;
global.cutsceneID[28] = 1;
global.cutsceneID[50] = 1;
global.cutsceneID[99] = 1;
*/






//screen size
window_set_size(960,540);
//window_set_size(320,180);
surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
//window_set_fullscreen(true);
texture_set_interpolation(false);

//SPECIFIC PLAYER PROGRESS


//test cutscenes
global.corrupted = 1
global.midgame = 1
global.sector_active = 0

global.cutsceneID[3] = 1
global.cutsceneID[4] = 1
global.cutsceneID[50] = 1
global.cutscene = 0
global.cutscene_presuit = 0
global.cutscene_suit = 0
global.bossblockers[4] = 1
global.bossblockers[20] = 1
global.bossblockers[21] = 1
global.bossblockers[22] = 1
global.pause_player = 0



//goto desired room
room_goto(rm_11_7_6_xgatest)
