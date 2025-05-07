/// @description Insert description here
// You can write your code in this editor
var surface11 = surface_create(500,500);

if (surface11 != -1)
	{
		var l = 0;
		var t = 0;
		var w = 350;
		var h = 200;
	
		scrnbg = surface_create(w,h)
		surface_set_target(scrnbg)
		draw_sprite_tiled(spr_bg_spaceG,0,0,0)
		surface_reset_target()
	
		surface_set_target(surface11);
		draw_clear_alpha(c_white,0)
		shader_set(shd_watery3)
	
		var time = shader_get_uniform(shd_watery3,"time")
		shader_set_uniform_f(time, _time)
	
		var col = shader_get_uniform(shd_watery3,"col");
	    shader_set_uniform_f(col,0,0.25,0.5);
	
		draw_surface_part_ext(scrnbg,0,0,w,h,0,0,1,1,c_white,1);
		surface_reset_target();
		shader_reset();
	
		draw_surface_tiled_ext(surface11,0,0,1,1,c_white,1.0)
		x = 0
		y = 0
		
		surface_free(scrnbg);
		surface_free(surface11);
}
