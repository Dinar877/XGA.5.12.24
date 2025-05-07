var_sprite_index = round(random_range(0,2))

if (var_sprite_index = 0)
{
	sprite_index = spr_explosion_chunk1	
}
else if (var_sprite_index = 1)
{
	sprite_index = spr_explosion_chunk11	
}
else if (var_sprite_index = 2)
{
	sprite_index = spr_explosion_chunk12	
}

image_angle = round(random_range(image_angle = 20,image_angle = -20));

direction1 = round(random_range(1,-1))
adder1 = 0;
adder2 = 0;
hit = 0;

