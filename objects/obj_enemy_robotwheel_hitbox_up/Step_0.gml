with(instance_place(x,y,inst))
{
	image_angle -= 15;
}

//determine which face of the block we're on
if (place_meeting(x,y+1,obj_block)) && (turning = 0)
{
    which_side_x = 0;
    which_side_y = 1;
}
if (place_meeting(x,y-1,obj_block)) && (turning = 0)
{
    which_side_x = 0;
    which_side_y = -1;
}
if (place_meeting(x+1,y,obj_block)) && (turning = 0)
{
    which_side_x = -1;
    which_side_y = 0;
}
if (place_meeting(x-1,y,obj_block)) && (turning = 0)
{
    which_side_x = 1;
    which_side_y = 0;
}

//set speed based on which angle we're at
if (which_side_x = 1) && (turning = 0)
{
    hspd = 0;
    vspd = 2;
    y += vspd;
}
if (which_side_x = -1) && (turning = 0)
{
    hspd = 0;
    vspd = -2;
    y += vspd;
}
if (which_side_y = 1) && (turning = 0)
{
    hspd = 2;
    vspd = 0;
    x += hspd;
}
if (which_side_y = -1) && (turning = 0)
{
    hspd = -2;
    vspd = 0;
    x += hspd;
}

if (place_meeting(x-8,y+8,obj_block)) && (which_side_y == 1) //going down to going left
{
	which_side_y = 0;
	which_side_x = 1;
}
else if (place_meeting(x-8,y-8,obj_block)) && (which_side_x == 1)
{
	which_side_y = -1;
	which_side_x = 0;
}
else if (place_meeting(x+8,y-8,obj_block)) && (which_side_y == -1)
{
	which_side_y = 0;
	which_side_x = -1;
}
else if (place_meeting(x+8,y+8,obj_block)) && (which_side_x == -1)
{
	which_side_y = 1;
	which_side_x = 0;
}