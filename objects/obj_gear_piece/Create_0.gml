n = round(random_range(0,2))

if (n = 0)
{
	sprite_index = spr_gearenemy_gearpiece1	
}
else if (n = 1)
{
	sprite_index = spr_gearenemy_gearpiece2	
}
else if (n = 2)
{
	sprite_index = spr_gearenemy_gearpiece3
}


image_angle = round(random_range(image_angle = 120,image_angle = -120));

direction1 = round(random_range(1,-1))
direction2 = round(random_range(1,-1))
adder1 = 0;
adder2 = 0;
hit = 0;

startx = random_range(2,5)
starty = random_range(3,6)
