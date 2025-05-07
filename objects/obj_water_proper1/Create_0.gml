/// @description Insert description here
// You can write your code in this editor
WaveAmpl = shader_get_uniform(shd_watery3, "WaveAmpl")
Time = shader_get_uniform(shd_watery3, "Time")
PixelPos = shader_get_uniform(shd_watery3, "PixelPos")
SmallNo = shader_get_uniform(shd_watery3,"SmallNo")
uv_texture_sampler2D = shader_get_sampler_index(shd_watery3,"tex_water")

timer1 = 0;
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
		global.frozen = 1;
		sprite_index = spr_water1_ice;	
		instance_create(bbox_left-16,bbox_top+8,obj_block2)
		instance_create(bbox_left,bbox_top+8,obj_block2)
		instance_create(bbox_left+16,bbox_top+8,obj_block2)
		instance_create(bbox_left+32,bbox_top+8,obj_block2)
		instance_create(bbox_left+48,bbox_top+8,obj_block2)
		instance_create(bbox_left+64,bbox_top+8,obj_block2)
}
}