/// @description Insert description here
// You can write your code in this editor
eating = 0

if (global.corrupted <= 0)
{
	inst_blockspawner = collision_rectangle(id.x-12,id.x+10,id.y-11,id.y-3,obj_player,false,true)

	inst1 = instance_create(x-12,y-11,obj_block2_flytrap)
	inst2 = instance_create(x-8,y-11,obj_block2_flytrap)
	inst3 = instance_create(x,y-11,obj_block2_flytrap)
	inst4 = instance_create(x+8,y-11,obj_block2_flytrap)
	inst5 = instance_create(x+10,y-11,obj_block2_flytrap)
}
else if (global.corrupted > 0)
{
	sprite_index = spr_flytrap_dead	
}