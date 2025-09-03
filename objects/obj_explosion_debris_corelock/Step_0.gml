if (direction1 > 0)
{
    image_angle += 10;
    x = (x+(startx-adder1));
    if (adder1 < 1)
    {
    adder1 += 0.1;
    }
}
if (direction1 <= 0)
{
    image_angle -= 10;
    x = (x-(startx-adder1));
    if (adder1 < 1)
    {
    adder1 += 0.1;
    }
    
}

if (direction2 > 0) //down
{
	y = (y +(starty)+adder2);
    adder2 += 0.25;	
}
else if (direction2 < 0) //up
{
	y = (y -(starty)+adder2);
    adder2 += 0.25;	
}

if ((place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))) && (hit = 0) && (!place_meeting(x,y,obj_block)) && (!place_meeting(x,y-adder2,obj_block))
{
    hit = 1
	adder2 = 0
}

if (hit = 1)
{
    if (direction1 > 0)
    {
	    image_angle -= 30;
		x = (x+(adder1));
		if (adder1 < 1)
		{
			adder1 += 0.1;
		}
	    y = (y -(2-adder2));
	    adder2 += 0.5;
    }
    if (direction1 <= 0)
    {
	    image_angle += 30;
		x = (x+(adder1));
	    if (adder1 < 1)
	    {
			adder1 += 0.1;
	    }
	    y = (y -(2-adder2));
	    adder2 += 0.5;
    }
}

