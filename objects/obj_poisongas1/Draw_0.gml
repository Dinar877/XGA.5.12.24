/// @description Insert description here
// You can write your code in this editor
if (global.corrupted > 0)
{
	if (!surface_exists(surface1))
	{
		surface1 = surface_create(room_width , room_height);	
	}
	
	if (surface_exists(surface1)) && (global.room_transition = 0) && (global.room_transition1 = 0)
	{
	surface_set_target(surface1)
	shader_set(shd_watery)	
	
	shader_set_uniform_f(PosX,0)
	shader_set_uniform_f(PosY,0)
	shader_set_uniform_f(WaveAmpl,WaveAmpl1/5000)
	shader_set_uniform_f(WaveFreq,1.0)
	
	draw_sprite_tiled(spr_poisongas1,0,0,0)
	shader_reset()
	surface_reset_target()
	
	draw_surface_ext(surface1, 0, 0,1,1,0,c_white,0.5)
	surface_free(surface1)
	}
}