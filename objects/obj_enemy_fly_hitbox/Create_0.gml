/// @description Insert description here
// You can write your code in this editor
change_direction = 0;
direction1 = 0
direction2 = 0
facing = -1;
hspd = 0;
vspd = 0
turning = 0;
inst = 0;

knockback_now = 0;
prep_now = 0;
run_now = 0;

hurtactive = 0;
counter = 0;

instance_create_depth(x,y,id.depth,obj_enemy_fly_sprites);

inst = instance_place(x,y,obj_enemy_fly_sprites);
inst2 = instance_place(x,y,obj_enemy_hive_sprites)
inst_self = self;