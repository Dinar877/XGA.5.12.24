if (!instance_place(bbox_left,y,obj_block_door))
{
	instydoor = instance_create(bbox_left,y,obj_block_door);
}


if (!instance_place(bbox_left+3,bbox_top,obj_block_door_behind))
{
	instance_create(bbox_left+3,bbox_top,obj_block_door_behind);
}

instance_create(x,y,obj_room_transition_r2l3);

//for xga not spawning too close to the doors
instance_create_depth(x,y,depth+1,obj_door_xga_donotspawnhere);


original_depth = self.depth;
	image_index = 0;
	image_speed = 0.5;
	opening = 0;
	closed = 0;
	open = 1;
touch = 0

door_speed = 0.5
/*
else if (global.corrupted > 0)
{
	sprite_index = spr_door_right_broken;
	opening = 0;
	closed = 0;
	open = 1;
}
*/
started1 = 0;
paused = 0;

stopper1 = 0;
stopper2 = 0;
notnow = 0;

stopper1 = 0;

n = 0;
n2 = 0;
backend = 0;

//for the last part
doit1 = 0;
go1 = 0;

object_set_depth(obj_scrn_roomtransition,0);

//for the palette swap
surface_door = -1