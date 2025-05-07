//////P
//////L
//////A        _   _
//////Y         \ /
//////E          -
//////R
State_machine_create();
State_machine_switch_state(Idle);

//for multiple mapchecker2's not activating at once
switch_mapchecker2 = 0;
inst_mapchecker2 = -1;
tileposx_checker = 0;
tileposy_checker = 0;

input_horizontal = 0;

input_horizontal2 = 0;
running = 0;

hangtimer = 0;
hang_switch = 0;
walljump_timer = 0;
hspd = 0;
hspd_enemy = 0;
hspd_reducer = 0;
hspd_original = 0;
vspd = 0;
vspd_wind = 0;
jump_speed = -5.4;
jump_speed_reduced = -4;
climbspeed = 0;
reduceclimbspeed = 0;
speed_x = 0;
momentum = 0;
enemy_slowdownswitch = 0;
water_effect = 0
image_speed_stop = 0;
state1 = 0;
sword_switch = 0;

timer = 0;
limit = 0;
drain = 0;
inst = 0;

against_wall = 0;
against_wall_du = 0;
jump = 0;
jump_held = 0;
jump_stopper1 = 0;
double_jump = 0;
grav = 0.5;
falling = 0;

move_prep = 0;

gal = 0;
limit = 0;
drain = 0;
timer = 1;
flashwhite_limit = 1;
hurt1 = 0;
adder = 0;
collision = 1;
wait1 = 0;

minidash = 0;
dash2timer = 0;
getup = 0;
hit = 0;
inst3 = 0;
inst5 = 0;

counter = 0;
shoot_timer = 0;
stopper_bullet_creation = 0;
stopper_dashing_afterimages = 0;

started_invisible = 0;
started_nanoshield = 0;

abilities_available = 0;

room_transition_stopper1 = 0;
lefty = 0;
righty = 0;

timer_death = 50;
timer_dashing_hspd = 0;
inst_afterimage = -1;

snd = -1;



//gamepad variable stuff
gamepad_counter = 0;
gamepad_counter2 = 0;
correct_slot = 0;

right_key = 0;
right_key_pressed = 0;

left_key = 0;
left_key_pressed = 0;

up_key = 0;
up_key_pressed = 0;

down_key = 0;
down_key_pressed = 0;


jump = 0;
dash = 0;
shoot = 0;
shoot_pressed = 0;

Select = 0;

AimDown = 0;
AimtrueUp = 0;
AimUp = 0;

L1 = 0;
R1 = 0;
L2 = 0;
R2 = 0;

enter_pressed = 0;






//State_machine_execute();

//sprite variables
global.corrupted = 1;
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
global.shoot_ammo = 1
global.shoot_ammo_start = 12

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
global.jumpprep = 0;
global.climbing = 0;




global.health1 = 6;
global.health_limit = 6;

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
global.defense_booster = 0
global.charge_booster = 0

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


//ledge stuff
gamepad4_wait = 0;
gamepad0_wait = 0;
blockvar1 = 0;
blockvar2 = 0;
right_height = 0;
not_a_block = 0;
inst1 = 0;
inst2 = 0;
ledgeready = 0;
direction1 = ((keyboard_check(vk_left) - keyboard_check(vk_right) or (keyboard_check(ord("D"))-(keyboard_check(ord("A"))))))