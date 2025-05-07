/// @description Insert description here
// You can write your code in this editor
facing = 0

if (global.facingDir = -1)
{
	sprite_index = spr_wakeup_left
	facing = -1
}	
else if (global.facingDir = 1)
{
	sprite_index = spr_wakeup_right
	facing = 1
}	

go = 0
image_speed = 0
sndgo = 0


//palette swapping stuff
current_pal=0;
palette_sprite = spr_toxicpalette
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

//gives us the Offset variable in shader
v_offset = 0
v_normal = 0
color_sets = 3
color_row_index = 0
	
//Sets us up to use the Palette variable in shader, plus it gets us the texture of the sprite's current sprite index + image index
palette_swap_sampler = 0




if (global.cutscene <= 0)
{
	instance_destroy()
}