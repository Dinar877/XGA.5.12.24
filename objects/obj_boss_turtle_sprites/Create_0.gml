/// @description Insert description here
// You can write your code in this editor
creator = 0;
go = 0;
facing = 1;
turning = 0;
hspd = 0;
vspd = 0;
vspdKiller = 0;
warning = 0;

snd = 0
snd1 = 0
sword_spriteindex = 0

BossblockerID = 20

random_pickup1 = irandom_range(0,5);
random_pickup2 = irandom_range(0,5);
random_pickup3 = irandom_range(0,5);
prep_now = 0;
knockback_now = 0;
run_now = 0;
inst1 = 0;
inst2 = 0;
inst4 = 0;
inst_self = self;

set_direction = 0;
set_dir2 = 0;

FadeNow = 0;
started1 = 0;
started2 = 0;

surface_generic = -1
invincible = 0
flashwhite_limit = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

//for getting hurt by player
stopper1 = 0;
enemy_hurt = 0;
enemy_almost_hurt = 0;
stay = 0;
inactive = 0

if (global.mode_casual == 0)
{
	hp = 1000;
}
else hp = 1000;

sword_deadswitch = 0

knockback = 0;
inactive = 0;
deathanim = 0;
inst2 = instance_place(x,y,obj_boss_turtle_hitbox)

//usable variables
jumptimer = 0;
shoottimer = 0;
shootbullet1 = 0;
shootbullet2 = 0;
punchtimer = 0;
spintimer = 1;

State_machine_create()
State_machine_switch_state(turtle_idle)