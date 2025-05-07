/// @description Insert description here
// You can write your code in this editor
open = 1;
switch1 = 0
redblockerID = 0
BossblockerID = -1


inst1 = instance_create(x,y,obj_block2);

inst2 = instance_create(x-16,y,obj_block2);
inst3 = instance_create(x-32,y,obj_block2);
inst4 = instance_create(x-48,y,obj_block2);
inst5 = instance_create(x-64,y,obj_block2);

inst6 = instance_create(x+16,y,obj_block2);
inst7 = instance_create(x+32,y,obj_block2);
inst8 = instance_create(x+48,y,obj_block2);
inst9 = instance_create(x+64,y,obj_block2);

//inst_blockswitch = instance_create(obj_corelock_switch.x,obj_corelock_switch.y,obj_block2);