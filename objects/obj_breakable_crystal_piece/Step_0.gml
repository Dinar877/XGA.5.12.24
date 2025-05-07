/// @description Insert description here
// You can write your code in this editor
if (direction1 > 0)
{
    image_angle += 10;
    x = (x+(2-adder1));
    if (adder1 < 1)
    {
    adder1 += 0.1;
    }
    y = (y -(4-adder2));
    adder2 += 0.1;
}
if (direction1 <= 0)
{
    image_angle -= 10;
    x = (x-(2-adder1));
    if (adder1 < 1)
    {
    adder1 += 0.1;
    }
    y = (y -(4-adder2));
    adder2 += 0.1;
}

if ((place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))) && (hit = 0)
{
    hit = 1
	adder2 = 0
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

