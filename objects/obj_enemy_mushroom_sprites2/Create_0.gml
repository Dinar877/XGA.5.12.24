stop1 = 0;
enemy_hurt = 0;
enemy_almost_hurt = 0;
stay = 0;

rotatenow = 0
originalangle = image_angle
new_angle = 0

hp = 10

go = 0;
facing = 1;
turning = 0;

inst2 = instance_place(id.x,id.y,obj_enemy_mushroom_hitbox2)

random_pickup1 = irandom_range(0,5);
random_pickup2 = irandom_range(0,5);
random_pickup3 = irandom_range(0,5);

prep_now = 0;
knockback_now = 0;
run_now = 0;
inst4 = 0;
inst_self = self;

set_direction = 0;
set_dir2 = 0;

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
inst1created = 0;

fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");