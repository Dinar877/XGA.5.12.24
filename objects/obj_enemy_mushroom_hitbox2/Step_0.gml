//set speed based on which angle we're at
if (which_side_x = 1) && (turning = 0)
{
    hspd = 0;
    vspd = 1;
    y += vspd;
}
if (which_side_x = -1) && (turning = 0)
{
    hspd = 0;
    vspd = -1;
    y += vspd;
}
if (which_side_y = 1) && (turning = 0)
{
    hspd = 1;
    vspd = 0;
    x += hspd;
}
if (which_side_y = -1) && (turning = 0)
{
    hspd = -1;
    vspd = 0;
    x += hspd;
}

if (place_meeting(x-8,y+8,obj_block)) && (which_side_y == 1) //going down to going left
{
	which_side_y = 0;
	which_side_x = 1;
	with(inst)
	{
		rotatenow = 90	
	}
}
else if (place_meeting(x-8,y-8,obj_block)) && (which_side_x == 1)
{
	which_side_y = -1;
	which_side_x = 0;
	with(inst)
	{
		rotatenow = 90
	}
}
else if (place_meeting(x+8,y-8,obj_block)) && (which_side_y == -1)
{
	which_side_y = 0;
	which_side_x = -1;
	with(inst)
	{
		rotatenow = 90	
	}
}
else if (place_meeting(x+8,y+8,obj_block)) && (which_side_x == -1)
{
	which_side_y = 1;
	which_side_x = 0;
	with(inst)
	{
		rotatenow = 90
	}
}
