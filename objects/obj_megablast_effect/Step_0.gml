if (image_index >= image_number-1) && (sprite_index > 0)
{
	instance_destroy()	
}

if (!instance_exists(obj_player)) or (!instance_exists(object_player2_0_sprites))
{
	exit	
}

//location
blast_effect_location_megashot()

//sprites
if (sprite_index <= -1)
{
	megablast_effect_sprites_init()
}

megablast_effect_sprites()

