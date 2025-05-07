/// @description Insert description here
// You can write your code in this editor
change_direction = 0;
facing = 0;
hspd = 0;
vspd = 0
turning = 0;
inst = 0;
spd = 1

//state variables
state = 0

knockback_now = 0;
prep_now = 0;
run_now = 0;
collisionline_player1 = 0
collisionline_block1 = 0
collisionline_player2 = 0
collisionline_block2 = 0
waiting = 0
shoottimer = 0
spawntimer = 0
sndtimer = 0

hurtactive = 0;
counter = 0;

inst = instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_enemy_drillworm_sprites);
inst2 = instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_enemy_drillworm_brain);

inst_self = self;


//audio shit
global.inst_audio_N++;
inst_n = global.inst_audio_N
global.inst_audio_emitterID[inst_n] = audio_emitter_create()
dist = -1;
emitter_start = 0
emitter_pitch = 1;
emitter_vol = 0;
emitterSin = 0
audio_play_sound_on(global.inst_audio_emitterID[inst_n],snd_rockimpact1,true,1000, global.sfx_volume)
audio_emitter_pitch(global.inst_audio_emitterID[inst_n],emitter_pitch)
audio_emitter_gain(global.inst_audio_emitterID[inst_n],emitter_vol)

stopsnd = 0;