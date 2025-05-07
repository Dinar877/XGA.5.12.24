var_sprite_index = round(random_range(0,2))

if (var_sprite_index = 0)
{
	sprite_index = spr_explosion_chunk2
}
else if (var_sprite_index = 1)
{
	sprite_index = spr_explosion_chunk21	
}
else if (var_sprite_index = 2)
{
	sprite_index = spr_explosion_chunk22	
}

image_angle = round(random_range(image_angle = 20,image_angle = -20));

direction1 = round(random_range(1,-1))
direction2 = round(random_range(1,-1))
adder1 = 0;
adder2 = 0;
hit = 0;

startx = random_range(1,6)
starty = random_range(3,6)


