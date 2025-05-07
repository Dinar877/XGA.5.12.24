//checks what location, relative to the overall area map (not the map of the room, but
//the map of the entire collection of rooms), where each map tile is.
keyboard_unset_map();


window_set_size(1920,1080);
surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
window_set_fullscreen(true);
texture_set_interpolation(false);

//show_debug_overlay(true);


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
global.inst_audio_emitterID[999] = 0

//particle systems
global.inst_particle_N = 0;
global.inst_particle_system[999] = 0
global.inst_particle_emitterID[999] = 0
global.inst_particle_type[999] = 0

//map systems
global.mapgrid_startroomx = 0;
global.mapgrid_startroomy = 0;
global.mapgrid_playerx = 0;
global.mapgrid_playery = 0;
global.mapgrid_1x1 = 0;
global.mapgrid_xZeroMove = 0;
global.mapgrid_yZeroMove = 0;

global.marker_inst[9999] = 0;
global.marker_N = 0;
global.marker_no[9999] = 0;
global.marker_coordsX[9999] = 0;
global.marker_coordsY[9999] = 0;
global.marker_coordsX2[9999] = 0;
global.marker_coordsY2[9999] = 0;
global.marker_sectortile[9999] = 0;

//upgrade
global.upgradecollected[999] = 0;
global.upgradecollected_main[999] = 0;
global.upgradetrue[999] = 0;
global.upgradeID_room[999] = 0
global.upgradeID_N = 0;
	
//map blockers
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
		
global.sector_active = 0;
	
	
	
	
global.mapgrid_tilegivenX[9999] = 0;
global.mapgrid_tilegivenY[9999] = 0;
global.mapgrid_tilegivenN = 0;
		
//global.switches
global.doors_redblocker[999] = 0;
global.doors_true[999] = 0;

global.bossblockers[999] = 0;






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
global.music_volume = 1
global.sfx_volume = 1






//abilities
global.abilityID[1] = 0;
global.abilityID[2] = 0;
global.abilityID[3] = 0;
global.abilityID[4] = 0;
global.abilityID[5] = 0;


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



//cutscene
global.cutsceneID[99] = 0

global.cutscene = 0
global.cutscene_suit = 0
global.cutscene_trueintro_1 = 0
global.cutscene_trueintro_sparkexchange = 0
global.changing_controls = 0

//room states
global.corrupted = 0;
global.frozen = 0;
global.superheated = 0


global.testing_shader_distortion = 1

//audio
if (!audio_group_is_loaded(audiogroup_music))
{
	audio_group_load(audiogroup_music)
}
if (!audio_group_is_loaded(audiogroup_sfx))
{
	audio_group_load(audiogroup_sfx)
}


//go to next room

//room_goto(rm_controller_recommended);
//room_goto(rm_SAGE2024);
room_goto(rm_load_anyroom);
