var_sprite_index = round(random_range(0,2))

if (room != rm_endgame_voltsuit)
{
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
}
else if (room = rm_endgame_voltsuit) && (global.cutsceneID[Cutscenes.voltEngineGet] == false)
{
	var_sprite_index = round(random_range(0,3))
	
	if (var_sprite_index = 0)
	{
		sprite_index = spr_cutscene_endgame_playertrapped_piece1
	}
	else if (var_sprite_index = 1)
	{
		sprite_index = spr_cutscene_endgame_playertrapped_piece2	
	}
	else if (var_sprite_index = 2)
	{
		sprite_index = spr_cutscene_endgame_playertrapped_piece3	
	}
	else if (var_sprite_index = 3)
	{
		sprite_index = spr_cutscene_endgame_playertrapped_piece4
	}
}

image_angle = round(random_range(image_angle = 20,image_angle = -20));

direction1 = random_range(1,-1)
direction2 = random_range(1,-1)

startx = random_range(2,6)
starty = random_range(2,6)

adder1 = 0;
adder2 = 0;
hit = 0;

