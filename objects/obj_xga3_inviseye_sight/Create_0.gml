/// @description Insert description here
// You can write your code in this editor
directionX = round(random_range(0,1));
xspeed = 0;
yspeed = 0;
go = 0;
detected = false;

image_alpha = 0;

sndID = audio_play_sound(snd_downloading,1000,false,global.sfx_volume);
audio_sound_gain(sndID,0,0);

inst_ball = instance_place(x,y,obj_xga3_inviseye_ball);