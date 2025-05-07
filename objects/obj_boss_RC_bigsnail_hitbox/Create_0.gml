/// @description Insert description here
// You can write your code in this editor
hspd = 0;
vspd = 0;
vspdKiller = 0
facing = -1;
drillnow = 0;
BossblockerID = 900

hp = 120

inst = instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_boss_RC_bigsnail_sprites);

with(inst)
{
	BossblockerID = other.BossblockerID
}