texture_set_interpolation(false);

//palette
palette_sprite = spr_toxicpalette
	
//gives us the Offset variable in shader
v_offset = 0
v_normal = 0
color_sets = 3
color_row_index = 0
	
//Sets us up to use the Palette variable in shader, plus it gets us the texture of the sprite's current sprite index + image index
palette_swap_sampler = 0

//palette init - (broken)
/*
if (sprite_index > 0)
{
	//shader init
	palette_init()
}
*/

gamepad_counter2 = 0;

image_index1 = 0;
image_speed1 = 0;
image_speed_stop = 0;
text = "";

flashwhite_limit = 0.1;
started = 0;
started_hurt = 0;
started_dashturn = 0;
started_invisible = 0;
started_nanoshield = 0;

started_dash2 = 0;
started3 = 0;
started4 = 0;
FadeNow3 = 0;
FadeNow4 = 0;

started_ledge = 0;

reload_timer = 0;
explosion_limit = 3;
timer = 0

started_roomtransition = 0

//for the pickup effect
FadeNow = 0.0;
started1 = 0;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_fade_whitegreen, "fade_color");
NewColor = shader_get_uniform(shd_fade_whitegreen, "NewColor");

//for the charge effect
FadeNow2 = 0.0;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_fade_red, "fade_color");
NewColor = shader_get_uniform(shd_fade_red, "NewColor");

//for trueintro spark pulse
FadeNow_trueintro = 0

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


//distortion effect
shd_dis_tex = shader_get_sampler_index(shd_distortion, "tex");
shd_dis_T = shader_get_uniform(shd_distortion,"T");
shd_dis_freq = shader_get_uniform(shd_distortion,"freq");
shd_dis_amp = shader_get_uniform(shd_distortion,"amp");


///Override stuff.
override_surface=noone;
override_pal_index=1;

//Water effect shader
shader_get_uniform(shd_water_effect, "amp");
shader_get_uniform(shd_water_effect, "freq");
shader_get_uniform(shd_water_effect, "scaling");
shader_get_uniform(shd_water_effect, "timer");


shader_get_uniform(shd_less_color_saturation,"sat")

gamepad_counter = 0;
correct_slot = 0;

xother = 0
yother = 0

surface = -1;
surface2 = -1;
surface3 = -1;

surface3index = 0
surface3alpha = 0

surface2_alpha = 0.5;
surface2pos = 1;
surface2neg = 0;
navigation_effect_index = 0;

data_timer = 0
suit_timer = 0

dataID = 0
textspawnerID = -1

sword_swing_now = 0

//for x vision upgrade
text1 = " X VISION";
text2 = " BRIGHTENS DARK AREAS IN FRONT OF YOU";

//sound timers
sound_spin = 1;
sound_footstep = 1;
spin = 0
jump = 0
snd = -1
screw = 0;
global.image_speed_lockdown = 0
