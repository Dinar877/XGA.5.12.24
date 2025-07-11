/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
State_machine_create();
State_machine_switch_state(spider_idle);
go = 0;
facing = -1;
turning = 0;
image_speed = 1;
BossblockerID = 66

random_pickup1 = irandom_range(0,5);
random_pickup2 = irandom_range(0,5);
random_pickup3 = irandom_range(0,5);

prep_now = 0;
knockback_now = 0;
run_now = 0;
inst = 0;
inst1 = 0;
inst2 = 0;
inst4 = 0;
inst2 = instance_place(x,y,obj_enemy_eyebot_spread_hitbox);
inst_self = self;

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
timer = 0;
timer2shoot = 0;
inst1created = 0;

surface_generic = -1
invincible = 0
flashwhite_limit = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

//for getting hurt by player
stop1 = 0;
enemy_hurt = 0;
enemy_almost_hurt = 0;
stay = 0;
invincible = 0
flashwhite_limit = 0



if (global.mode_casual == 0)
{
	hp = 100;
}
else hp = 100;



sword_deadswitch = 0



knockback = 0;
xmin1 = x;
xmax1 = xmin1 + (sprite_get_width(spr_boss_spider_eye_idle_left)/6);
ymin1 = y;
ymax1 = ymin1 + (sprite_get_height(spr_boss_spider_eye_idle_left)/6);
deathanim = 0;
deathanimadder = 0;
deathanim2 = 0;
inactive = 0;

metal = 1																			