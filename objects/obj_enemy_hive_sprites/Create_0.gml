/// @description Insert description here
// You can write your code in this editor
go = 0;
facing = -1;
turning = 0;
fallanim = 0
fallanimy = 0
sword_spriteindex = 0

random_pickup1 = irandom_range(0,5);
random_pickup2 = irandom_range(0,5);
random_pickup3 = irandom_range(0,5);

prep_now = 0;
knockback_now = 0;
run_now = 0;
inst1 = 0;
inst2 = 0;
inst4 = 0;
inst2 = instance_place(x,y,obj_enemy_fly_hitbox);
inst_self = self;
inst_player = -1;

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

fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

//for getting hurt by player
stop1 = 0;
enemy_hurt = 0;
enemy_almost_hurt = 0;
stay = 0;
if (global.mode_casual == 0)
{
	hp = 5;
}
else hp = 3;
sword_deadswitch = 0

knockback = 0;

inst1 = instance_create_depth(x-10,y,id.depth-1,obj_enemy_fly_hitbox)
inst2 = instance_create_depth(x-10,y+10,id.depth+1,obj_enemy_fly_hitbox)
inst3 = instance_create_depth(x,y,id.depth-1,obj_enemy_fly_hitbox)
inst4 = instance_create_depth(x+10,y,id.depth+1,obj_enemy_fly_hitbox)
inst5 = instance_create_depth(x+10,y+10,id.depth-1,obj_enemy_fly_hitbox)



//audio shit
global.inst_audio_N++;
inst_n = global.inst_audio_N
global.inst_audio_emitterID[inst_n] = audio_emitter_create()
dist = -1;
emitter_start = 0
emitter_pitch = 1;
emitter_vol = 0;
emitterSin = 0
//emitter_player = audio_play_sound_on(global.inst_audio_emitterID[inst_n],snd_beehive,true,1000)
//audio_emitter_pitch(global.inst_audio_emitterID[inst_n],emitter_pitch)
//audio_emitter_gain(global.inst_audio_emitterID[inst_n],emitter_vol)

stopsnd = 0;

emitter_player = audio_play_sound_at(snd_beehive,id.x,id.y,0,30,200,1,true,1000)