/// @description Insert description here
// You can write your code in this editor
var surfy = surface_create(200,200)
	
if (surface_exists(surfy))
{
	surface_set_target(surfy);
	
	draw_clear_alpha(c_white,0);
	draw_sprite(sprite_index, image_index, 100, 100);
		
	palette_drawevent()
		
	surface_reset_target()
		
	draw_surface(surfy,x-100,y-100)
		
	surface_free(surfy)
}
