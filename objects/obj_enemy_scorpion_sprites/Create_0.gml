State_machine_create()
State_machine_switch_state(Scorpion_stand)

go = 0;
facing = -1;
turning = 0;
sword_spriteindex = 0
timer2shoot = 0

random_pickup1 = irandom_range(0,5);
random_pickup2 = irandom_range(0,5);
random_pickup3 = irandom_range(0,5);


//idle animations and state stuff
idleanim_walktimer = 0
idleanim_turntimer = 0

inst_circle = -1
inst_collision = -1
inst_collision2 = -1

prep_now = 0;
knockback_now = 0;
run_now = 0;
inst2 = 0;
inst4 = 0;
inst2 = instance_place(x,y,obj_enemy_scorpion_hitbox);
inst_self = self;

set_direction = 0;
set_dir2 = 0;

FadeNow = 0;
started1 = 0;
started2 = 0;

started_idle = 0;

fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

//for getting hurt by player
stop1 = 0;
enemy_hurt = 0;
enemy_almost_hurt = 0;
stay = 0;


if (global.corrupted == 0)
{
	hp = 20;
}
else hp = 20;

sword_deadswitch = 0

knockback = 0;

sat = shader_get_uniform(shd_less_color_saturation,"sat")

sat_alpha = 0.8;


//audio shit
global.inst_audio_N++;
inst_n = global.inst_audio_N
global.inst_audio_emitterID[inst_n] = audio_emitter_create()
dist = -1;
emitter_start = 0
emitter_pitch = 1;
emitter_vol = 0;
emitterSin = 0
audio_play_sound_on(global.inst_audio_emitterID[inst_n],snd_bug_crawling,true, 1000, global.sfx_volume)
audio_emitter_pitch(global.inst_audio_emitterID[inst_n],emitter_pitch)
audio_emitter_gain(global.inst_audio_emitterID[inst_n],emitter_vol)

stopsnd = 0;
snd = -1
