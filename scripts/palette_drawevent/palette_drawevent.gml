// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function palette_drawevent(){
	
	//texture debug switch- ON
	texture_debug_messages(true);
	
	
	//get info on what's happening in shader
	var _tex = sprite_get_texture(spr_toxicpalette_2,0);	
	var _uvs = sprite_get_uvs(spr_toxicpalette_2,0);
	
	var _tex_pw = texture_get_texel_width(_tex);
	var _tex_ph = texture_get_texel_height(_tex);
	var _tex_tw = texture_get_width(_tex);
	var _tex_th = texture_get_height(_tex);
	
	var _uvs_left = _uvs[0];
	var _uvs_right = _uvs[2];
	var _uvs_top = _uvs[1];
	var _uvs_bottom = _uvs[3];
	
	//get palette pixel shift needed determined by suit count
	if (global.suit_shock > 0)
	{
		var _tex_test = (2.1 * _tex_pw);
	}
	else if (global.suit_pure > 0)
	{
		var _tex_test = (1.1 * _tex_pw);
	}
	else if (global.suit_shock <= 0) && (global.suit_pure <= 0)
	{
		var _tex_test = 0.0;
	}

	//use shader
	shader_set(shd_fade_toxicsuit)
	
	
	texture_set_stage(palette_sampler_index,_tex);
	shader_set_uniform_f(palette_index, _tex_test);
	
	shader_set_uniform_f(pw,_tex_pw);
	shader_set_uniform_f(ph,_tex_ph);
	shader_set_uniform_f(tw,_tex_tw);
	shader_set_uniform_f(th,_tex_th);
	
	shader_set_uniform_f(uv_l, _uvs_left);
	shader_set_uniform_f(uv_r, _uvs_right);
	shader_set_uniform_f(uv_t, _uvs_top);
	shader_set_uniform_f(uv_b, _uvs_bottom);
	
	shader_set_uniform_f_array(uvs, _uvs);
	
	
	draw_sprite(sprite_index, image_index, 100, 100);
	
	
	shader_reset()
	
	
	//TESTING Texel Height to figure out why 8th row of pixels are being skipped
	var _tex_ph_test = _tex_ph
	for (i = 0; i < _tex_th; i += _tex_ph)
	{
		var _tex_ph_test2 = i / _tex_ph
	}
	
	
	//texture debug switch- OFF
	texture_debug_messages(false);
}