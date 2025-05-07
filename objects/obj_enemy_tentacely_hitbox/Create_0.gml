/// @description Insert description here
// You can write your code in this editor
change_direction = 0;
facing = -1;
hspd = 0;
turning = 0;
inst = 0;

knockback_now = 0;
prep_now = 0;
run_now = 0;

hurtactive = 0;
counter = 0;

instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_enemy_tentacely_sprites);

inst = instance_place(x,y,obj_enemy_tentacely_sprites);
inst_self = self;

onSlope = 0;

blockInFront = (place_meeting(x+(hspd),y,obj_block))
slopeInFront = (!place_meeting(x+hspd,y,obj_slope1_left)) && (!place_meeting(x+hspd,y,obj_slope1_right)) && (!place_meeting(x+hspd,y,obj_newslope_left)) && (!place_meeting(x+hspd,y,obj_newslope_right))

collision_othertoad = 0