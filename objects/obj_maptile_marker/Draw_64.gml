 /// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if (!place_meeting(x,y,obj_mapborder_underside)) or (sectortile != global.sector_active)
{
	exit;	
}



if (place_meeting(x,y,obj_mapborder_underside)) && (sectortile == global.sector_active)
{	
	if (!surface_exists(surfacemapp1))
	{
		surfacemapp1 = surface_create(30,30)
	}
	
	if (surface_exists(surfacemapp1))
	{
		surface_set_target(surfacemapp1);
	
		draw_clear_alpha(c_white,0);
		draw_set_alpha(image_alpha)
	
		draw_sprite(sprite_index, image_index, 10+((origionalX*10)-(global.mapgrid_playerx*10)-originX), 10+((origionalY*10)-(global.mapgrid_playery*10)-originY));
		
		surface_reset_target();
		
		
		draw_surface(surfacemapp1,291,0)
		
		
		surface_free(surfacemapp1)
	}
}