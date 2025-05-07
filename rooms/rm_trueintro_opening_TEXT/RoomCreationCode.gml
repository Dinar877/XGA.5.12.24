instance_deactivate_all(false);
instance_activate_object(obj_text_spawning_trueintro_opening)
instance_activate_object(obj_texty_TRUEgeneric_nonmarker)
instance_activate_object(obj_camera_intro)
instance_activate_object(obj_intro_cutsceneplayer)
instance_activate_object(obj_scrnDark_trueintro_fadeout)
instance_activate_object(obj_intro_cutscene_overlay)

__view_set( e__VW.Object, 0, obj_camera_intro);

//make upgrades not respawn when starting new game after finishing XGA for the first time
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
		
global.sector_active = 0;
global.midgame = 0
	
global.mapgrid_tilegivenX[9999] = 0;
global.mapgrid_tilegivenY[9999] = 0;
global.mapgrid_tilegivenN = 0;
		
global.doors_redblocker[999] = 0;
global.doors_true[999] = 0;
global.bossblockers[999] = 0
	
	
//upgrades
global.walljump = 0;
global.airdash = 0;
global.hydrodash = 0;
global.shoot_autoR_upgrade = 0;
	
//choose abilities
global.ability_select = 1;
global.ability_limit = 0;

//sword
global.sword_swing_available = 0


//abilities-invisibility
global.invisibility_state = 0
global.invisibility_available = 0;
global.invisibility_ammo = 0;
global.invisibility_limit = 0;
global.invisibility_prep = 0

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
global.facingDir = 1;
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
	
global.sword_available = 0

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