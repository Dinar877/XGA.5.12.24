/// @description Insert description here
// You can write your code in this editor
xtarget = 160;
ytarget = 90;
targetreached = 0
deathanim = 0

originX = 0
xshake2 = 0

originY = 0
yshake2 = 0

deathtimer = 0
explosiontimer = 0

global.inst_audio_N++;
inst_n = global.inst_audio_N
global.inst_audio_emitterID[inst_n] = audio_emitter_create()
dist = -1;
emitter_start = 0
emitter_pitch = 1;
emitter_vol = 0;
emitterSin = 0
audio_play_sound_on(global.inst_audio_emitterID[inst_n],snd_airplane_flight,true,100,global.sfx_volume)
audio_emitter_pitch(global.inst_audio_emitterID[inst_n],emitter_pitch)
audio_emitter_gain(global.inst_audio_emitterID[inst_n],emitter_vol)

stopsnd = 0;