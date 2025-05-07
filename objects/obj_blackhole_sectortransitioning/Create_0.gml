/// @description Insert description here
// You can write your code in this editor
WaveAmpl = shader_get_uniform(shd_watery3, "WaveAmpl")
Time = shader_get_uniform(shd_watery3, "Time")
PixelPos = shader_get_uniform(shd_watery3, "PixelPos")
SmallNo = shader_set_uniform_f("SmallNo",0.01)
uv_texture_sampler2D = shader_get_sampler_index(shd_watery3,"tex_water")

timer1 = 1;
timer2 = 0;

endtimer = 0;

nability = 0
n_instmarker = 0

scrn = -1;
death1 = 0;
texel = shader_get_uniform(shd_watery3, "texel")
global.roomgoto1 = -1