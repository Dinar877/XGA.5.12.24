/// @description Insert description here
// You can write your code in this editor
change_direction = 0;
facing = -1;
hspd = 0;
vspd = 0;
vspdKiller = 0;
turning = 0;
inst = 0;

ground_anim = 0;
popout_now = 0;
jump_now = 0;

knockback_now = 0;
prep_now = 0;
run_now = 0;

hurtactive = 0;
counter = 0;

inst0 = instance_create_depth(x,y,self.depth-1,obj_enemy_grounder_sprites);

inst = instance_place(x,y,obj_enemy_grounder_sprites);
inst_self = self;


placey = (place_meeting(id.x,id.y,obj_block))