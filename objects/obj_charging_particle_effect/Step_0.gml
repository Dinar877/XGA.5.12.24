if (global.charging > 0)
{
	x += lengthdir_x(2, point_direction(x, y, obj_blast_effect.x, obj_blast_effect.y));
	y += lengthdir_y(2, point_direction(x, y, obj_blast_effect.x, obj_blast_effect.y));
}
else if (instance_exists(obj_megablast_effect))
{
	with(obj_megablast_effect)
	{
		if (sprite_index = spr_megashot_left)
		{
			other.x += random_range(-7,-5)	
			other.y += random_range(5,-5)	
		}
		else if (sprite_index = spr_megashot_upleft)
		{
			other.x += random_range(-7,-5)	
			other.y += random_range(-7,-5)	
		}
		else if (sprite_index = spr_megashot_downleft)
		{
			other.x += random_range(-7,-5)	
			other.y += random_range(7,5)	
		}
		else if (sprite_index = spr_megashot_right)
		{
			other.x += random_range(7,5)	
			other.y += random_range(5,-5)	
		}
		else if (sprite_index = spr_megashot_upright)
		{
			other.x += random_range(7,5)	
			other.y += random_range(-7,-5)	
		}
		else if (sprite_index = spr_megashot_downright)
		{
			other.x += random_range(7,5)	
			other.y += random_range(7,5)	
		}
		else if (sprite_index = spr_megashot_up)
		{
			other.x += random_range(1,-1)	
			other.y += random_range(-7,-5)	
		}
		else if (sprite_index = spr_megashot_down)
		{
			other.x += random_range(1,-1)	
			other.y += random_range(7,5)	
		}
		
		
	}
}

image_angle += 5

if (image_alpha > 0)
{
	image_alpha -= 0.1
}
else instance_destroy()