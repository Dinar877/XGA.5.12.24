// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Item_upgradegot_effect(){

	//upgrade acquired effects
	instance_create_layer(obj_camera.x-160,obj_camera.y-90,layer_get_id("Inst_scrn"),obj_scrn_roomtransition)
	with(obj_scrn_roomtransition)
	{
		x = obj_camera.x-160
		y = obj_camera.y-90
	}
	
	if (instance_exists(obj_player))
	{
		if (obj_player.state = Sword_spin)
		{
			global.lockdown_facingDir = 0;	
		}
	}
	
	instance_create_layer(obj_camera.x-160,obj_camera.y-30,layer_get_id("Inst_healthui2"),obj_upgradeprocess_text_underside);
	
	tex = instance_create_layer(obj_upgradeprocess_text_underside.x+160,obj_upgradeprocess_text_underside.y+7,layer_get_id("Inst_healthui"),obj_texty_upgradeTitle);
	
	tex2 = instance_create_layer(obj_upgradeprocess_text_underside.x+160,obj_upgradeprocess_text_underside.y+25,layer_get_id("Inst_healthui"),obj_texty_generic_upgrade);


	if (instance_exists(tex))
	{
		with(tex)
		{
			text = other.text1;
			spd = 1;
			
			switch_stopper = 1
			
			isTitle = 1;
			
			spawnerID = other.id;
			font = font_regular1;
	
			text_length = string_length(text)
			font_size = font_get_size(font)
	
			draw_set_font(font);
	
			text_width = string_width_ext(text,font_size+(font_size/2),280);
			text_height = string_height_ext(text,font_size+(font_size/2),30);
		}
	}
	
	if (instance_exists(tex2))
	{
		with(tex2)
		{
			text = other.text2
			spd = 1;
			spawnerID = other.id;
			font = font_regular1;
	
			text_length = string_length(text)
			font_size = font_get_size(font)
	
			draw_set_font(font);
	
			text_width = string_width_ext(text,font_size+(font_size/2),280);
			text_height = string_height_ext(text,font_size+(font_size/2),30);
		}
	}
	
	
	
	
	//stop sfx
	audio_stop_sound(snd_player_spacejump);
	audio_stop_sound(snd_player_normaljump);
	audio_stop_sound(snd_player_screwattack);
	audio_stop_sound(snd_player_spinjump);
	audio_stop_sound(snd_player_spinjump_shorter);
	audio_stop_sound(snd_player_walljump);
}