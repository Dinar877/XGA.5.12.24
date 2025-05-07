/// @description Insert description here
// You can write your code in this editor
WaveAmpl = shader_get_uniform(shd_watery3, "WaveAmpl")
Time = shader_get_uniform(shd_watery3, "Time")
PixelPos = shader_get_uniform(shd_watery3, "PixelPos")
SmallNo = shader_get_uniform(shd_watery3,"SmallNo")
uv_texture_sampler2D = shader_get_sampler_index(shd_watery3,"tex_water")

timer1 = 1;
timer2 = 0;
u_uv = 0
_uniUV    = shader_get_uniform(shd_watery3, "u_uv");
_uniTime  = shader_get_uniform(shd_watery3, "u_time");
_uniSpeed = shader_get_uniform(shd_watery3, "u_speed");
_time  = 0;
_speed = 1.0;

endtimer = 0;

nability = 0
n_instmarker = 0
n4 = 0

scrn = -1;
death1 = 0;
texel = shader_get_uniform(shd_watery3, "texel")
global.roomgoto1 = -1
global.cutscene = 0

instance_create(x,y,obj_blackhole_bg1)



global.inst_audio_N++;
inst_n = global.inst_audio_N
global.inst_audio_emitterID[inst_n] = audio_emitter_create()
dist = -1;
counter = 0
counterkill = 0
emitter_start = 0
emitter_pitch = 1;
emitter_vol = 0;
emitterSin = 0

Music_loop(ost_startscrn,97.784, 168.898)

stopsnd = 0;
surface11 = -1