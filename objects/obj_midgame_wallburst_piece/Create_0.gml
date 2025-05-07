n = round(random_range(0,5))

if (n = 0)
{
	sprite_index = spr_midgame_wallburst_piece_small1
}
else if (n = 1)
{
	sprite_index = spr_midgame_wallburst_piece_small2	
}
else if (n = 2)
{
	sprite_index = spr_midgame_wallburst_piece_small3
}
else if (n = 3)
{
	sprite_index = spr_midgame_wallburst_piece1
}
else if (n = 4)
{
	sprite_index = spr_midgame_wallburst_piece2	
}
else if (n = 5)
{
	sprite_index = spr_midgame_wallburst_piece3
}


image_angle = round(random_range(120,-120));

direction1 = round(random_range(1,-1))
direction2 = round(random_range(1,-1))
adder1 = 0;
adder2 = 0;
hit = 0;

startx = random_range(2,5)
starty = random_range(3,6)
