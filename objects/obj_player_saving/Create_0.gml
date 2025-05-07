/// @description Insert description here
// You can write your code in this editor
if (global.facingDir = 1)
{
	sprite_index = spr_savepillar_playerusebegin_right	
}
else if (global.facingDir = -1)
{
	sprite_index = spr_savepillar_playerusebegin_left	
}

surface_save1 = -1


//palette swapping stuff
current_pal=0;
my_pal_sprite=spr_suit_palettes;

palette_sampler_index = shader_get_sampler_index(shd_fade_toxicsuit, "palette")
palette_index = shader_get_uniform(shd_fade_toxicsuit,"palette_index")

pw = shader_get_uniform(shd_fade_toxicsuit,"pw")
ph = shader_get_uniform(shd_fade_toxicsuit,"ph")
tw = shader_get_uniform(shd_fade_toxicsuit,"tw")
th = shader_get_uniform(shd_fade_toxicsuit,"th")

uv_l = shader_get_uniform(shd_fade_toxicsuit,"uv_l")
uv_r = shader_get_uniform(shd_fade_toxicsuit,"uv_r")
uv_t = shader_get_uniform(shd_fade_toxicsuit,"uv_t")
uv_b = shader_get_uniform(shd_fade_toxicsuit,"uv_b")
uvs = shader_get_uniform(shd_fade_toxicsuit,"uvs")