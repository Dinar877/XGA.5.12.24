if (direction1 > 0) && (hit == 0)
{
    image_angle += 3;
    x = (x+(2-adder1));
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
    x = (x-(2-adder1));
    if (adder1 < 1)
    {
    adder1 += 0.1;
    }
    y = (y -(1-adder2));
    adder2 += 0.1;
}

if (place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))
{
    hit = 1;
}

if (hit = 1)
{
    if (direction1 > 0)
    {
    image_angle -= 30;
    y = (y -(1-adder2));
    adder2 += 0.2;
    }
    if (direction1 <= 0)
    {
    image_angle += 30;
    y = (y -(1-adder2));
    adder2 += 0.2;
    }
}

