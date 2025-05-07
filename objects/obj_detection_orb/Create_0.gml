/// @description Insert description here
// You can write your code in this editor
player_dir = -1
player_dist = -1
player_dir_notfree = 0;

go = 0;
facing = -1;
turning = 0;
hspd = 0;
vspd = 0;

prep_now = 0;
run_now = 0;

warning = 0;
spintimer = 0;
shinetimer = 0;
energytimer = 0;

random_pickup1 = irandom_range(0,5);
random_pickup2 = irandom_range(0,5);
random_pickup3 = irandom_range(0,5);

prep_now = 0;
knockback_now = 0;
run_now = 0;
inst4 = 0;
inst_player = 0;
inst2 = 0

set_direction = 0;
set_dir2 = 0;

FadeNow = 0;
started1 = 0;
started2 = 0;

started_idle = 0;
idleY = 0;
idleY2 = 0;
idleswitch1 = 1;
idleswitch2 = 0;

idlewalk = 20;
idlewait = 100;
idleend = 0;

timer = 0;
timer2shoot = 1;
inst1created = 0;

statetimer2jump = 0;
statetimer2stamp = 0;

fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

//for getting hurt by player
stop1 = 0;
enemy_hurt = 0;
enemy_almost_hurt = 0;
stay = 0;
if (global.mode_casual == 0)
{
	hp = 40000000;
}
else hp = 30000000;

deathanim = 0;
knockback = 0;
inactive = 1;

xmin1 = x;
xmax1 = xmin1 + (sprite_get_width(sprite_index)/6);
ymin1 = y;
ymax1 = ymin1 + (sprite_get_height(sprite_index)/6);

invincible = 0;
flashwhite_limit = 0;
hurt2 = 0;

if (global.corrupted <= 0)
{
	instance_destroy()	
	exit
}















input_horizontal = 0;
hangtimer = 0
hang_switch = 0
walljump_timer = 0;
hspd = 0;
hspd_enemy = 0;
hspd_reducer = 0;
hspd_original = 0
vspd = 0;
speed_x = 0;
momentum = 0;
enemy_slowdownswitch = 0;
image_speed_stop = 0;
state1 = 0;

against_wall = 0;
against_wall_du = 0;
jump = 0;
jump_held = 0;
jump_stopper1 = 0;
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

room_transition_stopper1 = 0;
lefty = 0;
righty = 0;

timer_death = 50;
timer_dashing_hspd = 0;





//gamepad variable stuff
gamepad_counter = 0;
gamepad_counter2 = 0;
correct_slot = 0;

right_key = 0
right_key_pressed = 0

left_key = 0
left_key_pressed = 0

up_key = 0
up_key_pressed = 0

down_key = 0
down_key_pressed = 0


jump = 0
dash = 0
shoot = 0
shoot_pressed = 0

Select = 0;

AimDown = 0
AimtrueUp = 0
AimUp = 0

L1 = 0
R1 = 0
L2 = 0
R2 = 0