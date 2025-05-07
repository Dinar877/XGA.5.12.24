/// @description Insert description here
// You can write your code in this editor
BossblockerID = 0
redblockerID = 0



//audio shit
global.inst_audio_N++;
inst_n = global.inst_audio_N
global.inst_audio_emitterID[inst_n] = audio_emitter_create()
dist = -1;
emitter_start = 0
emitter_pitch = 1;
emitter_vol = 0;
emitterSin = 0
//emitter_player = audio_play_sound_on(global.inst_audio_emitterID[inst_n],snd_electricity,true,1000)
//audio_emitter_pitch(global.inst_audio_emitterID[inst_n],emitter_pitch)
//audio_emitter_gain(global.inst_audio_emitterID[inst_n],emitter_vol)

stopsnd = 0;
snd = -1


//new audio
emitter_player = audio_play_sound_at(snd_electricity,id.x,id.y,0,20,100,1,true,1000,global.sfx_volume);

//glow effect
xscaleglow = random_range(0.9,1.1);
yscaleglow = random_range(0.9,1.1);
imageAngleGlow = random_range(0,360);