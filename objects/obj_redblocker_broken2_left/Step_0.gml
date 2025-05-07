if (direction1 > 0) && (hit == 0)
{
    image_angle += 3;
    x = (x+(5-adder1));
    if (adder1 < 1)
    {
    adder1 += 0.1;
    }
    y = (y -(1-adder2));
    adder2 += 0.1;
}
if (direction1 <= 0) && (hit == 0)
{
    image_angle -= 3;
    x = (x-(5-adder1));
    if (adder1 < 1)
    {
    adder1 += 0.1;
    }
    y = (y -(1-adder2));
    adder2 += 0.1;
}

if ((place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))) && (hit == 0)
{
    hit = 1;
}

if (hit = 1)
{
    sprite_index = spr_redblocker_broken2_left_ground;
	if (image_index >= image_number-1)
	{
		anim += 1;	
	}
	else if (anim >= 20)
	{
		instance_destroy();
	}
}

