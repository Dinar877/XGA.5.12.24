//////P
//////L          /  //
//////A       /_////_/
//////Y        | \ /  D
//////E        |  -  |
//////R
State_machine_create();
State_machine_switch_state(Idle);

//for multiple mapchecker2's not activating at once
switch_mapchecker2 = 0;
inst_mapchecker2 = -1;
tileposx_checker = 0;
tileposy_checker = 0;

input_horizontal = 0;
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
dash_jump = 0;
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

reload_timer = 0;

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
ledge_ready = 0;
direction1 = ((keyboard_check(vk_left) - keyboard_check(vk_right) or (keyboard_check(ord("D"))-(keyboard_check(ord("A"))))))