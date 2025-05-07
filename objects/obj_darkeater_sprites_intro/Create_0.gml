 /// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
go = 0;
facing = 1;
turning = 0;
hspd = 0;
vspd = 0;

prep_now = 0;
run_now = 0;

warning = 0;
spintimer = 0;
shinetimer = 0;
energytimer = 0;

State_machine_create()
State_machine_switch_state(darkeater_walking_opening_1)

random_pickup1 = irandom_range(0,5);
random_pickup2 = irandom_range(0,5);
random_pickup3 = irandom_range(0,5);

prep_now = 0;
knockback_now = 0;
run_now = 0;
inst4 = 0;
inst_player = 0;
inst2 = instance_place(x,y,obj_darkeater_hitbox_intro);

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

//audio shit
inst_audio_emitterID = audio_emitter_create()
emitter_start = 0
emitter_pitch = 1;
emitter_vol = 0.6;
emitterSin = 0
audio_emitter_pitch(inst_audio_emitterID,emitter_pitch)
audio_emitter_gain(inst_audio_emitterID,emitter_vol)

stopsnd = 0;