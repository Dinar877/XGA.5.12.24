/// @description Insert description here
// You can write your code in this editor
WaveAmpl = shader_get_uniform(shd_watery3_lesser, "WaveAmpl")
Time = shader_get_uniform(shd_watery3_lesser, "Time")
PixelPos = shader_get_uniform(shd_watery3_lesser, "PixelPos")
SmallNo = shader_get_uniform(shd_watery3_lesser,"SmallNo")
uv_texture_sampler2D = shader_get_sampler_index(shd_watery3_lesser,"tex_water")

timer1 = 1;
timer2 = 0;

image_alpha = 0
endtimer = 0;

nability = 0
n_instmarker = 0

scrn = -1;
scrn_app = -1
death1 = 0;
texel = shader_get_uniform(shd_watery3_lesser, "texel")

sndID = audio_play_sound(snd_alarm2,1000,true,global.sfx_volume)

FadeNow = 0.5;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

