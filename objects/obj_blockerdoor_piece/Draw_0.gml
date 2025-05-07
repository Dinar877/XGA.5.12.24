/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(doorpiece_surface))
{
	doorpiece_surface = surface_create(100,100)	
}

if (surface_exists(doorpiece_surface))
{
	surface_set_target(doorpiece_surface);

	draw_clear_alpha(c_white, 0);
	draw_sprite(sprite_index, image_index, 50, 50);	
			
	if (door_type = 4)
	{
		pal_swap_set(spr_doorstopper_original_palette,1,false);
		draw_sprite(sprite_index, image_index, 50, 50);
	}
	
	surface_reset_target();
	
	draw_surface(doorpiece_surface,x-50,y-50)
	surface_free(doorpiece_surface)
}