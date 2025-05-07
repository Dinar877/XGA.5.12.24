/// @description Insert description here
// You can write your code in this editor
change_direction = 0;
facing = 0;
hspd = 0;
vspd = 0
turning = 0;
inst = 0;

//state variables
state = 0

knockback_now = 0;
prep_now = 0;
run_now = 0;
collisionline_player1 = 0
collisionline_block1 = 0
waiting = 0
shoottimer = 0
spawntimer = 0

hurtactive = 0;
counter = 0;

inst = instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_enemy_drill_sprites);

inst_self = self;


if (global.corrupted > 0)
{
	with(inst)
	{
	instance_destroy();
	}
	instance_destroy();
}