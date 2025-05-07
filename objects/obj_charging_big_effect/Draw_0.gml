/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(surfacebigap))
{
	surfacebigap = surface_create(200,200);	
}

if (surface_exists(surfacebigap)) && (global.pause <= 0) && (obj_blast_effect.pause <= 0)
{
	surface_set_target(surfacebigap);
	
	draw_clear_alpha(c_white,0);
	draw_sprite(sprite_index, image_index, 100, 100);
	
	//Shooting without charge beam
	#region
	if (global.beam_spread_available = 0) && (global.beam_burn_available = 0) && (global.beam_homing_available = 0)
	 && (global.beam_shield_available = 0)
	{
		draw_sprite(sprite_index, image_index, 100, 100);
	}
	
	if (global.beam_spread_available = 1) && (global.beam_burn_available = 0) && (global.beam_homing_available = 0)
	 && (global.beam_shield_available = 0)
	{
		draw_sprite(sprite_index, image_index, 100, 100);
	}
	
	if (global.beam_burn_available = 1) && (global.beam_homing_available = 0)
	 && (global.beam_shield_available = 0)
	{
		draw_sprite(sprite_index, image_index, 100, 100);
	}
	
	if (global.beam_homing_available = 1)
	 && (global.beam_shield_available = 0)
	{
		draw_sprite(sprite_index, image_index, 100, 100);
	}
	
	if (global.beam_shield_available = 1)
	{
		draw_sprite(sprite_index, image_index, 100, 100);
	}
	#endregion
	
	shader_reset();
	surface_reset_target();
	
	draw_surface(surfacebigap,x-100,y-100)
	
	surface_free(surfacebigap);
}
else if ((!surface_exists(surfacebigap)) or (global.pause > 0)) && (obj_blast_effect.pause <= 0)
{
	draw_self()
}