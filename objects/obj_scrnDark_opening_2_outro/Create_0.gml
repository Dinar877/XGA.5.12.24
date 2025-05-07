/// @description Insert description here
// You can write your code in this editor
image_alpha = 1;
endload = 0;
endload2 = 0;
endload3 = 0;
saving = 0;
endsaving = 0;

switch1 = 1;

x = obj_camera_intro.x-160
y = obj_camera_intro.y-90


//audio shit
inst_audio_emitterID = audio_emitter_create()
emitter_start = 0
emitter_pitch = 1;
emitter_vol = 0;
emitterSin = 0
audio_play_sound_on(inst_audio_emitterID,snd_airplane_flight,1000,true, global.sfx_volume)
audio_emitter_pitch(inst_audio_emitterID,emitter_pitch)
audio_emitter_gain(inst_audio_emitterID,emitter_vol)

stopsnd = 0;