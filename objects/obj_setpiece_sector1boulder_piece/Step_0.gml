/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (hit = 0)
{
	
	if (direction1 > 0)
	{
	    image_angle += 30;
	    x = (x+(startx-adder1));
	    if (adder1 < 1)
	    {
	    adder1 += 0.1;
	    }
	}
	if (direction1 <= 0)
	{
	    image_angle -= 30;
	    x = (x-(startx-adder1));
	    if (adder1 < 1)
	    {
	    adder1 += 0.1;
	    }
    
	}

	y = (y +(-starty+adder2));
	adder2 += 0.25;	

}
if ((place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))) && (hit = 0) && (!place_meeting(x,y-(adder2),obj_block))
{
    hit = 1
	adder1 = 1
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
	    y = (y +(-5+adder2));
	    adder2 += 0.5;
    }
    if (direction1 <= 0)
    {
	    image_angle += 30;
		x = (x-(adder1));
	    if (adder1 < 1)
	    {
			adder1 += 0.1;
	    }
	    y = (y +(-5+adder2));
	    adder2 += 0.5;
    }
}
