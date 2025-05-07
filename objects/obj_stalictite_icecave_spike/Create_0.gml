/// @description Insert description here
// You can write your code in this editor
stali_detector = 0;
go1 = 0;
gobullet1 = 0;
hitground1 = 0;
sword_spriteindex = 0

hp = 260;
sword_deadswitch = 0
enemy_almost_hurt = 0;
enemy_hurt = 0;
FadeNow = 0;
started1 = 0;
started2 = 0;

started_idle = 0;

fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

random_pickup1 = irandom_range(0,5);
random_pickup2 = irandom_range(0,5);
random_pickup3 = irandom_range(0,5);