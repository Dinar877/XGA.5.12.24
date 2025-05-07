/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(surfacemega))
{
	surfacemega = surface_create(100,100);	
}

if (surface_exists(surfacemega)) && (global.pause <= 0) && (sprite_index > 0)
{
	surface_set_target(surfacemega);
	
	draw_clear_alpha(c_white,0);
	draw_sprite(sprite_index, image_index, 50, 50);
	
	//Shooting without charge beam
	#region
	if (global.beam_spread_available = 0) && (global.beam_burn_available = 0) && (global.beam_homing_available = 0)
	 && (global.beam_shield_available = 0)
	{
		draw_sprite(sprite_index, image_index, 50, 50);
	}
	
	if (global.beam_spread_available = 1) && (global.beam_burn_available = 0) && (global.beam_homing_available = 0)
	 && (global.beam_shield_available = 0)
	{
		draw_sprite(sprite_index, image_index, 50, 50);
	}
	
	if (global.beam_burn_available = 1) && (global.beam_homing_available = 0)
	 && (global.beam_shield_available = 0)
	{
		draw_sprite(sprite_index, image_index, 50, 50);
	}
	
	if (global.beam_homing_available = 1)
	 && (global.beam_shield_available = 0)
	{
		draw_sprite(sprite_index, image_index, 50, 50);
	}
	
	if (global.beam_shield_available = 1)
	{
		draw_sprite(sprite_index, image_index, 50, 50);
	}
	#endregion
	
	shader_reset();
	surface_reset_target();
	
	draw_surface(surfacemega,x-50,y-50)
	
	surface_free(surfacemega);
}
else if (!surface_exists(surfacemega)) or (global.pause > 0)
{
	draw_self()
}