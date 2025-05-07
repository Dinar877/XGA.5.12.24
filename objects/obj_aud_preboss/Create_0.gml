/// @description Insert description here
// You can write your code in this editor
inst_audio_emitterID = audio_emitter_create()
emitter_start = 0
emitter_pitch = 1;
emitter_vol = global.music_volume;
emitterSin = 0
audio_play_sound_on(inst_audio_emitterID,snd_preboss,true,1000,global.music_volume)
audio_emitter_pitch(inst_audio_emitterID,emitter_pitch)
audio_emitter_gain(inst_audio_emitterID,emitter_vol)

stopsnd = 0;