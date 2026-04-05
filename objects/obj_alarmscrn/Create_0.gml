/// @description Insert description here
// You can write your code in this editor
flashAmount = 8
songLength = (audio_sound_length(snd_sc_alarm))
dt = delta_time / 1000000.0; 
alphaAdder = (dt/songLength)
redblockerID = -1


audio_play_sound(snd_sc_alarm,1000,true,global.sfx_volume)

global.boss_warning = 1