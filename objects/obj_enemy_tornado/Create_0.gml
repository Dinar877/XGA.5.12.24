/// @description Insert description here
// You can write your code in this editor
decider = round(random_range(0,2))

image_alpha = 0.7

if (global.corrupted <= 0)
{
	instance_destroy()
	exit
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
audio_play_sound_on(global.inst_audio_emitterID[inst_n],snd_wind,true,1000,global.sfx_volume)
audio_emitter_pitch(global.inst_audio_emitterID[inst_n],emitter_pitch)
audio_emitter_gain(global.inst_audio_emitterID[inst_n],emitter_vol)

stopsnd = 0;