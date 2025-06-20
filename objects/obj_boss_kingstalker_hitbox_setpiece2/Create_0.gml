/// @description Insert description here
// You can write your code in this editor
if (global.bossblockers[4] > 0)
{
	instance_destroy()	
	exit
}

hspd = 0;
vspd = 0;
facing = 1;
drillnow = 0;
BossblockerID = 4
inst = instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_boss_kingstalker_sprites_setpiece);

with(inst)
{
	BossblockerID = other.BossblockerID
}


//audio shit
global.inst_audio_N++;
inst_n = global.inst_audio_N
global.inst_audio_emitterID[inst_n] = audio_emitter_create()
dist = -1;
emitter_start = 0
emitter_pitch = 1;
emitter_vol = 0;
emitterSin = 0
audio_play_sound_on(global.inst_audio_emitterID[inst_n],snd_kingstalker_snoring,true,1000,global.sfx_volume)
audio_emitter_pitch(global.inst_audio_emitterID[inst_n],emitter_pitch)
audio_emitter_gain(global.inst_audio_emitterID[inst_n],emitter_vol)

stopsnd = 0;