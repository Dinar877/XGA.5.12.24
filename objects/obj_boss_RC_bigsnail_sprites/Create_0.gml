/// @description Insert description here
// You can write your code in this editor
State_machine_create()
State_machine_switch_state(bigsnail_idle)
hspd = 0;
vspd = 0;
facing = -1;
drillnow = 0;

hp = 120;

deathanim = 0;
spriteheight = -1;
enemy_hurt = 0;
enemy_almost_hurt = 0;
enemy_contact = 0;
image_speed = 1;

BossblockerID = 900




sword_spriteindex = 0

prep_now = 0;
run_now = 0;

surface_generic = -1
invincible = 0
flashwhite_limit = 0;

warning = 0;
spintimer = 0;
shinetimer = 0;
energytimer = 0;
rolltimer = 0

inst = -1;

fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");
xmin1 = x;
xmax1 = xmin1 + (sprite_get_width(sprite_index)/6);
ymin1 = y;
ymax1 = ymin1 + (sprite_get_height(sprite_index)/6);
random_pickup1 = irandom_range(0,5);
random_pickup2 = irandom_range(0,5);
random_pickup3 = irandom_range(0,5);