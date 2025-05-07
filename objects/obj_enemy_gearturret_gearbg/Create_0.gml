/// @description Insert description here
// You can write your code in this editor
change_direction = 0;
facing = -1;
hspd = 0;
vspd = 0
turning = 0;
inst = 0;
random_pickup1 = irandom_range(0,5);
random_pickup2 = irandom_range(0,5);
random_pickup3 = irandom_range(0,5);

knockback_now = 0;
prep_now = 0;
run_now = 0;

hurtactive = 0;
counter = 0;

enemy_hurt = 0
enemy_almost_hurt = 0
enemy_contact = 0
stay = 0
sword_spriteindex = 0

snd = -1

//hp
hp = 9

sword_deadswitch = 0

attackFadeNow = 0
attacked = 0
// = instance_place(x,y,obj_enemy_gearturret_gearbg)
inst_self = self;
inst2 = 0
instbullet0 = -1
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");


//audio
emitter_player = audio_play_sound_at(snd_metalrolling,id.x,id.y,0,30,200,1,true,1000,global.sfx_volume)
dist = 0



if (global.frozen > 0) && ((instance_place(id.x,id.y,obj_waterregion)) or (instance_place(id.x,id.y,obj_waterregion)))
{
	instance_destroy();
}

metal = 1