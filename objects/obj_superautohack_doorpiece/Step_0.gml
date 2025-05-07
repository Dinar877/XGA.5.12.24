/// @description Insert description here
// You can write your code in this editor
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

if (direction2 > 0)
{
	y = (y +(starty-adder2));
    adder2 += 0.1;	
}
else if (direction2 < 0)
{
	y = (y -(starty-adder2));
    adder2 += 0.1;	
}

if ((place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))) && (hit = 0) && (!place_meeting(x,y-(starty-adder2),obj_block))
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
		if (adder1 < 3)
		{
			adder1 += 0.1;
		}
	    y = (y -(4-adder2));
	    adder2 += 0.2;
    }
    if (direction1 <= 0)
    {
	    image_angle += 30;
		x = (x+(adder1));
	    if (adder1 < 3)
	    {
			adder1 += 0.1;
	    }
	    y = (y -(4-adder2));
	    adder2 += 0.2;
    }
}

