/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
creator = 0;
State_machine_create()
State_machine_switch_state(legs_idle)
go = 0;
facing = -1;
turning = 0;
hspd = 0;
vspd = 0;
vspdKiller = 0;
warning = 0

BossblockerID = 66

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

started_idle = 0;
idleY = 0;
idleY2 = 0;
idleswitch1 = 1;
idleswitch2 = 0;
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
	hp = 40;
}
else hp = 40;

knockback = 0;
inactive = 0;
deathanim = 0;

instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_boss_spider_legs)
instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_boss_spider_eye)