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
texel = shader_get_uniform(shd_watery3, "texel")

if (global.corrupted > 0)
{
with(id)
{
	sprite_index = spr_water1_ice;	
}
}