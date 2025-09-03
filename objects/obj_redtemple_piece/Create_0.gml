decider = round(random_range(0,3))

if (decider == 0)
{
	sprite_index = spr_xga3_rock1	
}
else if (decider == 1)
{
	sprite_index = spr_xga3_rock2	
}
if (decider == 2)
{
	sprite_index = spr_xga3_rock3	
}
if (decider == 3)
{
	sprite_index = spr_xga3_rock4	
}

whichBlocker = 0;

image_angle = round(random_range(image_angle = 50,image_angle = -50));

direction1 = sign(random_range(1,-1))
direction2 = -1
adder1 = 0;
adder2 = 0;
hit = 0;
hit2 = 0;
timer = 0;

startx = 0
starty = random_range(4,14)

doorpiece_surface = -1
door_type = 0
