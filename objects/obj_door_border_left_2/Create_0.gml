room1 = -1;
playerx = -1;
playery = -1;
started = 0;

door_speed = 0.12

started_roomtransition = 0

instance_create(x,y+1,obj_door_border_maptilespawnpointL)

if (!instance_place(bbox_right+1,y-8,obj_block_door_behind))
{
	instance_create(bbox_right+1,y-8,obj_block_door_behind);
}

//for xga not spawning too close to the doors
instance_create_depth(x,y,depth+1,obj_door_xga_donotspawnhere);
