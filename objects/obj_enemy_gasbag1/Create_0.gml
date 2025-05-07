/// @description Insert description here
// You can write your code in this editor
go = 0;
facing = -1;
turning = 0;
sword_spriteindex = 0

random_pickup1 = irandom_range(0,5);
random_pickup2 = irandom_range(0,5);
random_pickup3 = irandom_range(0,5);

stop1 = 0;
enemy_hurt = 0;
enemy_almost_hurt = 0;
stay = 0;

hp = 6;
sword_deadswitch = 0
shoot = 0;

FadeNow = 0;
started1 = 0;
started2 = 0;

started_idle = 0;
idleY = 0;
idleY2 = 0;
idleswitch1 = 1;
idleswitch2 = 0;
timer = 0;
timer2shoot = 1;
timer2burst = 0
inst1created = 0;
inst_player = -1

fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");