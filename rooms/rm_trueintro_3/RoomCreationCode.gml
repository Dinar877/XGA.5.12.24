global.mapgrid_1x1 = 1
global.mapgrid_xZeroMove = 1
global.mapgrid_yZeroMove = 1
global.camera_shiftdown = 1

global.doorpath1 = rm_trueintro_2_1

audio_stop_sound(snd_heartbeat)
audio_play_sound(snd_heartbeat,1000,true,global.sfx_volume)
audio_sound_gain(snd_heartbeat,1.4,0)