//checks what location, relative to the overall area map (not the map of the room, but
//the map of the entire collection of rooms), where each map tile is.
keyboard_unset_map();

//enums
EnumsInitialise();

//show_debug_overlay(true);

//screen size scale
//global.screenScale = 10;


//xga pathfinding
global.ds_grid_pathfinding = -1;
global.darkeater_grid = -1;
global.darkeater_pathadd = -1;
global.darkeater_pathgeneral = -1;
global.pierce_killswitch = 0;
global.midgame = 0;

//xga coords
global.darkeater_x = 0
global.darkeater_y = 0
global.darkeater_active = 0
global.darkeater_roomN = 0


//audio
global.inst_audio_N = 0;


//particle systems
global.inst_particle_N = 0;

//map systems
global.mapgrid_startroomx = 0;
global.mapgrid_startroomy = 0;
global.mapgrid_playerx = 0;
global.mapgrid_playery = 0;
global.mapgrid_1x1 = 0;
global.mapgrid_xZeroMove = 0;
global.mapgrid_yZeroMove = 0;

global.tiledataN = 0;
global.tileHazardDataN = 0;
		
global.sector_active = 0;
	
global.mapgrid_tilegivenN = 0;


global.marker_N = 0;
global.marker_imageindex = 0;

//upgrades
global.upgradeID_N = 0;



global.hinty = 0;
global.hinty_coordX = 0;
global.hinty_coordY = 0;
global.hinty_sectortile = -1;

//camera
global.camera_shiftdown = 0
global.door_height = 0;
global.ygridadder = 0
global.ygrid = 0
global.ygridend = 0
global.xleft = 0
global.yup = 0;
global.screen_shake = 0;
global.shockwave = 0
global.shockwave_state = 0

//music
global.sector_active = -1;
global.sector_music = -1
global.sector_music_xga = -1;
global.music_volume = 1
global.sfx_volume = 1






//abilities
global.abilityID[1] = 0;
global.abilityID[2] = 0;
global.abilityID[3] = 0;
global.abilityID[4] = 0;
global.abilityID[5] = 0;
global.ability_speed = ((1/60)*2);


//room transitions
global.room_transition = 0;
global.room_transition1 = 0;
global.room_transition_more = 0;
global.room_transition_nodoors = 0
global.room_transition_nodoors_2 = 0
global.room_transition_nodoors_more = 0
global.sector_transition = 0;
global.room_transition_prep = 0;

global.room_transition_up = 0;
global.room_transition_down = 0;

global.room_transition_notnowL1 = 0;
global.room_transition_notnowR1 = 0;
global.room_transition_notnowL2 = 0;
global.room_transition_notnowR2 = 0;
global.room_transition_notnowL_more = 0;
global.room_transition_notnowR_more = 0;

global.room_x = 0;
global.room_y = 0;

global.stopper_2ndscrnshot = 0;

global.doorpath1 = 1;
global.doorpath2 = 2;
global.doorpath3 = 3;
global.doorpath4 = 4;
global.doorpath5 = 3;
global.doorpath6 = 4;

global.doorpathUP = 0;
global.doorpathDOWN = 0;


//custom controls-keyboard shit
global.key_left = vk_left;
global.key_up = vk_up
global.key_down = vk_down
global.key_right = vk_right
global.key_enter = vk_enter;
global.key_select = ord("G")

global.key_space = ord("Z");
global.key_G = ord("C");
global.key_tab = ord("X");
global.key_ability = ord("V");

global.key_L1 = ord("A");
global.key_R1 = ord("S");
global.key_L2 = ord("D");
global.key_R2 = ord("F");


//custom controls-gamepad shit
global.gp_left = gp_padl;
global.gp_up = gp_padu;
global.gp_down = gp_padd;
global.gp_right = gp_padr;
global.gp_enter = gp_start;
global.gp_select = gp_select;

global.gp_space = gp_face1;
global.gp_G = gp_face4;
global.gp_tab = gp_face3;
global.gp_ability = gp_face2;

global.gp_L1 = gp_shoulderl;
global.gp_R1 = gp_shoulderr;
global.gp_L2 = gp_shoulderlb;
global.gp_R2 = gp_shoulderrb


//upgrade expansions
global.charge_booster = 0
global.defense_booster = 0
global.health1 = 6;
global.health_limit = 6;
global.healthtankN = 0
global.money = 0;



global.pause_elevator = 0;
global.dead_begin = 0
global.dash2_jump = 0

//modes
global.mode_casual = 0;
global.mode_recommended = 0;
global.mode_test = 0
global.loading_startgame = 0;
global.saving = 0;
global.fast_travel = 0;
global.teleport = 0



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

global.cutscene = 0
global.cutscene_presuit = 0;
global.cutscene_suit = 0
global.cutscene_trueintro_1 = 0
global.cutscene_trueintro_sparkexchange = 0
global.changing_controls = 0

//room states
global.corrupted = 0;
global.frozen = 0;
global.superheated = 0


global.testing_shader_distortion = 1











//player create event global variables
global.spacestation_active = 0;
global.spacestation_begin = 0;


global.move_player = 0;
global.state = 0;
global.pause_player = 0

global.aiming_forward = 0;
global.aiming_up = 0;
global.aiming_trueup = 0;
global.aiming_down = 0;
global.aiming_truedown = 0;


//shooting shit
global.shoot = 0;
global.shoot_ammo = 1;
global.shoot_ammo_start = 30;
global.shoot_reload = 0;
global.shoot_autoR_upgrade = 0;
global.shoot_instacharge_upgrade = 0;

//choose abilities
global.ability_select = 0;
global.ability_limit = 0;

//sword
global.sword_available = 0;
global.sword_swing_available = 0;
global.sword_wave_available = 0;


//abilities-invisibility
global.invisibility_state = 0;
global.invisibility_available = 0;
global.invisibility_ammo = 0;
global.invisibility_limit = 0;
global.invisibility_prep = 0;

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
global.facingDir = -1;
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

global.running = 0;
global.dashbegin = 0;
global.dashcharge = 0;
global.dashuse = 0;
global.dashend = 0;
global.dashbegin2 = 0;
global.dash2 = 0;
global.dash2_spark = 0

global.airdash = 0;
global.hydrodash = 0;
global.hydrodash_use = 0;


global.jumping = 0;
global.jumpingdm = 0;
global.walljump = 0;
global.spawnitem_wjl = 0
global.spawnitem_wjr = 0


global.hang = 0;
global.hangAiming = 0;
global.jumpprep = 0;
global.climbing = 0;

global.healthKiller = 0;
global.health10 = 0;
global.healthone = 0;
global.pickup_health = 0;
global.pickup_health_smaller = 0;

global.hurt = 0;
global.hurt2 = 0;
global.dead_begin = 0;
global.dead = 0;
global.dead_ending = 0;
global.invincible = 0;

global.upgrade_health = 0;
global.upgrade_process = 0;

global.energytotal = 99;
global.energy1 = 0;
global.energy10 = 0;
global.pickup_energy = 0;
global.pickup_energy_smaller = 0;
global.energy_limit = 99;
global.money = 0
global.babysnail_amount = 0

global.boss_warning = 0;
global.boss_battle = 0;

//saving the game
global.saving = 0;
global.loading = 0;
global.navigation = 0;
global.upgrade_process_data = 0
global.upgrade_process_data_active = 0
global.navigation_effect = 0;
global.corelock_engage = 0;
global.corelock_engage_xvision = 0;

global.shootlimit = 0;

global.pause = 0;
global.pause_transition = 0;
global.pause_map = 0;
global.pause_status = 0;
global.pause_options = 0;
global.pause_logbook = 0;
global.pause_exit = 0;

global.controls_changed = 0;

//audio
if (!audio_group_is_loaded(audiogroup_music))
{
	audio_group_load(audiogroup_music)
}
if (!audio_group_is_loaded(audiogroup_sfx))
{
	audio_group_load(audiogroup_sfx)
}

//load current UI settings
LoadingUI();

//testing screen size
/*
var view = view_camera[e__VW.Camera];
window_set_fullscreen(true)
surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
global.screenScale = 10;
texture_set_interpolation(false);


//hides mouse cursor
//window_set_cursor(cr_none);
*/

//go to next room
//room_goto(rm_epilepsy_warning);
//room_goto(rm_controller_recommended);
//room_goto(rm_load)
room_goto(rm_load_anyroom);
