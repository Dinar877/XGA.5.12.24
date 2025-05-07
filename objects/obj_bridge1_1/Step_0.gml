/// @description Insert description here
// You can write your code in this editor
if (global.cutsceneID[cutsceneID] <= 0)
{
	instance_destroy()
}


if (direction1 > 0) && (hit == 0)
{
	x += 1/2;  
	image_angle += 1/5;
    y = (y +(-2-adder2));
    adder2 -= 0.3;
}
if (direction1 < 0) && (hit == 0)
{
    image_angle -= 1/5;
    y = (y +(-2-adder2));
    adder2 -= 0.3;
}

if ((place_meeting(x,y,obj_block2)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))) && (hit == 0) && (direction1 != 0)
{
    hit = 1;
}