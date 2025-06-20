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

scrnbg = 0;
death1 = 0;
texel = shader_get_uniform(shd_watery3, "texel")

//for flashing white shader
FadeNow = 0;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

scrnbg = 0;

//for disappearing every other frame
disappear = 0;


//for talking
newTextAvailable = 0;

//for shock suit cutscene
shocksuitcutsceneswitch = 0;
move1switch = 0;
move1X = 640;
move1Y = 480;
move2switch = 0;

//delete object if already have shock suit
if (global.upgradecollected[966] == 1)
{
	instance_destroy();
	exit;
}


if (global.bossblockers[22] > 0)
&& (global.bossblockers[4] > 0)
&& (global.bossblockers[21] > 0)
&& (global.bossblockers[20] > 0) && (global.midgame > 0)
{
	sprite_index = spr_bh_verysmall_bw;
	x = 648;
	y = 546;

	shocksuitcutsceneswitch = 1;
}
else if (global.corrupted > 0)
{
	sprite_index = spr_bh_small;
	x = 648;
	y = 536;
	
	//after midgame
	if (global.cutsceneID[4] <= 0)
	{
		newTextAvailable = 4; //initial
	}
	else if (global.cutsceneID[4] == 1)
	{
		newTextAvailable = 7; //talk anytime
	}
}

//before midgame
if (global.midgame == 0)
{
	if (global.cutsceneID[3] <= 0)
	{
		newTextAvailable = 3; //initial
	}
	else if (global.cutsceneID[3] == 1) && (global.cutsceneID[4] == 0)
	{
		newTextAvailable = 6; //talk anytime	
	}
}


//gamepad variable stuff
gamepad_counter = 0;
gamepad_counter2 = 0;
correct_slot = 0;

right_key = 0
right_key_pressed = 0

left_key = 0
left_key_pressed = 0

up_key = 0
up_key_pressed = 0

down_key = 0
down_key_pressed = 0


jump = 0
dash = 0
shoot = 0
shoot_pressed = 0

Select = 0;

AimDown = 0
AimtrueUp = 0
AimUp = 0

L1 = 0
R1 = 0
L2 = 0
R2 = 0

enter_pressed = 0
scr_gamepad_test()
Gamepad_variables()

//for 'press jump' text
Npc_create_pressjump();
