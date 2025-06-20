/// @description Insert description here
// You can write your code in this editor
//audio shit
global.inst_audio_N++;
inst_n = global.inst_audio_N
global.inst_audio_emitterID[inst_n] = audio_emitter_create()
dist = -1;
emitter_start = 0
emitter_pitch = 1;
emitter_vol = 0;
emitterSin = 0
emitter_player = audio_play_sound_at(snd_hydromachine,x,y,0,50,100,1,false,1000,global.sfx_volume)
audio_emitter_pitch(emitter_player,emitter_pitch)
audio_emitter_gain(emitter_player,emitter_vol)

stopsnd = 0;