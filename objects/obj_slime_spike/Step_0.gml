if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

enemy_hurt_player_code(1)

if (direction1 > 0)
{
    image_angle += 40;
    x = floor(x+(startx-adder1));
    if (adder1 < 1)
    {
    adder1 += 0.1;
    }
}
if (direction1 <= 0)
{
    image_angle -= 40;
    x = floor(x-(startx-adder1));
    if (adder1 < 1)
    {
    adder1 += 0.1;
    }
    
}

if (direction2 > 0)
{
	y = floor(y +(starty-adder2));
    adder2 += 0.1;	
}
else if (direction2 < 0)
{
	y = floor(y -(starty-adder2));
    adder2 += 0.1;	
}

if ((place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))) && (hit = 0) && (!place_meeting(x,y-(starty-adder2),obj_block))
{
    hit = 1
	adder1 = 1
	adder2 = 0
}

if (hit = 1)
{
    if (direction1 > 0)
    {
	    image_angle -= 60;
		
		x = floor(x+(adder1));
		adder1 += 0.1;
		
	    y = floor(y -(5-adder2));
	    adder2 += 0.25;
    }
    if (direction1 <= 0)
    {
	    image_angle += 60;
		
		x = floor(x-(adder1));
		adder1 += 0.1;
		
	    y = floor(y -(5-adder2));
	    adder2 += 0.25;
    }
}

if ((((place_meeting(x,y,obj_bullet)) or (place_meeting(x,y,obj_bullet_side1)) or (place_meeting(x,y,obj_bullet_side2)))
&& (global.beam_shield_available = 1))) or (place_meeting(x,y,obj_shockwave_energycircle))
{
	instance_destroy()
}

