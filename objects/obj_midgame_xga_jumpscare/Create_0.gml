/// @description Insert description here
// You can write your code in this editor
image_alpha = 1

switch1 = 0
alpha = 0
timer1 = 0

depth = layer_get_depth("Inst_healthui_mapborder");

snd = audio_play_sound(snd_xga_jumpscare,1000,false,global.sfx_volume);