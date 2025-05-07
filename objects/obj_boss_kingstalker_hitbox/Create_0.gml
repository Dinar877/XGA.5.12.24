/// @description Insert description here
// You can write your code in this editor
if (global.corrupted <= 0)
{
	instance_destroy()
	exit
}

hspd = 0;
vspd = 0;
vspdKiller = 0;
facing = 1;
drillnow = 0;
bouncelimit = 0;

BossblockerID = 4

hp = 50

inst = instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_boss_kingstalker_sprites);

with(inst)
{
	BossblockerID = other.BossblockerID
}